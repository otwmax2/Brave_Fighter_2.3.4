package com.google.android.gms.games.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.NonNull;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.BitmapTeleporter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.Notifications;
import com.google.android.gms.games.OnNearbyPlayerDetectedListener;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.IGamesService;
import com.google.android.gms.games.internal.constants.RequestType;
import com.google.android.gms.games.internal.events.EventIncrementCache;
import com.google.android.gms.games.internal.events.EventIncrementManager;
import com.google.android.gms.games.internal.experience.ExperienceEventBuffer;
import com.google.android.gms.games.internal.game.GameInstanceBuffer;
import com.google.android.gms.games.internal.game.GameSearchSuggestionBuffer;
import com.google.android.gms.games.internal.player.ProfileSettingsEntity;
import com.google.android.gms.games.internal.player.StockProfileImageBuffer;
import com.google.android.gms.games.internal.request.RequestUpdateOutcomes;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomBuffer;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestEntity;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotContentsEntity;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.games.snapshot.Snapshots;
import com.google.android.gms.games.social.OnSocialInviteUpdateReceivedListener;
import com.google.android.gms.games.social.Social;
import com.google.android.gms.games.social.SocialInvite;
import com.google.android.gms.games.social.SocialInviteBuffer;
import com.google.android.gms.games.social.SocialInviteEntity;
import com.google.android.gms.games.stats.PlayerStats;
import com.google.android.gms.games.stats.PlayerStatsBuffer;
import com.google.android.gms.games.stats.PlayerStatsEntity;
import com.google.android.gms.games.stats.Stats;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.VideoBuffer;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.VideoConfiguration;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzpr;
import com.google.android.gms.internal.zzpx;
import com.google.android.gms.internal.zzpy;
import com.google.android.gms.internal.zzqs;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class GamesClientImpl extends zzk<IGamesService> {
    private final String SA;
    private PlayerEntity SB;
    private GameEntity SC;
    private final PopupManager SD;
    private boolean SE;
    private final Binder SF;
    private final long SG;
    private final Games.GamesOptions SH;
    EventIncrementManager Sz;

    private static abstract class AbstractPeerStatusNotifier extends AbstractRoomStatusNotifier {
        private final ArrayList<String> SJ;

        AbstractPeerStatusNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder);
            this.SJ = new ArrayList<>();
            for (String str : strArr) {
                this.SJ.add(str);
            }
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            zza(roomStatusUpdateListener, room, this.SJ);
        }

        protected abstract void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList);
    }

    private static abstract class AbstractRoomNotifier extends zzpx<RoomUpdateListener> {
        AbstractRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpx
        public void zza(RoomUpdateListener roomUpdateListener, DataHolder dataHolder) {
            zza(roomUpdateListener, GamesClientImpl.zzbi(dataHolder), dataHolder.getStatusCode());
        }

        protected abstract void zza(RoomUpdateListener roomUpdateListener, Room room, int i);
    }

    private static abstract class AbstractRoomStatusNotifier extends zzpx<RoomStatusUpdateListener> {
        AbstractRoomStatusNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpx
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, DataHolder dataHolder) {
            zza(roomStatusUpdateListener, GamesClientImpl.zzbi(dataHolder));
        }

        protected abstract void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room);
    }

    private static final class AcceptFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Social.InviteUpdateResult> zj;

        AcceptFriendInviteFirstPartyBinderCallback(zzpr.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzba(DataHolder dataHolder) {
            this.zj.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    private static final class AcceptQuestResultImpl extends GamesDataHolderResult implements Quests.AcceptQuestResult {
        private final Quest SK;

        AcceptQuestResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                if (questBuffer.getCount() > 0) {
                    this.SK = new QuestEntity(questBuffer.get(0));
                } else {
                    this.SK = null;
                }
            } finally {
                questBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.quest.Quests.AcceptQuestResult
        public Quest getQuest() {
            return this.SK;
        }
    }

    private static final class AchievementUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Achievements.UpdateAchievementResult> zj;

        AchievementUpdatedBinderCallback(zzpr.zzb<Achievements.UpdateAchievementResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzj(int i, String str) {
            this.zj.setResult(new UpdateAchievementResultImpl(i, str));
        }
    }

    private static final class AchievementsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Achievements.LoadAchievementsResult> zj;

        AchievementsLoadedBinderCallback(zzpr.zzb<Achievements.LoadAchievementsResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzh(DataHolder dataHolder) {
            this.zj.setResult(new LoadAchievementsResultImpl(dataHolder));
        }
    }

    private static final class AppContentLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<AppContents.LoadAppContentResult> SL;

        public AppContentLoadedBinderCallbacks(zzpr.zzb<AppContents.LoadAppContentResult> zzbVar) {
            this.SL = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder[] dataHolderArr) {
            this.SL.setResult(new LoadAppContentsResultImpl(dataHolderArr));
        }
    }

    private static final class CancelFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Social.InviteUpdateResult> zj;

        CancelFriendInviteFirstPartyBinderCallback(zzpr.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbe(DataHolder dataHolder) {
            this.zj.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    private static final class CancelMatchResultImpl implements TurnBasedMultiplayer.CancelMatchResult {
        private final String SM;
        private final Status cc;

        CancelMatchResultImpl(Status status, String str) {
            this.cc = status;
            this.SM = str;
        }

        @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult
        public String getMatchId() {
            return this.SM;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class CaptureAvailableBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureAvailableResult> zj;

        CaptureAvailableBinderCallback(zzpr.zzb<Videos.CaptureAvailableResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzg(int i, boolean z) {
            this.zj.setResult(new CaptureAvailableResultImpl(new Status(i), z));
        }
    }

    private static final class CaptureAvailableResultImpl implements Videos.CaptureAvailableResult {
        private final boolean SN;
        private final Status cc;

        CaptureAvailableResultImpl(Status status, boolean z) {
            this.cc = status;
            this.SN = z;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureAvailableResult
        public boolean isAvailable() {
            return this.SN;
        }
    }

    private static final class CaptureCapabilitiesBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureCapabilitiesResult> zj;

        CaptureCapabilitiesBinderCallback(zzpr.zzb<Videos.CaptureCapabilitiesResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, VideoCapabilities videoCapabilities) {
            this.zj.setResult(new CaptureCapabilitiesResultImpl(new Status(i), videoCapabilities));
        }
    }

    private static final class CaptureCapabilitiesResultImpl implements Videos.CaptureCapabilitiesResult {
        private final VideoCapabilities SO;
        private final Status cc;

        CaptureCapabilitiesResultImpl(Status status, VideoCapabilities videoCapabilities) {
            this.cc = status;
            this.SO = videoCapabilities;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult
        public VideoCapabilities getCapabilities() {
            return this.SO;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class CaptureLaunchGameAndOverlayBinderCallback extends AbstractGamesCallbacks {
        private final Games.BaseGamesApiMethodImpl<Status> SP;

        CaptureLaunchGameAndOverlayBinderCallback(Games.BaseGamesApiMethodImpl<Status> baseGamesApiMethodImpl) {
            this.SP = (Games.BaseGamesApiMethodImpl) zzab.zzb(baseGamesApiMethodImpl, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbh(Status status) {
            this.SP.zzc(status);
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqg(int i) {
            this.SP.zzc(new Status(i));
        }
    }

    private static final class CaptureOverlayStateBinderCallback extends AbstractGamesCallbacks {
        private final zzqs<Videos.CaptureOverlayStateListener> HA;

        CaptureOverlayStateBinderCallback(zzqs<Videos.CaptureOverlayStateListener> zzqsVar) {
            this.HA = (zzqs) zzab.zzb(zzqsVar, "Callback must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onCaptureOverlayStateChanged(int i) {
            this.HA.zza(new CaptureOverlayStateChangedNotifier(i));
        }
    }

    private static final class CaptureOverlayStateChangedNotifier implements zzqs.zzb<Videos.CaptureOverlayStateListener> {
        private final int SQ;

        CaptureOverlayStateChangedNotifier(int i) {
            this.SQ = i;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(Videos.CaptureOverlayStateListener captureOverlayStateListener) {
            captureOverlayStateListener.onCaptureOverlayStateChanged(this.SQ);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class CapturePausedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        public CapturePausedBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqm(int i) {
            this.zj.setResult(new Status(i));
        }
    }

    private static final class CaptureStartedBinderCallbacks extends AbstractGamesCallbacks {
        private final Videos.CaptureRuntimeErrorCallback SR;
        private final zzpr.zzb<Status> zj;

        public CaptureStartedBinderCallbacks(zzpr.zzb<Status> zzbVar, Videos.CaptureRuntimeErrorCallback captureRuntimeErrorCallback) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
            this.SR = (Videos.CaptureRuntimeErrorCallback) zzab.zzb(captureRuntimeErrorCallback, "Callback must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbk(Status status) {
            this.zj.setResult(status);
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzql(int i) {
            this.SR.zzsd(i);
        }
    }

    private static final class CaptureStateBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureStateResult> zj;

        public CaptureStateBinderCallbacks(zzpr.zzb<Videos.CaptureStateResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(int i, Bundle bundle) {
            this.zj.setResult(new CaptureStateResultImpl(new Status(i), CaptureState.zzaa(bundle)));
        }
    }

    private static final class CaptureStateResultImpl implements Videos.CaptureStateResult {
        private final CaptureState SS;
        private final Status cc;

        CaptureStateResultImpl(Status status, CaptureState captureState) {
            this.cc = status;
            this.SS = captureState;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureStateResult
        public CaptureState getCaptureState() {
            return this.SS;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class CaptureStoppedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureStoppedResult> zj;

        public CaptureStoppedBinderCallbacks(zzpr.zzb<Videos.CaptureStoppedResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, Uri uri) {
            this.zj.setResult(new CaptureStoppedResultImpl(new Status(i), uri));
        }
    }

    private static final class CaptureStoppedResultImpl implements Videos.CaptureStoppedResult {
        private final Uri ST;
        private final Status cc;

        CaptureStoppedResultImpl(Status status, Uri uri) {
            this.cc = status;
            this.ST = uri;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class CaptureStreamingAvailabilityBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureStreamingAvailabilityResult> zj;

        CaptureStreamingAvailabilityBinderCallback(zzpr.zzb<Videos.CaptureStreamingAvailabilityResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, boolean z, boolean z2) {
            this.zj.setResult(new CaptureStreamingAvailabilityResultImpl(new Status(i), z, z2));
        }
    }

    private static final class CaptureStreamingAvailabilityResultImpl implements Videos.CaptureStreamingAvailabilityResult {
        private final boolean SN;
        private final boolean SU;
        private final Status cc;

        CaptureStreamingAvailabilityResultImpl(Status status, boolean z, boolean z2) {
            this.cc = status;
            this.SN = z;
            this.SU = z2;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class CaptureStreamingEnabledBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        CaptureStreamingEnabledBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqh(int i) {
            this.zj.setResult(new Status(i));
        }
    }

    private static final class CaptureStreamingEnabledResultImpl implements Result {
        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return null;
        }
    }

    private static final class CaptureStreamingMetadataBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureStreamingMetadataResult> zj;

        CaptureStreamingMetadataBinderCallback(zzpr.zzb<Videos.CaptureStreamingMetadataResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(int i, String str, String str2) {
            this.zj.setResult(new CaptureStreamingMetadataResultImpl(new Status(i), str, str2));
        }
    }

    private static final class CaptureStreamingMetadataResultImpl implements Videos.CaptureStreamingMetadataResult {
        private final String Fx;
        private final Status cc;
        private final String zzcvi;

        CaptureStreamingMetadataResultImpl(Status status, String str, String str2) {
            this.cc = status;
            this.Fx = str;
            this.zzcvi = str2;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class CaptureStreamingUrlBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.CaptureStreamingUrlResult> zj;

        CaptureStreamingUrlBinderCallback(zzpr.zzb<Videos.CaptureStreamingUrlResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzm(int i, String str) {
            this.zj.setResult(new CaptureStreamingUrlResultImpl(new Status(i), str));
        }
    }

    private static final class CaptureStreamingUrlResultImpl implements Videos.CaptureStreamingUrlResult {
        private final Status cc;
        private final String zzae;

        CaptureStreamingUrlResultImpl(Status status, String str) {
            this.cc = status;
            this.zzae = str;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }

        @Override // com.google.android.gms.games.video.Videos.CaptureStreamingUrlResult
        public String getUrl() {
            return this.zzae;
        }
    }

    private static final class ClaimMilestoneResultImpl extends GamesDataHolderResult implements Quests.ClaimMilestoneResult {
        private final Quest SK;
        private final Milestone SV;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        ClaimMilestoneResultImpl(DataHolder dataHolder, String str) {
            super(dataHolder);
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                if (questBuffer.getCount() > 0) {
                    this.SK = new QuestEntity(questBuffer.get(0));
                    List<Milestone> listZzbli = this.SK.zzbli();
                    int size = listZzbli.size();
                    for (int i = 0; i < size; i++) {
                        if (listZzbli.get(i).getMilestoneId().equals(str)) {
                            this.SV = listZzbli.get(i);
                            return;
                        }
                    }
                    this.SV = null;
                } else {
                    this.SV = null;
                    this.SK = null;
                }
            } finally {
                questBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.quest.Quests.ClaimMilestoneResult
        public Milestone getMilestone() {
            return this.SV;
        }

        @Override // com.google.android.gms.games.quest.Quests.ClaimMilestoneResult
        public Quest getQuest() {
            return this.SK;
        }
    }

    private static final class CommitSnapshotResultImpl extends GamesDataHolderResult implements Snapshots.CommitSnapshotResult {
        private final SnapshotMetadata SW;

        CommitSnapshotResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() > 0) {
                    this.SW = new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0));
                } else {
                    this.SW = null;
                }
            } finally {
                snapshotMetadataBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult
        public SnapshotMetadata getSnapshotMetadata() {
            return this.SW;
        }
    }

    private static final class ConnectedToRoomNotifier extends AbstractRoomStatusNotifier {
        ConnectedToRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onConnectedToRoom(room);
        }
    }

    private static final class ContactSettingLoadResultImpl extends GamesDataHolderResult implements Notifications.ContactSettingLoadResult {
        ContactSettingLoadResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class ContactSettingsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Notifications.ContactSettingLoadResult> zj;

        ContactSettingsLoadedBinderCallback(zzpr.zzb<Notifications.ContactSettingLoadResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzai(DataHolder dataHolder) {
            this.zj.setResult(new ContactSettingLoadResultImpl(dataHolder));
        }
    }

    private static final class ContactSettingsUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        ContactSettingsUpdatedBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqe(int i) {
            this.zj.setResult(GamesStatusCodes.zzps(i));
        }
    }

    private static final class DeletePlayerBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        DeletePlayerBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqi(int i) {
            this.zj.setResult(new Status(i));
        }
    }

    private static final class DeleteSnapshotResultImpl implements Snapshots.DeleteSnapshotResult {
        private final String SX;
        private final Status cc;

        DeleteSnapshotResultImpl(int i, String str) {
            this.cc = GamesStatusCodes.zzps(i);
            this.SX = str;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult
        public String getSnapshotId() {
            return this.SX;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class DisconnectedFromRoomNotifier extends AbstractRoomStatusNotifier {
        DisconnectedFromRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onDisconnectedFromRoom(room);
        }
    }

    private static final class EventsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Events.LoadEventsResult> zj;

        EventsLoadedBinderCallback(zzpr.zzb<Events.LoadEventsResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(DataHolder dataHolder) {
            this.zj.setResult(new LoadEventResultImpl(dataHolder));
        }
    }

    private class GameClientEventIncrementCache extends EventIncrementCache {
        public GameClientEventIncrementCache() {
            super(GamesClientImpl.this.getContext().getMainLooper(), 1000);
        }

        @Override // com.google.android.gms.games.internal.events.EventIncrementCache
        protected void zzq(String str, int i) {
            try {
                if (GamesClientImpl.this.isConnected()) {
                    ((IGamesService) GamesClientImpl.this.zzarw()).zzn(str, i);
                } else {
                    GamesLog.zzag("GamesClientImpl", new StringBuilder(String.valueOf(str).length() + 89).append("Unable to increment event ").append(str).append(" by ").append(i).append(" because the games client is no longer connected").toString());
                }
            } catch (RemoteException e) {
                GamesClientImpl.this.zzb(e);
            }
        }
    }

    private static final class GameInstancesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<GamesMetadata.LoadGameInstancesResult> zj;

        GameInstancesLoadedBinderCallback(zzpr.zzb<GamesMetadata.LoadGameInstancesResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzp(DataHolder dataHolder) {
            this.zj.setResult(new LoadGameInstancesResultImpl(dataHolder));
        }
    }

    private static final class GameMuteStatusChangeResultImpl implements Notifications.GameMuteStatusChangeResult {
        private final String SY;
        private final Status cc;
        private final boolean zzcqf;

        public GameMuteStatusChangeResultImpl(int i, String str, boolean z) {
            this.cc = GamesStatusCodes.zzps(i);
            this.SY = str;
            this.zzcqf = z;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class GameMuteStatusChangedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Notifications.GameMuteStatusChangeResult> zj;

        GameMuteStatusChangedBinderCallback(zzpr.zzb<Notifications.GameMuteStatusChangeResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(int i, String str, boolean z) {
            this.zj.setResult(new GameMuteStatusChangeResultImpl(i, str, z));
        }
    }

    private static final class GameMuteStatusLoadResultImpl implements Notifications.GameMuteStatusLoadResult {
        private final String SY;
        private final Status cc;
        private final boolean zzcqf;

        public GameMuteStatusLoadResultImpl(DataHolder dataHolder) {
            try {
                this.cc = GamesStatusCodes.zzps(dataHolder.getStatusCode());
                if (dataHolder.getCount() > 0) {
                    this.SY = dataHolder.zzd("external_game_id", 0, 0);
                    this.zzcqf = dataHolder.zze("muted", 0, 0);
                } else {
                    this.SY = null;
                    this.zzcqf = false;
                }
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class GameMuteStatusLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Notifications.GameMuteStatusLoadResult> zj;

        GameMuteStatusLoadedBinderCallback(zzpr.zzb<Notifications.GameMuteStatusLoadResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzag(DataHolder dataHolder) {
            this.zj.setResult(new GameMuteStatusLoadResultImpl(dataHolder));
        }
    }

    private static final class GameSearchSuggestionsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<GamesMetadata.LoadGameSearchSuggestionsResult> zj;

        GameSearchSuggestionsLoadedBinderCallback(zzpr.zzb<GamesMetadata.LoadGameSearchSuggestionsResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzq(DataHolder dataHolder) {
            this.zj.setResult(new LoadGameSearchSuggestionsResultImpl(dataHolder));
        }
    }

    private static final class GamerProfileUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.UpdateGamerProfileResult> zj;

        GamerProfileUpdatedBinderCallback(zzpr.zzb<Players.UpdateGamerProfileResult> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzh(int i, Bundle bundle) {
            this.zj.setResult(new UpdateGamerProfileResultImpl(i, bundle));
        }
    }

    private static abstract class GamesDataHolderResult extends zzpy {
        protected GamesDataHolderResult(DataHolder dataHolder) {
            super(dataHolder, GamesStatusCodes.zzps(dataHolder.getStatusCode()));
        }
    }

    private static final class GamesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<GamesMetadata.LoadGamesResult> zj;

        GamesLoadedBinderCallback(zzpr.zzb<GamesMetadata.LoadGamesResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzn(DataHolder dataHolder) {
            this.zj.setResult(new LoadGamesResultImpl(dataHolder));
        }
    }

    private static final class GetAuthTokenBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Games.GetTokenResult> zj;

        public GetAuthTokenBinderCallbacks(zzpr.zzb<Games.GetTokenResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(int i, String str) {
            this.zj.setResult(new GetTokenResultImpl(GamesStatusCodes.zzps(i), str));
        }
    }

    private static final class GetServerAuthCodeBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Games.GetServerAuthCodeResult> zj;

        public GetServerAuthCodeBinderCallbacks(zzpr.zzb<Games.GetServerAuthCodeResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzi(int i, String str) {
            this.zj.setResult(new GetServerAuthCodeResultImpl(GamesStatusCodes.zzps(i), str));
        }
    }

    private static final class GetServerAuthCodeResultImpl implements Games.GetServerAuthCodeResult {
        private final String SZ;
        private final Status cc;

        GetServerAuthCodeResultImpl(Status status, String str) {
            this.cc = status;
            this.SZ = str;
        }

        @Override // com.google.android.gms.games.Games.GetServerAuthCodeResult
        public String getCode() {
            return this.SZ;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class GetTokenResultImpl implements Games.GetTokenResult {
        private final Status cc;
        private final String ct;

        GetTokenResultImpl(Status status, String str) {
            this.cc = status;
            this.ct = str;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class HeadlessCaptureEnabledBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        HeadlessCaptureEnabledBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbi(Status status) {
            this.zj.setResult(status);
        }
    }

    private static final class IgnoreFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Social.InviteUpdateResult> zj;

        IgnoreFriendInviteFirstPartyBinderCallback(zzpr.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbd(DataHolder dataHolder) {
            this.zj.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    private static final class InboxCountResultImpl implements Notifications.InboxCountResult {
        private final Bundle Ta;
        private final Status cc;

        InboxCountResultImpl(Status status, Bundle bundle) {
            this.cc = status;
            this.Ta = bundle;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class InboxCountsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Notifications.InboxCountResult> zj;

        InboxCountsLoadedBinderCallback(zzpr.zzb<Notifications.InboxCountResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzg(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zj.setResult(new InboxCountResultImpl(GamesStatusCodes.zzps(i), bundle));
        }
    }

    private static final class InitiateMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.InitiateMatchResult {
        InitiateMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class InvitationReceivedBinderCallback extends AbstractGamesCallbacks {
        private final zzqs<OnInvitationReceivedListener> HA;

        InvitationReceivedBinderCallback(zzqs<OnInvitationReceivedListener> zzqsVar) {
            this.HA = zzqsVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onInvitationRemoved(String str) {
            this.HA.zza(new InvitationRemovedNotifier(str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzs(DataHolder dataHolder) {
            InvitationBuffer invitationBuffer = new InvitationBuffer(dataHolder);
            try {
                Invitation invitationFreeze = invitationBuffer.getCount() > 0 ? invitationBuffer.get(0).freeze() : null;
                if (invitationFreeze != null) {
                    this.HA.zza(new InvitationReceivedNotifier(invitationFreeze));
                }
            } finally {
                invitationBuffer.release();
            }
        }
    }

    private static final class InvitationReceivedNotifier implements zzqs.zzb<OnInvitationReceivedListener> {
        private final Invitation Tb;

        InvitationReceivedNotifier(Invitation invitation) {
            this.Tb = invitation;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationReceived(this.Tb);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class InvitationRemovedNotifier implements zzqs.zzb<OnInvitationReceivedListener> {
        private final String bT;

        InvitationRemovedNotifier(String str) {
            this.bT = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnInvitationReceivedListener onInvitationReceivedListener) {
            onInvitationReceivedListener.onInvitationRemoved(this.bT);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class InvitationsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Invitations.LoadInvitationsResult> zj;

        InvitationsLoadedBinderCallback(zzpr.zzb<Invitations.LoadInvitationsResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzr(DataHolder dataHolder) {
            this.zj.setResult(new LoadInvitationsResultImpl(dataHolder));
        }
    }

    private static final class InviteUpdateResultImpl extends GamesDataHolderResult implements Social.InviteUpdateResult {
        private final SocialInvite Tc;

        InviteUpdateResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            SocialInviteBuffer socialInviteBuffer = new SocialInviteBuffer(dataHolder);
            try {
                if (socialInviteBuffer.getCount() > 0) {
                    this.Tc = new SocialInviteEntity((SocialInvite) socialInviteBuffer.get(0));
                } else {
                    this.Tc = null;
                }
            } finally {
                socialInviteBuffer.release();
            }
        }
    }

    private static final class InvitesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Social.LoadInvitesResult> zj;

        InvitesLoadedBinderCallback(zzpr.zzb<Social.LoadInvitesResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbh(DataHolder dataHolder) {
            this.zj.setResult(new LoadInvitesResultImpl(dataHolder));
        }
    }

    private static final class JoinedRoomNotifier extends AbstractRoomNotifier {
        public JoinedRoomNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier
        public void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onJoinedRoom(i, room);
        }
    }

    private static final class LeaderboardMetadataResultImpl extends GamesDataHolderResult implements Leaderboards.LeaderboardMetadataResult {
        private final LeaderboardBuffer Td;

        LeaderboardMetadataResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Td = new LeaderboardBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult
        public LeaderboardBuffer getLeaderboards() {
            return this.Td;
        }
    }

    private static final class LeaderboardScoresLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Leaderboards.LoadScoresResult> zj;

        LeaderboardScoresLoadedBinderCallback(zzpr.zzb<Leaderboards.LoadScoresResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, DataHolder dataHolder2) {
            this.zj.setResult(new LoadScoresResultImpl(dataHolder, dataHolder2));
        }
    }

    private static final class LeaderboardsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Leaderboards.LeaderboardMetadataResult> zj;

        LeaderboardsLoadedBinderCallback(zzpr.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzj(DataHolder dataHolder) {
            this.zj.setResult(new LeaderboardMetadataResultImpl(dataHolder));
        }
    }

    private static final class LeaveMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.LeaveMatchResult {
        LeaveMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LeftRoomNotifier implements zzqs.zzb<RoomUpdateListener> {
        private final String Te;
        private final int ob;

        LeftRoomNotifier(int i, String str) {
            this.ob = i;
            this.Te = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(RoomUpdateListener roomUpdateListener) {
            roomUpdateListener.onLeftRoom(this.ob, this.Te);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class ListVideosBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Videos.ListVideosResult> zj;

        ListVideosBinderCallback(zzpr.zzb<Videos.ListVideosResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzax(DataHolder dataHolder) {
            this.zj.setResult(new ListVideosResultImpl(dataHolder));
        }
    }

    private static final class ListVideosResultImpl extends GamesDataHolderResult implements Videos.ListVideosResult {
        private final VideoBuffer Tf;

        public ListVideosResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tf = new VideoBuffer(dataHolder);
        }
    }

    private static final class LoadAchievementsResultImpl extends GamesDataHolderResult implements Achievements.LoadAchievementsResult {
        private final AchievementBuffer Tg;

        LoadAchievementsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tg = new AchievementBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult
        public AchievementBuffer getAchievements() {
            return this.Tg;
        }
    }

    private static final class LoadAppContentsResultImpl extends GamesDataHolderResult implements AppContents.LoadAppContentResult {
        private final ArrayList<DataHolder> Th;

        LoadAppContentsResultImpl(DataHolder[] dataHolderArr) {
            super(dataHolderArr[0]);
            this.Th = new ArrayList<>(Arrays.asList(dataHolderArr));
        }
    }

    private static final class LoadEventResultImpl extends GamesDataHolderResult implements Events.LoadEventsResult {
        private final EventBuffer Ti;

        LoadEventResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Ti = new EventBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.event.Events.LoadEventsResult
        public EventBuffer getEvents() {
            return this.Ti;
        }
    }

    private static final class LoadGameInstancesResultImpl extends GamesDataHolderResult implements GamesMetadata.LoadGameInstancesResult {
        private final GameInstanceBuffer Tj;

        LoadGameInstancesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tj = new GameInstanceBuffer(dataHolder);
        }
    }

    private static final class LoadGameSearchSuggestionsResultImpl extends GamesDataHolderResult implements GamesMetadata.LoadGameSearchSuggestionsResult {
        private final GameSearchSuggestionBuffer Tk;

        LoadGameSearchSuggestionsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tk = new GameSearchSuggestionBuffer(dataHolder);
        }
    }

    private static final class LoadGamesResultImpl extends GamesDataHolderResult implements GamesMetadata.LoadGamesResult {
        private final GameBuffer Tl;

        LoadGamesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tl = new GameBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.GamesMetadata.LoadGamesResult
        public GameBuffer getGames() {
            return this.Tl;
        }
    }

    private static final class LoadInvitationsResultImpl extends GamesDataHolderResult implements Invitations.LoadInvitationsResult {
        private final InvitationBuffer Tm;

        LoadInvitationsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tm = new InvitationBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult
        public InvitationBuffer getInvitations() {
            return this.Tm;
        }
    }

    private static final class LoadInvitesResultImpl extends GamesDataHolderResult implements Social.LoadInvitesResult {
        private final SocialInviteBuffer Tn;

        LoadInvitesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tn = new SocialInviteBuffer(dataHolder);
        }
    }

    private static final class LoadMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.LoadMatchResult {
        LoadMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LoadMatchesResultImpl implements TurnBasedMultiplayer.LoadMatchesResult {
        private final LoadMatchesResponse To;
        private final Status cc;

        LoadMatchesResultImpl(Status status, Bundle bundle) {
            this.cc = status;
            this.To = new LoadMatchesResponse(bundle);
        }

        @Override // com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult
        public LoadMatchesResponse getMatches() {
            return this.To;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            this.To.release();
        }
    }

    private static final class LoadPlayerScoreResultImpl extends GamesDataHolderResult implements Leaderboards.LoadPlayerScoreResult {
        private final LeaderboardScoreEntity Tp;

        LoadPlayerScoreResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            LeaderboardScoreBuffer leaderboardScoreBuffer = new LeaderboardScoreBuffer(dataHolder);
            try {
                if (leaderboardScoreBuffer.getCount() > 0) {
                    this.Tp = (LeaderboardScoreEntity) ((LeaderboardScore) leaderboardScoreBuffer.get(0)).freeze();
                } else {
                    this.Tp = null;
                }
            } finally {
                leaderboardScoreBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult
        public LeaderboardScore getScore() {
            return this.Tp;
        }
    }

    private static final class LoadPlayerStatsResultImpl extends GamesDataHolderResult implements Stats.LoadPlayerStatsResult {
        private final PlayerStats Tq;

        LoadPlayerStatsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            PlayerStatsBuffer playerStatsBuffer = new PlayerStatsBuffer(dataHolder);
            try {
                if (playerStatsBuffer.getCount() > 0) {
                    this.Tq = new PlayerStatsEntity((PlayerStats) playerStatsBuffer.get(0));
                } else {
                    this.Tq = null;
                }
            } finally {
                playerStatsBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.stats.Stats.LoadPlayerStatsResult
        public PlayerStats getPlayerStats() {
            return this.Tq;
        }
    }

    private static final class LoadPlayersResultImpl extends GamesDataHolderResult implements Players.LoadPlayersResult {
        private final PlayerBuffer Tr;

        LoadPlayersResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tr = new PlayerBuffer(dataHolder);
        }

        @Override // com.google.android.gms.games.Players.LoadPlayersResult
        public PlayerBuffer getPlayers() {
            return this.Tr;
        }
    }

    private static final class LoadQuestsResultImpl extends GamesDataHolderResult implements Quests.LoadQuestsResult {
        private final DataHolder tk;

        LoadQuestsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.tk = dataHolder;
        }

        @Override // com.google.android.gms.games.quest.Quests.LoadQuestsResult
        public QuestBuffer getQuests() {
            return new QuestBuffer(this.tk);
        }
    }

    private static final class LoadRequestSummariesResultImpl extends GamesDataHolderResult implements Requests.LoadRequestSummariesResult {
        LoadRequestSummariesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class LoadRequestsResultImpl implements Requests.LoadRequestsResult {
        private final Bundle Ts;
        private final Status cc;

        LoadRequestsResultImpl(Status status, Bundle bundle) {
            this.cc = status;
            this.Ts = bundle;
        }

        @Override // com.google.android.gms.games.request.Requests.LoadRequestsResult
        public GameRequestBuffer getRequests(int i) {
            String strZzqs = RequestType.zzqs(i);
            if (this.Ts.containsKey(strZzqs)) {
                return new GameRequestBuffer((DataHolder) this.Ts.get(strZzqs));
            }
            return null;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            Iterator<String> it = this.Ts.keySet().iterator();
            while (it.hasNext()) {
                DataHolder dataHolder = (DataHolder) this.Ts.getParcelable(it.next());
                if (dataHolder != null) {
                    dataHolder.close();
                }
            }
        }
    }

    private static final class LoadScoresResultImpl extends GamesDataHolderResult implements Leaderboards.LoadScoresResult {
        private final LeaderboardEntity Tt;
        private final LeaderboardScoreBuffer Tu;

        LoadScoresResultImpl(DataHolder dataHolder, DataHolder dataHolder2) {
            super(dataHolder2);
            LeaderboardBuffer leaderboardBuffer = new LeaderboardBuffer(dataHolder);
            try {
                if (leaderboardBuffer.getCount() > 0) {
                    this.Tt = (LeaderboardEntity) leaderboardBuffer.get(0).freeze();
                } else {
                    this.Tt = null;
                }
                leaderboardBuffer.release();
                this.Tu = new LeaderboardScoreBuffer(dataHolder2);
            } catch (Throwable th) {
                leaderboardBuffer.release();
                throw th;
            }
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult
        public Leaderboard getLeaderboard() {
            return this.Tt;
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult
        public LeaderboardScoreBuffer getScores() {
            return this.Tu;
        }
    }

    private static final class LoadSnapshotsResultImpl extends GamesDataHolderResult implements Snapshots.LoadSnapshotsResult {
        LoadSnapshotsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult
        public SnapshotMetadataBuffer getSnapshots() {
            return new SnapshotMetadataBuffer(this.tk);
        }
    }

    private static final class LoadStockProfileImagesResultImpl extends GamesDataHolderResult implements Players.LoadStockProfileImagesResult {
        private final StockProfileImageBuffer Tv;

        LoadStockProfileImagesResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Tv = new StockProfileImageBuffer(dataHolder);
        }

        @Override // com.google.android.gms.internal.zzpy, com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class LoadXpForGameCategoriesResultImpl implements Players.LoadXpForGameCategoriesResult {
        private final List<String> Tw;
        private final Bundle Tx;
        private final Status cc;

        LoadXpForGameCategoriesResultImpl(Status status, Bundle bundle) {
            this.cc = status;
            this.Tw = bundle.getStringArrayList("game_category_list");
            this.Tx = bundle;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class LoadXpStreamResultImpl extends GamesDataHolderResult implements Players.LoadXpStreamResult {
        private final ExperienceEventBuffer Ty;

        LoadXpStreamResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Ty = new ExperienceEventBuffer(dataHolder);
        }
    }

    private static final class MatchRemovedNotifier implements zzqs.zzb<OnTurnBasedMatchUpdateReceivedListener> {
        private final String Tz;

        MatchRemovedNotifier(String str) {
            this.Tz = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchRemoved(this.Tz);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class MatchUpdateReceivedBinderCallback extends AbstractGamesCallbacks {
        private final zzqs<OnTurnBasedMatchUpdateReceivedListener> HA;

        MatchUpdateReceivedBinderCallback(zzqs<OnTurnBasedMatchUpdateReceivedListener> zzqsVar) {
            this.HA = zzqsVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onTurnBasedMatchRemoved(String str) {
            this.HA.zza(new MatchRemovedNotifier(str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzy(DataHolder dataHolder) {
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            try {
                TurnBasedMatch turnBasedMatchFreeze = turnBasedMatchBuffer.getCount() > 0 ? turnBasedMatchBuffer.get(0).freeze() : null;
                if (turnBasedMatchFreeze != null) {
                    this.HA.zza(new MatchUpdateReceivedNotifier(turnBasedMatchFreeze));
                }
            } finally {
                turnBasedMatchBuffer.release();
            }
        }
    }

    private static final class MatchUpdateReceivedNotifier implements zzqs.zzb<OnTurnBasedMatchUpdateReceivedListener> {
        private final TurnBasedMatch TA;

        MatchUpdateReceivedNotifier(TurnBasedMatch turnBasedMatch) {
            this.TA = turnBasedMatch;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnTurnBasedMatchUpdateReceivedListener onTurnBasedMatchUpdateReceivedListener) {
            onTurnBasedMatchUpdateReceivedListener.onTurnBasedMatchReceived(this.TA);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class MessageReceivedNotifier implements zzqs.zzb<RealTimeMessageReceivedListener> {
        private final RealTimeMessage TB;

        MessageReceivedNotifier(RealTimeMessage realTimeMessage) {
            this.TB = realTimeMessage;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(RealTimeMessageReceivedListener realTimeMessageReceivedListener) {
            realTimeMessageReceivedListener.onRealTimeMessageReceived(this.TB);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class NearbyPlayerDetectedNotifier implements zzqs.zzb<OnNearbyPlayerDetectedListener> {
        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnNearbyPlayerDetectedListener onNearbyPlayerDetectedListener) {
            onNearbyPlayerDetectedListener.zza(null);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class OpenSnapshotResultImpl extends GamesDataHolderResult implements Snapshots.OpenSnapshotResult {
        private final Snapshot TC;
        private final String TD;
        private final Snapshot TE;
        private final Contents TF;
        private final SnapshotContents TG;

        OpenSnapshotResultImpl(DataHolder dataHolder, Contents contents) {
            this(dataHolder, null, contents, null, null);
        }

        OpenSnapshotResultImpl(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) {
            super(dataHolder);
            SnapshotMetadataBuffer snapshotMetadataBuffer = new SnapshotMetadataBuffer(dataHolder);
            try {
                if (snapshotMetadataBuffer.getCount() == 0) {
                    this.TC = null;
                    this.TE = null;
                } else if (snapshotMetadataBuffer.getCount() == 1) {
                    zzb.zzbm(dataHolder.getStatusCode() != 4004);
                    this.TC = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0)), new SnapshotContentsEntity(contents));
                    this.TE = null;
                } else {
                    this.TC = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(0)), new SnapshotContentsEntity(contents));
                    this.TE = new SnapshotEntity(new SnapshotMetadataEntity((SnapshotMetadata) snapshotMetadataBuffer.get(1)), new SnapshotContentsEntity(contents2));
                }
                snapshotMetadataBuffer.release();
                this.TD = str;
                this.TF = contents3;
                this.TG = new SnapshotContentsEntity(contents3);
            } catch (Throwable th) {
                snapshotMetadataBuffer.release();
                throw th;
            }
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public String getConflictId() {
            return this.TD;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public Snapshot getConflictingSnapshot() {
            return this.TE;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public SnapshotContents getResolutionSnapshotContents() {
            return this.TG;
        }

        @Override // com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
        public Snapshot getSnapshot() {
            return this.TC;
        }
    }

    private static final class P2PConnectedNotifier implements zzqs.zzb<RoomStatusUpdateListener> {
        private final String TH;

        P2PConnectedNotifier(String str) {
            this.TH = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(RoomStatusUpdateListener roomStatusUpdateListener) {
            roomStatusUpdateListener.onP2PConnected(this.TH);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class P2PDisconnectedNotifier implements zzqs.zzb<RoomStatusUpdateListener> {
        private final String TH;

        P2PDisconnectedNotifier(String str) {
            this.TH = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(RoomStatusUpdateListener roomStatusUpdateListener) {
            roomStatusUpdateListener.onP2PDisconnected(this.TH);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class PeerConnectedNotifier extends AbstractPeerStatusNotifier {
        PeerConnectedNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersConnected(room, arrayList);
        }
    }

    private static final class PeerDeclinedNotifier extends AbstractPeerStatusNotifier {
        PeerDeclinedNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerDeclined(room, arrayList);
        }
    }

    private static final class PeerDisconnectedNotifier extends AbstractPeerStatusNotifier {
        PeerDisconnectedNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeersDisconnected(room, arrayList);
        }
    }

    private static final class PeerInvitedToRoomNotifier extends AbstractPeerStatusNotifier {
        PeerInvitedToRoomNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerInvitedToRoom(room, arrayList);
        }
    }

    private static final class PeerJoinedRoomNotifier extends AbstractPeerStatusNotifier {
        PeerJoinedRoomNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerJoined(room, arrayList);
        }
    }

    private static final class PeerLeftRoomNotifier extends AbstractPeerStatusNotifier {
        PeerLeftRoomNotifier(DataHolder dataHolder, String[] strArr) {
            super(dataHolder, strArr);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractPeerStatusNotifier
        protected void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room, ArrayList<String> arrayList) {
            roomStatusUpdateListener.onPeerLeft(room, arrayList);
        }
    }

    private static final class PlayerLeaderboardScoreLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Leaderboards.LoadPlayerScoreResult> zj;

        PlayerLeaderboardScoreLoadedBinderCallback(zzpr.zzb<Leaderboards.LoadPlayerScoreResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaj(DataHolder dataHolder) {
            this.zj.setResult(new LoadPlayerScoreResultImpl(dataHolder));
        }
    }

    private static final class PlayerStatsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Stats.LoadPlayerStatsResult> zj;

        public PlayerStatsLoadedBinderCallbacks(zzpr.zzb<Stats.LoadPlayerStatsResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaw(DataHolder dataHolder) {
            this.zj.setResult(new LoadPlayerStatsResultImpl(dataHolder));
        }
    }

    private static final class PlayerUnfriendedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadPlayersResult> zj;

        PlayerUnfriendedBinderCallback(zzpr.zzb<Players.LoadPlayersResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbf(DataHolder dataHolder) {
            this.zj.setResult(new LoadPlayersResultImpl(dataHolder));
        }
    }

    private static final class PlayerXpForGameCategoriesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadXpForGameCategoriesResult> zj;

        PlayerXpForGameCategoriesLoadedBinderCallback(zzpr.zzb<Players.LoadXpForGameCategoriesResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzf(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zj.setResult(new LoadXpForGameCategoriesResultImpl(GamesStatusCodes.zzps(i), bundle));
        }
    }

    static final class PlayerXpStreamLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadXpStreamResult> zj;

        PlayerXpStreamLoadedBinderCallback(zzpr.zzb<Players.LoadXpStreamResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzau(DataHolder dataHolder) {
            this.zj.setResult(new LoadXpStreamResultImpl(dataHolder));
        }
    }

    private static final class PlayersLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadPlayersResult> zj;

        PlayersLoadedBinderCallback(zzpr.zzb<Players.LoadPlayersResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzl(DataHolder dataHolder) {
            this.zj.setResult(new LoadPlayersResultImpl(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzm(DataHolder dataHolder) {
            this.zj.setResult(new LoadPlayersResultImpl(dataHolder));
        }
    }

    private static final class PopupLocationInfoBinderCallbacks extends AbstractGamesClient {
        private final PopupManager SD;

        public PopupLocationInfoBinderCallbacks(PopupManager popupManager) {
            this.SD = popupManager;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesClient, com.google.android.gms.games.internal.IGamesClient
        public PopupLocationInfoParcelable zzbhy() {
            return new PopupLocationInfoParcelable(this.SD.zzbjr());
        }
    }

    private static final class ProfileSettingsLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadProfileSettingsResult> zj;

        ProfileSettingsLoadedBinderCallback(zzpr.zzb<Players.LoadProfileSettingsResult> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzav(DataHolder dataHolder) {
            this.zj.setResult(new ProfileSettingsEntity(dataHolder));
            dataHolder.close();
        }
    }

    private static final class ProfileSettingsUpdatedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        ProfileSettingsUpdatedBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqf(int i) {
            this.zj.setResult(GamesStatusCodes.zzps(i));
        }
    }

    private static final class QuestAcceptedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Quests.AcceptQuestResult> TI;

        public QuestAcceptedBinderCallbacks(zzpr.zzb<Quests.AcceptQuestResult> zzbVar) {
            this.TI = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaq(DataHolder dataHolder) {
            this.TI.setResult(new AcceptQuestResultImpl(dataHolder));
        }
    }

    private static final class QuestCompletedNotifier implements zzqs.zzb<QuestUpdateListener> {
        private final Quest SK;

        QuestCompletedNotifier(Quest quest) {
            this.SK = quest;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(QuestUpdateListener questUpdateListener) {
            questUpdateListener.onQuestCompleted(this.SK);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class QuestMilestoneClaimBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Quests.ClaimMilestoneResult> TJ;
        private final String TK;

        public QuestMilestoneClaimBinderCallbacks(zzpr.zzb<Quests.ClaimMilestoneResult> zzbVar, String str) {
            this.TJ = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
            this.TK = (String) zzab.zzb(str, "MilestoneId must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzap(DataHolder dataHolder) {
            this.TJ.setResult(new ClaimMilestoneResultImpl(dataHolder, this.TK));
        }
    }

    private static final class QuestUpdateBinderCallback extends AbstractGamesCallbacks {
        private final zzqs<QuestUpdateListener> HA;

        QuestUpdateBinderCallback(zzqs<QuestUpdateListener> zzqsVar) {
            this.HA = zzqsVar;
        }

        private Quest zzbk(DataHolder dataHolder) {
            QuestBuffer questBuffer = new QuestBuffer(dataHolder);
            try {
                return questBuffer.getCount() > 0 ? questBuffer.get(0).freeze() : null;
            } finally {
                questBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzar(DataHolder dataHolder) {
            Quest questZzbk = zzbk(dataHolder);
            if (questZzbk != null) {
                this.HA.zza(new QuestCompletedNotifier(questZzbk));
            }
        }
    }

    private static final class QuestsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Quests.LoadQuestsResult> TL;

        public QuestsLoadedBinderCallbacks(zzpr.zzb<Quests.LoadQuestsResult> zzbVar) {
            this.TL = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzat(DataHolder dataHolder) {
            this.TL.setResult(new LoadQuestsResultImpl(dataHolder));
        }
    }

    private static final class RealTimeMessageSentNotifier implements zzqs.zzb<RealTimeMultiplayer.ReliableMessageSentCallback> {
        private final String TM;
        private final int TN;
        private final int ob;

        RealTimeMessageSentNotifier(int i, int i2, String str) {
            this.ob = i;
            this.TN = i2;
            this.TM = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(RealTimeMultiplayer.ReliableMessageSentCallback reliableMessageSentCallback) {
            if (reliableMessageSentCallback != null) {
                reliableMessageSentCallback.onRealTimeMessageSent(this.ob, this.TN, this.TM);
            }
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class RealTimeReliableMessageBinderCallbacks extends AbstractGamesCallbacks {
        final zzqs<RealTimeMultiplayer.ReliableMessageSentCallback> TO;

        public RealTimeReliableMessageBinderCallbacks(zzqs<RealTimeMultiplayer.ReliableMessageSentCallback> zzqsVar) {
            this.TO = zzqsVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzb(int i, int i2, String str) {
            if (this.TO != null) {
                this.TO.zza(new RealTimeMessageSentNotifier(i, i2, str));
            }
        }
    }

    private static final class RequestReceivedBinderCallback extends AbstractGamesCallbacks {
        private final zzqs<OnRequestReceivedListener> HA;

        RequestReceivedBinderCallback(zzqs<OnRequestReceivedListener> zzqsVar) {
            this.HA = zzqsVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onRequestRemoved(String str) {
            this.HA.zza(new RequestRemovedNotifier(str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzt(DataHolder dataHolder) {
            GameRequestBuffer gameRequestBuffer = new GameRequestBuffer(dataHolder);
            try {
                GameRequest gameRequestFreeze = gameRequestBuffer.getCount() > 0 ? gameRequestBuffer.get(0).freeze() : null;
                if (gameRequestFreeze != null) {
                    this.HA.zza(new RequestReceivedNotifier(gameRequestFreeze));
                }
            } finally {
                gameRequestBuffer.release();
            }
        }
    }

    private static final class RequestReceivedNotifier implements zzqs.zzb<OnRequestReceivedListener> {
        private final GameRequest TP;

        RequestReceivedNotifier(GameRequest gameRequest) {
            this.TP = gameRequest;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestReceived(this.TP);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class RequestRemovedNotifier implements zzqs.zzb<OnRequestReceivedListener> {
        private final String zzbvu;

        RequestRemovedNotifier(String str) {
            this.zzbvu = str;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnRequestReceivedListener onRequestReceivedListener) {
            onRequestReceivedListener.onRequestRemoved(this.zzbvu);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class RequestSentBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Requests.SendRequestResult> TQ;

        public RequestSentBinderCallbacks(zzpr.zzb<Requests.SendRequestResult> zzbVar) {
            this.TQ = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzal(DataHolder dataHolder) {
            this.TQ.setResult(new SendRequestResultImpl(dataHolder));
        }
    }

    private static final class RequestSummariesLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Requests.LoadRequestSummariesResult> TR;

        public RequestSummariesLoadedBinderCallbacks(zzpr.zzb<Requests.LoadRequestSummariesResult> zzbVar) {
            this.TR = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzam(DataHolder dataHolder) {
            this.TR.setResult(new LoadRequestSummariesResultImpl(dataHolder));
        }
    }

    private static final class RequestsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Requests.LoadRequestsResult> TS;

        public RequestsLoadedBinderCallbacks(zzpr.zzb<Requests.LoadRequestsResult> zzbVar) {
            this.TS = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.TS.setResult(new LoadRequestsResultImpl(GamesStatusCodes.zzps(i), bundle));
        }
    }

    private static final class RequestsUpdatedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Requests.UpdateRequestsResult> TT;

        public RequestsUpdatedBinderCallbacks(zzpr.zzb<Requests.UpdateRequestsResult> zzbVar) {
            this.TT = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzak(DataHolder dataHolder) {
            this.TT.setResult(new UpdateRequestsResultImpl(dataHolder));
        }
    }

    private static final class RoomAutoMatchingNotifier extends AbstractRoomStatusNotifier {
        RoomAutoMatchingNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomAutoMatching(room);
        }
    }

    private static final class RoomBinderCallbacks extends AbstractGamesCallbacks {
        private final zzqs<? extends RoomUpdateListener> TU;
        private final zzqs<? extends RoomStatusUpdateListener> TV;
        private final zzqs<RealTimeMessageReceivedListener> TW;

        public RoomBinderCallbacks(zzqs<RoomUpdateListener> zzqsVar) {
            this.TU = (zzqs) zzab.zzb(zzqsVar, "Callbacks must not be null");
            this.TV = null;
            this.TW = null;
        }

        public RoomBinderCallbacks(zzqs<? extends RoomUpdateListener> zzqsVar, zzqs<? extends RoomStatusUpdateListener> zzqsVar2, zzqs<RealTimeMessageReceivedListener> zzqsVar3) {
            this.TU = (zzqs) zzab.zzb(zzqsVar, "Callbacks must not be null");
            this.TV = zzqsVar2;
            this.TW = zzqsVar3;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onLeftRoom(int i, String str) {
            this.TU.zza(new LeftRoomNotifier(i, str));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onP2PConnected(String str) {
            if (this.TV != null) {
                this.TV.zza(new P2PConnectedNotifier(str));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onP2PDisconnected(String str) {
            if (this.TV != null) {
                this.TV.zza(new P2PDisconnectedNotifier(str));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void onRealTimeMessageReceived(RealTimeMessage realTimeMessage) {
            if (this.TW != null) {
                this.TW.zza(new MessageReceivedNotifier(realTimeMessage));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, String[] strArr) {
            if (this.TV != null) {
                this.TV.zza(new PeerInvitedToRoomNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaa(DataHolder dataHolder) {
            this.TU.zza(new JoinedRoomNotifier(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzab(DataHolder dataHolder) {
            if (this.TV != null) {
                this.TV.zza(new RoomConnectingNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzac(DataHolder dataHolder) {
            if (this.TV != null) {
                this.TV.zza(new RoomAutoMatchingNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzad(DataHolder dataHolder) {
            this.TU.zza(new RoomConnectedNotifier(dataHolder));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzae(DataHolder dataHolder) {
            if (this.TV != null) {
                this.TV.zza(new ConnectedToRoomNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaf(DataHolder dataHolder) {
            if (this.TV != null) {
                this.TV.zza(new DisconnectedFromRoomNotifier(dataHolder));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzb(DataHolder dataHolder, String[] strArr) {
            if (this.TV != null) {
                this.TV.zza(new PeerJoinedRoomNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzc(DataHolder dataHolder, String[] strArr) {
            if (this.TV != null) {
                this.TV.zza(new PeerLeftRoomNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzd(DataHolder dataHolder, String[] strArr) {
            if (this.TV != null) {
                this.TV.zza(new PeerDeclinedNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zze(DataHolder dataHolder, String[] strArr) {
            if (this.TV != null) {
                this.TV.zza(new PeerConnectedNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzf(DataHolder dataHolder, String[] strArr) {
            if (this.TV != null) {
                this.TV.zza(new PeerDisconnectedNotifier(dataHolder, strArr));
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzz(DataHolder dataHolder) {
            this.TU.zza(new RoomCreatedNotifier(dataHolder));
        }
    }

    private static final class RoomConnectedNotifier extends AbstractRoomNotifier {
        RoomConnectedNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier
        public void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomConnected(i, room);
        }
    }

    private static final class RoomConnectingNotifier extends AbstractRoomStatusNotifier {
        RoomConnectingNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomStatusNotifier
        public void zza(RoomStatusUpdateListener roomStatusUpdateListener, Room room) {
            roomStatusUpdateListener.onRoomConnecting(room);
        }
    }

    private static final class RoomCreatedNotifier extends AbstractRoomNotifier {
        public RoomCreatedNotifier(DataHolder dataHolder) {
            super(dataHolder);
        }

        @Override // com.google.android.gms.games.internal.GamesClientImpl.AbstractRoomNotifier
        public void zza(RoomUpdateListener roomUpdateListener, Room room, int i) {
            roomUpdateListener.onRoomCreated(i, room);
        }
    }

    private static final class SendFriendInviteFirstPartyBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Social.InviteUpdateResult> zj;

        SendFriendInviteFirstPartyBinderCallback(zzpr.zzb<Social.InviteUpdateResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzaz(DataHolder dataHolder) {
            this.zj.setResult(new InviteUpdateResultImpl(dataHolder));
        }
    }

    private static final class SendRequestResultImpl extends GamesDataHolderResult implements Requests.SendRequestResult {
        private final GameRequest TP;

        SendRequestResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            GameRequestBuffer gameRequestBuffer = new GameRequestBuffer(dataHolder);
            try {
                if (gameRequestBuffer.getCount() > 0) {
                    this.TP = gameRequestBuffer.get(0).freeze();
                } else {
                    this.TP = null;
                }
            } finally {
                gameRequestBuffer.release();
            }
        }
    }

    private static final class SetPlayerMutedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadPlayersResult> zj;

        SetPlayerMutedBinderCallback(zzpr.zzb<Players.LoadPlayersResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbg(DataHolder dataHolder) {
            this.zj.setResult(new LoadPlayersResultImpl(dataHolder));
        }
    }

    private static final class SignOutCompleteBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        public SignOutCompleteBinderCallbacks(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbhx() {
            this.zj.setResult(GamesStatusCodes.zzps(0));
        }
    }

    private static final class SnapshotCommittedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Snapshots.CommitSnapshotResult> TX;

        public SnapshotCommittedBinderCallbacks(zzpr.zzb<Snapshots.CommitSnapshotResult> zzbVar) {
            this.TX = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzao(DataHolder dataHolder) {
            this.TX.setResult(new CommitSnapshotResultImpl(dataHolder));
        }
    }

    static final class SnapshotDeletedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Snapshots.DeleteSnapshotResult> zj;

        public SnapshotDeletedBinderCallbacks(zzpr.zzb<Snapshots.DeleteSnapshotResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzl(int i, String str) {
            this.zj.setResult(new DeleteSnapshotResultImpl(i, str));
        }
    }

    private static final class SnapshotOpenedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Snapshots.OpenSnapshotResult> TY;

        public SnapshotOpenedBinderCallbacks(zzpr.zzb<Snapshots.OpenSnapshotResult> zzbVar) {
            this.TY = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, Contents contents) {
            this.TY.setResult(new OpenSnapshotResultImpl(dataHolder, contents));
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zza(DataHolder dataHolder, String str, Contents contents, Contents contents2, Contents contents3) {
            this.TY.setResult(new OpenSnapshotResultImpl(dataHolder, str, contents, contents2, contents3));
        }
    }

    private static final class SnapshotsLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Snapshots.LoadSnapshotsResult> TZ;

        public SnapshotsLoadedBinderCallbacks(zzpr.zzb<Snapshots.LoadSnapshotsResult> zzbVar) {
            this.TZ = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzan(DataHolder dataHolder) {
            this.TZ.setResult(new LoadSnapshotsResultImpl(dataHolder));
        }
    }

    private static final class SocialInviteRemovedNotifier implements zzqs.zzb<OnSocialInviteUpdateReceivedListener> {
        private final SocialInvite Ua;

        SocialInviteRemovedNotifier(SocialInvite socialInvite) {
            this.Ua = socialInvite;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnSocialInviteUpdateReceivedListener onSocialInviteUpdateReceivedListener) {
            onSocialInviteUpdateReceivedListener.zzb(this.Ua);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class SocialInviteUpdateReceivedBinderCallback extends AbstractGamesCallbacks {
        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbb(DataHolder dataHolder) {
            zzqs zzqsVar = null;
            SocialInviteBuffer socialInviteBuffer = new SocialInviteBuffer(dataHolder);
            try {
                SocialInvite socialInviteFreeze = socialInviteBuffer.getCount() > 0 ? ((SocialInvite) socialInviteBuffer.get(0)).freeze() : null;
                if (socialInviteFreeze != null) {
                    zzqsVar.zza(new SocialInviteUpdateReceivedNotifier(socialInviteFreeze));
                }
            } finally {
                socialInviteBuffer.release();
            }
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbc(DataHolder dataHolder) {
            zzqs zzqsVar = null;
            SocialInviteBuffer socialInviteBuffer = new SocialInviteBuffer(dataHolder);
            try {
                SocialInvite socialInviteFreeze = socialInviteBuffer.getCount() > 0 ? ((SocialInvite) socialInviteBuffer.get(0)).freeze() : null;
                if (socialInviteFreeze != null) {
                    zzqsVar.zza(new SocialInviteRemovedNotifier(socialInviteFreeze));
                }
            } finally {
                socialInviteBuffer.release();
            }
        }
    }

    private static final class SocialInviteUpdateReceivedNotifier implements zzqs.zzb<OnSocialInviteUpdateReceivedListener> {
        private final SocialInvite Ua;

        SocialInviteUpdateReceivedNotifier(SocialInvite socialInvite) {
            this.Ua = socialInvite;
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
        public void zzu(OnSocialInviteUpdateReceivedListener onSocialInviteUpdateReceivedListener) {
            onSocialInviteUpdateReceivedListener.zza(this.Ua);
        }

        @Override // com.google.android.gms.internal.zzqs.zzb
        public void zzapg() {
        }
    }

    private static final class StockProfileImagesLoadedBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Players.LoadStockProfileImagesResult> zj;

        StockProfileImagesLoadedBinderCallback(zzpr.zzb<Players.LoadStockProfileImagesResult> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzay(DataHolder dataHolder) {
            this.zj.setResult(new LoadStockProfileImagesResultImpl(dataHolder));
        }
    }

    private static final class SubmitScoreBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<Leaderboards.SubmitScoreResult> zj;

        public SubmitScoreBinderCallbacks(zzpr.zzb<Leaderboards.SubmitScoreResult> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzk(DataHolder dataHolder) {
            this.zj.setResult(new SubmitScoreResultImpl(dataHolder));
        }
    }

    private static final class SubmitScoreResultImpl extends GamesDataHolderResult implements Leaderboards.SubmitScoreResult {
        private final ScoreSubmissionData Ub;

        public SubmitScoreResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            try {
                this.Ub = new ScoreSubmissionData(dataHolder);
            } finally {
                dataHolder.close();
            }
        }

        @Override // com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult
        public ScoreSubmissionData getScoreData() {
            return this.Ub;
        }
    }

    private static final class TurnBasedMatchCanceledBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<TurnBasedMultiplayer.CancelMatchResult> Uc;

        public TurnBasedMatchCanceledBinderCallbacks(zzpr.zzb<TurnBasedMultiplayer.CancelMatchResult> zzbVar) {
            this.Uc = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzk(int i, String str) {
            this.Uc.setResult(new CancelMatchResultImpl(GamesStatusCodes.zzps(i), str));
        }
    }

    private static final class TurnBasedMatchInitiatedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> Ud;

        public TurnBasedMatchInitiatedBinderCallbacks(zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar) {
            this.Ud = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzv(DataHolder dataHolder) {
            this.Ud.setResult(new InitiateMatchResultImpl(dataHolder));
        }
    }

    private static final class TurnBasedMatchLeftBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<TurnBasedMultiplayer.LeaveMatchResult> Ue;

        public TurnBasedMatchLeftBinderCallbacks(zzpr.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbVar) {
            this.Ue = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzx(DataHolder dataHolder) {
            this.Ue.setResult(new LeaveMatchResultImpl(dataHolder));
        }
    }

    private static final class TurnBasedMatchLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<TurnBasedMultiplayer.LoadMatchResult> Uf;

        public TurnBasedMatchLoadedBinderCallbacks(zzpr.zzb<TurnBasedMultiplayer.LoadMatchResult> zzbVar) {
            this.Uf = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzu(DataHolder dataHolder) {
            this.Uf.setResult(new LoadMatchResultImpl(dataHolder));
        }
    }

    private static abstract class TurnBasedMatchResult extends GamesDataHolderResult {
        final TurnBasedMatch TA;

        TurnBasedMatchResult(DataHolder dataHolder) {
            super(dataHolder);
            TurnBasedMatchBuffer turnBasedMatchBuffer = new TurnBasedMatchBuffer(dataHolder);
            try {
                if (turnBasedMatchBuffer.getCount() > 0) {
                    this.TA = turnBasedMatchBuffer.get(0).freeze();
                } else {
                    this.TA = null;
                }
            } finally {
                turnBasedMatchBuffer.release();
            }
        }

        public TurnBasedMatch getMatch() {
            return this.TA;
        }
    }

    private static final class TurnBasedMatchUpdatedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<TurnBasedMultiplayer.UpdateMatchResult> Ug;

        public TurnBasedMatchUpdatedBinderCallbacks(zzpr.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbVar) {
            this.Ug = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzw(DataHolder dataHolder) {
            this.Ug.setResult(new UpdateMatchResultImpl(dataHolder));
        }
    }

    private static final class TurnBasedMatchesLoadedBinderCallbacks extends AbstractGamesCallbacks {
        private final zzpr.zzb<TurnBasedMultiplayer.LoadMatchesResult> Uh;

        public TurnBasedMatchesLoadedBinderCallbacks(zzpr.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbVar) {
            this.Uh = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzc(int i, Bundle bundle) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.Uh.setResult(new LoadMatchesResultImpl(GamesStatusCodes.zzps(i), bundle));
        }
    }

    private static final class UpdateAchievementResultImpl implements Achievements.UpdateAchievementResult {
        private final String RL;
        private final Status cc;

        UpdateAchievementResultImpl(int i, String str) {
            this.cc = GamesStatusCodes.zzps(i);
            this.RL = str;
        }

        @Override // com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult
        public String getAchievementId() {
            return this.RL;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class UpdateAutoSignInBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        UpdateAutoSignInBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqj(int i) {
            this.zj.setResult(new Status(i));
        }
    }

    private static final class UpdateGamerProfileResultImpl implements Players.UpdateGamerProfileResult {
        private final Bundle Ui;
        private final Status cc;

        UpdateGamerProfileResultImpl(int i, Bundle bundle) {
            this.cc = new Status(i);
            this.Ui = bundle;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.cc;
        }
    }

    private static final class UpdateHeadlessCapturePermissionBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        UpdateHeadlessCapturePermissionBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = (zzpr.zzb) zzab.zzb(zzbVar, "Holder must not be null");
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzbj(Status status) {
            this.zj.setResult(status);
        }
    }

    private static final class UpdateMatchResultImpl extends TurnBasedMatchResult implements TurnBasedMultiplayer.UpdateMatchResult {
        UpdateMatchResultImpl(DataHolder dataHolder) {
            super(dataHolder);
        }
    }

    private static final class UpdateProfileDiscoverabilityBinderCallback extends AbstractGamesCallbacks {
        private final zzpr.zzb<Status> zj;

        UpdateProfileDiscoverabilityBinderCallback(zzpr.zzb<Status> zzbVar) {
            this.zj = zzbVar;
        }

        @Override // com.google.android.gms.games.internal.AbstractGamesCallbacks, com.google.android.gms.games.internal.IGamesCallbacks
        public void zzqk(int i) {
            this.zj.setResult(new Status(i));
        }
    }

    private static final class UpdateRequestsResultImpl extends GamesDataHolderResult implements Requests.UpdateRequestsResult {
        private final RequestUpdateOutcomes Uj;

        UpdateRequestsResultImpl(DataHolder dataHolder) {
            super(dataHolder);
            this.Uj = RequestUpdateOutcomes.zzbl(dataHolder);
        }

        @Override // com.google.android.gms.games.request.Requests.UpdateRequestsResult
        public Set<String> getRequestIds() {
            return this.Uj.getRequestIds();
        }

        @Override // com.google.android.gms.games.request.Requests.UpdateRequestsResult
        public int getRequestOutcome(String str) {
            return this.Uj.getRequestOutcome(str);
        }
    }

    public GamesClientImpl(Context context, Looper looper, zzg zzgVar, Games.GamesOptions gamesOptions, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 1, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.Sz = new EventIncrementManager() { // from class: com.google.android.gms.games.internal.GamesClientImpl.1
            @Override // com.google.android.gms.games.internal.events.EventIncrementManager
            public EventIncrementCache zzbja() {
                return GamesClientImpl.this.new GameClientEventIncrementCache();
            }
        };
        this.SE = false;
        this.SA = zzgVar.zzasi();
        this.SF = new Binder();
        this.SD = PopupManager.zza(this, zzgVar.zzase());
        zzq(zzgVar.zzask());
        this.SG = hashCode();
        this.SH = gamesOptions;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(RemoteException remoteException) {
        GamesLog.zzc("GamesClientImpl", "service died", remoteException);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Room zzbi(DataHolder dataHolder) {
        RoomBuffer roomBuffer = new RoomBuffer(dataHolder);
        try {
            return roomBuffer.getCount() > 0 ? roomBuffer.get(0).freeze() : null;
        } finally {
            roomBuffer.release();
        }
    }

    private void zzbib() {
        this.SB = null;
        this.SC = null;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        this.SE = false;
        if (isConnected()) {
            try {
                IGamesService iGamesService = (IGamesService) zzarw();
                iGamesService.zzbiz();
                this.Sz.flush();
                iGamesService.zzak(this.SG);
            } catch (RemoteException e) {
                GamesLog.zzaf("GamesClientImpl", "Failed to notify client disconnect.");
            }
        }
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.zzd
    public void onConnectionFailed(ConnectionResult connectionResult) {
        super.onConnectionFailed(connectionResult);
        this.SE = false;
    }

    public int zza(zzqs<RealTimeMultiplayer.ReliableMessageSentCallback> zzqsVar, byte[] bArr, String str, String str2) {
        try {
            return ((IGamesService) zzarw()).zza(new RealTimeReliableMessageBinderCallbacks(zzqsVar), bArr, str, str2);
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public int zza(byte[] bArr, String str, String[] strArr) {
        zzab.zzb(strArr, "Participant IDs must not be null");
        try {
            return ((IGamesService) zzarw()).zzb(bArr, str, strArr);
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public Intent zza(int i, byte[] bArr, int i2, Bitmap bitmap, String str) {
        try {
            Intent intentZza = ((IGamesService) zzarw()).zza(i, bArr, i2, str);
            zzab.zzb(bitmap, "Must provide a non null icon");
            intentZza.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", bitmap);
            return intentZza;
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zza(PlayerEntity playerEntity) {
        try {
            return ((IGamesService) zzarw()).zza(playerEntity);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zza(Room room, int i) {
        try {
            return ((IGamesService) zzarw()).zza((RoomEntity) room.freeze(), i);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zza(String str, boolean z, boolean z2, int i) {
        try {
            return ((IGamesService) zzarw()).zza(str, z, z2, i);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (i == 0 && bundle != null) {
            bundle.setClassLoader(GamesClientImpl.class.getClassLoader());
            this.SE = bundle.getBoolean("show_welcome_popup");
            this.SB = (PlayerEntity) bundle.getParcelable("com.google.android.gms.games.current_player");
            this.SC = (GameEntity) bundle.getParcelable("com.google.android.gms.games.current_game");
        }
        super.zza(i, iBinder, bundle, i2);
    }

    public void zza(Account account, byte[] bArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(account, bArr);
    }

    public void zza(IBinder iBinder, Bundle bundle) {
        if (isConnected()) {
            try {
                ((IGamesService) zzarw()).zza(iBinder, bundle);
            } catch (RemoteException e) {
                zzb(e);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public void zza(zzd.zzf zzfVar) {
        zzbib();
        super.zza(zzfVar);
    }

    public void zza(Games.BaseGamesApiMethodImpl<Status> baseGamesApiMethodImpl, String str, VideoConfiguration videoConfiguration) throws RemoteException {
        ((IGamesService) zzarw()).zza(new CaptureLaunchGameAndOverlayBinderCallback(baseGamesApiMethodImpl), str, videoConfiguration);
    }

    @Override // com.google.android.gms.common.internal.zzd
    public void zza(@NonNull IGamesService iGamesService) {
        super.zza(iGamesService);
        if (this.SE) {
            this.SD.zzbjo();
            this.SE = false;
        }
        if (this.SH.Rd || this.SH.Rl) {
            return;
        }
        zzb(iGamesService);
    }

    public void zza(Snapshot snapshot) {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        zzab.zza(!snapshotContents.isClosed(), "Snapshot already closed");
        Contents contentsZzazu = snapshotContents.zzazu();
        snapshotContents.close();
        try {
            ((IGamesService) zzarw()).zza(contentsZzazu);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zza(zzpr.zzb<Invitations.LoadInvitationsResult> zzbVar, int i) throws RemoteException {
        ((IGamesService) zzarw()).zza((IGamesCallbacks) new InvitationsLoadedBinderCallback(zzbVar), i);
    }

    public void zza(zzpr.zzb<Requests.LoadRequestsResult> zzbVar, int i, int i2, int i3) throws RemoteException {
        ((IGamesService) zzarw()).zza(new RequestsLoadedBinderCallbacks(zzbVar), i, i2, i3);
    }

    public void zza(zzpr.zzb<AppContents.LoadAppContentResult> zzbVar, int i, String str, String[] strArr, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zza(new AppContentLoadedBinderCallbacks(zzbVar), i, str, strArr, z);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zza(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zza(zzpr.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbVar, int i, int[] iArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(new TurnBasedMatchesLoadedBinderCallbacks(zzbVar), i, iArr);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, Account account) throws RemoteException {
        ((IGamesService) zzarw()).zza(new PlayersLoadedBinderCallback(zzbVar), account);
    }

    public void zza(zzpr.zzb<Leaderboards.LoadScoresResult> zzbVar, LeaderboardScoreBuffer leaderboardScoreBuffer, int i, int i2) throws RemoteException {
        ((IGamesService) zzarw()).zza(new LeaderboardScoresLoadedBinderCallback(zzbVar), leaderboardScoreBuffer.zzbla().asBundle(), i, i2);
    }

    public void zza(zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, TurnBasedMatchConfig turnBasedMatchConfig) throws RemoteException {
        ((IGamesService) zzarw()).zza(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), turnBasedMatchConfig.getVariant(), turnBasedMatchConfig.zzblg(), turnBasedMatchConfig.getInvitedPlayerIds(), turnBasedMatchConfig.getAutoMatchCriteria());
    }

    public void zza(zzpr.zzb<Snapshots.CommitSnapshotResult> zzbVar, Snapshot snapshot, SnapshotMetadataChange snapshotMetadataChange) throws RemoteException {
        SnapshotContents snapshotContents = snapshot.getSnapshotContents();
        zzab.zza(!snapshotContents.isClosed(), "Snapshot already closed");
        BitmapTeleporter bitmapTeleporterZzbll = snapshotMetadataChange.zzbll();
        if (bitmapTeleporterZzbll != null) {
            bitmapTeleporterZzbll.zzd(getContext().getCacheDir());
        }
        Contents contentsZzazu = snapshotContents.zzazu();
        snapshotContents.close();
        ((IGamesService) zzarw()).zza(new SnapshotCommittedBinderCallbacks(zzbVar), snapshot.getMetadata().getSnapshotId(), (SnapshotMetadataChangeEntity) snapshotMetadataChange, contentsZzazu);
    }

    public void zza(zzpr.zzb<Status> zzbVar, VideoConfiguration videoConfiguration, Videos.CaptureRuntimeErrorCallback captureRuntimeErrorCallback) throws RemoteException {
        ((IGamesService) zzarw()).zza(new CaptureStartedBinderCallbacks(zzbVar, captureRuntimeErrorCallback), videoConfiguration);
    }

    public void zza(zzpr.zzb<Achievements.UpdateAchievementResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zza(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, this.SD.zzbjq(), this.SD.zzbjp());
    }

    public void zza(zzpr.zzb<Achievements.UpdateAchievementResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zza(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, i, this.SD.zzbjq(), this.SD.zzbjp());
    }

    public void zza(zzpr.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zza(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, i, i2, i3, z);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str, int i, boolean z, boolean z2) throws RemoteException {
        switch (str) {
            case "played_with":
                ((IGamesService) zzarw()).zzd(new PlayersLoadedBinderCallback(zzbVar), str, i, z, z2);
                return;
            default:
                String strValueOf = String.valueOf(str);
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid player collection: ".concat(strValueOf) : new String("Invalid player collection: "));
        }
    }

    public void zza(zzpr.zzb<TurnBasedMultiplayer.LoadMatchesResult> zzbVar, String str, int i, int[] iArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(new TurnBasedMatchesLoadedBinderCallbacks(zzbVar), str, i, iArr);
    }

    public void zza(zzpr.zzb<Leaderboards.SubmitScoreResult> zzbVar, String str, long j, String str2) throws RemoteException {
        ((IGamesService) zzarw()).zza(zzbVar == null ? null : new SubmitScoreBinderCallbacks(zzbVar), str, j, str2);
    }

    public void zza(zzpr.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbVar, String str, String str2) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new TurnBasedMatchLeftBinderCallbacks(zzbVar), str, str2);
    }

    public void zza(zzpr.zzb<Leaderboards.LoadPlayerScoreResult> zzbVar, String str, String str2, int i, int i2) throws RemoteException {
        ((IGamesService) zzarw()).zza(new PlayerLeaderboardScoreLoadedBinderCallback(zzbVar), str, str2, i, i2);
    }

    public void zza(zzpr.zzb<Requests.LoadRequestsResult> zzbVar, String str, String str2, int i, int i2, int i3) throws RemoteException {
        ((IGamesService) zzarw()).zza(new RequestsLoadedBinderCallbacks(zzbVar), str, str2, i, i2, i3);
    }

    public void zza(zzpr.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, String str2, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zza(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, str2, i, i2, i3, z);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str, String str2, int i, boolean z, boolean z2) throws RemoteException {
        switch (str) {
            case "circled":
            case "played_with":
            case "nearby":
                ((IGamesService) zzarw()).zza(new PlayersLoadedBinderCallback(zzbVar), str, str2, i, z, z2);
                return;
            default:
                String strValueOf = String.valueOf(str);
                throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid player collection: ".concat(strValueOf) : new String("Invalid player collection: "));
        }
    }

    public void zza(zzpr.zzb<Snapshots.OpenSnapshotResult> zzbVar, String str, String str2, SnapshotMetadataChange snapshotMetadataChange, SnapshotContents snapshotContents) throws RemoteException {
        zzab.zza(!snapshotContents.isClosed(), "SnapshotContents already closed");
        BitmapTeleporter bitmapTeleporterZzbll = snapshotMetadataChange.zzbll();
        if (bitmapTeleporterZzbll != null) {
            bitmapTeleporterZzbll.zzd(getContext().getCacheDir());
        }
        Contents contentsZzazu = snapshotContents.zzazu();
        snapshotContents.close();
        ((IGamesService) zzarw()).zza(new SnapshotOpenedBinderCallbacks(zzbVar), str, str2, (SnapshotMetadataChangeEntity) snapshotMetadataChange, contentsZzazu);
    }

    public void zza(zzpr.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, String str, String str2, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new LeaderboardsLoadedBinderCallback(zzbVar), str, str2, z);
    }

    public void zza(zzpr.zzb<Quests.LoadQuestsResult> zzbVar, String str, String str2, boolean z, String[] strArr) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zza(new QuestsLoadedBinderCallbacks(zzbVar), str, str2, strArr, z);
    }

    public void zza(zzpr.zzb<Quests.LoadQuestsResult> zzbVar, String str, String str2, int[] iArr, int i, boolean z) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zza(new QuestsLoadedBinderCallbacks(zzbVar), str, str2, iArr, i, z);
    }

    public void zza(zzpr.zzb<Requests.UpdateRequestsResult> zzbVar, String str, String str2, String[] strArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(new RequestsUpdatedBinderCallbacks(zzbVar), str, str2, strArr);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzf(new PlayersLoadedBinderCallback(zzbVar), str, z);
    }

    public void zza(zzpr.zzb<Snapshots.OpenSnapshotResult> zzbVar, String str, boolean z, int i) throws RemoteException {
        ((IGamesService) zzarw()).zza(new SnapshotOpenedBinderCallbacks(zzbVar), str, z, i);
    }

    public void zza(zzpr.zzb<Players.UpdateGamerProfileResult> zzbVar, String str, boolean z, String str2, boolean z2, boolean z3) throws RemoteException {
        ((IGamesService) zzarw()).zza(new GamerProfileUpdatedBinderCallback(zzbVar), str, z, str2, z2, z3);
    }

    public void zza(zzpr.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbVar, String str, byte[] bArr, String str2, ParticipantResult[] participantResultArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(new TurnBasedMatchUpdatedBinderCallbacks(zzbVar), str, bArr, str2, participantResultArr);
    }

    public void zza(zzpr.zzb<TurnBasedMultiplayer.UpdateMatchResult> zzbVar, String str, byte[] bArr, ParticipantResult[] participantResultArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(new TurnBasedMatchUpdatedBinderCallbacks(zzbVar), str, bArr, participantResultArr);
    }

    public void zza(zzpr.zzb<Requests.SendRequestResult> zzbVar, String str, String[] strArr, int i, byte[] bArr, int i2) throws RemoteException {
        ((IGamesService) zzarw()).zza(new RequestSentBinderCallbacks(zzbVar), str, strArr, i, bArr, i2);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new PlayersLoadedBinderCallback(zzbVar), z);
    }

    public void zza(zzpr.zzb<Players.LoadProfileSettingsResult> zzbVar, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zza(new ProfileSettingsLoadedBinderCallback(zzbVar), z, z2);
    }

    public void zza(zzpr.zzb<Status> zzbVar, boolean z, boolean z2, Bundle bundle) throws RemoteException {
        ((IGamesService) zzarw()).zza(new ContactSettingsUpdatedBinderCallback(zzbVar), z, z2, bundle);
    }

    public void zza(zzpr.zzb<Events.LoadEventsResult> zzbVar, boolean z, String... strArr) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zza(new EventsLoadedBinderCallback(zzbVar), z, strArr);
    }

    public void zza(zzpr.zzb<Quests.LoadQuestsResult> zzbVar, int[] iArr, int i, boolean z) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zza(new QuestsLoadedBinderCallbacks(zzbVar), iArr, i, z);
    }

    public void zza(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String[] strArr) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new PlayersLoadedBinderCallback(zzbVar), strArr);
    }

    public void zza(zzqs<OnInvitationReceivedListener> zzqsVar) {
        try {
            ((IGamesService) zzarw()).zza(new InvitationReceivedBinderCallback(zzqsVar), this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zza(zzqs<RoomUpdateListener> zzqsVar, zzqs<RoomStatusUpdateListener> zzqsVar2, zzqs<RealTimeMessageReceivedListener> zzqsVar3, RoomConfig roomConfig) {
        try {
            ((IGamesService) zzarw()).zza((IGamesCallbacks) new RoomBinderCallbacks(zzqsVar, zzqsVar2, zzqsVar3), (IBinder) this.SF, roomConfig.getVariant(), roomConfig.getInvitedPlayerIds(), roomConfig.getAutoMatchCriteria(), false, this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zza(zzqs<RoomUpdateListener> zzqsVar, String str) {
        try {
            ((IGamesService) zzarw()).zzc(new RoomBinderCallbacks(zzqsVar), str);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected Bundle zzaeu() {
        String string = getContext().getResources().getConfiguration().locale.toString();
        Bundle bundleZzbgc = this.SH.zzbgc();
        bundleZzbgc.putString("com.google.android.gms.games.key.gamePackageName", this.SA);
        bundleZzbgc.putString("com.google.android.gms.games.key.desiredLocale", string);
        bundleZzbgc.putParcelable("com.google.android.gms.games.key.popupWindowToken", new BinderWrapper(this.SD.zzbjq()));
        bundleZzbgc.putInt("com.google.android.gms.games.key.API_VERSION", 4);
        bundleZzbgc.putBundle("com.google.android.gms.games.key.signInOptions", com.google.android.gms.signin.internal.zzg.zza(zzasr()));
        return bundleZzbgc;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.api.Api.zze
    public boolean zzafk() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.zzd, com.google.android.gms.common.internal.zzl.zza
    public Bundle zzamc() {
        try {
            Bundle bundleZzamc = ((IGamesService) zzarw()).zzamc();
            if (bundleZzamc == null) {
                return bundleZzamc;
            }
            bundleZzamc.setClassLoader(GamesClientImpl.class.getClassLoader());
            return bundleZzamc;
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzb(int i, int i2, boolean z) {
        try {
            return ((IGamesService) zzarw()).zzb(i, i2, z);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public void zzb(IGamesService iGamesService) {
        try {
            iGamesService.zza(new PopupLocationInfoBinderCallbacks(this.SD), this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzb(zzpr.zzb<Videos.CaptureAvailableResult> zzbVar, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzc((IGamesCallbacks) new CaptureAvailableBinderCallback(zzbVar), i);
    }

    public void zzb(zzpr.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zzb(zzpr.zzb<Achievements.UpdateAchievementResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzb(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, this.SD.zzbjq(), this.SD.zzbjp());
    }

    public void zzb(zzpr.zzb<Achievements.UpdateAchievementResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzb(zzbVar == null ? null : new AchievementUpdatedBinderCallback(zzbVar), str, i, this.SD.zzbjq(), this.SD.zzbjp());
    }

    public void zzb(zzpr.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, i, i2, i3, z);
    }

    public void zzb(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new PlayersLoadedBinderCallback(zzbVar), str, i, z, z2);
    }

    public void zzb(zzpr.zzb<Quests.ClaimMilestoneResult> zzbVar, String str, String str2) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zzf(new QuestMilestoneClaimBinderCallbacks(zzbVar, str2), str, str2);
    }

    public void zzb(zzpr.zzb<Leaderboards.LoadScoresResult> zzbVar, String str, String str2, int i, int i2, int i3, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new LeaderboardScoresLoadedBinderCallback(zzbVar), str, str2, i, i2, i3, z);
    }

    public void zzb(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str, String str2, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new PlayersLoadedBinderCallback(zzbVar), str, str2, i, z, z2);
    }

    public void zzb(zzpr.zzb<Achievements.LoadAchievementsResult> zzbVar, String str, String str2, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zza(new AchievementsLoadedBinderCallback(zzbVar), str, str2, z);
    }

    public void zzb(zzpr.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new LeaderboardsLoadedBinderCallback(zzbVar), str, z);
    }

    public void zzb(zzpr.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new LeaderboardsLoadedBinderCallback(zzbVar), z);
    }

    public void zzb(zzpr.zzb<Quests.LoadQuestsResult> zzbVar, boolean z, String[] strArr) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zza(new QuestsLoadedBinderCallbacks(zzbVar), strArr, z);
    }

    public void zzb(zzpr.zzb<Requests.UpdateRequestsResult> zzbVar, String[] strArr) throws RemoteException {
        ((IGamesService) zzarw()).zza(new RequestsUpdatedBinderCallbacks(zzbVar), strArr);
    }

    public void zzb(zzqs<OnTurnBasedMatchUpdateReceivedListener> zzqsVar) {
        try {
            ((IGamesService) zzarw()).zzb(new MatchUpdateReceivedBinderCallback(zzqsVar), this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzb(zzqs<RoomUpdateListener> zzqsVar, zzqs<RoomStatusUpdateListener> zzqsVar2, zzqs<RealTimeMessageReceivedListener> zzqsVar3, RoomConfig roomConfig) {
        try {
            ((IGamesService) zzarw()).zza((IGamesCallbacks) new RoomBinderCallbacks(zzqsVar, zzqsVar2, zzqsVar3), (IBinder) this.SF, roomConfig.getInvitationId(), false, this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzb(String str, zzpr.zzb<Games.GetServerAuthCodeResult> zzbVar) throws RemoteException {
        zzab.zzh(str, "Please provide a valid serverClientId");
        ((IGamesService) zzarw()).zza(str, new GetServerAuthCodeBinderCallbacks(zzbVar));
    }

    public String zzbic() {
        try {
            return ((IGamesService) zzarw()).zzbic();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Player zzbid() {
        zzarv();
        synchronized (this) {
            if (this.SB == null) {
                try {
                    PlayerBuffer playerBuffer = new PlayerBuffer(((IGamesService) zzarw()).zzbjc());
                    try {
                        if (playerBuffer.getCount() > 0) {
                            this.SB = (PlayerEntity) ((Player) playerBuffer.get(0)).freeze();
                        }
                    } finally {
                        playerBuffer.release();
                    }
                } catch (RemoteException e) {
                    zzb(e);
                }
            }
        }
        return this.SB;
    }

    public Game zzbie() {
        zzarv();
        synchronized (this) {
            if (this.SC == null) {
                try {
                    GameBuffer gameBuffer = new GameBuffer(((IGamesService) zzarw()).zzbje());
                    try {
                        if (gameBuffer.getCount() > 0) {
                            this.SC = (GameEntity) ((Game) gameBuffer.get(0)).freeze();
                        }
                    } finally {
                        gameBuffer.release();
                    }
                } catch (RemoteException e) {
                    zzb(e);
                }
            }
        }
        return this.SC;
    }

    public Intent zzbif() {
        try {
            return ((IGamesService) zzarw()).zzbif();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzbig() {
        try {
            return ((IGamesService) zzarw()).zzbig();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzbih() {
        try {
            return ((IGamesService) zzarw()).zzbih();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzbii() {
        try {
            return ((IGamesService) zzarw()).zzbii();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public void zzbij() {
        try {
            ((IGamesService) zzarw()).zzal(this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzbik() {
        try {
            ((IGamesService) zzarw()).zzam(this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzbil() {
        try {
            ((IGamesService) zzarw()).zzao(this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzbim() {
        try {
            ((IGamesService) zzarw()).zzan(this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public Intent zzbin() {
        try {
            return ((IGamesService) zzarw()).zzbin();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzbio() {
        try {
            return ((IGamesService) zzarw()).zzbio();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public int zzbip() {
        try {
            return ((IGamesService) zzarw()).zzbip();
        } catch (RemoteException e) {
            zzb(e);
            return 4368;
        }
    }

    public int zzbiq() {
        try {
            return ((IGamesService) zzarw()).zzbiq();
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public Intent zzbir() {
        try {
            return ((IGamesService) zzarw()).zzbir();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public int zzbis() {
        try {
            return ((IGamesService) zzarw()).zzbis();
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public int zzbit() {
        try {
            return ((IGamesService) zzarw()).zzbit();
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public int zzbiu() {
        try {
            return ((IGamesService) zzarw()).zzbiu();
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public int zzbiv() {
        try {
            return ((IGamesService) zzarw()).zzbiv();
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public Intent zzbiw() {
        try {
            return ((IGamesService) zzarw()).zzbjk();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public boolean zzbix() {
        try {
            return ((IGamesService) zzarw()).zzbix();
        } catch (RemoteException e) {
            zzb(e);
            return false;
        }
    }

    public void zzbiy() {
        try {
            ((IGamesService) zzarw()).zzar(this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzbiz() {
        if (isConnected()) {
            try {
                ((IGamesService) zzarw()).zzbiz();
            } catch (RemoteException e) {
                zzb(e);
            }
        }
    }

    public String zzbs(boolean z) {
        if (z && this.SB != null) {
            return this.SB.getPlayerId();
        }
        try {
            return ((IGamesService) zzarw()).zzbjb();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzc(int i, int i2, boolean z) {
        try {
            return ((IGamesService) zzarw()).zzc(i, i2, z);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public Intent zzc(int[] iArr) {
        try {
            return ((IGamesService) zzarw()).zzc(iArr);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    @Override // com.google.android.gms.common.internal.zzk
    protected Set<Scope> zzc(Set<Scope> set) {
        boolean z;
        boolean z2;
        Scope scope = new Scope(Scopes.GAMES);
        Scope scope2 = new Scope("https://www.googleapis.com/auth/games.firstparty");
        boolean z3 = false;
        boolean z4 = false;
        for (Scope scope3 : set) {
            if (scope3.equals(scope)) {
                z = z3;
                z2 = true;
            } else if (scope3.equals(scope2)) {
                z = true;
                z2 = z4;
            } else {
                z = z3;
                z2 = z4;
            }
            z4 = z2;
            z3 = z;
        }
        if (z3) {
            zzab.zza(!z4, "Cannot have both %s and %s!", Scopes.GAMES, "https://www.googleapis.com/auth/games.firstparty");
        } else {
            zzab.zza(z4, "Games APIs requires %s to function.", Scopes.GAMES);
        }
        return set;
    }

    public void zzc(zzpr.zzb<Social.LoadInvitesResult> zzbVar, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzb((IGamesCallbacks) new InvitesLoadedBinderCallback(zzbVar), i);
    }

    public void zzc(zzpr.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zzc(zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzk(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str);
    }

    public void zzc(zzpr.zzb<Videos.ListVideosResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzd(new ListVideosBinderCallback(zzbVar), str, i);
    }

    public void zzc(zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str, String str2) throws RemoteException {
        ((IGamesService) zzarw()).zzd(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str, str2);
    }

    public void zzc(zzpr.zzb<Snapshots.LoadSnapshotsResult> zzbVar, String str, String str2, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new SnapshotsLoadedBinderCallbacks(zzbVar), str, str2, z);
    }

    public void zzc(zzpr.zzb<Status> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzh(new UpdateHeadlessCapturePermissionBinderCallback(zzbVar), str, z);
    }

    public void zzc(zzpr.zzb<Achievements.LoadAchievementsResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zza(new AchievementsLoadedBinderCallback(zzbVar), z);
    }

    public void zzc(zzpr.zzb<Requests.UpdateRequestsResult> zzbVar, String[] strArr) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new RequestsUpdatedBinderCallbacks(zzbVar), strArr);
    }

    public void zzc(zzqs<QuestUpdateListener> zzqsVar) {
        try {
            ((IGamesService) zzarw()).zzd(new QuestUpdateBinderCallback(zzqsVar), this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzd(zzpr.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zze(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zzd(zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzl(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str);
    }

    public void zzd(zzpr.zzb<Players.LoadXpStreamResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzb(new PlayerXpStreamLoadedBinderCallback(zzbVar), str, i);
    }

    public void zzd(zzpr.zzb<TurnBasedMultiplayer.InitiateMatchResult> zzbVar, String str, String str2) throws RemoteException {
        ((IGamesService) zzarw()).zze(new TurnBasedMatchInitiatedBinderCallbacks(zzbVar), str, str2);
    }

    public void zzd(zzpr.zzb<Leaderboards.LeaderboardMetadataResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzd(new LeaderboardsLoadedBinderCallback(zzbVar), str, z);
    }

    public void zzd(zzpr.zzb<Events.LoadEventsResult> zzbVar, boolean z) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zzf(new EventsLoadedBinderCallback(zzbVar), z);
    }

    public void zzd(zzqs<OnRequestReceivedListener> zzqsVar) {
        try {
            ((IGamesService) zzarw()).zzc(new RequestReceivedBinderCallback(zzqsVar), this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public int zze(byte[] bArr, String str) {
        try {
            return ((IGamesService) zzarw()).zzb(bArr, str, (String[]) null);
        } catch (RemoteException e) {
            zzb(e);
            return -1;
        }
    }

    public void zze(Account account) throws RemoteException {
        ((IGamesService) zzarw()).zze(account);
    }

    public void zze(zzpr.zzb<Players.LoadPlayersResult> zzbVar, int i, boolean z, boolean z2) throws RemoteException {
        ((IGamesService) zzarw()).zzf(new PlayersLoadedBinderCallback(zzbVar), i, z, z2);
    }

    public void zze(zzpr.zzb<TurnBasedMultiplayer.LeaveMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzn(new TurnBasedMatchLeftBinderCallbacks(zzbVar), str);
    }

    public void zze(zzpr.zzb<Players.LoadXpStreamResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzc(new PlayerXpStreamLoadedBinderCallback(zzbVar), str, i);
    }

    public void zze(zzpr.zzb<Notifications.GameMuteStatusChangeResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zza(new GameMuteStatusChangedBinderCallback(zzbVar), str, z);
    }

    public void zze(zzpr.zzb<Stats.LoadPlayerStatsResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzi(new PlayerStatsLoadedBinderCallbacks(zzbVar), z);
    }

    public void zze(zzqs<Videos.CaptureOverlayStateListener> zzqsVar) {
        try {
            ((IGamesService) zzarw()).zzf(new CaptureOverlayStateBinderCallback(zzqsVar), this.SG);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzf(zzpr.zzb<Games.GetTokenResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzj(new GetAuthTokenBinderCallbacks(zzbVar));
    }

    public void zzf(zzpr.zzb<TurnBasedMultiplayer.CancelMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzm(new TurnBasedMatchCanceledBinderCallbacks(zzbVar), str);
    }

    public void zzf(zzpr.zzb<Invitations.LoadInvitationsResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zzb((IGamesCallbacks) new InvitationsLoadedBinderCallback(zzbVar), str, i, false);
    }

    public void zzf(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzg(new SetPlayerMutedBinderCallback(zzbVar), str, z);
    }

    public void zzf(zzpr.zzb<Snapshots.LoadSnapshotsResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzd(new SnapshotsLoadedBinderCallbacks(zzbVar), z);
    }

    public void zzg(zzpr.zzb<GamesMetadata.LoadGamesResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzd(new GamesLoadedBinderCallback(zzbVar));
    }

    public void zzg(zzpr.zzb<TurnBasedMultiplayer.LoadMatchResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzo(new TurnBasedMatchLoadedBinderCallbacks(zzbVar), str);
    }

    public void zzg(zzpr.zzb<Requests.LoadRequestSummariesResult> zzbVar, String str, int i) throws RemoteException {
        ((IGamesService) zzarw()).zza((IGamesCallbacks) new RequestSummariesLoadedBinderCallbacks(zzbVar), str, i);
    }

    public void zzg(zzpr.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzm(new CapturePausedBinderCallback(zzbVar), z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzd
    /* JADX INFO: renamed from: zzgg, reason: merged with bridge method [inline-methods] */
    public IGamesService zzbb(IBinder iBinder) {
        return IGamesService.Stub.zzgj(iBinder);
    }

    public void zzh(zzpr.zzb<Status> zzbVar) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zza(new SignOutCompleteBinderCallbacks(zzbVar));
    }

    public void zzh(zzpr.zzb<Quests.AcceptQuestResult> zzbVar, String str) throws RemoteException {
        this.Sz.flush();
        ((IGamesService) zzarw()).zzt(new QuestAcceptedBinderCallbacks(zzbVar), str);
    }

    public void zzh(zzpr.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzh(new ProfileSettingsUpdatedBinderCallback(zzbVar), z);
    }

    public void zzi(zzpr.zzb<Videos.CaptureCapabilitiesResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzl(new CaptureCapabilitiesBinderCallback(zzbVar));
    }

    public void zzi(zzpr.zzb<Snapshots.DeleteSnapshotResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzq(new SnapshotDeletedBinderCallbacks(zzbVar), str);
    }

    public void zzi(zzpr.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzj(new DeletePlayerBinderCallback(zzbVar), z);
    }

    public void zzj(zzpr.zzb<Videos.CaptureStateResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzv(new CaptureStateBinderCallbacks(zzbVar));
    }

    public void zzj(zzpr.zzb<GamesMetadata.LoadGameInstancesResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzf(new GameInstancesLoadedBinderCallback(zzbVar), str);
    }

    public void zzj(zzpr.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzk(new UpdateAutoSignInBinderCallback(zzbVar), z);
    }

    public void zzjm(String str) {
        try {
            ((IGamesService) zzarw()).zzju(str);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public Intent zzjn(String str) {
        try {
            return ((IGamesService) zzarw()).zzjn(str);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public void zzjo(String str) {
        try {
            ((IGamesService) zzarw()).zza(str, this.SD.zzbjq(), this.SD.zzbjp());
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzk(zzpr.zzb<Videos.CaptureStreamingAvailabilityResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzs(new CaptureStreamingAvailabilityBinderCallback(zzbVar));
    }

    public void zzk(zzpr.zzb<GamesMetadata.LoadGameSearchSuggestionsResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzp(new GameSearchSuggestionsLoadedBinderCallback(zzbVar), str);
    }

    public void zzk(zzpr.zzb<Status> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zzl(new UpdateProfileDiscoverabilityBinderCallback(zzbVar), z);
    }

    public Intent zzl(String str, int i, int i2) {
        try {
            return ((IGamesService) zzarw()).zzm(str, i, i2);
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }

    public void zzl(zzpr.zzb<Videos.CaptureStreamingMetadataResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzq(new CaptureStreamingMetadataBinderCallback(zzbVar));
    }

    public void zzl(zzpr.zzb<Players.LoadXpForGameCategoriesResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzr(new PlayerXpForGameCategoriesLoadedBinderCallback(zzbVar), str);
    }

    public void zzl(zzpr.zzb<Notifications.ContactSettingLoadResult> zzbVar, boolean z) throws RemoteException {
        ((IGamesService) zzarw()).zze(new ContactSettingsLoadedBinderCallback(zzbVar), z);
    }

    public void zzm(zzpr.zzb<Videos.CaptureStreamingUrlResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzr(new CaptureStreamingUrlBinderCallback(zzbVar));
    }

    public void zzm(zzpr.zzb<Invitations.LoadInvitationsResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzj(new InvitationsLoadedBinderCallback(zzbVar), str);
    }

    public void zzn(zzpr.zzb<Status> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzt(new HeadlessCaptureEnabledBinderCallback(zzbVar));
    }

    public void zzn(zzpr.zzb<Notifications.GameMuteStatusLoadResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzi(new GameMuteStatusLoadedBinderCallback(zzbVar), str);
    }

    public void zzn(String str, int i) {
        this.Sz.zzn(str, i);
    }

    public void zzo(zzpr.zzb<Status> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzo(new CaptureStreamingEnabledBinderCallback(zzbVar));
    }

    public void zzo(zzpr.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzu(new SendFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    public void zzo(String str, int i) {
        try {
            ((IGamesService) zzarw()).zzo(str, i);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzp(zzpr.zzb<Videos.ListVideosResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzk(new ListVideosBinderCallback(zzbVar));
    }

    public void zzp(zzpr.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzv(new AcceptFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    public void zzp(String str, int i) {
        try {
            ((IGamesService) zzarw()).zzp(str, i);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzq(View view) {
        this.SD.zzr(view);
    }

    public void zzq(zzpr.zzb<Videos.CaptureStoppedResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzu(new CaptureStoppedBinderCallbacks(zzbVar));
    }

    public void zzq(zzpr.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzw(new IgnoreFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    public void zzqo(int i) {
        this.SD.setGravity(i);
    }

    public void zzqp(int i) {
        try {
            ((IGamesService) zzarw()).zzqp(i);
        } catch (RemoteException e) {
            zzb(e);
        }
    }

    public void zzr(zzpr.zzb<Players.LoadStockProfileImagesResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzp(new StockProfileImagesLoadedBinderCallback(zzbVar));
    }

    public void zzr(zzpr.zzb<Social.InviteUpdateResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzx(new CancelFriendInviteFirstPartyBinderCallback(zzbVar), str);
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzra() {
        return "com.google.android.gms.games.service.START";
    }

    @Override // com.google.android.gms.common.internal.zzd
    protected String zzrb() {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    public void zzs(zzpr.zzb<Notifications.InboxCountResult> zzbVar) throws RemoteException {
        ((IGamesService) zzarw()).zzs(new InboxCountsLoadedBinderCallback(zzbVar), (String) null);
    }

    public void zzs(zzpr.zzb<Players.LoadPlayersResult> zzbVar, String str) throws RemoteException {
        ((IGamesService) zzarw()).zzy(new PlayerUnfriendedBinderCallback(zzbVar), str);
    }

    public String zzsi() {
        try {
            return ((IGamesService) zzarw()).zzsi();
        } catch (RemoteException e) {
            zzb(e);
            return null;
        }
    }
}
