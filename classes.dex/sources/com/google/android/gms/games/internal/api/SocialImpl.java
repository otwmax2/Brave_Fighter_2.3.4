package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.social.Social;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public class SocialImpl implements Social {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$1, reason: invalid class name */
    class AnonymousClass1 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzo(this, (String) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$2, reason: invalid class name */
    class AnonymousClass2 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzp(this, (String) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$3, reason: invalid class name */
    class AnonymousClass3 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzr(this, null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$4, reason: invalid class name */
    class AnonymousClass4 extends SocialInviteUpdateImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzq(this, null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$5, reason: invalid class name */
    class AnonymousClass5 extends LoadSocialInvitesImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc(this, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$6, reason: invalid class name */
    class AnonymousClass6 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze(this, 0, false, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$7, reason: invalid class name */
    class AnonymousClass7 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zze(this, 0, true, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$8, reason: invalid class name */
    class AnonymousClass8 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzs(this, null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.SocialImpl$9, reason: invalid class name */
    class AnonymousClass9 extends PlayersImpl.LoadPlayersImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzf((zzpr.zzb<Players.LoadPlayersResult>) this, (String) null, false);
        }
    }

    private static abstract class LoadSocialInvitesImpl extends Games.BaseGamesApiMethodImpl<Social.LoadInvitesResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzcs, reason: merged with bridge method [inline-methods] */
        public Social.LoadInvitesResult zzc(final Status status) {
            return new Social.LoadInvitesResult() { // from class: com.google.android.gms.games.internal.api.SocialImpl.LoadSocialInvitesImpl.1
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

    private static abstract class SocialInviteUpdateImpl extends Games.BaseGamesApiMethodImpl<Social.InviteUpdateResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzct, reason: merged with bridge method [inline-methods] */
        public Social.InviteUpdateResult zzc(final Status status) {
            return new Social.InviteUpdateResult() { // from class: com.google.android.gms.games.internal.api.SocialImpl.SocialInviteUpdateImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }
}
