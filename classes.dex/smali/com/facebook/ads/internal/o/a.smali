###### Class com.facebook.ads.internal.o.a (com.facebook.ads.internal.o.a)
.class public Lcom/facebook/ads/internal/o/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/o/a;->a:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/o/a;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/o/a;->c:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/c;)J
    .registers 6

    const-wide/16 v0, -0x3e8

    sget-object v2, Lcom/facebook/ads/internal/o/a;->a:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v0, Lcom/facebook/ads/internal/o/a;->a:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_16
    :pswitch_16
    return-wide v0

    :cond_17
    sget-object v2, Lcom/facebook/ads/internal/o/a$1;->a:[I

    invoke-virtual {p1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_26

    goto :goto_16

    :pswitch_23
    const-wide/16 v0, 0x3a98

    goto :goto_16

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public static a(JLcom/facebook/ads/internal/o/b;)V
    .registers 7

    sget-object v0, Lcom/facebook/ads/internal/o/a;->a:Ljava/util/Map;

    invoke-static {p2}, Lcom/facebook/ads/internal/o/a;->d(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/ads/internal/o/b;)V
    .registers 4

    sget-object v0, Lcom/facebook/ads/internal/o/a;->c:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/ads/internal/o/a;->d(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Lcom/facebook/ads/internal/o/b;)Z
    .registers 9

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/facebook/ads/internal/o/a;->d(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/facebook/ads/internal/o/a;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :goto_d
    return v1

    :cond_e
    sget-object v0, Lcom/facebook/ads/internal/o/a;->b:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->b()Lcom/facebook/ads/internal/protocol/c;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/facebook/ads/internal/o/a;->a(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/c;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_2f

    const/4 v0, 0x1

    :goto_2d
    move v1, v0

    goto :goto_d

    :cond_2f
    move v0, v1

    goto :goto_2d
.end method

.method public static b(Lcom/facebook/ads/internal/o/b;)V
    .registers 5

    sget-object v0, Lcom/facebook/ads/internal/o/a;->b:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/internal/o/a;->d(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/o/a;->c:Ljava/util/Map;

    invoke-static {p0}, Lcom/facebook/ads/internal/o/a;->d(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static d(Lcom/facebook/ads/internal/o/b;)Ljava/lang/String;
    .registers 6

    const/4 v1, 0x0

    const-string v2, "%s:%s:%s:%d:%d:%d"

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->b()Lcom/facebook/ads/internal/protocol/c;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    iget-object v4, p0, Lcom/facebook/ads/internal/o/b;->c:Lcom/facebook/ads/internal/protocol/f;

    aput-object v4, v3, v0

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->c()Lcom/facebook/ads/internal/q/a/k;

    move-result-object v0

    if-nez v0, :cond_43

    move v0, v1

    :goto_20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->c()Lcom/facebook/ads/internal/q/a/k;

    move-result-object v4

    if-nez v4, :cond_4c

    :goto_2d
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->d()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_43
    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->c()Lcom/facebook/ads/internal/q/a/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/q/a/k;->a()I

    move-result v0

    goto :goto_20

    :cond_4c
    invoke-virtual {p0}, Lcom/facebook/ads/internal/o/b;->c()Lcom/facebook/ads/internal/q/a/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/internal/q/a/k;->b()I

    move-result v1

    goto :goto_2d
.end method

###### Class com.facebook.ads.internal.o.a.AnonymousClass1 (com.facebook.ads.internal.o.a$1)
.class synthetic Lcom/facebook/ads/internal/o/a$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/o/a;
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

    invoke-static {}, Lcom/facebook/ads/internal/protocol/c;->values()[Lcom/facebook/ads/internal/protocol/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/o/a$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/o/a$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->b:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/o/a$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->c:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/o/a$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->d:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/o/a$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/c;->a:Lcom/facebook/ads/internal/protocol/c;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/c;->ordinal()I

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
