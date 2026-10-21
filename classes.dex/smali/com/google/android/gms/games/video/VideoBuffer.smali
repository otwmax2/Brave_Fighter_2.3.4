###### Class com.google.android.gms.games.video.VideoBuffer (com.google.android.gms.games.video.VideoBuffer)
.class public final Lcom/google/android/gms/games/video/VideoBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/data/AbstractDataBuffer",
        "<",
        "Lcom/google/android/gms/games/video/Video;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-void
.end method


# virtual methods
.method public synthetic get(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/video/VideoBuffer;->zzrz(I)Lcom/google/android/gms/games/video/VideoRef;

    move-result-object v0

    return-object v0
.end method

.method public zzrz(I)Lcom/google/android/gms/games/video/VideoRef;
    .registers 4

    new-instance v0, Lcom/google/android/gms/games/video/VideoRef;

    iget-object v1, p0, Lcom/google/android/gms/games/video/VideoBuffer;->tk:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/games/video/VideoRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-object v0
.end method
