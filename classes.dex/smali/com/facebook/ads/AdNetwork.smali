###### Class com.facebook.ads.AdNetwork (com.facebook.ads.AdNetwork)
.class public final enum Lcom/facebook/ads/AdNetwork;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdNetwork;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADMOB:Lcom/facebook/ads/AdNetwork;

.field public static final enum AN:Lcom/facebook/ads/AdNetwork;

.field public static final enum FLURRY:Lcom/facebook/ads/AdNetwork;

.field public static final enum INMOBI:Lcom/facebook/ads/AdNetwork;

.field private static final synthetic b:[Lcom/facebook/ads/AdNetwork;


# instance fields
.field private final a:Lcom/facebook/ads/internal/n/c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "AN"

    sget-object v2, Lcom/facebook/ads/internal/n/c;->a:Lcom/facebook/ads/internal/n/c;

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/c;)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "ADMOB"

    sget-object v2, Lcom/facebook/ads/internal/n/c;->b:Lcom/facebook/ads/internal/n/c;

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/c;)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->ADMOB:Lcom/facebook/ads/AdNetwork;

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "FLURRY"

    sget-object v2, Lcom/facebook/ads/internal/n/c;->c:Lcom/facebook/ads/internal/n/c;

    invoke-direct {v0, v1, v5, v2}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/c;)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    new-instance v0, Lcom/facebook/ads/AdNetwork;

    const-string v1, "INMOBI"

    sget-object v2, Lcom/facebook/ads/internal/n/c;->d:Lcom/facebook/ads/internal/n/c;

    invoke-direct {v0, v1, v6, v2}, Lcom/facebook/ads/AdNetwork;-><init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/c;)V

    sput-object v0, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/facebook/ads/AdNetwork;

    sget-object v1, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/AdNetwork;->ADMOB:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/AdNetwork;->b:[Lcom/facebook/ads/AdNetwork;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/facebook/ads/internal/n/c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/n/c;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/AdNetwork;->a:Lcom/facebook/ads/internal/n/c;

    return-void
.end method

.method public static fromInternalAdNetwork(Lcom/facebook/ads/internal/n/c;)Lcom/facebook/ads/AdNetwork;
    .registers 3

    if-nez p0, :cond_5

    sget-object v0, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    :goto_4
    return-object v0

    :cond_5
    sget-object v0, Lcom/facebook/ads/AdNetwork$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/n/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    sget-object v0, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    goto :goto_4

    :pswitch_13
    sget-object v0, Lcom/facebook/ads/AdNetwork;->AN:Lcom/facebook/ads/AdNetwork;

    goto :goto_4

    :pswitch_16
    sget-object v0, Lcom/facebook/ads/AdNetwork;->ADMOB:Lcom/facebook/ads/AdNetwork;

    goto :goto_4

    :pswitch_19
    sget-object v0, Lcom/facebook/ads/AdNetwork;->FLURRY:Lcom/facebook/ads/AdNetwork;

    goto :goto_4

    :pswitch_1c
    sget-object v0, Lcom/facebook/ads/AdNetwork;->INMOBI:Lcom/facebook/ads/AdNetwork;

    goto :goto_4

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_13
        :pswitch_16
        :pswitch_19
        :pswitch_1c
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdNetwork;
    .registers 2

    const-class v0, Lcom/facebook/ads/AdNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdNetwork;
    .registers 1

    sget-object v0, Lcom/facebook/ads/AdNetwork;->b:[Lcom/facebook/ads/AdNetwork;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdNetwork;

    return-object v0
.end method

###### Class com.facebook.ads.AdNetwork.AnonymousClass1 (com.facebook.ads.AdNetwork$1)
.class synthetic Lcom/facebook/ads/AdNetwork$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdNetwork;
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

    invoke-static {}, Lcom/facebook/ads/internal/n/c;->values()[Lcom/facebook/ads/internal/n/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/AdNetwork$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/AdNetwork$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/c;->a:Lcom/facebook/ads/internal/n/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/AdNetwork$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/c;->b:Lcom/facebook/ads/internal/n/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/AdNetwork$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/c;->c:Lcom/facebook/ads/internal/n/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/AdNetwork$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/n/c;->d:Lcom/facebook/ads/internal/n/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/n/c;->ordinal()I

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
