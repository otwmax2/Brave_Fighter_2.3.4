###### Class com.facebook.ads.internal.j.a (com.facebook.ads.internal.j.a)
.class public Lcom/facebook/ads/internal/j/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/j/a$b;,
        Lcom/facebook/ads/internal/j/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/internal/j/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/j/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/j/a;->c:Ljava/util/Map;

    iput p3, p0, Lcom/facebook/ads/internal/j/a;->d:I

    iput-object p4, p0, Lcom/facebook/ads/internal/j/a;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(JLcom/facebook/ads/internal/j/a$a;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;
    .registers 12

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Time"

    sub-long v4, v0, p0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "AdAction"

    iget v4, p2, Lcom/facebook/ads/internal/j/a$a;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/facebook/ads/internal/j/a;

    const-string v4, "bounceback"

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-int v0, v0

    invoke-direct {v3, v4, v2, v0, p3}, Lcom/facebook/ads/internal/j/a;-><init>(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    return-object v3
.end method

.method public static a(Lcom/facebook/ads/internal/j/a$b;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/ads/internal/j/a;
    .registers 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "LatencyType"

    iget v2, p0, Lcom/facebook/ads/internal/j/a$b;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AdPlacementType"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Time"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/facebook/ads/internal/j/a;

    const-string v2, "latency"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v3, v4

    if-eqz p4, :cond_30

    :goto_2c
    invoke-direct {v1, v2, v0, v3, p4}, Lcom/facebook/ads/internal/j/a;-><init>(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    return-object v1

    :cond_30
    sget-object p4, Lcom/facebook/ads/internal/j/a;->a:Ljava/lang/String;

    goto :goto_2c
.end method

.method public static a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;
    .registers 8
    .param p0    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_1d

    const-string v1, "ex"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ex_msg"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    new-instance v2, Lcom/facebook/ads/internal/j/a;

    const-string v3, "error"

    if-eqz p1, :cond_2f

    :goto_2b
    invoke-direct {v2, v3, v0, v1, p1}, Lcom/facebook/ads/internal/j/a;-><init>(Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;)V

    return-object v2

    :cond_2f
    sget-object p1, Lcom/facebook/ads/internal/j/a;->a:Ljava/lang/String;

    goto :goto_2b
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 5

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v0, "name"

    iget-object v2, p0, Lcom/facebook/ads/internal/j/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "data"

    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/facebook/ads/internal/j/a;->c:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "time"

    iget v2, p0, Lcom/facebook/ads/internal/j/a;->d:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "request_id"

    iget-object v2, p0, Lcom/facebook/ads/internal/j/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_26} :catch_27

    :goto_26
    return-object v1

    :catch_27
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_26
.end method

###### Class com.facebook.ads.internal.j.a.EnumC0013a (com.facebook.ads.internal.j.a$a)
.class public final enum Lcom/facebook/ads/internal/j/a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/j/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/j/a$a;

.field public static final enum b:Lcom/facebook/ads/internal/j/a$a;

.field public static final enum c:Lcom/facebook/ads/internal/j/a$a;

.field public static final enum d:Lcom/facebook/ads/internal/j/a$a;

.field public static final enum e:Lcom/facebook/ads/internal/j/a$a;

.field private static final synthetic g:[Lcom/facebook/ads/internal/j/a$a;


# instance fields
.field f:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/j/a$a;

    const-string v1, "OPEN_STORE"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/j/a$a;->a:Lcom/facebook/ads/internal/j/a$a;

    new-instance v0, Lcom/facebook/ads/internal/j/a$a;

    const-string v1, "OPEN_LINK"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/j/a$a;->b:Lcom/facebook/ads/internal/j/a$a;

    new-instance v0, Lcom/facebook/ads/internal/j/a$a;

    const-string v1, "XOUT"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/internal/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/j/a$a;->c:Lcom/facebook/ads/internal/j/a$a;

    new-instance v0, Lcom/facebook/ads/internal/j/a$a;

    const-string v1, "OPEN_URL"

    invoke-direct {v0, v1, v5, v5}, Lcom/facebook/ads/internal/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/j/a$a;->d:Lcom/facebook/ads/internal/j/a$a;

    new-instance v0, Lcom/facebook/ads/internal/j/a$a;

    const-string v1, "SHOW_INTERSTITIAL"

    invoke-direct {v0, v1, v6, v6}, Lcom/facebook/ads/internal/j/a$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/j/a$a;->e:Lcom/facebook/ads/internal/j/a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/j/a$a;

    sget-object v1, Lcom/facebook/ads/internal/j/a$a;->a:Lcom/facebook/ads/internal/j/a$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/j/a$a;->b:Lcom/facebook/ads/internal/j/a$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/j/a$a;->c:Lcom/facebook/ads/internal/j/a$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/j/a$a;->d:Lcom/facebook/ads/internal/j/a$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/j/a$a;->e:Lcom/facebook/ads/internal/j/a$a;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/internal/j/a$a;->g:[Lcom/facebook/ads/internal/j/a$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/j/a$a;->f:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/j/a$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/j/a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/j/a$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/j/a$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/j/a$a;->g:[Lcom/facebook/ads/internal/j/a$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/j/a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/j/a$a;

    return-object v0
.end method

###### Class com.facebook.ads.internal.j.a.b (com.facebook.ads.internal.j.a$b)
.class public final enum Lcom/facebook/ads/internal/j/a$b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/j/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/j/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/j/a$b;

.field private static final synthetic c:[Lcom/facebook/ads/internal/j/a$b;


# instance fields
.field b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/j/a$b;

    const-string v1, "LOADING_AD"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/j/a$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/j/a$b;->a:Lcom/facebook/ads/internal/j/a$b;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/ads/internal/j/a$b;

    sget-object v1, Lcom/facebook/ads/internal/j/a$b;->a:Lcom/facebook/ads/internal/j/a$b;

    aput-object v1, v0, v2

    sput-object v0, Lcom/facebook/ads/internal/j/a$b;->c:[Lcom/facebook/ads/internal/j/a$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/j/a$b;->b:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/j/a$b;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/j/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/j/a$b;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/j/a$b;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/j/a$b;->c:[Lcom/facebook/ads/internal/j/a$b;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/j/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/j/a$b;

    return-object v0
.end method
