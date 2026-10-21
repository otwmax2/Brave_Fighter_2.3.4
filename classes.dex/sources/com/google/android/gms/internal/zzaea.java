package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
public class zzaea {
    public static final Integer aDy = 0;
    public static final Integer aDz = 1;
    private final ExecutorService axF;
    private final Context mContext;

    public zzaea(Context context) {
        this(context, Executors.newSingleThreadExecutor());
    }

    zzaea(Context context, ExecutorService executorService) {
        this.mContext = context;
        this.axF = executorService;
    }
}
