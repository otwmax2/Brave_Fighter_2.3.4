###### Class com.facebook.ads.internal.adapters.y (com.facebook.ads.internal.adapters.y)
.class public Lcom/facebook/ads/internal/adapters/y;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/adapters/y$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    const-string v0, ""

    :goto_d
    return-object v0

    :pswitch_e
    const-string v0, "AdMob"

    goto :goto_d

    :pswitch_11
    const-string v0, "Flurry"

    goto :goto_d

    :pswitch_14
    const-string v0, "InMobi"

    goto :goto_d

    :pswitch_17
    const-string v0, "Audience Network"

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

###### Class com.facebook.ads.internal.adapters.y.AnonymousClass1 (com.facebook.ads.internal.adapters.y$1)
.class synthetic Lcom/facebook/ads/internal/adapters/y$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/adapters/g;->values()[Lcom/facebook/ads/internal/adapters/g;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/adapters/y$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/adapters/y$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->c:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/adapters/y$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->e:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/adapters/y$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->d:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/adapters/y$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/adapters/g;->b:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/adapters/g;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method
