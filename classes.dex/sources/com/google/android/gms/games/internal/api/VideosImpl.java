package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.video.CaptureState;
import com.google.android.gms.games.video.VideoCapabilities;
import com.google.android.gms.games.video.VideoConfiguration;
import com.google.android.gms.games.video.Videos;
import com.google.android.gms.internal.zzpr;

/* JADX INFO: loaded from: classes.dex */
public final class VideosImpl implements Videos {

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$10, reason: invalid class name */
    class AnonymousClass10 extends CaptureStopImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzq(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$11, reason: invalid class name */
    class AnonymousClass11 extends CaptureStreamingMetadataImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzl(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$12, reason: invalid class name */
    class AnonymousClass12 extends CaptureStreamingUrlImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzm(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$13, reason: invalid class name */
    class AnonymousClass13 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (String) null, (VideoConfiguration) null);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$14, reason: invalid class name */
    class AnonymousClass14 extends ListVideosImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc(this, (String) null, 0);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$15, reason: invalid class name */
    class AnonymousClass15 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzc((zzpr.zzb<Status>) this, (String) null, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$3, reason: invalid class name */
    class AnonymousClass3 extends CaptureStreamingAvailabilityImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzk(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$4, reason: invalid class name */
    class AnonymousClass4 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzn(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$6, reason: invalid class name */
    class AnonymousClass6 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzo(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$7, reason: invalid class name */
    class AnonymousClass7 extends ListVideosImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzp(this);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$8, reason: invalid class name */
    class AnonymousClass8 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zzg((zzpr.zzb<Status>) this, false);
        }
    }

    /* JADX INFO: renamed from: com.google.android.gms.games.internal.api.VideosImpl$9, reason: invalid class name */
    class AnonymousClass9 extends Games.StatusImpl {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzpr.zza
        public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
            gamesClientImpl.zza(this, (VideoConfiguration) null, (Videos.CaptureRuntimeErrorCallback) null);
        }
    }

    private static abstract class CaptureAvailableImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureAvailableResult> {
        private CaptureAvailableImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdb, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureAvailableResult zzc(final Status status) {
            return new Videos.CaptureAvailableResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureAvailableImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.games.video.Videos.CaptureAvailableResult
                public boolean isAvailable() {
                    return false;
                }
            };
        }
    }

    private static abstract class CaptureCapabilitiesImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureCapabilitiesResult> {
        private CaptureCapabilitiesImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdc, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureCapabilitiesResult zzc(final Status status) {
            return new Videos.CaptureCapabilitiesResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureCapabilitiesImpl.1
                @Override // com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult
                public VideoCapabilities getCapabilities() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class CaptureStateImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStateResult> {
        private CaptureStateImpl(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdd, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureStateResult zzc(final Status status) {
            return new Videos.CaptureStateResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStateImpl.1
                @Override // com.google.android.gms.games.video.Videos.CaptureStateResult
                public CaptureState getCaptureState() {
                    return null;
                }

                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class CaptureStopImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStoppedResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzde, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureStoppedResult zzc(final Status status) {
            return new Videos.CaptureStoppedResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStopImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class CaptureStreamingAvailabilityImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStreamingAvailabilityResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdf, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureStreamingAvailabilityResult zzc(final Status status) {
            return new Videos.CaptureStreamingAvailabilityResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingAvailabilityImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class CaptureStreamingMetadataImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStreamingMetadataResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdg, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureStreamingMetadataResult zzc(final Status status) {
            return new Videos.CaptureStreamingMetadataResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingMetadataImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    private static abstract class CaptureStreamingUrlImpl extends Games.BaseGamesApiMethodImpl<Videos.CaptureStreamingUrlResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdh, reason: merged with bridge method [inline-methods] */
        public Videos.CaptureStreamingUrlResult zzc(final Status status) {
            return new Videos.CaptureStreamingUrlResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.CaptureStreamingUrlImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }

                @Override // com.google.android.gms.games.video.Videos.CaptureStreamingUrlResult
                public String getUrl() {
                    return null;
                }
            };
        }
    }

    private static abstract class ListVideosImpl extends Games.BaseGamesApiMethodImpl<Videos.ListVideosResult> {
        @Override // com.google.android.gms.internal.zzpt
        /* JADX INFO: renamed from: zzdi, reason: merged with bridge method [inline-methods] */
        public Videos.ListVideosResult zzc(final Status status) {
            return new Videos.ListVideosResult() { // from class: com.google.android.gms.games.internal.api.VideosImpl.ListVideosImpl.1
                @Override // com.google.android.gms.common.api.Result
                public Status getStatus() {
                    return status;
                }
            };
        }
    }

    @Override // com.google.android.gms.games.video.Videos
    public PendingResult<Videos.CaptureCapabilitiesResult> getCaptureCapabilities(GoogleApiClient googleApiClient) {
        return googleApiClient.zzc(new CaptureCapabilitiesImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.VideosImpl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzi(this);
            }
        });
    }

    @Override // com.google.android.gms.games.video.Videos
    public Intent getCaptureOverlayIntent(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbiw();
    }

    @Override // com.google.android.gms.games.video.Videos
    public PendingResult<Videos.CaptureStateResult> getCaptureState(GoogleApiClient googleApiClient) {
        return googleApiClient.zzc(new CaptureStateImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.VideosImpl.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzj(this);
            }
        });
    }

    @Override // com.google.android.gms.games.video.Videos
    public PendingResult<Videos.CaptureAvailableResult> isCaptureAvailable(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zzc(new CaptureAvailableImpl(googleApiClient) { // from class: com.google.android.gms.games.internal.api.VideosImpl.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzpr.zza
            public void zza(GamesClientImpl gamesClientImpl) throws RemoteException {
                gamesClientImpl.zzb(this, i);
            }
        });
    }

    @Override // com.google.android.gms.games.video.Videos
    public boolean isCaptureSupported(GoogleApiClient googleApiClient) {
        return Games.zzi(googleApiClient).zzbix();
    }

    @Override // com.google.android.gms.games.video.Videos
    public void registerCaptureOverlayStateChangedListener(GoogleApiClient googleApiClient, Videos.CaptureOverlayStateListener captureOverlayStateListener) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zze(googleApiClient.zzt(captureOverlayStateListener));
        }
    }

    @Override // com.google.android.gms.games.video.Videos
    public void unregisterCaptureOverlayStateChangedListener(GoogleApiClient googleApiClient) {
        GamesClientImpl gamesClientImplZzb = Games.zzb(googleApiClient, false);
        if (gamesClientImplZzb != null) {
            gamesClientImplZzb.zzbiy();
        }
    }
}
