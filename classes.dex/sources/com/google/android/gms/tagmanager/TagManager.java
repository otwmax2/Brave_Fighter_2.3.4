package com.google.android.gms.tagmanager;

import android.annotation.TargetApi;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.RawRes;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.tagmanager.DataLayer;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: loaded from: classes.dex */
public class TagManager {
    private static TagManager ayG;
    private final DataLayer ava;
    private final zzs axA;
    private final zza ayD;
    private final zzda ayE;
    private final ConcurrentMap<zzo, Boolean> ayF;
    private final Context mContext;

    public interface zza {
        zzp zza(Context context, TagManager tagManager, Looper looper, String str, int i, zzs zzsVar);
    }

    TagManager(Context context, zza zzaVar, DataLayer dataLayer, zzda zzdaVar) {
        if (context == null) {
            throw new NullPointerException("context cannot be null");
        }
        this.mContext = context.getApplicationContext();
        this.ayE = zzdaVar;
        this.ayD = zzaVar;
        this.ayF = new ConcurrentHashMap();
        this.ava = dataLayer;
        this.ava.zza(new DataLayer.zzb() { // from class: com.google.android.gms.tagmanager.TagManager.1
            @Override // com.google.android.gms.tagmanager.DataLayer.zzb
            public void zzaw(Map<String, Object> map) {
                Object obj = map.get("event");
                if (obj != null) {
                    TagManager.this.zzoo(obj.toString());
                }
            }
        });
        this.ava.zza(new zzd(this.mContext));
        this.axA = new zzs();
        zzcde();
    }

    @RequiresPermission(allOf = {"android.permission.INTERNET", "android.permission.ACCESS_NETWORK_STATE"})
    public static TagManager getInstance(Context context) {
        TagManager tagManager;
        synchronized (TagManager.class) {
            if (ayG == null) {
                if (context == null) {
                    zzbn.e("TagManager.getInstance requires non-null context.");
                    throw new NullPointerException();
                }
                ayG = new TagManager(context, new zza() { // from class: com.google.android.gms.tagmanager.TagManager.2
                    @Override // com.google.android.gms.tagmanager.TagManager.zza
                    public zzp zza(Context context2, TagManager tagManager2, Looper looper, String str, int i, zzs zzsVar) {
                        return new zzp(context2, tagManager2, looper, str, i, zzsVar);
                    }
                }, new DataLayer(new zzw(context)), zzdb.zzccy());
            }
            tagManager = ayG;
        }
        return tagManager;
    }

    @TargetApi(14)
    private void zzcde() {
        if (Build.VERSION.SDK_INT >= 14) {
            this.mContext.registerComponentCallbacks(new ComponentCallbacks2() { // from class: com.google.android.gms.tagmanager.TagManager.3
                @Override // android.content.ComponentCallbacks
                public void onConfigurationChanged(Configuration configuration) {
                }

                @Override // android.content.ComponentCallbacks
                public void onLowMemory() {
                }

                @Override // android.content.ComponentCallbacks2
                public void onTrimMemory(int i) {
                    if (i == 20) {
                        TagManager.this.dispatch();
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzoo(String str) {
        Iterator<zzo> it = this.ayF.keySet().iterator();
        while (it.hasNext()) {
            it.next().zznq(str);
        }
    }

    public void dispatch() {
        this.ayE.dispatch();
    }

    public DataLayer getDataLayer() {
        return this.ava;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i) {
        zzp zzpVarZza = this.ayD.zza(this.mContext, this, null, str, i, this.axA);
        zzpVarZza.zzcam();
        return zzpVarZza;
    }

    public PendingResult<ContainerHolder> loadContainerDefaultOnly(String str, @RawRes int i, Handler handler) {
        zzp zzpVarZza = this.ayD.zza(this.mContext, this, handler.getLooper(), str, i, this.axA);
        zzpVarZza.zzcam();
        return zzpVarZza;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i) {
        zzp zzpVarZza = this.ayD.zza(this.mContext, this, null, str, i, this.axA);
        zzpVarZza.zzcao();
        return zzpVarZza;
    }

    public PendingResult<ContainerHolder> loadContainerPreferFresh(String str, @RawRes int i, Handler handler) {
        zzp zzpVarZza = this.ayD.zza(this.mContext, this, handler.getLooper(), str, i, this.axA);
        zzpVarZza.zzcao();
        return zzpVarZza;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i) {
        zzp zzpVarZza = this.ayD.zza(this.mContext, this, null, str, i, this.axA);
        zzpVarZza.zzcan();
        return zzpVarZza;
    }

    public PendingResult<ContainerHolder> loadContainerPreferNonDefault(String str, @RawRes int i, Handler handler) {
        zzp zzpVarZza = this.ayD.zza(this.mContext, this, handler.getLooper(), str, i, this.axA);
        zzpVarZza.zzcan();
        return zzpVarZza;
    }

    public void setVerboseLoggingEnabled(boolean z) {
        zzbn.setLogLevel(z ? 2 : 5);
    }

    public void zza(zzo zzoVar) {
        this.ayF.put(zzoVar, true);
    }

    public boolean zzb(zzo zzoVar) {
        return this.ayF.remove(zzoVar) != null;
    }

    synchronized boolean zzt(Uri uri) {
        boolean z;
        zzci zzciVarZzcce = zzci.zzcce();
        if (zzciVarZzcce.zzt(uri)) {
            String containerId = zzciVarZzcce.getContainerId();
            switch (zzciVarZzcce.zzccf()) {
                case NONE:
                    for (zzo zzoVar : this.ayF.keySet()) {
                        if (zzoVar.getContainerId().equals(containerId)) {
                            zzoVar.zzns(null);
                            zzoVar.refresh();
                        }
                    }
                    break;
                case CONTAINER:
                case CONTAINER_DEBUG:
                    for (zzo zzoVar2 : this.ayF.keySet()) {
                        if (zzoVar2.getContainerId().equals(containerId)) {
                            zzoVar2.zzns(zzciVarZzcce.zzccg());
                            zzoVar2.refresh();
                        } else if (zzoVar2.zzcaj() != null) {
                            zzoVar2.zzns(null);
                            zzoVar2.refresh();
                        }
                    }
                    break;
            }
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
