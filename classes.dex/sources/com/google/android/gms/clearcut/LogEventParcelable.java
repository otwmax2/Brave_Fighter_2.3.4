package com.google.android.gms.clearcut;

import android.os.Parcel;
import com.google.android.gms.clearcut.zzb;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.internal.zzapg;
import com.google.android.gms.playlog.internal.PlayLoggerContext;
import com.ironsource.sdk.constants.Constants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public class LogEventParcelable extends AbstractSafeParcelable {
    public static final zzd CREATOR = new zzd();
    public PlayLoggerContext qk;
    public byte[] ql;
    public int[] qm;
    public String[] qn;
    public int[] qo;
    public byte[][] qp;
    public boolean qq;
    public final zzapg.zzd qr;
    public final zzb.zzc qs;
    public final zzb.zzc qt;
    public final int versionCode;

    LogEventParcelable(int i, PlayLoggerContext playLoggerContext, byte[] bArr, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr2, boolean z) {
        this.versionCode = i;
        this.qk = playLoggerContext;
        this.ql = bArr;
        this.qm = iArr;
        this.qn = strArr;
        this.qr = null;
        this.qs = null;
        this.qt = null;
        this.qo = iArr2;
        this.qp = bArr2;
        this.qq = z;
    }

    public LogEventParcelable(PlayLoggerContext playLoggerContext, zzapg.zzd zzdVar, zzb.zzc zzcVar, zzb.zzc zzcVar2, int[] iArr, String[] strArr, int[] iArr2, byte[][] bArr, boolean z) {
        this.versionCode = 1;
        this.qk = playLoggerContext;
        this.qr = zzdVar;
        this.qs = zzcVar;
        this.qt = zzcVar2;
        this.qm = iArr;
        this.qn = strArr;
        this.qo = iArr2;
        this.qp = bArr;
        this.qq = z;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LogEventParcelable)) {
            return false;
        }
        LogEventParcelable logEventParcelable = (LogEventParcelable) obj;
        return this.versionCode == logEventParcelable.versionCode && zzaa.equal(this.qk, logEventParcelable.qk) && Arrays.equals(this.ql, logEventParcelable.ql) && Arrays.equals(this.qm, logEventParcelable.qm) && Arrays.equals(this.qn, logEventParcelable.qn) && zzaa.equal(this.qr, logEventParcelable.qr) && zzaa.equal(this.qs, logEventParcelable.qs) && zzaa.equal(this.qt, logEventParcelable.qt) && Arrays.equals(this.qo, logEventParcelable.qo) && Arrays.deepEquals(this.qp, logEventParcelable.qp) && this.qq == logEventParcelable.qq;
    }

    public int hashCode() {
        return zzaa.hashCode(Integer.valueOf(this.versionCode), this.qk, this.ql, this.qm, this.qn, this.qr, this.qs, this.qt, this.qo, this.qp, Boolean.valueOf(this.qq));
    }

    public String toString() {
        return "LogEventParcelable[" + this.versionCode + ", " + this.qk + ", LogEventBytes: " + (this.ql == null ? null : new String(this.ql)) + ", TestCodes: " + Arrays.toString(this.qm) + ", MendelPackages: " + Arrays.toString(this.qn) + ", LogEvent: " + this.qr + ", ExtensionProducer: " + this.qs + ", VeProducer: " + this.qt + ", ExperimentIDs: " + Arrays.toString(this.qo) + ", ExperimentTokens: " + Arrays.toString(this.qp) + ", AddPhenotypeExperimentTokens: " + this.qq + Constants.RequestParameters.RIGHT_BRACKETS;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
