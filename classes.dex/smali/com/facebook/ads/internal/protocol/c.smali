###### Class com.facebook.ads.internal.protocol.c (com.facebook.ads.internal.protocol.c)
.class public final enum Lcom/facebook/ads/internal/protocol/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/protocol/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/protocol/c;

.field public static final enum b:Lcom/facebook/ads/internal/protocol/c;

.field public static final enum c:Lcom/facebook/ads/internal/protocol/c;

.field public static final enum d:Lcom/facebook/ads/internal/protocol/c;

.field public static final enum e:Lcom/facebook/ads/internal/protocol/c;

.field private static final synthetic f:[Lcom/facebook/ads/internal/protocol/c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/protocol/c;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/protocol/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/c;->a:Lcom/facebook/ads/internal/protocol/c;

    new-instance v0, Lcom/facebook/ads/internal/protocol/c;

    const-string v1, "BANNER"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/protocol/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/c;->b:Lcom/facebook/ads/internal/protocol/c;

    new-instance v0, Lcom/facebook/ads/internal/protocol/c;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/protocol/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/c;->c:Lcom/facebook/ads/internal/protocol/c;

    new-instance v0, Lcom/facebook/ads/internal/protocol/c;

    const-string v1, "NATIVE"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/protocol/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/c;->d:Lcom/facebook/ads/internal/protocol/c;

    new-instance v0, Lcom/facebook/ads/internal/protocol/c;

    const-string v1, "REWARDED_VIDEO"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/internal/protocol/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/protocol/c;->e:Lcom/facebook/ads/internal/protocol/c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/protocol/c;

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->a:Lcom/facebook/ads/internal/protocol/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->b:Lcom/facebook/ads/internal/protocol/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->c:Lcom/facebook/ads/internal/protocol/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->d:Lcom/facebook/ads/internal/protocol/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->e:Lcom/facebook/ads/internal/protocol/c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/internal/protocol/c;->f:[Lcom/facebook/ads/internal/protocol/c;

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

.method public static a(Lcom/facebook/ads/internal/protocol/f;)Lcom/facebook/ads/internal/protocol/c;
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    sget-object v0, Lcom/facebook/ads/internal/protocol/c;->a:Lcom/facebook/ads/internal/protocol/c;

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/facebook/ads/internal/protocol/c;->d:Lcom/facebook/ads/internal/protocol/c;

    goto :goto_d

    :pswitch_11
    sget-object v0, Lcom/facebook/ads/internal/protocol/c;->b:Lcom/facebook/ads/internal/protocol/c;

    goto :goto_d

    :pswitch_14
    sget-object v0, Lcom/facebook/ads/internal/protocol/c;->c:Lcom/facebook/ads/internal/protocol/c;

    goto :goto_d

    :pswitch_17
    sget-object v0, Lcom/facebook/ads/internal/protocol/c;->e:Lcom/facebook/ads/internal/protocol/c;

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/c;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/protocol/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/protocol/c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/protocol/c;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/protocol/c;->f:[Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/protocol/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/protocol/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->b:[I

    invoke-virtual {p0}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->UNKNOWN:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    :goto_d
    return-object v0

    :pswitch_e
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_d

    :pswitch_11
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_d

    :pswitch_14
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_d

    :pswitch_17
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
    .end packed-switch
.end method

###### Class com.facebook.ads.internal.protocol.c.AnonymousClass1 (com.facebook.ads.internal.protocol.c$1)
.class synthetic Lcom/facebook/ads/internal/protocol/c$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/protocol/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/facebook/ads/internal/protocol/c;->values()[Lcom/facebook/ads/internal/protocol/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/protocol/c$1;->b:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->b:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->c:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_cd

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->b:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->b:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_ca

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->b:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->d:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_c7

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->b:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->e:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_c4

    :goto_35
    invoke-static {}, Lcom/facebook/ads/internal/protocol/f;->values()[Lcom/facebook/ads/internal/protocol/f;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    :try_start_3e
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->j:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_c2

    :goto_49
    :try_start_49
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->c:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_54
    .catch Ljava/lang/NoSuchFieldError; {:try_start_49 .. :try_end_54} :catch_c0

    :goto_54
    :try_start_54
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->d:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_54 .. :try_end_5f} :catch_be

    :goto_5f
    :try_start_5f
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->b:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5f .. :try_end_6a} :catch_bc

    :goto_6a
    :try_start_6a
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->e:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_75
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6a .. :try_end_75} :catch_ba

    :goto_75
    :try_start_75
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->g:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_80
    .catch Ljava/lang/NoSuchFieldError; {:try_start_75 .. :try_end_80} :catch_b8

    :goto_80
    :try_start_80
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->h:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_80 .. :try_end_8b} :catch_b6

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->i:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_97
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_97} :catch_b4

    :goto_97
    :try_start_97
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->f:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_a3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_97 .. :try_end_a3} :catch_b2

    :goto_a3
    :try_start_a3
    sget-object v0, Lcom/facebook/ads/internal/protocol/c$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/f;->k:Lcom/facebook/ads/internal/protocol/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/f;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_af
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a3 .. :try_end_af} :catch_b0

    :goto_af
    return-void

    :catch_b0
    move-exception v0

    goto :goto_af

    :catch_b2
    move-exception v0

    goto :goto_a3

    :catch_b4
    move-exception v0

    goto :goto_97

    :catch_b6
    move-exception v0

    goto :goto_8b

    :catch_b8
    move-exception v0

    goto :goto_80

    :catch_ba
    move-exception v0

    goto :goto_75

    :catch_bc
    move-exception v0

    goto :goto_6a

    :catch_be
    move-exception v0

    goto :goto_5f

    :catch_c0
    move-exception v0

    goto :goto_54

    :catch_c2
    move-exception v0

    goto :goto_49

    :catch_c4
    move-exception v0

    goto/16 :goto_35

    :catch_c7
    move-exception v0

    goto/16 :goto_2a

    :catch_ca
    move-exception v0

    goto/16 :goto_1f

    :catch_cd
    move-exception v0

    goto/16 :goto_14
.end method
