package com.google.android.gms.awareness.state;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public interface HeadphoneState {
    public static final int PLUGGED_IN = 1;
    public static final int UNPLUGGED = 2;

    @Retention(RetentionPolicy.SOURCE)
    public @interface State {
    }

    int getState();
}
