package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzr;
import com.google.android.gms.common.server.FavaDiagnosticsEntity;
import com.google.android.gms.common.server.response.SafeParcelResponse;
import com.google.android.gms.plus.internal.zzb;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface zzd extends IInterface {

    public static abstract class zza extends Binder implements zzd {

        /* JADX INFO: renamed from: com.google.android.gms.plus.internal.zzd$zza$zza, reason: collision with other inner class name */
        private static class C0159zza implements zzd {
            private IBinder zzahn;

            C0159zza(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public String getAccountName() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzahn.transact(5, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public String getAuthCode() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzahn.transact(41, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public zzr zza(zzb zzbVar, int i, int i2, int i3, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeInt(i3);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(16, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return zzr.zza.zzdq(parcelObtain2.readStrongBinder());
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(SafeParcelResponse safeParcelResponse) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    if (safeParcelResponse != null) {
                        parcelObtain.writeInt(1);
                        safeParcelResponse.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(4, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    this.zzahn.transact(8, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, int i, String str, Uri uri, String str2, String str3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    this.zzahn.transact(14, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, Uri uri, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(9, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, SafeParcelResponse safeParcelResponse) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    if (safeParcelResponse != null) {
                        parcelObtain.writeInt(1);
                        safeParcelResponse.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(45, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.zzahn.transact(2, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(zzb zzbVar, List<String> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeStringList(list);
                    this.zzahn.transact(34, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zza(String str, FavaDiagnosticsEntity favaDiagnosticsEntity, FavaDiagnosticsEntity favaDiagnosticsEntity2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeString(str);
                    if (favaDiagnosticsEntity != null) {
                        parcelObtain.writeInt(1);
                        favaDiagnosticsEntity.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (favaDiagnosticsEntity2 != null) {
                        parcelObtain.writeInt(1);
                        favaDiagnosticsEntity2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(46, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public String zzafu() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzahn.transact(43, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzb(zzb zzbVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    this.zzahn.transact(19, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzb(zzb zzbVar, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzbyf() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzahn.transact(6, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public boolean zzbyg() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    this.zzahn.transact(42, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzc(zzb zzbVar, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(18, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zzd(zzb zzbVar, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(40, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zze(zzb zzbVar, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeStrongBinder(zzbVar != null ? zzbVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(44, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.plus.internal.zzd
            public void zznf(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
                    parcelObtain.writeString(str);
                    this.zzahn.transact(17, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public static zzd zzjy(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.plus.internal.IPlusService");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof zzd)) ? new C0159zza(iBinder) : (zzd) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzb(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(parcel.readInt() != 0 ? (SafeParcelResponse) SafeParcelResponse.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    String accountName = getAccountName();
                    parcel2.writeNoException();
                    parcel2.writeString(accountName);
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzbyf();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 14:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readInt(), parcel.readString(), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzr zzrVarZza = zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    parcel2.writeStrongBinder(zzrVarZza != null ? zzrVarZza.asBinder() : null);
                    return true;
                case 17:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zznf(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 18:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzc(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 19:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzb(zzb.zza.zzjw(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    return true;
                case 34:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.createStringArrayList());
                    parcel2.writeNoException();
                    return true;
                case 40:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zzd(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 41:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    String authCode = getAuthCode();
                    parcel2.writeNoException();
                    parcel2.writeString(authCode);
                    return true;
                case 42:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    boolean zZzbyg = zzbyg();
                    parcel2.writeNoException();
                    parcel2.writeInt(zZzbyg ? 1 : 0);
                    return true;
                case 43:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    String strZzafu = zzafu();
                    parcel2.writeNoException();
                    parcel2.writeString(strZzafu);
                    return true;
                case 44:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zze(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 45:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(zzb.zza.zzjw(parcel.readStrongBinder()), parcel.readInt() != 0 ? (SafeParcelResponse) SafeParcelResponse.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 46:
                    parcel.enforceInterface("com.google.android.gms.plus.internal.IPlusService");
                    zza(parcel.readString(), parcel.readInt() != 0 ? (FavaDiagnosticsEntity) FavaDiagnosticsEntity.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (FavaDiagnosticsEntity) FavaDiagnosticsEntity.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.plus.internal.IPlusService");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String getAccountName() throws RemoteException;

    String getAuthCode() throws RemoteException;

    zzr zza(zzb zzbVar, int i, int i2, int i3, String str) throws RemoteException;

    void zza(SafeParcelResponse safeParcelResponse) throws RemoteException;

    void zza(zzb zzbVar) throws RemoteException;

    void zza(zzb zzbVar, int i, String str, Uri uri, String str2, String str3) throws RemoteException;

    void zza(zzb zzbVar, Uri uri, Bundle bundle) throws RemoteException;

    void zza(zzb zzbVar, SafeParcelResponse safeParcelResponse) throws RemoteException;

    void zza(zzb zzbVar, String str) throws RemoteException;

    void zza(zzb zzbVar, String str, String str2) throws RemoteException;

    void zza(zzb zzbVar, List<String> list) throws RemoteException;

    void zza(String str, FavaDiagnosticsEntity favaDiagnosticsEntity, FavaDiagnosticsEntity favaDiagnosticsEntity2) throws RemoteException;

    String zzafu() throws RemoteException;

    void zzb(zzb zzbVar) throws RemoteException;

    void zzb(zzb zzbVar, String str) throws RemoteException;

    void zzbyf() throws RemoteException;

    boolean zzbyg() throws RemoteException;

    void zzc(zzb zzbVar, String str) throws RemoteException;

    void zzd(zzb zzbVar, String str) throws RemoteException;

    void zze(zzb zzbVar, String str) throws RemoteException;

    void zznf(String str) throws RemoteException;
}
