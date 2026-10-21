###### Class com.google.android.gms.games.internal.player.StockProfileImageRef (com.google.android.gms.games.internal.player.StockProfileImageRef)
.class public Lcom/google/android/gms/games/internal/player/StockProfileImageRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/internal/player/StockProfileImage;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->zzbkv()Lcom/google/android/gms/games/internal/player/StockProfileImage;

    move-result-object v0

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    const-string v0, "image_url"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/internal/player/StockProfileImage;

    check-cast v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbhb()Landroid/net/Uri;
    .registers 2

    const-string v0, "image_uri"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/internal/player/StockProfileImageRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public zzbkv()Lcom/google/android/gms/games/internal/player/StockProfileImage;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/internal/player/StockProfileImageEntity;-><init>(Lcom/google/android/gms/games/internal/player/StockProfileImage;)V

    return-object v0
.end method
