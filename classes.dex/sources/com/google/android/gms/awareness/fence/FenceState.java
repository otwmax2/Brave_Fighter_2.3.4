package com.google.android.gms.awareness.fence;

import android.content.Intent;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.contextmanager.fence.internal.FenceStateImpl;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public abstract class FenceState extends AbstractSafeParcelable {
    public static final int FALSE = 1;
    public static final int TRUE = 2;
    public static final int UNKNOWN = 0;

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    public static FenceState extract(Intent intent) {
        return FenceStateImpl.extract(intent);
    }

    public abstract int getCurrentState();

    public abstract String getFenceKey();

    public abstract long getLastFenceUpdateTimeMillis();

    public abstract int getPreviousState();
}
