package com.google.android.gms.internal;

import android.support.annotation.Nullable;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.internal.client.zzab;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@zzir
public class zzlq extends zzab.zza {
    private final Object zzail = new Object();
    private boolean zzaio = true;
    private final zzll zzbgj;
    private final float zzcqb;
    private int zzcqc;
    private com.google.android.gms.ads.internal.client.zzac zzcqd;
    private boolean zzcqe;
    private boolean zzcqf;
    private float zzcqg;

    public zzlq(zzll zzllVar, float f) {
        this.zzbgj = zzllVar;
        this.zzcqb = f;
    }

    private void zzc(String str, @Nullable Map<String, String> map) {
        final HashMap map2 = map == null ? new HashMap() : new HashMap(map);
        map2.put("action", str);
        com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzlq.1
            @Override // java.lang.Runnable
            public void run() {
                zzlq.this.zzbgj.zza("pubVideoCmd", map2);
            }
        });
    }

    private void zzde(String str) {
        zzc(str, null);
    }

    private void zzi(final int i, final int i2) {
        com.google.android.gms.ads.internal.zzu.zzfq().runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzlq.2
            /* JADX WARN: Removed duplicated region for block: B:41:0x006e  */
            /* JADX WARN: Removed duplicated region for block: B:43:0x0079  */
            /* JADX WARN: Removed duplicated region for block: B:59:0x0065 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:62:0x007b A[EXC_TOP_SPLITTER, SYNTHETIC] */
            /* JADX WARN: Removed duplicated region for block: B:66:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public void run() {
                /*
                    r9 = this;
                    r0 = 0
                    r1 = 1
                    com.google.android.gms.internal.zzlq r2 = com.google.android.gms.internal.zzlq.this
                    java.lang.Object r6 = com.google.android.gms.internal.zzlq.zzc(r2)
                    monitor-enter(r6)
                    int r2 = r2     // Catch: java.lang.Throwable -> L86
                    int r3 = r3     // Catch: java.lang.Throwable -> L86
                    if (r2 == r3) goto L4e
                    r2 = r1
                L10:
                    com.google.android.gms.internal.zzlq r3 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86
                    boolean r3 = com.google.android.gms.internal.zzlq.zzd(r3)     // Catch: java.lang.Throwable -> L86
                    if (r3 != 0) goto L50
                    int r3 = r3     // Catch: java.lang.Throwable -> L86
                    if (r3 != r1) goto L50
                    r5 = r1
                L1d:
                    if (r2 == 0) goto L52
                    int r3 = r3     // Catch: java.lang.Throwable -> L86
                    if (r3 != r1) goto L52
                    r4 = r1
                L24:
                    if (r2 == 0) goto L54
                    int r3 = r3     // Catch: java.lang.Throwable -> L86
                    r7 = 2
                    if (r3 != r7) goto L54
                    r3 = r1
                L2c:
                    if (r2 == 0) goto L56
                    int r2 = r3     // Catch: java.lang.Throwable -> L86
                    r7 = 3
                    if (r2 != r7) goto L56
                    r2 = r1
                L34:
                    com.google.android.gms.internal.zzlq r7 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86
                    com.google.android.gms.internal.zzlq r8 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86
                    boolean r8 = com.google.android.gms.internal.zzlq.zzd(r8)     // Catch: java.lang.Throwable -> L86
                    if (r8 != 0) goto L40
                    if (r5 == 0) goto L41
                L40:
                    r0 = r1
                L41:
                    com.google.android.gms.internal.zzlq.zza(r7, r0)     // Catch: java.lang.Throwable -> L86
                    com.google.android.gms.internal.zzlq r0 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86
                    com.google.android.gms.ads.internal.client.zzac r0 = com.google.android.gms.internal.zzlq.zze(r0)     // Catch: java.lang.Throwable -> L86
                    if (r0 != 0) goto L58
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L86
                L4d:
                    return
                L4e:
                    r2 = r0
                    goto L10
                L50:
                    r5 = r0
                    goto L1d
                L52:
                    r4 = r0
                    goto L24
                L54:
                    r3 = r0
                    goto L2c
                L56:
                    r2 = r0
                    goto L34
                L58:
                    if (r5 == 0) goto L63
                    com.google.android.gms.internal.zzlq r0 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L89
                    com.google.android.gms.ads.internal.client.zzac r0 = com.google.android.gms.internal.zzlq.zze(r0)     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L89
                    r0.zzjb()     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L89
                L63:
                    if (r4 == 0) goto L6e
                    com.google.android.gms.internal.zzlq r0 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L90
                    com.google.android.gms.ads.internal.client.zzac r0 = com.google.android.gms.internal.zzlq.zze(r0)     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L90
                    r0.zzjc()     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L90
                L6e:
                    if (r3 == 0) goto L79
                    com.google.android.gms.internal.zzlq r0 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L97
                    com.google.android.gms.ads.internal.client.zzac r0 = com.google.android.gms.internal.zzlq.zze(r0)     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L97
                    r0.zzjd()     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L97
                L79:
                    if (r2 == 0) goto L84
                    com.google.android.gms.internal.zzlq r0 = com.google.android.gms.internal.zzlq.this     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L9e
                    com.google.android.gms.ads.internal.client.zzac r0 = com.google.android.gms.internal.zzlq.zze(r0)     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L9e
                    r0.onVideoEnd()     // Catch: java.lang.Throwable -> L86 android.os.RemoteException -> L9e
                L84:
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L86
                    goto L4d
                L86:
                    r0 = move-exception
                    monitor-exit(r6)     // Catch: java.lang.Throwable -> L86
                    throw r0
                L89:
                    r0 = move-exception
                    java.lang.String r1 = "Unable to call onVideoStart()"
                    com.google.android.gms.internal.zzkh.zzd(r1, r0)     // Catch: java.lang.Throwable -> L86
                    goto L63
                L90:
                    r0 = move-exception
                    java.lang.String r1 = "Unable to call onVideoPlay()"
                    com.google.android.gms.internal.zzkh.zzd(r1, r0)     // Catch: java.lang.Throwable -> L86
                    goto L6e
                L97:
                    r0 = move-exception
                    java.lang.String r1 = "Unable to call onVideoPause()"
                    com.google.android.gms.internal.zzkh.zzd(r1, r0)     // Catch: java.lang.Throwable -> L86
                    goto L79
                L9e:
                    r0 = move-exception
                    java.lang.String r1 = "Unable to call onVideoEnd()"
                    com.google.android.gms.internal.zzkh.zzd(r1, r0)     // Catch: java.lang.Throwable -> L86
                    goto L84
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzlq.AnonymousClass2.run():void");
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public int getPlaybackState() {
        int i;
        synchronized (this.zzail) {
            i = this.zzcqc;
        }
        return i;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public boolean isMuted() {
        boolean z;
        synchronized (this.zzail) {
            z = this.zzcqf;
        }
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void pause() {
        zzde("pause");
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void play() {
        zzde("play");
    }

    public void zza(float f, int i, boolean z) {
        int i2;
        synchronized (this.zzail) {
            this.zzcqg = f;
            this.zzcqf = z;
            i2 = this.zzcqc;
            this.zzcqc = i;
        }
        zzi(i2, i);
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void zza(com.google.android.gms.ads.internal.client.zzac zzacVar) {
        synchronized (this.zzail) {
            this.zzcqd = zzacVar;
        }
    }

    public void zzam(boolean z) {
        synchronized (this.zzail) {
            this.zzaio = z;
        }
        zzc("initialState", com.google.android.gms.common.util.zzf.zze("muteStart", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO));
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public float zziz() {
        return this.zzcqb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public float zzja() {
        float f;
        synchronized (this.zzail) {
            f = this.zzcqg;
        }
        return f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzab
    public void zzm(boolean z) {
        zzde(z ? "mute" : "unmute");
    }
}
