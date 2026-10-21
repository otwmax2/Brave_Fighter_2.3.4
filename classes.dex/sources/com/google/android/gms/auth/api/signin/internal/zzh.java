package com.google.android.gms.auth.api.signin.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.internal.zzg;

/* JADX INFO: loaded from: classes.dex */
public interface zzh extends IInterface {

    public static abstract class zza extends Binder implements zzh {

        /* JADX INFO: renamed from: com.google.android.gms.auth.api.signin.internal.zzh$zza$zza, reason: collision with other inner class name */
        private static class C0067zza implements zzh {
            private IBinder zzahn;

            C0067zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zzh
            public void zza(zzg zzgVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    if (googleSignInOptions != null) {
                        parcelObtain.writeInt(1);
                        googleSignInOptions.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(101, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zzh
            public void zzb(zzg zzgVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    if (googleSignInOptions != null) {
                        parcelObtain.writeInt(1);
                        googleSignInOptions.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(102, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.auth.api.signin.internal.zzh
            public void zzc(zzg zzgVar, GoogleSignInOptions googleSignInOptions) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    if (googleSignInOptions != null) {
                        parcelObtain.writeInt(1);
                        googleSignInOptions.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(103, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static zzh zzck(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzh)) ? new C0067zza(iBinder) : (zzh) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 101:
                    parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    zza(zzg.zza.zzcj(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleSignInOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 102:
                    parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    zzb(zzg.zza.zzcj(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleSignInOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 103:
                    parcel.enforceInterface("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    zzc(zzg.zza.zzcj(parcel.readStrongBinder()), parcel.readInt() != 0 ? GoogleSignInOptions.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.signin.internal.ISignInService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzg zzgVar, GoogleSignInOptions googleSignInOptions) throws RemoteException;

    void zzb(zzg zzgVar, GoogleSignInOptions googleSignInOptions) throws RemoteException;

    void zzc(zzg zzgVar, GoogleSignInOptions googleSignInOptions) throws RemoteException;
}
