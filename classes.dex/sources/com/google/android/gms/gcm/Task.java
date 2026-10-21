package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.CallSuper;
import android.util.Log;
import com.facebook.applinks.AppLinkData;
import com.google.android.gms.common.internal.zzab;
import java.util.Iterator;

/* JADX INFO: loaded from: classes.dex */
public abstract class Task implements Parcelable {
    public static final int EXTRAS_LIMIT_BYTES = 10240;
    public static final int NETWORK_STATE_ANY = 2;
    public static final int NETWORK_STATE_CONNECTED = 0;
    public static final int NETWORK_STATE_UNMETERED = 1;
    protected static final long UNINITIALIZED = -1;
    private final String abg;
    private final boolean abh;
    private final boolean abi;
    private final int abj;
    private final boolean abk;
    private final zzc abl;
    private final Bundle mExtras;
    private final String mTag;

    public static abstract class Builder {
        protected zzc abm = zzc.abb;
        protected Bundle extras;
        protected String gcmTaskService;
        protected boolean isPersisted;
        protected int requiredNetworkState;
        protected boolean requiresCharging;
        protected String tag;
        protected boolean updateCurrent;

        public abstract Task build();

        @CallSuper
        protected void checkConditions() {
            zzab.zzb(this.gcmTaskService != null, "Must provide an endpoint for this task by calling setService(ComponentName).");
            GcmNetworkManager.zzjy(this.tag);
            Task.zza(this.abm);
            if (this.isPersisted) {
                Task.zzaj(this.extras);
            }
        }

        public abstract Builder setExtras(Bundle bundle);

        public abstract Builder setPersisted(boolean z);

        public abstract Builder setRequiredNetwork(int i);

        public abstract Builder setRequiresCharging(boolean z);

        public abstract Builder setService(Class<? extends GcmTaskService> cls);

        public abstract Builder setTag(String str);

        public abstract Builder setUpdateCurrent(boolean z);
    }

    @Deprecated
    Task(Parcel parcel) {
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.abg = parcel.readString();
        this.mTag = parcel.readString();
        this.abh = parcel.readInt() == 1;
        this.abi = parcel.readInt() == 1;
        this.abj = 2;
        this.abk = false;
        this.abl = zzc.abb;
        this.mExtras = null;
    }

    Task(Builder builder) {
        this.abg = builder.gcmTaskService;
        this.mTag = builder.tag;
        this.abh = builder.updateCurrent;
        this.abi = builder.isPersisted;
        this.abj = builder.requiredNetworkState;
        this.abk = builder.requiresCharging;
        this.mExtras = builder.extras;
        this.abl = builder.abm != null ? builder.abm : zzc.abb;
    }

    public static void zza(zzc zzcVar) {
        if (zzcVar != null) {
            int iZzbmg = zzcVar.zzbmg();
            if (iZzbmg != 1 && iZzbmg != 0) {
                throw new IllegalArgumentException(new StringBuilder(45).append("Must provide a valid RetryPolicy: ").append(iZzbmg).toString());
            }
            int iZzbmh = zzcVar.zzbmh();
            int iZzbmi = zzcVar.zzbmi();
            if (iZzbmg == 0 && iZzbmh < 0) {
                throw new IllegalArgumentException(new StringBuilder(52).append("InitialBackoffSeconds can't be negative: ").append(iZzbmh).toString());
            }
            if (iZzbmg == 1 && iZzbmh < 10) {
                throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
            }
            if (iZzbmi < iZzbmh) {
                throw new IllegalArgumentException(new StringBuilder(77).append("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: ").append(zzcVar.zzbmi()).toString());
            }
        }
    }

    private static boolean zzaf(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean);
    }

    public static void zzaj(Bundle bundle) {
        if (bundle != null) {
            Parcel parcelObtain = Parcel.obtain();
            bundle.writeToParcel(parcelObtain, 0);
            int iDataSize = parcelObtain.dataSize();
            if (iDataSize > 10240) {
                parcelObtain.recycle();
                String strValueOf = String.valueOf("Extras exceeding maximum size(10240 bytes): ");
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 11).append(strValueOf).append(iDataSize).toString());
            }
            parcelObtain.recycle();
            Iterator<String> it = bundle.keySet().iterator();
            while (it.hasNext()) {
                if (!zzaf(bundle.get(it.next()))) {
                    throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean. ");
                }
            }
        }
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getRequiredNetwork() {
        return this.abj;
    }

    public boolean getRequiresCharging() {
        return this.abk;
    }

    public String getServiceName() {
        return this.abg;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.abi;
    }

    public boolean isUpdateCurrent() {
        return this.abh;
    }

    public void toBundle(Bundle bundle) {
        bundle.putString("tag", this.mTag);
        bundle.putBoolean("update_current", this.abh);
        bundle.putBoolean("persisted", this.abi);
        bundle.putString("service", this.abg);
        bundle.putInt("requiredNetwork", this.abj);
        bundle.putBoolean("requiresCharging", this.abk);
        bundle.putBundle("retryStrategy", this.abl.zzai(new Bundle()));
        bundle.putBundle(AppLinkData.ARGUMENTS_EXTRAS_KEY, this.mExtras);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.abg);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.abh ? 1 : 0);
        parcel.writeInt(this.abi ? 1 : 0);
    }
}
