package com.google.android.gms.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.util.zze;
import com.google.android.gms.common.util.zzh;
import com.google.android.gms.internal.zzapg;
import com.google.android.gms.internal.zzpg;
import com.google.android.gms.internal.zzph;
import com.google.android.gms.internal.zzpl;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class zzb {
    private final String aQ;
    private final Context mContext;
    private final int pQ;
    private String pR;
    private int pS;
    private String pT;
    private String pU;
    private final boolean pV;
    private int pW;
    private final com.google.android.gms.clearcut.zzc pX;
    private final com.google.android.gms.clearcut.zza pY;
    private zzd pZ;
    private final InterfaceC0069zzb qa;
    private final zze zzaoa;
    public static final Api.zzf<zzph> bN = new Api.zzf<>();
    public static final Api.zza<zzph, Api.ApiOptions.NoOptions> bO = new Api.zza<zzph, Api.ApiOptions.NoOptions>() { // from class: com.google.android.gms.clearcut.zzb.1
        @Override // com.google.android.gms.common.api.Api.zza
        /* JADX INFO: renamed from: zze, reason: merged with bridge method [inline-methods] */
        public zzph zza(Context context, Looper looper, zzg zzgVar, Api.ApiOptions.NoOptions noOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
            return new zzph(context, looper, zzgVar, connectionCallbacks, onConnectionFailedListener);
        }
    };
    public static final Api<Api.ApiOptions.NoOptions> API = new Api<>("ClearcutLogger.API", bO, bN);
    public static final com.google.android.gms.clearcut.zzc pP = new zzpg();

    public class zza {
        private String pR;
        private int pS;
        private String pT;
        private String pU;
        private int pW;
        private final zzc qb;
        private ArrayList<Integer> qc;
        private ArrayList<String> qd;
        private ArrayList<Integer> qe;
        private ArrayList<byte[]> qf;
        private boolean qg;
        private final zzapg.zzd qh;
        private boolean qi;

        private zza(zzb zzbVar, byte[] bArr) {
            this(bArr, (zzc) null);
        }

        private zza(byte[] bArr, zzc zzcVar) {
            this.pS = zzb.this.pS;
            this.pR = zzb.this.pR;
            this.pT = zzb.this.pT;
            this.pU = zzb.this.pU;
            this.pW = zzb.zze(zzb.this);
            this.qc = null;
            this.qd = null;
            this.qe = null;
            this.qf = null;
            this.qg = true;
            this.qh = new zzapg.zzd();
            this.qi = false;
            this.pT = zzb.this.pT;
            this.pU = zzb.this.pU;
            this.qh.biF = zzb.this.zzaoa.currentTimeMillis();
            this.qh.biG = zzb.this.zzaoa.elapsedRealtime();
            this.qh.biX = zzb.this.pY.zzbk(zzb.this.mContext);
            this.qh.biR = zzb.this.pZ.zzae(this.qh.biF);
            if (bArr != null) {
                this.qh.biM = bArr;
            }
            this.qb = zzcVar;
        }

        public LogEventParcelable zzamv() {
            return new LogEventParcelable(new PlayLoggerContext(zzb.this.aQ, zzb.this.pQ, this.pS, this.pR, this.pT, this.pU, zzb.this.pV, this.pW), this.qh, this.qb, null, zzb.zzb((ArrayList<Integer>) null), zzb.zzc((ArrayList<String>) null), zzb.zzb((ArrayList<Integer>) null), zzb.zzd((ArrayList<byte[]>) null), this.qg);
        }

        public PendingResult<Status> zze(GoogleApiClient googleApiClient) {
            if (this.qi) {
                throw new IllegalStateException("do not reuse LogEventBuilder");
            }
            this.qi = true;
            PlayLoggerContext playLoggerContext = zzamv().qk;
            return zzb.this.qa.zzg(playLoggerContext.asm, playLoggerContext.asi) ? zzb.this.pX.zza(googleApiClient, zzamv()) : PendingResults.immediatePendingResult(Status.sg);
        }

        public zza zzew(int i) {
            this.qh.biI = i;
            return this;
        }

        public zza zzex(int i) {
            this.qh.zzahl = i;
            return this;
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.clearcut.zzb$zzb, reason: collision with other inner class name */
    public interface InterfaceC0069zzb {
        boolean zzg(String str, int i);
    }

    public interface zzc {
        byte[] zzamw();
    }

    public static class zzd {
        public long zzae(long j) {
            return TimeZone.getDefault().getOffset(j) / 1000;
        }
    }

    public zzb(Context context, int i, String str, String str2, String str3, boolean z, com.google.android.gms.clearcut.zzc zzcVar, zze zzeVar, zzd zzdVar, com.google.android.gms.clearcut.zza zzaVar, InterfaceC0069zzb interfaceC0069zzb) {
        this.pS = -1;
        this.pW = 0;
        Context applicationContext = context.getApplicationContext();
        this.mContext = applicationContext == null ? context : applicationContext;
        this.aQ = context.getPackageName();
        this.pQ = zzbl(context);
        this.pS = i;
        this.pR = str;
        this.pT = str2;
        this.pU = str3;
        this.pV = z;
        this.pX = zzcVar;
        this.zzaoa = zzeVar;
        this.pZ = zzdVar == null ? new zzd() : zzdVar;
        this.pY = zzaVar;
        this.pW = 0;
        this.qa = interfaceC0069zzb;
        if (this.pV) {
            zzab.zzb(this.pT == null, "can't be anonymous with an upload account");
        }
    }

    public zzb(Context context, String str, String str2) {
        this(context, -1, str, str2, null, false, pP, zzh.zzavi(), null, com.google.android.gms.clearcut.zza.pO, new zzpl(context));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int[] zzb(ArrayList<Integer> arrayList) {
        if (arrayList == null) {
            return null;
        }
        int[] iArr = new int[arrayList.size()];
        int i = 0;
        Iterator<Integer> it = arrayList.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return iArr;
            }
            i = i2 + 1;
            iArr[i2] = it.next().intValue();
        }
    }

    private int zzbl(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            Log.wtf("ClearcutLogger", "This can't happen.");
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String[] zzc(ArrayList<String> arrayList) {
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[][] zzd(ArrayList<byte[]> arrayList) {
        if (arrayList == null) {
            return null;
        }
        return (byte[][]) arrayList.toArray(new byte[0][]);
    }

    static /* synthetic */ int zze(zzb zzbVar) {
        return 0;
    }

    public zza zzl(byte[] bArr) {
        return new zza(bArr);
    }
}
