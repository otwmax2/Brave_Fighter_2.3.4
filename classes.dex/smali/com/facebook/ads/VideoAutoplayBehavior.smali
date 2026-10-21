###### Class com.facebook.ads.VideoAutoplayBehavior (com.facebook.ads.VideoAutoplayBehavior)
.class public final enum Lcom/facebook/ads/VideoAutoplayBehavior;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/VideoAutoplayBehavior;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public static final enum OFF:Lcom/facebook/ads/VideoAutoplayBehavior;

.field public static final enum ON:Lcom/facebook/ads/VideoAutoplayBehavior;

.field private static final synthetic a:[Lcom/facebook/ads/VideoAutoplayBehavior;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/VideoAutoplayBehavior;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/VideoAutoplayBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    new-instance v0, Lcom/facebook/ads/VideoAutoplayBehavior;

    const-string v1, "ON"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/VideoAutoplayBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    new-instance v0, Lcom/facebook/ads/VideoAutoplayBehavior;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/VideoAutoplayBehavior;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->OFF:Lcom/facebook/ads/VideoAutoplayBehavior;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/VideoAutoplayBehavior;

    sget-object v1, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/VideoAutoplayBehavior;->OFF:Lcom/facebook/ads/VideoAutoplayBehavior;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->a:[Lcom/facebook/ads/VideoAutoplayBehavior;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromInternalAutoplayBehavior(Lcom/facebook/ads/internal/n/j;)Lcom/facebook/ads/VideoAutoplayBehavior;
    .registers 3

    if-nez p0, :cond_5

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/n/j;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1c

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    goto :goto_4

    :pswitch_13
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->DEFAULT:Lcom/facebook/ads/VideoAutoplayBehavior;

    goto :goto_4

    :pswitch_16
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->ON:Lcom/facebook/ads/VideoAutoplayBehavior;

    goto :goto_4

    :pswitch_19
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->OFF:Lcom/facebook/ads/VideoAutoplayBehavior;

    goto :goto_4

    :pswitch_data_1c
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/VideoAutoplayBehavior;
    .registers 2

    const-class v0, Lcom/facebook/ads/VideoAutoplayBehavior;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/VideoAutoplayBehavior;
    .registers 1

    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior;->a:[Lcom/facebook/ads/VideoAutoplayBehavior;

    invoke-virtual {v0}, [Lcom/facebook/ads/VideoAutoplayBehavior;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/VideoAutoplayBehavior;

    return-object v0
.end method

###### Class com.facebook.ads.VideoAutoplayBehavior.AnonymousClass1 (com.facebook.ads.VideoAutoplayBehavior$1)
.class synthetic Lcom/facebook/ads/VideoAutoplayBehavior$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/VideoAutoplayBehavior;
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

    invoke-static {}, Lcom/facebook/ads/internal/n/j;->values()[Lcom/facebook/ads/internal/n/j;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/VideoAutoplayBehavior$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/j;->a:Lcom/facebook/ads/internal/n/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/j;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/j;->b:Lcom/facebook/ads/internal/n/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/j;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/VideoAutoplayBehavior$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/j;->c:Lcom/facebook/ads/internal/n/j;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/j;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
