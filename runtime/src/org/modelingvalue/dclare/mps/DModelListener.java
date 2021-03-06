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

import org.jetbrains.mps.openapi.event.SNodeAddEvent;
import org.jetbrains.mps.openapi.event.SNodeRemoveEvent;
import org.jetbrains.mps.openapi.event.SPropertyChangeEvent;
import org.jetbrains.mps.openapi.event.SReferenceChangeEvent;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModel.Problem;
import org.jetbrains.mps.openapi.model.SModelListener;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeChangeListener;
import org.jetbrains.mps.openapi.model.SNodeReference;
import org.jetbrains.mps.openapi.model.SReference;
import org.jetbrains.mps.openapi.module.SRepository;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Pair;

public class DModelListener extends Pair<DModel, DClareMPS> implements SNodeChangeListener, SModelListener {

    private static final long serialVersionUID = -5189200443861195660L;

    public DModelListener(DModel dModel, DClareMPS dClareMPS) {
        super(dModel, dClareMPS);
    }

    @Override
    public void propertyChanged(SPropertyChangeEvent event) {
        b().handleMPSChange(() -> DNode.PROPERTY.get(event.getProperty()).set(DNode.of(event.getNode()), event.getNewValue()));
    }

    @Override
    public void referenceChanged(SReferenceChangeEvent event) {
        b().handleMPSChange(() -> {
            SReference newValue = event.getNewValue();
            SNode targetNode = newValue != null ? newValue.getTargetNode() : null;
            DNode.REFERENCE.get(event.getAssociationLink()).set(DNode.of(event.getNode()), targetNode != null ? DNode.of(targetNode) : null);
        });
    }

    @Override
    public void nodeAdded(SNodeAddEvent event) {
        b().handleMPSChange(() -> {
            SNode sNode = event.getChild();
            DNode dNode = DNode.of(sNode);
            DModel dModel = DModel.of(event.getModel());
            if (event.isRoot()) {
                DModel.ROOTS.set(dModel, Set::add, dNode);
            } else {
                SContainmentLink al = event.getAggregationLink();
                //noinspection ConstantConditions
                if (!al.getName().equals("smodelAttribute")) {
                    if (al.isMultiple()) {
                        //noinspection ConstantConditions
                        int index = DNode.children(event.getParent(), al).firstIndexOf(sNode);
                        if (index >= 0) {
                            DNode.MANY_CONTAINMENT.get(al).set(DNode.of(event.getParent()), (l, e) -> {
                                List<DNode> now = l.remove(e);
                                return now.insert(Math.min(now.size(), index), e);
                            }, dNode);
                        }
                    } else {
                        DNode.SINGLE_CONTAINMENT.get(al).set(DNode.of(event.getParent()), dNode);
                    }
                }
            }
        });
    }

    @Override
    public void nodeRemoved(SNodeRemoveEvent event) {
        b().handleMPSChange(() -> {
            SNode child = event.getChild();
            SNodeReference ref = new jetbrains.mps.smodel.SNodePointer(a().reference(false), child.getNodeId());
            DNode dNode = DNode.of(child.getConcept(), ref);
            dNode.setDetached(child);
            if (event.isRoot()) {
                DModel.ROOTS.set(DModel.of(event.getModel()), Set::remove, dNode);
            } else {
                SContainmentLink al = event.getAggregationLink();
                //noinspection ConstantConditions
                if (!al.getName().equals("smodelAttribute")) {
                    if (al.isMultiple()) {
                        DNode.MANY_CONTAINMENT.get(al).set(DNode.of(event.getParent()), List::remove, dNode);
                    } else {
                        DNode.SINGLE_CONTAINMENT.get(al).set(DNode.of(event.getParent()), (v, e) -> e.equals(v) ? null : v, dNode);
                    }
                }
            }
        });
    }

    @Override
    public void modelLoaded(SModel model, boolean partially) {
    }

    @Override
    public void modelReplaced(SModel model) {
        b().universeTransaction().put("$REFRESH", () -> DModel.REFRESH.trigger(DModel.of(model)));
    }

    @Override
    public void modelUnloaded(SModel model) {
    }

    @Override
    public void modelSaved(SModel model) {
    }

    @Override
    public void modelAttached(SModel model, SRepository repository) {
    }

    @Override
    public void modelDetached(SModel model, SRepository repository) {
    }

    @Override
    public void conflictDetected(SModel model) {
    }

    @Override
    public void problemsDetected(SModel model, Iterable<Problem> problems) {
    }

}
