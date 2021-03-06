//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
// (C) Copyright 2018-2019 Modeling Value Group B.V. (http://modelingvalue.org)                                        ~
//                                                                                                                     ~
// Licensed under the GNU Lesser General Public License v3.0 (the 'License'). You may not use this file except in      ~
// compliance with the License. You may obtain a copy of the License at: https://choosealicense.com/licenses/lgpl-3.0  ~
// Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on ~
// an 'AS IS' BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the  ~
// specific language governing permissions and limitations under the License.                                          ~
//                                                                                                                     ~
// Maintainers:                                                                                                        ~
//     Wim Bast, Tom Brus, Ronald Krijgsheld                                                                           ~
// Contributors:                                                                                                       ~
//     Arjan Kok, Carel Bast                                                                                           ~
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

package org.modelingvalue.dclare.mps;

import java.util.Arrays;
import java.util.Collections;
import java.util.Objects;
import java.util.function.Function;
import java.util.stream.Collectors;

import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.model.EditableSModel;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelId;
import org.jetbrains.mps.openapi.model.SModelListener;
import org.jetbrains.mps.openapi.model.SModelName;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessListener;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SModule;
import org.jetbrains.mps.openapi.persistence.DataSource;
import org.jetbrains.mps.openapi.persistence.ModelRoot;
import org.modelingvalue.collections.Collection;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Triple;
import org.modelingvalue.dclare.Action;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Direction;
import org.modelingvalue.dclare.NonCheckingObserved;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;
import org.modelingvalue.dclare.Setable;

import jetbrains.mps.errors.item.ModelReportItem;
import jetbrains.mps.extapi.model.SModelBase;
import jetbrains.mps.extapi.module.SModuleBase;

@SuppressWarnings("unused")
public class DModel extends DMatchedObject<SModelReference, SModel> implements SModel {

    private static final Constant<Triple<Set<SLanguage>, Boolean, String>, DModelType> MODEL_TYPE          = Constant.of("MODEL_TYPE", t -> new DModelType(t));

    protected static final Observed<DModel, String>                                    NAME                = DObserved.of("NAME", null, false, false, null, false, (dModel, pre, post) -> {
                                                                                                               if (post != null) {
                                                                                                                   SModel sModel = dModel.original(true);
                                                                                                                   ((EditableSModel) sModel).rename(post, false);
                                                                                                               }
                                                                                                           }, null);

    protected static final Observed<DModel, Set<DNode>>                                ROOTS               = DObserved.of("ROOTS", Set.of(), false, true, null, false, (dModel, pre, post) -> {
                                                                                                               SModel sModel = dModel.original(true);
                                                                                                               Set<SNode> soll = post.map(r -> r.reParent(sModel, null, r.original(true))).toSet();
                                                                                                               Set<SNode> ist = DModel.roots(sModel);
                                                                                                               DObserved.map(ist, soll,                                                                                                        //
                                                                                                                       sModel::addRootNode,                                                                                                    //
                                                                                                                       sModel::removeRootNode);
                                                                                                           }, null);

    private static final Function<DModel, Set<SNode>>                                  READ_ROOTS_FUNCTION = m -> {
                                                                                                               SModel sModel = m.original();
                                                                                                               return dClareMPS().read(() -> Collection.of(sModel.getRootNodes()).sequential().toSet());
                                                                                                           };

    protected static final Observer<DModel>                                            ROOTS_READ_MATCHER  = DObject.observer("$ROOTS_READ_MATCHER", m -> DNode.match(m, READ_ROOTS_FUNCTION, ROOTS.get(m)));

    protected static final Observed<DModel, Set<SLanguage>>                            USED_LANGUAGES      = DObserved.of("USED_LANGUAGES", Set.of(), false, false, null, false, (dModel, pre, post) -> {
                                                                                                               SModelBase sModel = (SModelBase) dModel.original(true);
                                                                                                               java.util.Collection<SLanguage> ls = sModel.importedLanguageIds();
                                                                                                               for (SLanguage l : post) {
                                                                                                                   if (!ls.contains(l)) {
                                                                                                                       sModel.addLanguage(l);
                                                                                                                   }
                                                                                                               }
                                                                                                           }, null);

    protected static final Observed<DModel, Set<DModel>>                               USED_MODELS         = DObserved.of("USED_MODELS", Set.of(), false, false, null, false, (dModel, pre, post) -> {
                                                                                                               SModelBase sModel = (SModelBase) dModel.original(true);
                                                                                                               java.util.Collection<SModelReference> ls = sModel.getModelImports();
                                                                                                               for (DModel dm : post) {
                                                                                                                   SModel sm = dm.original(true);
                                                                                                                   if (ls.stream().noneMatch(r -> r.getModelId().equals(sm.getModelId()))) {
                                                                                                                       sModel.addModelImport(sm.getReference());
                                                                                                                   }
                                                                                                               }
                                                                                                           }, null);

    protected static final Observed<DModel, ModelRoot>                                 MODEL_ROOT          = NonCheckingObserved.of("MODEL_ROOT", null);

    private static final Observer<DModel>                                              USED_LANGUAGES_RULE = DObject.observer(USED_LANGUAGES, o -> {
                                                                                                               SModel sModel = o.original();
                                                                                                               if (sModel instanceof SModelBase) {
                                                                                                                   Set<SLanguage> ls = dClareMPS().read(() -> Collection.of(((SModelBase) sModel).importedLanguageIds()).sequential().toSet());
                                                                                                                   USED_LANGUAGES.set(o, Set::addAll, ls.addAll(ROOTS.get(o).flatMap(DNode.USED_LANGUAGES::get)));
                                                                                                               }
                                                                                                           });

    private static final Observer<DModel>                                              USED_MODELS_RULE    = DObject.observer(USED_MODELS, o -> {
                                                                                                               DClareMPS dClareMPS = dClareMPS();
                                                                                                               SModel sModel = o.original();
                                                                                                               if (sModel instanceof SModelBase) {
                                                                                                                   Set<DModel> ls = dClareMPS.read(() -> Collection.of(((SModelBase) sModel).getModelImports()).sequential().                  //
                                                                                                                   map(r -> r.resolve(null)).notNull().map(DModel::of).toSet());
                                                                                                                   USED_MODELS.set(o, ls.addAll(ROOTS.get(o).flatMap(DNode.USED_MODELS::get)).remove(o));
                                                                                                               }
                                                                                                           });

    private static final Observer<DModel>                                              REFERENCED_RULE     = DObject.observer(DModule.MODELS, o -> USED_MODELS.get(o).forEachOrdered(mo -> {
                                                                                                               SModel sModel = mo.original();
                                                                                                               if (sModel instanceof SModelBase) {
                                                                                                                   SModule sModule = sModel.getModule();
                                                                                                                   DModule dModule = DModule.of(sModule);
                                                                                                                   boolean hasRules = dClareMPS().read(() -> DModule.hasRuleSets(DModule.languages(sModule)));
                                                                                                                   boolean external = dModule.isExternal();
                                                                                                                   if (external && hasRules) {
                                                                                                                       DRepository.REFERENCED.set(dClareMPS().getRepository(), Set::add, dModule);
                                                                                                                       DModule.MODELS.set(dModule, Set::add, mo);
                                                                                                                   } else if (external || !hasRules) {
                                                                                                                       DModule.MODELS.set(dModule, Set::add, mo);
                                                                                                                   }
                                                                                                               }
                                                                                                           }));

    private static final Action<DModel>                                                READ_ROOTS          = Action.of("$READ_ROOTS", m -> {
                                                                                                               SModel sModel = m.original();
                                                                                                               if (sModel != null) {
                                                                                                                   MODEL_ROOT.set(m, dClareMPS().read(() -> sModel.getModelRoot()));
                                                                                                                   ROOTS.set(m, dClareMPS().read(() -> Collection.of(sModel.getRootNodes()).sequential().map(DNode::read).toSet()));
                                                                                                               }
                                                                                                           }, Direction.forward);

    private static final Action<DModel>                                                READ_NAME           = Action.of("$READ_NAME", m -> {
                                                                                                               SModel sModel = m.original();
                                                                                                               if (sModel != null) {
                                                                                                                   NAME.set(m, dClareMPS().read(() -> sModel.getName().getLongName()));
                                                                                                               }
                                                                                                           }, Direction.forward);

    @SuppressWarnings("rawtypes")
    protected static final Set<Observer>                                               OBSERVERS           = DMatchedObject.OBSERVERS.addAll(Set.of(ROOTS_READ_MATCHER, USED_LANGUAGES_RULE, USED_MODELS_RULE, REFERENCED_RULE));

    @SuppressWarnings("rawtypes")
    protected static final Set<Setable>                                                SETABLES            = DMatchedObject.SETABLES.addAll(Set.of(NAME, ROOTS, MODEL_ROOT, USED_MODELS, USED_LANGUAGES));

    public static DModel of(SLanguage anonymousLanguage, String anonymousType, Object[] identity, boolean temporal) {
        identity = Arrays.copyOf(identity, identity.length + (anonymousType != null ? 3 : 1));
        if (anonymousType != null) {
            identity[identity.length - 3] = temporal;
            identity[identity.length - 2] = anonymousLanguage;
            identity[identity.length - 1] = anonymousType;
        } else {
            identity[identity.length - 1] = temporal;
        }
        return new DModel(identity);
    }

    protected static DModel read(SModel original) {
        DModel dModel = of(original.getReference());
        DClareMPS dClareMPS = dClareMPS();
        NAME.set(dModel, original.getName().getLongName());
        USED_LANGUAGES.set(dModel, Collection.of(((SModelBase) original).importedLanguageIds()).toSet());
        return dModel;
    }

    public static DModel of(SModel original) {
        return original instanceof DModel ? (DModel) original : of(original.getReference());
    }

    public static DModel of(SModelReference ref) {
        DModel dModel = DMatchedObject.getMatchedObject(ref);
        return dModel != null ? dModel : readModel(ref);
    }

    private static DModel readModel(SModelReference ref) {
        return new DModel(new Object[]{ref});
    }

    protected DModel(Object[] identity) {
        super(identity);
    }

    public boolean isTemporal() {
        if (isRead()) {
            return false;
        } else {
            return hasAnonymousType() ? (Boolean) identity[identity.length - 3] : (Boolean) identity[identity.length - 1];
        }
    }

    @Override
    protected boolean isRead() {
        return identity.length == 1 && identity[0] instanceof SModelReference;
    }

    @Override
    public boolean isExternal() {
        if (isRead()) {
            SModel sModel = dClareMPS().read(() -> ((SModelReference) identity[0]).resolve(null));
            return sModel != null && dClareMPS().project.getPath(sModel.getModule()) == null;
        } else {
            return false;
        }
    }

    @Override
    protected boolean matches(DClareMPS dClare, SModel read) {
        return Objects.equals(read.getName().getLongName(), NAME.get(this));
    }

    @Override
    protected void addSObject(SModel sObject) {
        init(dClareMPS(), sObject);
    }

    @Override
    protected SModelReference reference(SModel read) {
        return read.getReference();
    }

    @Override
    protected SModel create() {
        SModule sModule = getModule().original();
        String name = "_" + hashCode();
        return isTemporal() ? //
                new DTempModel(name, (SModuleBase) sModule) : //
                sModule.getModelRoots().iterator().next().createModel(name);
    }

    @Override
    protected SModel resolve(SModelReference ref) {
        return ref.resolve(null);
    }

    @Override
    protected DModelType getType() {
        SLanguage al = getAnonymousLanguage();
        Set<SLanguage> languages = USED_LANGUAGES.get(this).filter(l -> !DClareMPS.RULE_SETS.get(l).isEmpty()).toSet();
        languages = al != null ? languages.add(al) : languages;
        return MODEL_TYPE.get(Triple.of(languages, isExternal(), getAnonymousType()));
    }

    @Override
    public boolean hasAnonymousType() {
        return !isRead() && !(identity[identity.length - 1] instanceof Boolean);
    }

    public java.util.Set<SLanguage> getUsedLanguages() {
        return USED_LANGUAGES.get(this).collect(Collectors.toSet());
    }

    @Override
    protected void read() {
        READ_NAME.trigger(this);
        READ_ROOTS.trigger(this);
    }

    @Override
    protected void init(DClareMPS dClareMPS, SModel original) {
        DModelListener l = new DModelListener(this, dClareMPS);
        original.addChangeListener(l);
        original.addModelListener(l);
    }

    @Override
    protected void exit(DClareMPS dClareMPS, SModel original) {
        DModelListener l = new DModelListener(this, dClareMPS);
        original.removeModelListener(l);
        original.removeChangeListener(l);
    }

    @Override
    public DRepository getRepository() {
        return getModule().getRepository();
    }

    @Override
    public SModelId getModelId() {
        return reference(false).getModelId();
    }

    @Override
    public SModelName getName() {
        String name = NAME.get(this);
        return name != null ? new SModelName(name) : null;
    }

    public void setName(String name) {
        NAME.set(this, name);
    }

    public String getNameString() {
        return NAME.get(this);
    }

    @Override
    public SModelReference getReference() {
        return reference(false);
    }

    @Override
    public ModelRoot getModelRoot() {
        return MODEL_ROOT.get(this);
    }

    @Override
    public DModule getModule() {
        return (DModule) dParent();
    }

    @SuppressWarnings({"unchecked", "rawtypes"})
    @Override
    public Iterable<SNode> getRootNodes() {
        return (Set) ROOTS.get(this);
    }

    @Override
    public DNode createNode(SConcept concept) {
        return DNode.of(original(true).createNode(concept));
    }

    @Override
    public DNode createNode(SConcept concept, SNodeId nodeId) {
        return DNode.of(original(true).createNode(concept, nodeId));
    }

    @Override
    public void addRootNode(SNode node) {
        DNode dNode = DNode.of(node);
        ROOTS.set(this, Set::add, dNode);
    }

    @Override
    public void removeRootNode(SNode node) {
        DNode dNode = DNode.of(node);
        ROOTS.set(this, Set::remove, dNode);
    }

    public void setRootNodes(SAbstractConcept concept, Iterable<DNode> roots) {
        ROOTS.set(this, (rs, cs) -> cs == null ? rs : cs.addAll(rs.filter(r -> !r.isInstanceOfConcept(concept))), //
                roots != null ? Collection.of(roots).map(DNode::of).toSet() : null);
    }

    public java.util.Collection<DNode> getRootNodes(SAbstractConcept concept) {
        return ROOTS.get(this).filter(r -> r.isInstanceOfConcept(concept)).collect(Collectors.toList());
    }

    @Override
    public DNode getNode(SNodeId id) {
        SModel sModel = original();
        SNode sNode = sModel != null ? sModel.getNode(id) : null;
        return sNode != null ? DNode.of(sNode) : null;
    }

    @Override
    public DataSource getSource() {
        SModel sModel = original();
        return sModel != null ? sModel.getSource() : null;
    }

    @Override
    public boolean isReadOnly() {
        SModel sModel = original();
        return sModel != null && sModel.isReadOnly();
    }

    @Override
    public boolean isLoaded() {
        SModel sModel = original();
        return sModel == null || sModel.isLoaded();
    }

    @Override
    public void load() {
        SModel sModel = original();
        if (sModel != null) {
            sModel.load();
        }
    }

    @Override
    public Iterable<Problem> getProblems() {
        SModel sModel = original();
        return sModel != null ? sModel.getProblems() : Collections.emptySet();
    }

    @Override
    public void unload() {
        SModel sModel = original();
        if (sModel != null) {
            sModel.unload();
        }
    }

    @Override
    public void addModelListener(SModelListener l) {
        SModel sModel = original();
        if (sModel != null) {
            sModel.addModelListener(l);
        }
    }

    @Override
    public void removeModelListener(SModelListener l) {
        SModel sModel = original();
        if (sModel != null) {
            sModel.removeModelListener(l);
        }
    }

    @Override
    public void addAccessListener(SNodeAccessListener l) {
        SModel sModel = original();
        if (sModel != null) {
            sModel.addAccessListener(l);
        }

    }

    @Override
    public void removeAccessListener(SNodeAccessListener l) {
        SModel sModel = original();
        if (sModel != null) {
            sModel.removeAccessListener(l);
        }

    }

    @Override
    public void addChangeListener(SNodeChangeListener l) {
        SModel sModel = original();
        if (sModel != null) {
            sModel.addChangeListener(l);
        }

    }

    @Override
    public void removeChangeListener(SNodeChangeListener l) {
        SModel sModel = original();
        if (sModel != null) {
            sModel.removeChangeListener(l);
        }
    }

    protected static Set<SNode> roots(SModel model) {
        Set<SNode> ist = Set.of();
        for (SNode child : model.getRootNodes()) {
            ist = ist.add(child);
        }
        return ist;
    }

    @Override
    public String toString() {
        String name = NAME.get(this);
        return name != null ? name : "Model" + (isRead() ? ("#" + getModelId()) : //
                Arrays.toString(Arrays.copyOf(identity, identity.length - (getAnonymousType() != null ? 3 : 1))));
    }

    @SuppressWarnings("unchecked")
    @Override
    public java.util.Set<ModelReportItem> getIssues() {
        return (java.util.Set<ModelReportItem>) super.getIssues();
    }

    @Override
    @Deprecated
    public String getModelName() {
        throw new UnsupportedOperationException();
    }

    @Override
    public boolean isDclareOnly() {
        return isExternal() || super.isDclareOnly();
    }

}
