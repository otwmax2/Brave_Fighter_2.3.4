package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyGrpcRequest;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.internal.zznf;

/* JADX INFO: loaded from: classes.dex */
public interface zzng extends IInterface {

    public static abstract class zza extends Binder implements zzng {

        /* JADX INFO: renamed from: com.google.android.gms.internal.zzng$zza$zza, reason: collision with other inner class name */
        private static class C0143zza implements zzng {
            private IBinder zzahn;

            C0143zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.internal.zzng
            public void zza(zznf zznfVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    parcelObtain.writeStrongBinder(zznfVar != null ? zznfVar.asBinder() : null);
                    this.zzahn.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzng
            public void zza(zznf zznfVar, ProxyGrpcRequest proxyGrpcRequest) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    parcelObtain.writeStrongBinder(zznfVar != null ? zznfVar.asBinder() : null);
                    if (proxyGrpcRequest != null) {
                        parcelObtain.writeInt(1);
                        proxyGrpcRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.internal.zzng
            public void zza(zznf zznfVar, ProxyRequest proxyRequest) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.auth.api.internal.IAuthService");
                    parcelObtain.writeStrongBinder(zznfVar != null ? zznfVar.asBinder() : null);
                    if (proxyRequest != null) {
                        parcelObtain.writeInt(1);
                        proxyRequest.writeToParcel(parcelObtain, 0);
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

        public static zzng zzch(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.auth.api.internal.IAuthService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzng)) ? new C0143zza(iBinder) : (zzng) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zza(zznf.zza.zzcg(parcel.readStrongBinder()), parcel.readInt() != 0 ? ProxyRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zza(zznf.zza.zzcg(parcel.readStrongBinder()), parcel.readInt() != 0 ? ProxyGrpcRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.auth.api.internal.IAuthService");
                    zza(zznf.zza.zzcg(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.auth.api.internal.IAuthService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zznf zznfVar) throws RemoteException;

    void zza(zznf zznfVar, ProxyGrpcRequest proxyGrpcRequest) throws RemoteException;

    void zza(zznf zznfVar, ProxyRequest proxyRequest) throws RemoteException;
}
