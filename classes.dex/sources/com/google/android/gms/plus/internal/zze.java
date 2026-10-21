package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.plus.People;
import com.google.android.gms.plus.Plus;
import com.google.android.gms.plus.internal.model.people.PersonEntity;
import com.google.android.gms.plus.internal.zzd;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class zze extends zzk<zzd> {
    private Person asB;
    private final PlusSession asC;

    static final class zza implements People.LoadPeopleResult {
        private final String asD;
        private final PersonBuffer asE;
        private final Status cc;

        public zza(Status status, DataHolder dataHolder, String str) {
            this.cc = status;
            this.asD = str;
            this.asE = dataHolder != null ? new PersonBuffer(dataHolder) : null;
        }

        @Override // com.google.android.gms.plus.People.LoadPeopleResult
        public String getNextPageToken() {
            return this.asD;
        }

        @Override // com.google.android.gms.plus.People.LoadPeopleResult
        public PersonBuffer getPersonBuffer() {
            return this.asE;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.asE != null) {
                this.asE.release();
            }
        }
    }

    static final class zzb extends com.google.android.gms.plus.internal.zza {
        private final zzpr.zzb<People.LoadPeopleResult> adS;

        public zzb(zzpr.zzb<People.LoadPeopleResult> zzbVar) {
            this.adS = zzbVar;
        }

        @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
        public void zza(DataHolder dataHolder, String str) {
            Status status = new Status(dataHolder.getStatusCode(), null, dataHolder.zzaqy() != null ? (PendingIntent) dataHolder.zzaqy().getParcelable("pendingIntent") : null);
            if (!status.isSuccess() && dataHolder != null) {
                if (!dataHolder.isClosed()) {
                    dataHolder.close();
                }
                dataHolder = null;
            }
            this.adS.setResult(new zza(status, dataHolder, str));
        }
    }

    static final class zzc extends com.google.android.gms.plus.internal.zza {
        private final zzpr.zzb<Status> adS;

        public zzc(zzpr.zzb<Status> zzbVar) {
            this.adS = zzbVar;
        }

        @Override // com.google.android.gms.plus.internal.zza, com.google.android.gms.plus.internal.zzb
        public void zzk(int i, Bundle bundle) {
            this.adS.setResult(new Status(i, null, bundle != null ? (PendingIntent) bundle.getParcelable("pendingIntent") : null));
        }
    }

    public zze(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, PlusSession plusSession, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 2, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.asC = plusSession;
    }

    public static boolean zze(Set<Scope> set) {
        if (set == null || set.isEmpty()) {
            return false;
        }
        return (set.size() == 1 && set.contains(new Scope("plus_one_placeholder_scope"))) ? false : true;
    }

    public String getAccountName() {
        zzarv();
        try {
            return ((zzd) zzarw()).getAccountName();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public zzr zza(zzpr.zzb<People.LoadPeopleResult> zzbVar, int i, String str) {
        zzarv();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            return ((zzd) zzarw()).zza(zzbVar2, 1, i, -1, str);
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzfp(8), (String) null);
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person")) {
            this.asB = PersonEntity.zzaj(bundle.getByteArray("loaded_person"));
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(zzpr.zzb<People.LoadPeopleResult> zzbVar, Collection<String> collection) {
        zzarv();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzd) zzarw()).zza(zzbVar2, new ArrayList(collection));
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzfp(8), (String) null);
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        Bundle bundleZzbyr = this.asC.zzbyr();
        bundleZzbyr.putStringArray("request_visible_actions", this.asC.zzbyl());
        bundleZzbyr.putString("auth_package", this.asC.zzbyn());
        return bundleZzbyr;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public boolean zzafk() {
        return zze(zzasr().zzb(Plus.API));
    }

    public void zzbyf() {
        zzarv();
        try {
            this.asB = null;
            ((zzd) zzarw()).zzbyf();
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public Person zzbyh() {
        zzarv();
        return this.asB;
    }

    public void zzd(zzpr.zzb<People.LoadPeopleResult> zzbVar, String[] strArr) {
        zza(zzbVar, Arrays.asList(strArr));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzjz, reason: merged with bridge method [inline-methods] */
    public zzd zzbb(IBinder iBinder) {
        return zzd.zza.zzjy(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.plus.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    public zzr zzu(zzpr.zzb<People.LoadPeopleResult> zzbVar, String str) {
        return zza(zzbVar, 0, str);
    }

    public void zzv(zzpr.zzb<People.LoadPeopleResult> zzbVar) {
        zzarv();
        zzb zzbVar2 = new zzb(zzbVar);
        try {
            ((zzd) zzarw()).zza(zzbVar2, 2, 1, -1, null);
        } catch (RemoteException e) {
            zzbVar2.zza(DataHolder.zzfp(8), (String) null);
        }
    }

    public void zzw(zzpr.zzb<Status> zzbVar) {
        zzarv();
        zzbyf();
        zzc zzcVar = new zzc(zzbVar);
        try {
            ((zzd) zzarw()).zzb(zzcVar);
        } catch (RemoteException e) {
            zzcVar.zzk(8, null);
        }
    }
}
