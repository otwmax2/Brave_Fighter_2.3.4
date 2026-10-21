package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public final class AppContentsImpl implements AppContents {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.AppContentsImpl$1, reason: invalid class name */
    class AnonymousClass1 extends LoadsImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<AppContents.LoadAppContentResult>) this, 0, (String) null, (String[]) null, false);
        }
    }

    private static abstract class LoadsImpl extends Games.BaseGamesApiMethodImpl<AppContents.LoadAppContentResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbn, reason: merged with bridge method [inline-methods] */
        public AppContents.LoadAppContentResult zzc(final Status status) {
            return new AppContents.LoadAppContentResult() { // from class: com.google.android.gms.games.internal.api.AppContentsImpl.LoadsImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.common.api.Releasable
                public void release() {
                }
            };
        }
    }
}
