package com.google.android.gms.tagmanager;

import android.content.Context;

/* JADX INFO: loaded from: classes.dex */
public class zzz implements zzas {
    private static final Object auM = new Object();
    private static zzz avZ;
    private zzck avp;
    private zzat awa;

    private zzz(Context context) {
        this(zzau.zzdz(context), new zzcz());
    }

    zzz(zzat zzatVar, zzck zzckVar) {
        this.awa = zzatVar;
        this.avp = zzckVar;
    }

    public static zzas zzds(Context context) {
        zzz zzzVar;
        synchronized (auM) {
            if (avZ == null) {
                avZ = new zzz(context);
            }
            zzzVar = avZ;
        }
        return zzzVar;
    }

    @Override // com.google.android.gms.tagmanager.zzas
    public boolean zzob(String str) {
        if (this.avp.zzade()) {
            this.awa.zzof(str);
            return true;
        }
        zzbn.zzcy("Too many urls sent too quickly with the TagManagerSender, rate limiting invoked.");
        return false;
    }
}
