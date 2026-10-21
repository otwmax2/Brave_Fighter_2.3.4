###### Class com.facebook.ads.internal.adapters.f (com.facebook.ads.internal.adapters.f)
.class public Lcom/facebook/ads/internal/adapters/f;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/ads/internal/adapters/h;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/ads/internal/protocol/AdPlacementType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/adapters/f;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/adapters/f;->b:Ljava/util/Map;

    invoke-static {}, Lcom/facebook/ads/internal/adapters/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/h;

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    iget-object v4, v0, Lcom/facebook/ads/internal/adapters/h;->l:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v4}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_62

    move-object v2, v1

    :goto_31
    if-eqz v2, :cond_16

    iget-object v1, v0, Lcom/facebook/ads/internal/adapters/h;->i:Ljava/lang/Class;

    if-nez v1, :cond_3d

    :try_start_37
    iget-object v4, v0, Lcom/facebook/ads/internal/adapters/h;->j:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_3c} :catch_60

    move-result-object v1

    :cond_3d
    :goto_3d
    if-eqz v1, :cond_16

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/facebook/ads/internal/adapters/f;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :pswitch_4b
    const-class v1, Lcom/facebook/ads/internal/adapters/BannerAdapter;

    move-object v2, v1

    goto :goto_31

    :pswitch_4f
    const-class v1, Lcom/facebook/ads/internal/adapters/InterstitialAdapter;

    move-object v2, v1

    goto :goto_31

    :pswitch_53
    const-class v1, Lcom/facebook/ads/internal/adapters/ab;

    move-object v2, v1

    goto :goto_31

    :pswitch_57
    const-class v1, Lcom/facebook/ads/internal/adapters/u;

    move-object v2, v1

    goto :goto_31

    :pswitch_5b
    const-class v1, Lcom/facebook/ads/internal/adapters/ae;

    move-object v2, v1

    goto :goto_31

    :cond_5f
    return-void

    :catch_60
    move-exception v4

    goto :goto_3d

    :pswitch_data_62
    .packed-switch 0x1
        :pswitch_4b
        :pswitch_4f
        :pswitch_53
        :pswitch_57
        :pswitch_5b
    .end packed-switch
.end method

.method public static a(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    invoke-static {p0, p1}, Lcom/facebook/ads/internal/adapters/f;->b(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/h;

    move-result-object v2

    if-eqz v2, :cond_24

    sget-object v0, Lcom/facebook/ads/internal/adapters/f;->a:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, v2, Lcom/facebook/ads/internal/adapters/h;->i:Ljava/lang/Class;

    if-nez v0, :cond_19

    iget-object v0, v2, Lcom/facebook/ads/internal/adapters/h;->j:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :cond_19
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/AdAdapter;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    :goto_1f
    return-object v0

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    move-object v0, v1

    goto :goto_1f
.end method

.method public static a(Ljava/lang/String;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;
    .registers 3

    invoke-static {p0}, Lcom/facebook/ads/internal/adapters/g;->a(Ljava/lang/String;)Lcom/facebook/ads/internal/adapters/g;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/adapters/f;->a(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/AdAdapter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/facebook/ads/internal/adapters/f;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-object v0, Lcom/facebook/ads/internal/adapters/f;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v0, Lcom/facebook/ads/internal/adapters/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/h;

    iget-object v3, v0, Lcom/facebook/ads/internal/adapters/h;->l:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, p0, :cond_1c

    iget-object v0, v0, Lcom/facebook/ads/internal/adapters/h;->k:Lcom/facebook/ads/internal/adapters/g;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/adapters/g;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_36
    const-string v0, ","

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/q/a/t;->a(Ljava/util/Set;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/adapters/f;->b:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10
.end method

.method private static b(Lcom/facebook/ads/internal/adapters/g;Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/internal/adapters/h;
    .registers 5

    sget-object v0, Lcom/facebook/ads/internal/adapters/f;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/adapters/h;

    iget-object v2, v0, Lcom/facebook/ads/internal/adapters/h;->k:Lcom/facebook/ads/internal/adapters/g;

    if-ne v2, p0, :cond_6

    iget-object v2, v0, Lcom/facebook/ads/internal/adapters/h;->l:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v2, p1, :cond_6

    :goto_1a
    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

###### Class com.facebook.ads.internal.adapters.f.AnonymousClass1 (com.facebook.ads.internal.adapters.f$1)
.class synthetic Lcom/facebook/ads/internal/adapters/f$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/adapters/f;
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

    invoke-static {}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->values()[Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->BANNER:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_49

    :goto_14
    :try_start_14
    sget-object v0, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INTERSTITIAL:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_47

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_45

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->INSTREAM:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_43

    :goto_35
    :try_start_35
    sget-object v0, Lcom/facebook/ads/internal/adapters/f$1;->a:[I

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_41

    :goto_40
    return-void

    :catch_41
    move-exception v0

    goto :goto_40

    :catch_43
    move-exception v0

    goto :goto_35

    :catch_45
    move-exception v0

    goto :goto_2a

    :catch_47
    move-exception v0

    goto :goto_1f

    :catch_49
    move-exception v0

    goto :goto_14
.end method
