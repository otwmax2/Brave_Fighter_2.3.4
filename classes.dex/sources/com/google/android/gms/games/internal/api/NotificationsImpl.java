package com.google.android.gms.games.internal.api;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public final class NotificationsImpl implements Notifications {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$1, reason: invalid class name */
    class AnonymousClass1 extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusChangeResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze((zzpr.zzb<Notifications.GameMuteStatusChangeResult>) this, (String) null, true);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbx, reason: merged with bridge method [inline-methods] */
        public Notifications.GameMuteStatusChangeResult zzc(final Status status) {
            return new Notifications.GameMuteStatusChangeResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.1.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$2, reason: invalid class name */
    class AnonymousClass2 extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusChangeResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze((zzpr.zzb<Notifications.GameMuteStatusChangeResult>) this, (String) null, false);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbx, reason: merged with bridge method [inline-methods] */
        public Notifications.GameMuteStatusChangeResult zzc(final Status status) {
            return new Notifications.GameMuteStatusChangeResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.2.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$3, reason: invalid class name */
    class AnonymousClass3 extends Games.BaseGamesApiMethodImpl<Notifications.GameMuteStatusLoadResult> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzn(this, (String) null);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzby, reason: merged with bridge method [inline-methods] */
        public Notifications.GameMuteStatusLoadResult zzc(final Status status) {
            return new Notifications.GameMuteStatusLoadResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.3.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$4, reason: invalid class name */
    class AnonymousClass4 extends ContactSettingLoadImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzl((zzpr.zzb<Notifications.ContactSettingLoadResult>) this, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$5, reason: invalid class name */
    class AnonymousClass5 extends ContactSettingUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza((zzpr.zzb<Status>) this, false, false, (Bundle) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.NotificationsImpl$6, reason: invalid class name */
    class AnonymousClass6 extends InboxCountImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzs(this);
        }
    }

    private static abstract class ContactSettingLoadImpl extends Games.BaseGamesApiMethodImpl<Notifications.ContactSettingLoadResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzbz, reason: merged with bridge method [inline-methods] */
        public Notifications.ContactSettingLoadResult zzc(final Status status) {
            return new Notifications.ContactSettingLoadResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.ContactSettingLoadImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class ContactSettingUpdateImpl extends Games.BaseGamesApiMethodImpl<Status> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
        public Status zzc(Status status) {
            return status;
        }
    }

    private static abstract class InboxCountImpl extends Games.BaseGamesApiMethodImpl<Notifications.InboxCountResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzca, reason: merged with bridge method [inline-methods] */
        public Notifications.InboxCountResult zzc(final Status status) {
            return new Notifications.InboxCountResult() { // from class: com.google.android.gms.games.internal.api.NotificationsImpl.InboxCountImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Override // com.google.android.gms.games.Notifications
    public void clear(GoogleApiClient googleApiClient, int i) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzqp(i);
        }
    }

    @Override // com.google.android.gms.games.Notifications
    public void clearAll(GoogleApiClient googleApiClient) {
        clear(googleApiClient, 63);
    }
}
