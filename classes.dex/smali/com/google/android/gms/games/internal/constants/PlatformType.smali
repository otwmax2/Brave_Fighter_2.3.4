###### Class com.google.android.gms.games.internal.constants.PlatformType (com.google.android.gms.games.internal.constants.PlatformType)
.class public final Lcom/google/android/gms/games/internal/constants/PlatformType;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzqs(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown platform type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    const-string v0, "ANDROID"

    :goto_20
    return-object v0

    :pswitch_21
    const-string v0, "IOS"

    goto :goto_20

    :pswitch_24
    const-string v0, "WEB_APP"

    goto :goto_20

    nop

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_21
        :pswitch_24
    .end packed-switch
.end method
