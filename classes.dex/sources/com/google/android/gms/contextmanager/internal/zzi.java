package com.google.android.gms.contextmanager.internal;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.awareness.snapshot.internal.SnapshotRequest;
import com.google.android.gms.contextmanager.fence.internal.FenceQueryRequestImpl;
import com.google.android.gms.contextmanager.fence.internal.FenceUpdateRequestImpl;
import com.google.android.gms.contextmanager.internal.zzg;
import com.google.android.gms.contextmanager.internal.zzh;

/* JADX INFO: loaded from: classes.dex */
public interface zzi extends IInterface {

    public static abstract class zza extends Binder implements zzi {

        /* JADX INFO: renamed from: com.google.android.gms.contextmanager.internal.zzi$zza$zza, reason: collision with other inner class name */
        private static class C0086zza implements zzi {
            private IBinder zzahn;

            C0086zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, SnapshotRequest snapshotRequest) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (snapshotRequest != null) {
                        parcelObtain.writeInt(1);
                        snapshotRequest.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(15, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, FenceQueryRequestImpl fenceQueryRequestImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (fenceQueryRequestImpl != null) {
                        parcelObtain.writeInt(1);
                        fenceQueryRequestImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, FenceUpdateRequestImpl fenceUpdateRequestImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (fenceUpdateRequestImpl != null) {
                        parcelObtain.writeInt(1);
                        fenceUpdateRequestImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(13, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (contextDataFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        contextDataFilterImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl, RelationFilterImpl relationFilterImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (contextDataFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        contextDataFilterImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (relationFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        relationFilterImpl.writeToParcel(parcelObtain, 0);
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

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl, RelationFilterImpl relationFilterImpl, zzg zzgVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (contextDataFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        contextDataFilterImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (relationFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        relationFilterImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    this.zzahn.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl, RelationFilterImpl relationFilterImpl, zzg zzgVar, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (contextDataFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        contextDataFilterImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (relationFilterImpl != null) {
                        parcelObtain.writeInt(1);
                        relationFilterImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, InterestUpdateBatchImpl interestUpdateBatchImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (interestUpdateBatchImpl != null) {
                        parcelObtain.writeInt(1);
                        interestUpdateBatchImpl.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, WriteBatchImpl writeBatchImpl) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    if (writeBatchImpl != null) {
                        parcelObtain.writeInt(1);
                        writeBatchImpl.writeToParcel(parcelObtain, 0);
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

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, zzg zzgVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    this.zzahn.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.contextmanager.internal.zzi
            public void zza(zzh zzhVar, String str, String str2, String str3, zzg zzgVar, PendingIntent pendingIntent) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    parcelObtain.writeStrongBinder(zzhVar != null ? zzhVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeStrongBinder(zzgVar != null ? zzgVar.asBinder() : null);
                    if (pendingIntent != null) {
                        parcelObtain.writeInt(1);
                        pendingIntent.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static zzi zzei(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzi)) ? new C0086zza(iBinder) : (zzi) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? WriteBatchImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? ContextDataFilterImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? RelationFilterImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? ContextDataFilterImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? RelationFilterImpl.CREATOR.createFromParcel(parcel) : null, zzg.zza.zzeg(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), zzg.zza.zzeg(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? ContextDataFilterImpl.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? RelationFilterImpl.CREATOR.createFromParcel(parcel) : null, zzg.zza.zzeg(parcel.readStrongBinder()), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), zzg.zza.zzeg(parcel.readStrongBinder()), parcel.readInt() != 0 ? (PendingIntent) PendingIntent.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? InterestUpdateBatchImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? FenceUpdateRequestImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? ContextDataFilterImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 15:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? SnapshotRequest.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    zza(zzh.zza.zzeh(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readInt() != 0 ? FenceQueryRequestImpl.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.contextmanager.internal.IContextManagerService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void zza(zzh zzhVar, String str, String str2, String str3, SnapshotRequest snapshotRequest) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, FenceQueryRequestImpl fenceQueryRequestImpl) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, FenceUpdateRequestImpl fenceUpdateRequestImpl) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl, RelationFilterImpl relationFilterImpl) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl, RelationFilterImpl relationFilterImpl, zzg zzgVar) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, ContextDataFilterImpl contextDataFilterImpl, RelationFilterImpl relationFilterImpl, zzg zzgVar, PendingIntent pendingIntent) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, InterestUpdateBatchImpl interestUpdateBatchImpl) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, WriteBatchImpl writeBatchImpl) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, zzg zzgVar) throws RemoteException;

    void zza(zzh zzhVar, String str, String str2, String str3, zzg zzgVar, PendingIntent pendingIntent) throws RemoteException;
}
