package dagger.internal;

import android.support.v7.internal.widget.ActivityChooserView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes2.dex */
public final class DaggerCollections {
    private static final int MAX_POWER_OF_TWO = 1073741824;

    private DaggerCollections() {
    }

    public static <T> List<T> presizedList(int size) {
        return size == 0 ? Collections.emptyList() : new ArrayList(size);
    }

    public static boolean hasDuplicates(List<?> list) {
        if (list.size() < 2) {
            return false;
        }
        Set<Object> asSet = new HashSet<>(list);
        return list.size() != asSet.size();
    }

    static <T> HashSet<T> newHashSetWithExpectedSize(int expectedSize) {
        return new HashSet<>(calculateInitialCapacity(expectedSize));
    }

    static <K, V> LinkedHashMap<K, V> newLinkedHashMapWithExpectedSize(int expectedSize) {
        return new LinkedHashMap<>(calculateInitialCapacity(expectedSize));
    }

    private static int calculateInitialCapacity(int expectedSize) {
        if (expectedSize < 3) {
            return expectedSize + 1;
        }
        if (expectedSize < MAX_POWER_OF_TWO) {
            return (int) ((expectedSize / 0.75f) + 1.0f);
        }
        return ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    }
}
