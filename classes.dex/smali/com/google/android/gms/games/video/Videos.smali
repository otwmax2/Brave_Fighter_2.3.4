###### Class com.google.android.gms.games.video.Videos (com.google.android.gms.games.video.Videos)
.class public interface abstract Lcom/google/android/gms/games/video/Videos;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/video/Videos$ListVideosResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureStateResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;,
        Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;,
        Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;
    }
.end annotation


# static fields
.field public static final CAPTURE_OVERLAY_STATE_CAPTURE_STARTED:I = 0x2

.field public static final CAPTURE_OVERLAY_STATE_CAPTURE_STOPPED:I = 0x3

.field public static final CAPTURE_OVERLAY_STATE_DISMISSED:I = 0x4

.field public static final CAPTURE_OVERLAY_STATE_SHOWN:I = 0x1


# virtual methods
.method public abstract getCaptureCapabilities(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getCaptureOverlayIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract getCaptureState(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureStateResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaptureAvailable(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isCaptureSupported(Lcom/google/android/gms/common/api/GoogleApiClient;)Z
.end method

.method public abstract registerCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;)V
.end method

.method public abstract unregisterCaptureOverlayStateChangedListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

###### Class com.google.android.gms.games.video.Videos.CaptureAvailableResult (com.google.android.gms.games.video.Videos$CaptureAvailableResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureAvailableResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureAvailableResult"
.end annotation


# virtual methods
.method public abstract isAvailable()Z
.end method

###### Class com.google.android.gms.games.video.Videos.CaptureCapabilitiesResult (com.google.android.gms.games.video.Videos$CaptureCapabilitiesResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureCapabilitiesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureCapabilitiesResult"
.end annotation


# virtual methods
.method public abstract getCapabilities()Lcom/google/android/gms/games/video/VideoCapabilities;
.end method

###### Class com.google.android.gms.games.video.Videos.CaptureOverlayStateListener (com.google.android.gms.games.video.Videos$CaptureOverlayStateListener)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureOverlayStateListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureOverlayStateListener"
.end annotation


# virtual methods
.method public abstract onCaptureOverlayStateChanged(I)V
.end method

###### Class com.google.android.gms.games.video.Videos.CaptureRuntimeErrorCallback (com.google.android.gms.games.video.Videos$CaptureRuntimeErrorCallback)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureRuntimeErrorCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureRuntimeErrorCallback"
.end annotation


# virtual methods
.method public abstract zzsd(I)V
.end method

###### Class com.google.android.gms.games.video.Videos.CaptureStateResult (com.google.android.gms.games.video.Videos$CaptureStateResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureStateResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureStateResult"
.end annotation


# virtual methods
.method public abstract getCaptureState()Lcom/google/android/gms/games/video/CaptureState;
.end method

###### Class com.google.android.gms.games.video.Videos.CaptureStoppedResult (com.google.android.gms.games.video.Videos$CaptureStoppedResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureStoppedResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureStoppedResult"
.end annotation

###### Class com.google.android.gms.games.video.Videos.CaptureStreamingAvailabilityResult (com.google.android.gms.games.video.Videos$CaptureStreamingAvailabilityResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureStreamingAvailabilityResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureStreamingAvailabilityResult"
.end annotation

###### Class com.google.android.gms.games.video.Videos.CaptureStreamingMetadataResult (com.google.android.gms.games.video.Videos$CaptureStreamingMetadataResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureStreamingMetadataResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureStreamingMetadataResult"
.end annotation

###### Class com.google.android.gms.games.video.Videos.CaptureStreamingUrlResult (com.google.android.gms.games.video.Videos$CaptureStreamingUrlResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$CaptureStreamingUrlResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CaptureStreamingUrlResult"
.end annotation


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method

###### Class com.google.android.gms.games.video.Videos.ListVideosResult (com.google.android.gms.games.video.Videos$ListVideosResult)
.class public interface abstract Lcom/google/android/gms/games/video/Videos$ListVideosResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/video/Videos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ListVideosResult"
.end annotation
