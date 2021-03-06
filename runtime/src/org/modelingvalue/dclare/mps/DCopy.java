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

import java.util.Objects;

import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.language.SContainmentLink;
import org.jetbrains.mps.openapi.language.SLanguage;
import org.jetbrains.mps.openapi.language.SProperty;
import org.jetbrains.mps.openapi.language.SReferenceLink;
import org.modelingvalue.collections.List;
import org.modelingvalue.collections.Set;
import org.modelingvalue.collections.util.Quadruple;
import org.modelingvalue.dclare.Constant;
import org.modelingvalue.dclare.Observed;
import org.modelingvalue.dclare.Observer;

@SuppressWarnings("unused")
public class DCopy extends DNode {

    private static final Constant<Quadruple<Set<SLanguage>, SConcept, String, Boolean>, DCopyType> COPY_TYPE         = Constant.of("COPY_TYPE", q -> new DCopyType(q));

    @SuppressWarnings("rawtypes")
    protected static final Constant<SConcept, Set<Observer>>                                       CONCEPT_OBSERVERS = Constant.of("RULES", c -> {
                                                                                                                         Set<Observer> observers = Set.of();
                                                                                                                         for (SProperty property : c.getProperties()) {
                                                                                                                             Observed<DNode, String> observed = PROPERTY.get(property);
                                                                                                                             observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, observed.get(o.getCopied()))));
                                                                                                                         }
                                                                                                                         for (SContainmentLink containment : c.getContainmentLinks()) {
                                                                                                                             if (containment.isMultiple()) {
                                                                                                                                 Observed<DNode, List<DNode>> observed = MANY_CONTAINMENT.get(containment);
                                                                                                                                 observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, o.copy(observed.get(o.getCopied())))));
                                                                                                                             } else {
                                                                                                                                 Observed<DNode, DNode> observed = SINGLE_CONTAINMENT.get(containment);
                                                                                                                                 observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, o.copy(observed.get(o.getCopied())))));
                                                                                                                             }
                                                                                                                         }
                                                                                                                         for (SReferenceLink reference : c.getReferenceLinks()) {
                                                                                                                             Observed<DNode, DNode> observed = REFERENCE.get(reference);
                                                                                                                             observers = observers.add(DObject.<DCopy> observer(observed, o -> observed.set(o, o.map(observed.get(o.getCopied())))));
                                                                                                                         }
                                                                                                                         observers = observers.addAll(DNode.CONCEPT_OBSERVERS.get(c));
                                                                                                                         return observers;
                                                                                                                     });

    public static DCopy of(DNode copied, Object ctx, Object id) {
        Objects.requireNonNull(copied);
        return new DCopy(new Object[]{ctx, id, copied});
    }

    protected DCopy(Object[] identity) {
        super(identity);
    }

    public boolean isRoot() {
        return identity.length == 3;
    }

    public DCopy getRoot() {
        return isRoot() ? this : (DCopy) identity[0];
    }

    public DNode getCopied() {
        return (DNode) identity[identity.length - 1];
    }

    @Override
    public SConcept getConcept() {
        return getCopied().getConcept();
    }

    @Override
    public boolean hasAnonymousType() {
        return false;
    }

    @Override
    public String getAnonymousType() {
        return null;
    }

    @Override
    public SLanguage getAnonymousLanguage() {
        return null;
    }

    @Override
    protected DCopyType getType() {
        return COPY_TYPE.get(Quadruple.of(Set.of(), getConcept(), null, false));
    }

    @Override
    public boolean isExternal() {
        return false;
    }

    private List<DNode> copy(List<DNode> children) {
        return children.map(this::copy).toList();
    }

    private DNode map(DNode referenced) {
        if (referenced != null) {
            DCopy root = getRoot();
            DNode copiedRoot = root.getCopied();
            return referenced.equals(copiedRoot) ? root : referenced.hasAncestor(copiedRoot) ? copy(referenced) : referenced;
        } else {
            return null;
        }
    }

    private DNode copy(DNode child) {
        if (child != null) {
            return new DCopy(new Object[]{getRoot(), child});
        } else {
            return null;
        }
    }

}
