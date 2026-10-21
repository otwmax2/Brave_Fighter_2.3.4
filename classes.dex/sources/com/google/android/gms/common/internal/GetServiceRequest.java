package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzq;
import java.util.Collection;

/* JADX INFO: loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new zzj();
    final int version;
    final int yi;
    int yj;
    String yk;
    IBinder yl;
    Scope[] ym;
    Bundle yn;
    Account yo;
    long yp;

    public GetServiceRequest(int i) {
        this.version = 3;
        this.yj = com.google.android.gms.common.zzc.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.yi = i;
    }

    GetServiceRequest(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, long j) {
        this.version = i;
        this.yi = i2;
        this.yj = i3;
        this.yk = str;
        if (i < 2) {
            this.yo = zzdo(iBinder);
        } else {
            this.yl = iBinder;
            this.yo = account;
        }
        this.ym = scopeArr;
        this.yn = bundle;
        this.yp = j;
    }

    private Account zzdo(IBinder iBinder) {
        if (iBinder != null) {
            return zza.zza(zzq.zza.zzdp(iBinder));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }

    public GetServiceRequest zzb(zzq zzqVar) {
        if (zzqVar != null) {
            this.yl = zzqVar.asBinder();
        }
        return this;
    }

    public GetServiceRequest zzd(Account account) {
        this.yo = account;
        return this;
    }

    public GetServiceRequest zzf(Collection<Scope> collection) {
        this.ym = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    public GetServiceRequest zzhm(String str) {
        this.yk = str;
        return this;
    }

    public GetServiceRequest zzn(Bundle bundle) {
        this.yn = bundle;
        return this;
    }
}
