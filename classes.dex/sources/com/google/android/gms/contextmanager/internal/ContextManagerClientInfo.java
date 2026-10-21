package com.google.android.gms.contextmanager.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import com.google.android.gms.awareness.AwarenessOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.internal.zzbr;

/* JADX INFO: loaded from: classes.dex */
public class ContextManagerClientInfo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ContextManagerClientInfo> CREATOR = new zze();
    private final int Ct;
    private final int Cu;
    private zzbr Cv;
    private final String aQ;
    private final String cf;
    private final int fA;
    private final String fB;
    private final String fC;
    private final int fD;
    private final String fz;
    private final int mVersionCode;

    ContextManagerClientInfo(int i, String str, String str2, int i2, String str3, int i3, int i4, String str4, String str5, int i5) {
        this.mVersionCode = i;
        this.cf = str;
        this.aQ = str2;
        this.Ct = i2;
        this.fz = str3;
        this.Cu = i3;
        this.fA = i4;
        this.fB = str4;
        this.fC = str5;
        this.fD = i5;
    }

    public ContextManagerClientInfo(String str, String str2, int i, String str3, int i2, int i3, String str4, String str5, int i4) {
        this(1, zzab.zzhs(str), zzab.zzhs(str2), i, zzab.zzhs(str3), i2, i3, str4, str5, i4);
    }

    public static ContextManagerClientInfo zza(Context context, String str, AwarenessOptions awarenessOptions) {
        return new ContextManagerClientInfo(str, context.getPackageName(), Process.myUid(), awarenessOptions.zzagm(), com.google.android.gms.common.util.zzd.zzo(context, context.getPackageName()), awarenessOptions.zzagn(), awarenessOptions.zzago(), awarenessOptions.zzagp(), awarenessOptions.zzagq());
    }

    public static ContextManagerClientInfo zzs(Context context, String str) {
        return new ContextManagerClientInfo(str, context.getPackageName(), Process.myUid(), context.getPackageName(), com.google.android.gms.common.util.zzd.zzo(context, context.getPackageName()), 3, null, null, -1);
    }

    public String getAccountName() {
        return this.cf;
    }

    public String getPackageName() {
        return this.aQ;
    }

    public int getUid() {
        return this.Ct;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public byte[] toByteArray() {
        return com.google.android.gms.common.internal.safeparcel.zzc.zza(this);
    }

    public String toString() {
        String strValueOf = String.valueOf(zzaxw());
        String strValueOf2 = String.valueOf(getPackageName());
        int uid = getUid();
        String strValueOf3 = String.valueOf(zzagm());
        int iZzaxx = zzaxx();
        String strValueOf4 = String.valueOf(zzaxy());
        String strValueOf5 = String.valueOf(zzago());
        String strValueOf6 = String.valueOf(zzagp());
        return new StringBuilder(String.valueOf(strValueOf).length() + 100 + String.valueOf(strValueOf2).length() + String.valueOf(strValueOf3).length() + String.valueOf(strValueOf4).length() + String.valueOf(strValueOf5).length() + String.valueOf(strValueOf6).length()).append("(account=").append(strValueOf).append(", ").append(strValueOf2).append("(").append(uid).append("):").append(strValueOf3).append(", version=").append(iZzaxx).append(", ").append(strValueOf4).append(", thirdPartyPackageName = ").append(strValueOf5).append(" ,  thirdPartyModuleId = ").append(strValueOf6).append(")").toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public String zzagm() {
        return this.fz;
    }

    int zzagn() {
        return this.fA;
    }

    public String zzago() {
        return this.fB;
    }

    public String zzagp() {
        return this.fC;
    }

    public int zzagq() {
        return this.fD;
    }

    public zzbr zzaxw() {
        if (this.cf == null) {
            return null;
        }
        if (this.Cv == null) {
            this.Cv = new zzbr(this.cf);
        }
        return this.Cv;
    }

    public int zzaxx() {
        return this.Cu;
    }

    public String zzaxy() {
        switch (this.fA) {
            case 0:
                return "0P";
            case 1:
                return "1P";
            case 2:
            default:
                return "unknownPartyType";
            case 3:
                return "3P";
        }
    }
}
