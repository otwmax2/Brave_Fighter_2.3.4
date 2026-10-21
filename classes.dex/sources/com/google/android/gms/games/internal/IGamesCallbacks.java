package com.google.android.gms.games.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.GamesActivityResultCodes;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.video.VideoCapabilities;

/* JADX INFO: loaded from: classes.dex */
public interface IGamesCallbacks extends IInterface {

    public static abstract class Stub extends Binder implements IGamesCallbacks {

        private static class Proxy implements IGamesCallbacks {
            private IBinder zzahn;

            Proxy(IBinder iBinder) {
                this.zzahn = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.zzahn;
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onCaptureOverlayStateChanged(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(20019, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onInvitationRemoved(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeString(str);
                    this.zzahn.transact(8010, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onLeftRoom(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(5020, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onP2PConnected(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeString(str);
                    this.zzahn.transact(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onP2PDisconnected(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeString(str);
                    this.zzahn.transact(GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (realTimeMessage != null) {
                        parcelObtain.writeInt(1);
                        realTimeMessage.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5032, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onRequestRemoved(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeString(str);
                    this.zzahn.transact(GamesActivityResultCodes.RESULT_SIGN_IN_FAILED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void onTurnBasedMatchRemoved(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeString(str);
                    this.zzahn.transact(8009, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(int i, Uri uri) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20017, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(int i, VideoCapabilities videoCapabilities) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (videoCapabilities != null) {
                        parcelObtain.writeInt(1);
                        videoCapabilities.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(19001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(int i, String str, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.zzahn.transact(5034, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(int i, boolean z, boolean z2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    parcelObtain.writeInt(z2 ? 1 : 0);
                    this.zzahn.transact(19003, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (dataHolder2 != null) {
                        parcelObtain.writeInt(1);
                        dataHolder2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5005, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(DataHolder dataHolder, Contents contents) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (contents != null) {
                        parcelObtain.writeInt(1);
                        contents.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12004, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeString(str);
                    if (contents != null) {
                        parcelObtain.writeInt(1);
                        contents.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (contents2 != null) {
                        parcelObtain.writeInt(1);
                        contents2.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (contents3 != null) {
                        parcelObtain.writeInt(1);
                        contents3.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12017, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(DataHolder dataHolder, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    this.zzahn.transact(5026, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zza(DataHolder[] dataHolderArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeTypedArray(dataHolderArr, 0);
                    this.zzahn.transact(14001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzaa(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5019, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzab(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5021, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzac(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5022, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzad(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5023, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzae(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5024, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzaf(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5025, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzag(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5038, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzah(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5035, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzai(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5039, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzaj(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesStatusCodes.STATUS_MILESTONE_CLAIM_FAILED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzak(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesActivityResultCodes.RESULT_LICENSE_FAILED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzal(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesActivityResultCodes.RESULT_APP_MISCONFIGURED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzam(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesActivityResultCodes.RESULT_NETWORK_FAILURE, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzan(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzao(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12005, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzap(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12006, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzaq(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12007, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzar(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12014, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzas(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12016, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzat(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12008, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzau(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12013, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzav(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(13001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzaw(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(15001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzax(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(17001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzay(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(19006, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzaz(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzb(int i, int i2, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(5033, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzb(DataHolder dataHolder, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    this.zzahn.transact(5027, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzba(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20002, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbb(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20003, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbc(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20004, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbd(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20005, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbe(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20006, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbf(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20007, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbg(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20008, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbh(Status status) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (status != null) {
                        parcelObtain.writeInt(1);
                        status.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20012, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbh(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20009, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbhx() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    this.zzahn.transact(5016, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbi(Status status) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (status != null) {
                        parcelObtain.writeInt(1);
                        status.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20013, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbj(Status status) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (status != null) {
                        parcelObtain.writeInt(1);
                        status.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20014, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzbk(Status status) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (status != null) {
                        parcelObtain.writeInt(1);
                        status.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20015, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzc(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesStatusCodes.STATUS_QUEST_NO_LONGER_AVAILABLE, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzc(DataHolder dataHolder, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    this.zzahn.transact(5028, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzd(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesActivityResultCodes.RESULT_LEFT_ROOM, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzd(int i, String str, String str2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    this.zzahn.transact(20010, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzd(DataHolder dataHolder, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    this.zzahn.transact(5029, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zze(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(11001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zze(DataHolder dataHolder, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    this.zzahn.transact(5030, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzf(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12003, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzf(DataHolder dataHolder, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeStringArray(strArr);
                    this.zzahn.transact(5031, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzg(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12015, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzg(int i, boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.zzahn.transact(19002, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzh(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(19007, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzh(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5002, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzi(int i, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    if (bundle != null) {
                        parcelObtain.writeInt(1);
                        bundle.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(20020, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzi(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(5001, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzi(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(12011, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzj(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(5003, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzj(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5004, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzk(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(8007, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzk(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5006, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzl(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(12012, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzl(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5007, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzm(int i, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    this.zzahn.transact(20011, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzm(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5008, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzn(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5009, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzo(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5010, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzp(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5011, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzq(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesStatusCodes.STATUS_VIDEO_UNSUPPORTED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqd(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(5036, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqe(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(5040, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqf(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(13002, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqg(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(17002, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqh(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(19004, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqi(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(19008, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqj(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(19009, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqk(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(19010, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzql(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(20016, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzqm(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    parcelObtain.writeInt(i);
                    this.zzahn.transact(20018, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzr(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5017, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzs(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5037, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzt(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzu(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(GamesStatusCodes.STATUS_QUEST_NOT_STARTED, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzv(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(8004, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzw(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(8005, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzx(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(8006, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzy(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(8008, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // com.google.android.gms.games.internal.IGamesCallbacks
            public void zzz(DataHolder dataHolder) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.gms.games.internal.IGamesCallbacks");
                    if (dataHolder != null) {
                        parcelObtain.writeInt(1);
                        dataHolder.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    this.zzahn.transact(5018, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public Stub() {
            attachInterface(this, "com.google.android.gms.games.internal.IGamesCallbacks");
        }

        public static IGamesCallbacks zzgh(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.games.internal.IGamesCallbacks");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof IGamesCallbacks)) ? new Proxy(iBinder) : (IGamesCallbacks) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            switch (i) {
                case 5001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzi(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzh(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzj(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzj(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzk(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzl(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzm(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzn(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzo(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzp(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbhx();
                    parcel2.writeNoException();
                    return true;
                case 5017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzr(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5018:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzz(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzaa(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onLeftRoom(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5021:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzab(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5022:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzac(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5023:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzad(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5024:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzae(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5025:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzaf(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5026:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5027:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzb(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5028:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzc(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5029:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzd(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5030:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zze(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5031:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzf(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.createStringArray());
                    parcel2.writeNoException();
                    return true;
                case 5032:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onRealTimeMessageReceived(parcel.readInt() != 0 ? RealTimeMessage.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5033:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzb(parcel.readInt(), parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 5034:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt(), parcel.readString(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 5035:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzah(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5036:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqd(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5037:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzs(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5038:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzag(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5039:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzai(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 5040:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqe(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_NOT_TRUSTED_TESTER /* 6001 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onP2PConnected(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MULTIPLAYER_ERROR_INVALID_MULTIPLAYER_TYPE /* 6002 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onP2PDisconnected(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_MILESTONE_CLAIM_FAILED /* 8001 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzaj(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_QUEST_NO_LONGER_AVAILABLE /* 8002 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzc(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_QUEST_NOT_STARTED /* 8003 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzu(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzv(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzw(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzx(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzk(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzy(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 8009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onTurnBasedMatchRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 8010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onInvitationRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesStatusCodes.STATUS_VIDEO_UNSUPPORTED /* 9001 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzq(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED /* 10001 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzt(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED /* 10002 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onRequestRemoved(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_LICENSE_FAILED /* 10003 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzak(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED /* 10004 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzal(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_LEFT_ROOM /* 10005 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzd(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case GamesActivityResultCodes.RESULT_NETWORK_FAILURE /* 10006 */:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzam(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 11001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zze(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzan(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzf(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Contents) Contents.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzao(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzap(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzaq(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzat(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzi(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12012:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzl(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 12013:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzau(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12014:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzar(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12015:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzg(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzas(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 12017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null, parcel.readString(), parcel.readInt() != 0 ? (Contents) Contents.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Contents) Contents.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0 ? (Contents) Contents.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzav(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 13002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqf(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 14001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza((DataHolder[]) parcel.createTypedArray(DataHolder.CREATOR));
                    parcel2.writeNoException();
                    return true;
                case 15001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzaw(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 17001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzax(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 17002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqg(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt(), parcel.readInt() != 0 ? VideoCapabilities.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzg(parcel.readInt(), parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 19003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt(), parcel.readInt() != 0, parcel.readInt() != 0);
                    parcel2.writeNoException();
                    return true;
                case 19004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqh(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzay(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzh(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 19008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqi(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqj(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 19010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqk(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20001:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzaz(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20002:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzba(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20003:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbb(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20004:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbc(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20005:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbd(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20006:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbe(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20007:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbf(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20008:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbg(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20009:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbh(parcel.readInt() != 0 ? DataHolder.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20010:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzd(parcel.readInt(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20011:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzm(parcel.readInt(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 20012:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbh(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20013:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbi(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20014:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbj(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20015:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzbk(parcel.readInt() != 0 ? Status.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20016:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzql(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20017:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zza(parcel.readInt(), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 20018:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzqm(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20019:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    onCaptureOverlayStateChanged(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 20020:
                    parcel.enforceInterface("com.google.android.gms.games.internal.IGamesCallbacks");
                    zzi(parcel.readInt(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    return true;
                case 1598968902:
                    parcel2.writeString("com.google.android.gms.games.internal.IGamesCallbacks");
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void onCaptureOverlayStateChanged(int i) throws RemoteException;

    void onInvitationRemoved(String str) throws RemoteException;

    void onLeftRoom(int i, String str) throws RemoteException;

    void onP2PConnected(String str) throws RemoteException;

    void onP2PDisconnected(String str) throws RemoteException;

    void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) throws RemoteException;

    void onRequestRemoved(String str) throws RemoteException;

    void onTurnBasedMatchRemoved(String str) throws RemoteException;

    void zza(int i, Uri uri) throws RemoteException;

    void zza(int i, VideoCapabilities videoCapabilities) throws RemoteException;

    void zza(int i, String str, boolean z) throws RemoteException;

    void zza(int i, boolean z, boolean z2) throws RemoteException;

    void zza(DataHolder dataHolder, DataHolder dataHolder2) throws RemoteException;

    void zza(DataHolder dataHolder, Contents contents) throws RemoteException;

    void zza(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) throws RemoteException;

    void zza(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zza(DataHolder[] dataHolderArr) throws RemoteException;

    void zzaa(DataHolder dataHolder) throws RemoteException;

    void zzab(DataHolder dataHolder) throws RemoteException;

    void zzac(DataHolder dataHolder) throws RemoteException;

    void zzad(DataHolder dataHolder) throws RemoteException;

    void zzae(DataHolder dataHolder) throws RemoteException;

    void zzaf(DataHolder dataHolder) throws RemoteException;

    void zzag(DataHolder dataHolder) throws RemoteException;

    void zzah(DataHolder dataHolder) throws RemoteException;

    void zzai(DataHolder dataHolder) throws RemoteException;

    void zzaj(DataHolder dataHolder) throws RemoteException;

    void zzak(DataHolder dataHolder) throws RemoteException;

    void zzal(DataHolder dataHolder) throws RemoteException;

    void zzam(DataHolder dataHolder) throws RemoteException;

    void zzan(DataHolder dataHolder) throws RemoteException;

    void zzao(DataHolder dataHolder) throws RemoteException;

    void zzap(DataHolder dataHolder) throws RemoteException;

    void zzaq(DataHolder dataHolder) throws RemoteException;

    void zzar(DataHolder dataHolder) throws RemoteException;

    void zzas(DataHolder dataHolder) throws RemoteException;

    void zzat(DataHolder dataHolder) throws RemoteException;

    void zzau(DataHolder dataHolder) throws RemoteException;

    void zzav(DataHolder dataHolder) throws RemoteException;

    void zzaw(DataHolder dataHolder) throws RemoteException;

    void zzax(DataHolder dataHolder) throws RemoteException;

    void zzay(DataHolder dataHolder) throws RemoteException;

    void zzaz(DataHolder dataHolder) throws RemoteException;

    void zzb(int i, int i2, String str) throws RemoteException;

    void zzb(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzba(DataHolder dataHolder) throws RemoteException;

    void zzbb(DataHolder dataHolder) throws RemoteException;

    void zzbc(DataHolder dataHolder) throws RemoteException;

    void zzbd(DataHolder dataHolder) throws RemoteException;

    void zzbe(DataHolder dataHolder) throws RemoteException;

    void zzbf(DataHolder dataHolder) throws RemoteException;

    void zzbg(DataHolder dataHolder) throws RemoteException;

    void zzbh(Status status) throws RemoteException;

    void zzbh(DataHolder dataHolder) throws RemoteException;

    void zzbhx() throws RemoteException;

    void zzbi(Status status) throws RemoteException;

    void zzbj(Status status) throws RemoteException;

    void zzbk(Status status) throws RemoteException;

    void zzc(int i, Bundle bundle) throws RemoteException;

    void zzc(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzd(int i, Bundle bundle) throws RemoteException;

    void zzd(int i, String str, String str2) throws RemoteException;

    void zzd(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zze(int i, Bundle bundle) throws RemoteException;

    void zze(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzf(int i, Bundle bundle) throws RemoteException;

    void zzf(DataHolder dataHolder, String[] strArr) throws RemoteException;

    void zzg(int i, Bundle bundle) throws RemoteException;

    void zzg(int i, boolean z) throws RemoteException;

    void zzh(int i, Bundle bundle) throws RemoteException;

    void zzh(DataHolder dataHolder) throws RemoteException;

    void zzi(int i, Bundle bundle) throws RemoteException;

    void zzi(int i, String str) throws RemoteException;

    void zzi(DataHolder dataHolder) throws RemoteException;

    void zzj(int i, String str) throws RemoteException;

    void zzj(DataHolder dataHolder) throws RemoteException;

    void zzk(int i, String str) throws RemoteException;

    void zzk(DataHolder dataHolder) throws RemoteException;

    void zzl(int i, String str) throws RemoteException;

    void zzl(DataHolder dataHolder) throws RemoteException;

    void zzm(int i, String str) throws RemoteException;

    void zzm(DataHolder dataHolder) throws RemoteException;

    void zzn(DataHolder dataHolder) throws RemoteException;

    void zzo(DataHolder dataHolder) throws RemoteException;

    void zzp(DataHolder dataHolder) throws RemoteException;

    void zzq(DataHolder dataHolder) throws RemoteException;

    void zzqd(int i) throws RemoteException;

    void zzqe(int i) throws RemoteException;

    void zzqf(int i) throws RemoteException;

    void zzqg(int i) throws RemoteException;

    void zzqh(int i) throws RemoteException;

    void zzqi(int i) throws RemoteException;

    void zzqj(int i) throws RemoteException;

    void zzqk(int i) throws RemoteException;

    void zzql(int i) throws RemoteException;

    void zzqm(int i) throws RemoteException;

    void zzr(DataHolder dataHolder) throws RemoteException;

    void zzs(DataHolder dataHolder) throws RemoteException;

    void zzt(DataHolder dataHolder) throws RemoteException;

    void zzu(DataHolder dataHolder) throws RemoteException;

    void zzv(DataHolder dataHolder) throws RemoteException;

    void zzw(DataHolder dataHolder) throws RemoteException;

    void zzx(DataHolder dataHolder) throws RemoteException;

    void zzy(DataHolder dataHolder) throws RemoteException;

    void zzz(DataHolder dataHolder) throws RemoteException;
}
