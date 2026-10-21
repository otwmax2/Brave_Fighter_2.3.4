###### Class com.google.android.gms.games.internal.GamesDowngradeableSafeParcel (com.google.android.gms.games.internal.GamesDowngradeableSafeParcel)
.class public abstract Lcom/google/android/gms/games/internal/GamesDowngradeableSafeParcel;
.super Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/DowngradeableSafeParcel;-><init>()V

    return-void
.end method

.method protected static zzf(Ljava/lang/Integer;)Z
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzk;->zzgv(I)Z

    move-result v0

    goto :goto_3
.end method
