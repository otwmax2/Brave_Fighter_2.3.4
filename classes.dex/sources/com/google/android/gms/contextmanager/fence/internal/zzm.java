package com.google.android.gms.contextmanager.fence.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: loaded from: classes.dex */
public interface zzm extends IInterface {

    public static abstract class zza extends Binder implements zzm {

        /* JADX INFO: renamed from: com.google.android.gms.contextmanager.fence.internal.zzm$zza$zza, reason: collision with other inner class name */
        private static class C0082zza implements zzm {
            private IBinder zzahn;

            C0082zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.contextmanager.fence.internal.zzm
            public void zza(FenceTriggerInfoImpl fenceTriggerInfoImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    if (fenceTriggerInfoImpl != null) {
                        parcelObtain.writeInt(1);
                        fenceTriggerInfoImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public zza() {
            attachInterface(this, "com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
        }

        public static zzm zzee(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzm)) ? new C0082zza(iBinder) : (zzm) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    zza(parcel.readInt() != 0 ? FenceTriggerInfoImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.contextmanager.fence.internal.IContextFenceListener");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(FenceTriggerInfoImpl fenceTriggerInfoImpl) throws RemoteException;
}
