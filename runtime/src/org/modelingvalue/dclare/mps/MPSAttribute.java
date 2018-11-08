package org.modelingvalue.dclare.mps;

import org.modelingvalue.collections.util.QuadConsumer;
import org.modelingvalue.transactions.AbstractLeaf;
import org.modelingvalue.transactions.ConstantSetable;
import org.modelingvalue.transactions.EmptyMandatoryException;
import org.modelingvalue.transactions.Getable;

@SuppressWarnings("rawtypes")
public class MPSAttribute<O, T> extends MPSObserved<O, T> {

    @SuppressWarnings("unchecked")
    private static final Getable<Object, MPSAttribute> MPS_ATTRIBUTE = ConstantSetable.of("MPS_ATTRIBUTE", id -> new MPSAttribute(id, null, null));

    @SuppressWarnings("unchecked")
    public static <C, V> MPSAttribute<C, V> of(Object id) {
        return MPS_ATTRIBUTE.get(id);
    }

    public MPSAttribute(Object id, T def, QuadConsumer<AbstractLeaf, O, T, T> changed) {
        super(id, def, false, false, (o, b, a) -> {
        }, changed);
    }

    @Override
    public T get(O object) {
        T result = object == null ? null : super.get(object);
        if (result == null) {
            throw new EmptyMandatoryException();
        } else {
            return result;
        }
    }

    @Override
    public String toString() {
        return id.toString();
    }

}
