package com.google.android.gms.internal;

/* JADX INFO: loaded from: classes.dex */
public final class zzuh {
    private static zzuh Qr;
    private final zzue Qs = new zzue();
    private final zzuf Qt = new zzuf();

    static {
        zza(new zzuh());
    }

    private zzuh() {
    }

    protected static void zza(zzuh zzuhVar) {
        synchronized (zzuh.class) {
            Qr = zzuhVar;
        }
    }

    private static zzuh zzbfq() {
        zzuh zzuhVar;
        synchronized (zzuh.class) {
            zzuhVar = Qr;
        }
        return zzuhVar;
    }

    public static zzue zzbfr() {
        return zzbfq().Qs;
    }

    public static zzuf zzbfs() {
        return zzbfq().Qt;
    }
}
