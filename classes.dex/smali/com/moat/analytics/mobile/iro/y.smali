###### Class com.moat.analytics.mobile.iro.y (com.moat.analytics.mobile.iro.y)
.class final Lcom/moat/analytics/mobile/iro/y;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/y$b;,
        Lcom/moat/analytics/mobile/iro/y$a;
    }
.end annotation


# static fields
.field private static ˊॱ:I

.field private static ˏॱ:I


# instance fields
.field private ʻ:Landroid/location/Location;

.field private ʼ:Ljava/util/HashMap;
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

.field private ʽ:Lorg/json/JSONObject;

.field private ˊ:Lcom/moat/analytics/mobile/iro/y$a;

.field private ˋ:Landroid/graphics/Rect;

.field ˎ:Ljava/lang/String;

.field private ˏ:Lorg/json/JSONObject;

.field private ॱ:Landroid/graphics/Rect;

.field private ᐝ:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    const/4 v0, 0x1

    sput v0, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/y;->ʼ:Ljava/util/HashMap;

    .line 102
    const-string v0, "{}"

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/y;->ˎ:Ljava/lang/String;

    .line 106
    new-instance v0, Lcom/moat/analytics/mobile/iro/y$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/y$a;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    return-void
.end method

.method private static ˊ(Landroid/view/View;)F
    .registers 7

    .prologue
    .line 211
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    move v1, v0

    .line 212
    :goto_5
    if-eqz p0, :cond_5d

    .line 222
    const/16 v0, 0x53

    :goto_9
    packed-switch v0, :pswitch_data_68

    :goto_c
    :pswitch_c
    return v1

    .line 212
    :pswitch_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 222
    const/16 v0, 0xd

    :goto_15
    packed-switch v0, :pswitch_data_6e

    .line 213
    float-to-double v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_63

    .line 222
    const/16 v0, 0x44

    :goto_21
    packed-switch v0, :pswitch_data_74

    sget v0, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_30

    .line 214
    :cond_30
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_65

    .line 222
    const/16 v0, 0x48

    :goto_3a
    packed-switch v0, :pswitch_data_7a

    goto :goto_c

    :pswitch_3e
    sget v0, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4a

    .line 215
    :cond_4a
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr v1, v0

    .line 216
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_5

    .line 222
    :cond_5d
    const/16 v0, 0x63

    goto :goto_9

    :cond_60
    const/16 v0, 0x12

    goto :goto_15

    :cond_63
    const/4 v0, 0x5

    goto :goto_21

    :cond_65
    const/4 v0, 0x1

    goto :goto_3a

    nop

    :pswitch_data_68
    .packed-switch 0x53
        :pswitch_d
    .end packed-switch

    :pswitch_data_6e
    .packed-switch 0x12
        :pswitch_c
    .end packed-switch

    :pswitch_data_74
    .packed-switch 0x5
        :pswitch_c
    .end packed-switch

    :pswitch_data_7a
    .packed-switch 0x48
        :pswitch_3e
    .end packed-switch
.end method

.method private static ˊ(Landroid/graphics/Rect;Ljava/util/HashSet;)I
    .registers 16
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Rect;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 417
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 418
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 419
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 421
    new-instance v0, Lcom/moat/analytics/mobile/iro/y$2;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/y$2;-><init>()V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 428
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 429
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_fa

    move v0, v6

    .line 451
    :goto_28
    packed-switch v0, :pswitch_data_10c

    .line 433
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v2

    move v3, v2

    .line 434
    :goto_30
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_fd

    move v0, v2

    .line 451
    :goto_39
    packed-switch v0, :pswitch_data_112

    :goto_3c
    return v3

    :cond_3d
    move v3, v2

    .line 417
    goto :goto_3c

    .line 451
    :pswitch_3f
    sget v0, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4b

    .line 429
    :cond_4b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 430
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 451
    :pswitch_64
    sget v0, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_70

    .line 435
    :cond_70
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_100

    .line 451
    const/16 v0, 0x61

    :goto_84
    packed-switch v0, :pswitch_data_118

    .line 436
    new-instance v9, Landroid/graphics/Rect;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v10, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v9, v4, v5, v0, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 437
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 438
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    move v3, v0

    :goto_ae
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_103

    .line 451
    const/16 v0, 0x5e

    :goto_b6
    packed-switch v0, :pswitch_data_11e

    .line 438
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 439
    invoke-static {v0, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_106

    move v5, v6

    .line 451
    :goto_c6
    packed-switch v5, :pswitch_data_124

    move v0, v3

    move v3, v4

    :goto_cb
    move v4, v3

    move v3, v0

    .line 444
    goto :goto_ae

    .line 440
    :pswitch_ce
    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v5, v3, :cond_108

    .line 451
    const/4 v5, 0x3

    :goto_d3
    packed-switch v5, :pswitch_data_12a

    move v13, v3

    move v3, v4

    move v4, v13

    .line 444
    :goto_d9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v9, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v5, :cond_f5

    move v0, v4

    goto :goto_cb

    .line 441
    :pswitch_e1
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v3, v11, v3

    mul-int/2addr v3, v5

    add-int/2addr v3, v4

    .line 442
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_d9

    :pswitch_f4
    move v3, v4

    .line 434
    :cond_f5
    :pswitch_f5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_30

    :cond_fa
    move v0, v2

    .line 451
    goto/16 :goto_28

    :cond_fd
    move v0, v6

    goto/16 :goto_39

    :cond_100
    const/16 v0, 0x31

    goto :goto_84

    :cond_103
    const/16 v0, 0x11

    goto :goto_b6

    :cond_106
    move v5, v2

    goto :goto_c6

    :cond_108
    const/16 v5, 0x2f

    goto :goto_d3

    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_3f
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x0
        :pswitch_64
    .end packed-switch

    :pswitch_data_118
    .packed-switch 0x31
        :pswitch_f5
    .end packed-switch

    :pswitch_data_11e
    .packed-switch 0x11
        :pswitch_f4
    .end packed-switch

    :pswitch_data_124
    .packed-switch 0x1
        :pswitch_ce
    .end packed-switch

    :pswitch_data_12a
    .packed-switch 0x3
        :pswitch_e1
    .end packed-switch
.end method

.method private static ˎ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 473
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 474
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_33

    .line 481
    const/4 v0, 0x0

    :goto_8
    packed-switch v0, :pswitch_data_36

    :goto_b
    return-object p0

    .line 477
    :pswitch_c
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 478
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 479
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 480
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 481
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, v0, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_b

    :cond_33
    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_c
    .end packed-switch
.end method

.method static ˏ(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 232
    if-eqz p0, :cond_13

    const/16 v0, 0xa

    :goto_5
    packed-switch v0, :pswitch_data_16

    invoke-static {p0}, Lcom/moat/analytics/mobile/iro/y;->ॱ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    :goto_c
    return-object v0

    :pswitch_d
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_c

    :cond_13
    const/16 v0, 0x5a

    goto :goto_5

    :pswitch_data_16
    .packed-switch 0x5a
        :pswitch_d
    .end packed-switch
.end method

.method private static ˏ(Ljava/util/ArrayDeque;Lcom/moat/analytics/mobile/iro/y$b;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/moat/analytics/mobile/iro/y$b;",
            ">;",
            "Lcom/moat/analytics/mobile/iro/y$b;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 300
    iget-object v0, p1, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_41

    .line 303
    const/16 v0, 0x3f

    :goto_8
    packed-switch v0, :pswitch_data_46

    sget v0, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_17

    .line 300
    :cond_17
    iget-object v0, p1, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/ListView;

    if-nez v0, :cond_44

    .line 303
    const/4 v0, 0x1

    :goto_1e
    packed-switch v0, :pswitch_data_4c

    :cond_21
    :pswitch_21
    return-void

    .line 301
    :pswitch_22
    iget-object v0, p1, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 302
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 303
    add-int/lit8 v1, v1, -0x1

    :goto_2c
    if-ltz v1, :cond_21

    .line 304
    new-instance v2, Lcom/moat/analytics/mobile/iro/y$b;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget v4, p1, Lcom/moat/analytics/mobile/iro/y$b;->ॱ:I

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v2, v3, v4, p2}, Lcom/moat/analytics/mobile/iro/y$b;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {p0, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v1, v1, -0x1

    goto :goto_2c

    :cond_41
    const/16 v0, 0x2f

    goto :goto_8

    :cond_44
    const/4 v0, 0x0

    goto :goto_1e

    :pswitch_data_46
    .packed-switch 0x2f
        :pswitch_21
    .end packed-switch

    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method

.method private static ˏ(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/HashSet;)Z
    .registers 18
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Landroid/view/View;",
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Rect;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 319
    const/4 v4, 0x0

    .line 320
    const/4 v3, 0x0

    .line 7282
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 7284
    const/4 v2, 0x0

    move v6, v2

    move-object/from16 v7, p1

    .line 7285
    :goto_b
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_2a6

    move-result-object v2

    if-nez v2, :cond_32a

    .line 397
    const/16 v2, 0x3a

    :goto_13
    packed-switch v2, :pswitch_data_3ba

    .line 7286
    :pswitch_16
    add-int/lit8 v6, v6, 0x1

    .line 7287
    const/16 v2, 0x32

    if-le v6, v2, :cond_331

    .line 397
    const/16 v2, 0x61

    :goto_1e
    packed-switch v2, :pswitch_data_3c0

    .line 404
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x73

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_385

    .line 397
    const/16 v2, 0x14

    :goto_2f
    packed-switch v2, :pswitch_data_3c6

    .line 7287
    const/4 v2, 0x0

    move-object v7, v2

    .line 323
    :goto_34
    if-eqz v7, :cond_339

    .line 397
    const/16 v2, 0x9

    :goto_38
    packed-switch v2, :pswitch_data_3cc

    .line 7290
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_38c

    .line 397
    const/16 v2, 0x5e

    :goto_49
    packed-switch v2, :pswitch_data_3d2

    .line 7290
    :try_start_4c
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_390

    .line 397
    const/4 v2, 0x1

    :goto_53
    packed-switch v2, :pswitch_data_3d8

    .line 324
    :pswitch_56
    const/4 v2, 0x0

    .line 404
    :goto_57
    return v2

    .line 7285
    :pswitch_58
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-ne v7, v2, :cond_32e

    .line 397
    const/4 v2, 0x1

    :goto_5f
    packed-switch v2, :pswitch_data_3de

    :goto_62
    :pswitch_62
    move-object v7, v5

    .line 7296
    goto :goto_34

    .line 7288
    :pswitch_64
    const/4 v2, 0x0

    invoke-interface {v5, v2, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 7289
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_6e} :catch_2a6

    if-eqz v2, :cond_335

    .line 397
    const/16 v2, 0x27

    :goto_72
    packed-switch v2, :pswitch_data_3e4

    .line 404
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_389

    .line 397
    const/4 v2, 0x0

    :goto_82
    packed-switch v2, :pswitch_data_3ea

    .line 7290
    :try_start_85
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v7, v2

    goto/16 :goto_b

    .line 323
    :pswitch_8e
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33d

    .line 397
    const/4 v2, 0x0

    :goto_95
    packed-switch v2, :pswitch_data_3f0

    .line 327
    :pswitch_98
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 328
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 329
    new-instance v5, Lcom/moat/analytics/mobile/iro/y$b;

    const/4 v6, 0x0

    const/4 v9, 0x1

    invoke-direct {v5, v2, v6, v9}, Lcom/moat/analytics/mobile/iro/y$b;-><init>(Landroid/view/View;IZ)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 330
    const-string v2, "VisibilityInfo"

    const-string v5, "starting covering rect search"

    move-object/from16 v0, p1

    invoke-static {v2, v0, v5}, Lcom/moat/analytics/mobile/iro/b;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move v14, v3

    move v3, v4

    move v4, v14

    .line 332
    :goto_b7
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_ba} :catch_2a6

    move-result v2

    if-nez v2, :cond_340

    .line 397
    const/16 v2, 0x28

    :goto_bf
    packed-switch v2, :pswitch_data_3f6

    .line 7290
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_ce

    .line 333
    :cond_ce
    const/16 v2, 0xfa

    if-ge v3, v2, :cond_344

    .line 397
    const/16 v2, 0x16

    :goto_d4
    packed-switch v2, :pswitch_data_3fc

    .line 404
    :goto_d7
    :pswitch_d7
    const/4 v2, 0x0

    goto/16 :goto_57

    .line 334
    :pswitch_da
    add-int/lit8 v5, v3, 0x1

    .line 335
    :try_start_dc
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/moat/analytics/mobile/iro/y$b;

    move-object v3, v0

    .line 337
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_348

    .line 397
    const/16 v2, 0x40

    :goto_f0
    packed-switch v2, :pswitch_data_402

    .line 345
    iget-boolean v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˋ:Z

    if-eqz v2, :cond_34c

    .line 397
    const/4 v2, 0x0

    :goto_f8
    packed-switch v2, :pswitch_data_408

    .line 377
    :cond_fb
    :goto_fb
    :pswitch_fb
    const/4 v2, 0x0

    invoke-static {v8, v3, v2}, Lcom/moat/analytics/mobile/iro/y;->ˏ(Ljava/util/ArrayDeque;Lcom/moat/analytics/mobile/iro/y$b;Z)V

    .line 381
    const-class v2, Landroid/view/ViewGroup;

    iget-object v6, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_10e} :catch_2a6

    move-result v2

    if-eqz v2, :cond_36f

    .line 397
    const/4 v2, 0x1

    :goto_112
    packed-switch v2, :pswitch_data_40e

    .line 367
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3a7

    .line 397
    const/4 v2, 0x1

    :goto_122
    packed-switch v2, :pswitch_data_414

    .line 382
    :try_start_125
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v2, v6, :cond_3aa

    .line 397
    const/16 v2, 0x2a

    :goto_12d
    packed-switch v2, :pswitch_data_41a

    .line 383
    :goto_130
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_125 .. :try_end_135} :catch_2a6

    move-result-object v2

    if-eqz v2, :cond_375

    .line 397
    const/4 v2, 0x1

    :goto_139
    packed-switch v2, :pswitch_data_420

    .line 382
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x47

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3ae

    .line 397
    const/16 v2, 0xb

    :goto_14a
    packed-switch v2, :pswitch_data_426

    .line 383
    :try_start_14d
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_156} :catch_2a6

    move-result v2

    if-eqz v2, :cond_378

    .line 397
    const/4 v2, 0x1

    :goto_15a
    packed-switch v2, :pswitch_data_42c

    :goto_15d
    :pswitch_15d
    move v3, v5

    goto/16 :goto_b7

    .line 7290
    :pswitch_160
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_16c

    .line 338
    :cond_16c
    const/4 v2, 0x1

    .line 339
    :try_start_16d
    const-string v3, "VisibilityInfo"

    const-string v4, "found target"

    invoke-static {v3, p0, v4}, Lcom/moat/analytics/mobile/iro/b;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    move v4, v2

    move v3, v5

    goto/16 :goto_b7

    .line 7310
    :pswitch_178
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    iget v6, v3, Lcom/moat/analytics/mobile/iro/y$b;->ॱ:I

    if-le v2, v6, :cond_34f

    .line 397
    const/4 v2, 0x1

    :goto_181
    packed-switch v2, :pswitch_data_432

    .line 7311
    iget v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ॱ:I

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v6, v2

    .line 348
    :goto_18d
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    if-ne v2, v6, :cond_352

    .line 397
    const/4 v2, 0x0

    :goto_192
    packed-switch v2, :pswitch_data_438

    .line 349
    const/4 v2, 0x1

    invoke-static {v8, v3, v2}, Lcom/moat/analytics/mobile/iro/y;->ˏ(Ljava/util/ArrayDeque;Lcom/moat/analytics/mobile/iro/y$b;Z)V

    move v3, v5

    goto/16 :goto_b7

    .line 7313
    :pswitch_19c
    const/4 v2, 0x0

    move-object v6, v2

    goto :goto_18d

    .line 354
    :pswitch_19f
    iget-object v9, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    .line 8272
    invoke-virtual {v9}, Landroid/view/View;->isShown()Z
    :try_end_1a4
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_1a4} :catch_2a6

    move-result v2

    if-eqz v2, :cond_355

    .line 397
    const/16 v2, 0x10

    :goto_1a9
    packed-switch v2, :pswitch_data_43e

    .line 8272
    :goto_1ac
    const/4 v2, 0x0

    :goto_1ad
    if-eqz v2, :cond_35d

    .line 397
    const/16 v2, 0x54

    :goto_1b1
    packed-switch v2, :pswitch_data_444

    goto :goto_15d

    .line 7290
    :pswitch_1b5
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1c1

    .line 358
    :cond_1c1
    if-eqz v4, :cond_361

    .line 397
    const/16 v2, 0x52

    :goto_1c5
    packed-switch v2, :pswitch_data_44a

    .line 7290
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_39a

    .line 397
    const/4 v2, 0x0

    :goto_1d5
    packed-switch v2, :pswitch_data_450

    .line 359
    :try_start_1d8
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v2, v9, :cond_365

    .line 397
    const/16 v2, 0x49

    :goto_1e0
    packed-switch v2, :pswitch_data_456

    .line 359
    :goto_1e3
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    .line 360
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v6

    cmpg-float v2, v2, v6

    if-gez v2, :cond_fb

    move v3, v5

    goto/16 :goto_b7

    .line 8272
    :pswitch_1f4
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_359

    .line 397
    const/16 v2, 0x3e

    :goto_201
    packed-switch v2, :pswitch_data_45c

    goto :goto_1ac

    .line 8272
    :pswitch_205
    const/4 v2, 0x1

    goto :goto_1ad

    .line 364
    :pswitch_207
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_209
    .catch Ljava/lang/Exception; {:try_start_1d8 .. :try_end_209} :catch_2a6

    const/16 v9, 0x15

    if-lt v2, v9, :cond_369

    .line 397
    const/4 v2, 0x0

    :goto_20e
    packed-switch v2, :pswitch_data_462

    .line 359
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3a0

    .line 397
    const/16 v2, 0x1a

    :goto_21f
    packed-switch v2, :pswitch_data_468

    .line 367
    :try_start_222
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v6

    cmpg-float v2, v2, v6

    if-lez v2, :cond_3a4

    .line 397
    const/4 v2, 0x1

    :goto_231
    packed-switch v2, :pswitch_data_46e

    goto/16 :goto_fb

    .line 367
    :pswitch_236
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v6

    cmpg-float v2, v2, v6

    if-lez v2, :cond_36c

    .line 397
    const/4 v2, 0x0

    :goto_245
    packed-switch v2, :pswitch_data_474

    goto/16 :goto_15d

    .line 382
    :pswitch_24a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v2, v6, :cond_372

    .line 397
    const/4 v2, 0x0

    :goto_251
    packed-switch v2, :pswitch_data_47a

    goto/16 :goto_130

    .line 392
    :pswitch_256
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-static {v2}, Lcom/moat/analytics/mobile/iro/y;->ॱ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 393
    invoke-virtual {v2, p0, v2}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_2a0

    .line 394
    const-string v6, "VisibilityInfo"

    iget-object v9, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Covered by "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, "-"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v9, v3}, Lcom/moat/analytics/mobile/iro/b;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 395
    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-virtual {v2, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z
    :try_end_298
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_298} :catch_2a6

    move-result v2

    if-eqz v2, :cond_37b

    .line 397
    const/16 v2, 0x28

    :goto_29d
    packed-switch v2, :pswitch_data_480

    :cond_2a0
    move v3, v5

    goto/16 :goto_b7

    :pswitch_2a3
    const/4 v2, 0x1

    goto/16 :goto_57

    .line 402
    :catch_2a6
    move-exception v2

    invoke-static {v2}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto/16 :goto_d7

    .line 404
    :pswitch_2ac
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_37f

    .line 397
    const/4 v2, 0x0

    :goto_2b9
    packed-switch v2, :pswitch_data_486

    .line 404
    :try_start_2bc
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    if-ne v7, v2, :cond_382

    .line 397
    const/4 v2, 0x1

    :goto_2c3
    packed-switch v2, :pswitch_data_48c

    goto/16 :goto_62

    .line 404
    :pswitch_2c8
    const/4 v2, 0x0

    move-object v7, v2

    goto/16 :goto_34

    .line 7290
    :pswitch_2cc
    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;
    :try_end_2d2
    .catch Ljava/lang/Exception; {:try_start_2bc .. :try_end_2d2} :catch_2a6

    move-object v7, v2

    goto/16 :goto_b

    :pswitch_2d5
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v10, v2, 0x80

    sput v10, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_393

    .line 397
    const/16 v2, 0x12

    :goto_2e3
    packed-switch v2, :pswitch_data_492

    .line 7290
    :try_start_2e6
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v10, v2

    const-wide/16 v12, 0x0

    cmpl-double v2, v10, v12

    if-lez v2, :cond_397

    .line 397
    const/4 v2, 0x0

    :goto_2f2
    packed-switch v2, :pswitch_data_498

    goto/16 :goto_1ac

    .line 359
    :pswitch_2f7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x15

    if-lt v2, v9, :cond_39d

    .line 397
    const/4 v2, 0x1

    :goto_2fe
    packed-switch v2, :pswitch_data_49e

    goto/16 :goto_1e3

    .line 382
    :pswitch_303
    iget-object v2, v3, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_2e6 .. :try_end_30c} :catch_2a6

    move-result v2

    if-eqz v2, :cond_3b2

    .line 397
    const/16 v2, 0x25

    :goto_311
    packed-switch v2, :pswitch_data_4a4

    goto/16 :goto_15d

    .line 382
    :pswitch_316
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3b6

    .line 397
    const/16 v2, 0x24

    :goto_324
    packed-switch v2, :pswitch_data_4aa

    const/4 v2, 0x1

    goto/16 :goto_57

    :cond_32a
    const/16 v2, 0x1e

    goto/16 :goto_13

    :cond_32e
    const/4 v2, 0x0

    goto/16 :goto_5f

    :cond_331
    const/16 v2, 0x5d

    goto/16 :goto_1e

    :cond_335
    const/16 v2, 0xd

    goto/16 :goto_72

    :cond_339
    const/16 v2, 0x4d

    goto/16 :goto_38

    :cond_33d
    const/4 v2, 0x1

    goto/16 :goto_95

    :cond_340
    const/16 v2, 0x35

    goto/16 :goto_bf

    :cond_344
    const/16 v2, 0x32

    goto/16 :goto_d4

    :cond_348
    const/16 v2, 0x41

    goto/16 :goto_f0

    :cond_34c
    const/4 v2, 0x1

    goto/16 :goto_f8

    :cond_34f
    const/4 v2, 0x0

    goto/16 :goto_181

    :cond_352
    const/4 v2, 0x1

    goto/16 :goto_192

    :cond_355
    const/16 v2, 0x2f

    goto/16 :goto_1a9

    :cond_359
    const/16 v2, 0x44

    goto/16 :goto_201

    :cond_35d
    const/16 v2, 0x24

    goto/16 :goto_1b1

    :cond_361
    const/16 v2, 0x17

    goto/16 :goto_1c5

    :cond_365
    const/16 v2, 0x1d

    goto/16 :goto_1e0

    :cond_369
    const/4 v2, 0x1

    goto/16 :goto_20e

    :cond_36c
    const/4 v2, 0x1

    goto/16 :goto_245

    :cond_36f
    const/4 v2, 0x0

    goto/16 :goto_112

    :cond_372
    const/4 v2, 0x1

    goto/16 :goto_251

    :cond_375
    const/4 v2, 0x0

    goto/16 :goto_139

    :cond_378
    const/4 v2, 0x0

    goto/16 :goto_15a

    :cond_37b
    const/16 v2, 0x44

    goto/16 :goto_29d

    :cond_37f
    const/4 v2, 0x1

    goto/16 :goto_2b9

    :cond_382
    const/4 v2, 0x0

    goto/16 :goto_2c3

    :cond_385
    const/16 v2, 0x25

    goto/16 :goto_2f

    :cond_389
    const/4 v2, 0x1

    goto/16 :goto_82

    :cond_38c
    const/16 v2, 0x25

    goto/16 :goto_49

    :cond_390
    const/4 v2, 0x0

    goto/16 :goto_53

    :cond_393
    const/16 v2, 0x22

    goto/16 :goto_2e3

    :cond_397
    const/4 v2, 0x1

    goto/16 :goto_2f2

    :cond_39a
    const/4 v2, 0x1

    goto/16 :goto_1d5

    :cond_39d
    const/4 v2, 0x0

    goto/16 :goto_2fe

    :cond_3a0
    const/16 v2, 0x5c

    goto/16 :goto_21f

    :cond_3a4
    const/4 v2, 0x0

    goto/16 :goto_231

    :cond_3a7
    const/4 v2, 0x0

    goto/16 :goto_122

    :cond_3aa
    const/16 v2, 0x49

    goto/16 :goto_12d

    :cond_3ae
    const/16 v2, 0x25

    goto/16 :goto_14a

    :cond_3b2
    const/16 v2, 0x59

    goto/16 :goto_311

    :cond_3b6
    const/16 v2, 0x45

    goto/16 :goto_324

    :pswitch_data_3ba
    .packed-switch 0x3a
        :pswitch_2ac
    .end packed-switch

    :pswitch_data_3c0
    .packed-switch 0x5d
        :pswitch_64
    .end packed-switch

    :pswitch_data_3c6
    .packed-switch 0x14
        :pswitch_2c8
    .end packed-switch

    :pswitch_data_3cc
    .packed-switch 0x4d
        :pswitch_56
    .end packed-switch

    :pswitch_data_3d2
    .packed-switch 0x25
        :pswitch_8e
    .end packed-switch

    :pswitch_data_3d8
    .packed-switch 0x0
        :pswitch_98
    .end packed-switch

    :pswitch_data_3de
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch

    :pswitch_data_3e4
    .packed-switch 0xd
        :pswitch_62
    .end packed-switch

    :pswitch_data_3ea
    .packed-switch 0x0
        :pswitch_2cc
    .end packed-switch

    :pswitch_data_3f0
    .packed-switch 0x0
        :pswitch_56
    .end packed-switch

    :pswitch_data_3f6
    .packed-switch 0x35
        :pswitch_d7
    .end packed-switch

    :pswitch_data_3fc
    .packed-switch 0x16
        :pswitch_da
    .end packed-switch

    :pswitch_data_402
    .packed-switch 0x40
        :pswitch_160
    .end packed-switch

    :pswitch_data_408
    .packed-switch 0x0
        :pswitch_178
    .end packed-switch

    :pswitch_data_40e
    .packed-switch 0x0
        :pswitch_256
    .end packed-switch

    :pswitch_data_414
    .packed-switch 0x0
        :pswitch_24a
    .end packed-switch

    :pswitch_data_41a
    .packed-switch 0x49
        :pswitch_15d
    .end packed-switch

    :pswitch_data_420
    .packed-switch 0x0
        :pswitch_15d
    .end packed-switch

    :pswitch_data_426
    .packed-switch 0xb
        :pswitch_303
    .end packed-switch

    :pswitch_data_42c
    .packed-switch 0x1
        :pswitch_256
    .end packed-switch

    :pswitch_data_432
    .packed-switch 0x0
        :pswitch_19c
    .end packed-switch

    :pswitch_data_438
    .packed-switch 0x1
        :pswitch_19f
    .end packed-switch

    :pswitch_data_43e
    .packed-switch 0x10
        :pswitch_2d5
    .end packed-switch

    :pswitch_data_444
    .packed-switch 0x54
        :pswitch_1b5
    .end packed-switch

    :pswitch_data_44a
    .packed-switch 0x17
        :pswitch_207
    .end packed-switch

    :pswitch_data_450
    .packed-switch 0x0
        :pswitch_2f7
    .end packed-switch

    :pswitch_data_456
    .packed-switch 0x1d
        :pswitch_fb
    .end packed-switch

    :pswitch_data_45c
    .packed-switch 0x3e
        :pswitch_205
    .end packed-switch

    :pswitch_data_462
    .packed-switch 0x1
        :pswitch_15d
    .end packed-switch

    :pswitch_data_468
    .packed-switch 0x5c
        :pswitch_236
    .end packed-switch

    :pswitch_data_46e
    .packed-switch 0x0
        :pswitch_15d
    .end packed-switch

    :pswitch_data_474
    .packed-switch 0x0
        :pswitch_fb
    .end packed-switch

    :pswitch_data_47a
    .packed-switch 0x1
        :pswitch_15d
    .end packed-switch

    :pswitch_data_480
    .packed-switch 0x28
        :pswitch_316
    .end packed-switch

    :pswitch_data_486
    .packed-switch 0x1
        :pswitch_58
    .end packed-switch

    :pswitch_data_48c
    .packed-switch 0x1
        :pswitch_16
    .end packed-switch

    :pswitch_data_492
    .packed-switch 0x22
        :pswitch_1f4
    .end packed-switch

    :pswitch_data_498
    .packed-switch 0x0
        :pswitch_205
    .end packed-switch

    :pswitch_data_49e
    .packed-switch 0x0
        :pswitch_fb
    .end packed-switch

    :pswitch_data_4a4
    .packed-switch 0x25
        :pswitch_256
    .end packed-switch

    :pswitch_data_4aa
    .packed-switch 0x45
        :pswitch_2a3
    .end packed-switch
.end method

.method private static ॱ(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 511
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    .line 512
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 513
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 514
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 515
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 511
    nop

    :array_20
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private static ॱ(Landroid/graphics/Rect;)Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 462
    const-string v1, "x"

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    const-string v1, "y"

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v1, "w"

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v1, "h"

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-object v0
.end method


# virtual methods
.method final ˎ(Ljava/lang/String;Landroid/view/View;)V
    .registers 21

    .prologue
    .line 114
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 115
    const-string v3, "{}"

    .line 116
    const/4 v4, 0x0

    .line 118
    if-eqz p2, :cond_50a

    .line 6487
    const/16 v2, 0x4e

    :goto_c
    packed-switch v2, :pswitch_data_5ae

    .line 184
    :goto_f
    return-void

    :pswitch_10
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x1f

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1c

    .line 1524
    :cond_1c
    :try_start_1c
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_50d

    .line 6487
    const/4 v2, 0x0

    :goto_23
    packed-switch v2, :pswitch_data_5b4

    .line 1534
    :goto_26
    :pswitch_26
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1535
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1536
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v9, v2

    .line 2190
    :goto_33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v2, v5, :cond_517

    .line 6487
    const/4 v2, 0x0

    :goto_3a
    packed-switch v2, :pswitch_data_5ba

    .line 2194
    if-eqz p2, :cond_522

    .line 6487
    const/16 v2, 0x19

    :goto_41
    packed-switch v2, :pswitch_data_5c0

    .line 2194
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_47} :catch_270

    move-result-object v2

    if-eqz v2, :cond_526

    .line 6487
    const/16 v2, 0x42

    :goto_4c
    packed-switch v2, :pswitch_data_5c6

    .line 2194
    const/4 v2, 0x1

    move v8, v2

    .line 2199
    :goto_51
    if-eqz p2, :cond_52a

    .line 6487
    const/4 v2, 0x1

    :goto_54
    packed-switch v2, :pswitch_data_5cc

    .line 2199
    :goto_57
    const/4 v2, 0x0

    move v7, v2

    .line 2203
    :goto_59
    if-eqz p2, :cond_530

    .line 6487
    const/4 v2, 0x0

    :goto_5c
    packed-switch v2, :pswitch_data_5d2

    .line 2203
    :goto_5f
    :pswitch_5f
    const/4 v2, 0x1

    move v5, v2

    .line 2207
    :goto_61
    if-nez p2, :cond_537

    .line 6487
    const/16 v2, 0x30

    :goto_65
    packed-switch v2, :pswitch_data_5d8

    .line 1527
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_74

    .line 2207
    :cond_74
    const/4 v2, 0x0

    move v6, v2

    .line 124
    :goto_76
    :try_start_76
    const-string v2, "dr"

    iget v11, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "dv"

    invoke-static {}, Lcom/moat/analytics/mobile/iro/p;->ॱ()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "adKey"

    move-object/from16 v0, p1

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v11, "isAttached"

    if-eqz v8, :cond_53b

    .line 6487
    const/4 v2, 0x1

    :goto_9a
    packed-switch v2, :pswitch_data_5de

    .line 127
    const/4 v2, 0x0

    :goto_9e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v11, "inFocus"

    if-eqz v7, :cond_53e

    .line 6487
    const/4 v2, 0x1

    :goto_aa
    packed-switch v2, :pswitch_data_5e4

    .line 128
    const/4 v2, 0x0

    :goto_ae
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v11, "isHidden"

    if-eqz v5, :cond_541

    .line 6487
    const/4 v2, 0x1

    :goto_ba
    packed-switch v2, :pswitch_data_5ea

    .line 129
    const/4 v2, 0x0

    :goto_be
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "opacity"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v10, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2226
    iget v2, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2227
    iget v6, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2228
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2232
    if-eqz p2, :cond_544

    .line 6487
    const/4 v2, 0x0

    :goto_dc
    packed-switch v2, :pswitch_data_5f0

    .line 2232
    invoke-static/range {p2 .. p2}, Lcom/moat/analytics/mobile/iro/y;->ॱ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    move-object v6, v2

    .line 2236
    :goto_e4
    new-instance v12, Lcom/moat/analytics/mobile/iro/y$a;

    invoke-direct {v12}, Lcom/moat/analytics/mobile/iro/y$a;-><init>()V

    .line 2507
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_f0} :catch_270

    move-result v13

    mul-int/2addr v13, v2

    .line 2239
    if-eqz p2, :cond_547

    .line 6487
    const/16 v2, 0x22

    :goto_f6
    packed-switch v2, :pswitch_data_5f6

    .line 1527
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v14, v2, 0x80

    sput v14, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5a0

    .line 6487
    const/4 v2, 0x1

    :goto_106
    packed-switch v2, :pswitch_data_5fc

    .line 1527
    if-eqz v8, :cond_5a3

    .line 6487
    const/4 v2, 0x0

    :goto_10c
    packed-switch v2, :pswitch_data_602

    .line 2239
    :goto_10f
    if-eqz v7, :cond_54f

    .line 6487
    const/4 v2, 0x0

    :goto_112
    packed-switch v2, :pswitch_data_608

    .line 2239
    if-nez v5, :cond_552

    .line 6487
    const/16 v2, 0x12

    :goto_119
    packed-switch v2, :pswitch_data_60e

    .line 1527
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_128

    .line 2239
    :cond_128
    if-lez v13, :cond_556

    .line 6487
    const/4 v2, 0x0

    :goto_12b
    packed-switch v2, :pswitch_data_614

    .line 1527
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x79

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_13a

    .line 2240
    :cond_13a
    :try_start_13a
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-direct {v5, v2, v7, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2243
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_559

    .line 6487
    const/4 v2, 0x1

    :goto_14c
    packed-switch v2, :pswitch_data_61a

    .line 135
    :goto_14f
    :pswitch_14f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ˏ:Lorg/json/JSONObject;

    if-eqz v2, :cond_56f

    .line 6487
    const/4 v2, 0x0

    :goto_156
    packed-switch v2, :pswitch_data_620

    .line 139
    :goto_159
    :pswitch_159
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    .line 140
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    iget-object v4, v4, Lcom/moat/analytics/mobile/iro/y$a;->ˊ:Landroid/graphics/Rect;

    .line 4457
    invoke-static {v4, v9}, Lcom/moat/analytics/mobile/iro/y;->ˎ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/iro/y;->ॱ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 140
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ˏ:Lorg/json/JSONObject;

    .line 141
    const/4 v4, 0x1

    .line 143
    :cond_175
    const-string v2, "coveredPercent"

    iget-wide v12, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˎ:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v10, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ʽ:Lorg/json/JSONObject;
    :try_end_184
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_184} :catch_270

    if-eqz v2, :cond_579

    .line 6487
    const/4 v2, 0x1

    :goto_187
    packed-switch v2, :pswitch_data_626

    .line 1527
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5a9

    .line 6487
    const/4 v2, 0x7

    :goto_197
    packed-switch v2, :pswitch_data_62c

    .line 1527
    :try_start_19a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ॱ:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ba

    .line 145
    :goto_1a4
    :pswitch_1a4
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/moat/analytics/mobile/iro/y;->ॱ:Landroid/graphics/Rect;

    .line 146
    new-instance v2, Lorg/json/JSONObject;

    .line 5457
    invoke-static {v11, v9}, Lcom/moat/analytics/mobile/iro/y;->ˎ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/iro/y;->ॱ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 146
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ʽ:Lorg/json/JSONObject;

    .line 147
    const/4 v4, 0x1

    .line 149
    :cond_1ba
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ᐝ:Lorg/json/JSONObject;

    if-eqz v2, :cond_57c

    .line 6487
    const/4 v2, 0x0

    :goto_1c1
    packed-switch v2, :pswitch_data_632

    .line 150
    :goto_1c4
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/moat/analytics/mobile/iro/y;->ˋ:Landroid/graphics/Rect;

    .line 151
    new-instance v2, Lorg/json/JSONObject;

    .line 6457
    invoke-static {v6, v9}, Lcom/moat/analytics/mobile/iro/y;->ˎ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/iro/y;->ॱ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 151
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ᐝ:Lorg/json/JSONObject;

    .line 152
    const/4 v4, 0x1

    .line 154
    :cond_1da
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ʼ:Ljava/util/HashMap;

    if-eqz v2, :cond_57f

    .line 6487
    const/4 v2, 0x0

    :goto_1e1
    packed-switch v2, :pswitch_data_638

    .line 155
    :cond_1e4
    :pswitch_1e4
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/moat/analytics/mobile/iro/y;->ʼ:Ljava/util/HashMap;

    .line 156
    const/4 v2, 0x1

    .line 159
    :goto_1e9
    invoke-static {}, Lcom/moat/analytics/mobile/iro/k;->ˎ()Lcom/moat/analytics/mobile/iro/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/iro/k;->ॱ()Landroid/location/Location;

    move-result-object v5

    .line 160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ʻ:Landroid/location/Location;

    invoke-static {v5, v4}, Lcom/moat/analytics/mobile/iro/k;->ˎ(Landroid/location/Location;Landroid/location/Location;)Z
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_19a .. :try_end_1f8} :catch_270

    move-result v4

    if-nez v4, :cond_585

    .line 6487
    const/4 v4, 0x1

    :goto_1fc
    packed-switch v4, :pswitch_data_63e

    .line 1527
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x67

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_425

    .line 161
    const/4 v2, 0x1

    .line 162
    :try_start_20c
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/moat/analytics/mobile/iro/y;->ʻ:Landroid/location/Location;
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_20c .. :try_end_210} :catch_270

    .line 165
    :goto_210
    :pswitch_210
    if-eqz v2, :cond_588

    .line 6487
    const/4 v2, 0x0

    :goto_213
    packed-switch v2, :pswitch_data_644

    goto/16 :goto_f

    .line 162
    :pswitch_218
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_224

    .line 166
    :cond_224
    :try_start_224
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ʼ:Ljava/util/HashMap;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 167
    const-string v2, "screen"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ʽ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v2, "view"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ᐝ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "visible"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ˏ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v2, "maybe"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ˏ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v2, "visiblePercent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    iget-wide v8, v4, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    if-eqz v5, :cond_58b

    .line 6487
    const/4 v2, 0x1

    :goto_263
    packed-switch v2, :pswitch_data_64a

    .line 175
    :goto_266
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 176
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/moat/analytics/mobile/iro/y;->ˎ:Ljava/lang/String;
    :try_end_26e
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_26e} :catch_270

    goto/16 :goto_f

    .line 183
    :catch_270
    move-exception v2

    invoke-static {v2}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 184
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/moat/analytics/mobile/iro/y;->ˎ:Ljava/lang/String;

    goto/16 :goto_f

    :pswitch_27a
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_286

    .line 1525
    :cond_286
    :try_start_286
    sget-object v2, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;
    :try_end_288
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_288} :catch_270

    if-eqz v2, :cond_510

    .line 6487
    const/4 v2, 0x0

    :goto_28b
    packed-switch v2, :pswitch_data_650

    .line 184
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_595

    .line 6487
    const/4 v2, 0x1

    :goto_29b
    packed-switch v2, :pswitch_data_656

    .line 1526
    :try_start_29e
    sget-object v2, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1527
    if-eqz v2, :cond_513

    .line 6487
    const/16 v5, 0x60

    :goto_2aa
    packed-switch v5, :pswitch_data_65c

    .line 1528
    :pswitch_2ad
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1529
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    move-object v9, v5

    .line 1530
    goto/16 :goto_33

    .line 2191
    :pswitch_2c0
    if-eqz p2, :cond_51a

    .line 6487
    const/16 v2, 0xc

    :goto_2c4
    packed-switch v2, :pswitch_data_662

    .line 2191
    :goto_2c7
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_51

    :pswitch_2cb
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_51e

    .line 6487
    const/16 v2, 0x21

    :goto_2d3
    packed-switch v2, :pswitch_data_668

    goto :goto_2c7

    .line 2191
    :pswitch_2d7
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_51

    .line 2194
    :pswitch_2db
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_51

    .line 2199
    :pswitch_2df
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_52d

    .line 6487
    const/4 v2, 0x1

    :goto_2e6
    packed-switch v2, :pswitch_data_66e

    goto/16 :goto_57

    .line 2199
    :pswitch_2eb
    const/4 v2, 0x1

    move v7, v2

    goto/16 :goto_59

    .line 6487
    :cond_2ef
    const/16 v2, 0x2e

    :goto_2f1
    packed-switch v2, :pswitch_data_674

    .line 2203
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_533

    .line 6487
    const/16 v2, 0x45

    :goto_2fc
    packed-switch v2, :pswitch_data_67a

    .line 2203
    :pswitch_2ff
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_61

    .line 2207
    :pswitch_303
    invoke-static/range {p2 .. p2}, Lcom/moat/analytics/mobile/iro/y;->ˊ(Landroid/view/View;)F
    :try_end_306
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_306} :catch_270

    move-result v2

    move v6, v2

    goto/16 :goto_76

    .line 1527
    :pswitch_30a
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v12, v2, 0x80

    sput v12, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_316

    .line 127
    :cond_316
    const/4 v2, 0x1

    goto/16 :goto_9e

    .line 128
    :pswitch_319
    const/4 v2, 0x1

    goto/16 :goto_ae

    .line 129
    :pswitch_31c
    const/4 v2, 0x1

    goto/16 :goto_be

    .line 2232
    :pswitch_31f
    :try_start_31f
    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v2, v6, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v2

    goto/16 :goto_e4

    .line 2239
    :pswitch_32b
    if-eqz v8, :cond_54b

    .line 6487
    const/16 v2, 0x48

    :goto_32f
    packed-switch v2, :pswitch_data_680

    goto/16 :goto_10f

    .line 3507
    :pswitch_334
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v7, v2

    .line 2245
    if-ge v7, v13, :cond_55c

    .line 6487
    const/4 v2, 0x0

    :goto_340
    packed-switch v2, :pswitch_data_686

    .line 2248
    :goto_343
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 2249
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 2250
    instance-of v2, v2, Landroid/view/ViewGroup;
    :try_end_34e
    .catch Ljava/lang/Exception; {:try_start_31f .. :try_end_34e} :catch_270

    if-eqz v2, :cond_55f

    .line 6487
    const/16 v2, 0x29

    :goto_352
    packed-switch v2, :pswitch_data_68c

    goto/16 :goto_14f

    .line 1527
    :pswitch_357
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v14, v2, 0x80

    sput v14, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_363

    .line 2251
    :cond_363
    :try_start_363
    iput-object v5, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˊ:Landroid/graphics/Rect;

    .line 2252
    move-object/from16 v0, p2

    invoke-static {v5, v0, v8}, Lcom/moat/analytics/mobile/iro/y;->ˏ(Landroid/graphics/Rect;Landroid/view/View;Ljava/util/HashSet;)Z

    move-result v14

    .line 2253
    if-eqz v14, :cond_563

    .line 6487
    const/16 v2, 0x59

    :goto_36f
    packed-switch v2, :pswitch_data_692

    .line 2254
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v0, v16

    iput-wide v0, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˎ:D

    .line 2256
    :pswitch_378
    if-nez v14, :cond_567

    .line 6487
    const/16 v2, 0x15

    :goto_37c
    packed-switch v2, :pswitch_data_698

    goto/16 :goto_14f

    .line 2257
    :pswitch_381
    invoke-static {v5, v8}, Lcom/moat/analytics/mobile/iro/y;->ˊ(Landroid/graphics/Rect;Ljava/util/HashSet;)I

    move-result v5

    .line 2258
    if-lez v5, :cond_56b

    .line 6487
    const/16 v2, 0x5d

    :goto_389
    packed-switch v2, :pswitch_data_69e

    .line 2261
    :goto_38c
    sub-int v2, v7, v5

    .line 2262
    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    iput-wide v14, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D
    :try_end_396
    .catch Ljava/lang/Exception; {:try_start_363 .. :try_end_396} :catch_270

    goto/16 :goto_14f

    .line 1527
    :pswitch_398
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3a4

    .line 2246
    :cond_3a4
    :try_start_3a4
    const-string v2, "VisibilityInfo"

    const/4 v8, 0x0

    const-string v14, "Ad is clipped"

    invoke-static {v2, v8, v14}, Lcom/moat/analytics/mobile/iro/b;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3ac
    .catch Ljava/lang/Exception; {:try_start_3a4 .. :try_end_3ac} :catch_270

    goto :goto_343

    .line 1527
    :pswitch_3ad
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3b9

    .line 2259
    :cond_3b9
    int-to-double v14, v5

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    :try_start_3bf
    iput-wide v14, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˎ:D

    goto :goto_38c

    .line 6487
    :cond_3c2
    const/16 v2, 0x10

    :goto_3c4
    packed-switch v2, :pswitch_data_6a4

    .line 135
    iget-wide v14, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    iget-wide v0, v2, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D

    move-wide/from16 v16, v0

    cmpl-double v2, v14, v16

    if-nez v2, :cond_572

    .line 6487
    const/4 v2, 0x1

    :goto_3d6
    packed-switch v2, :pswitch_data_6aa

    .line 135
    :pswitch_3d9
    iget-object v2, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˊ:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    iget-object v5, v5, Lcom/moat/analytics/mobile/iro/y$a;->ˊ:Landroid/graphics/Rect;

    .line 137
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_575

    .line 6487
    const/16 v2, 0x18

    :goto_3e9
    packed-switch v2, :pswitch_data_6b0

    .line 137
    iget-wide v14, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˎ:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    iget-wide v0, v2, Lcom/moat/analytics/mobile/iro/y$a;->ˎ:D

    move-wide/from16 v16, v0

    cmpl-double v2, v14, v16

    if-eqz v2, :cond_175

    goto/16 :goto_159

    .line 144
    :pswitch_3fc
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ॱ:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1ba

    goto/16 :goto_1a4

    .line 149
    :pswitch_408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ˋ:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1da

    goto/16 :goto_1c4

    .line 154
    :cond_414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ʼ:Ljava/util/HashMap;

    invoke-interface {v10, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_582

    .line 6487
    const/4 v2, 0x1

    :goto_41f
    packed-switch v2, :pswitch_data_6b6

    move v2, v4

    goto/16 :goto_1e9

    .line 161
    :cond_425
    const/4 v2, 0x1

    .line 162
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/moat/analytics/mobile/iro/y;->ʻ:Landroid/location/Location;

    goto/16 :goto_210

    .line 173
    :pswitch_42c
    const-string v7, "location"
    :try_end_42e
    .catch Ljava/lang/Exception; {:try_start_3bf .. :try_end_42e} :catch_270

    .line 6493
    if-nez v5, :cond_58e

    .line 6487
    const/16 v2, 0x42

    :goto_432
    packed-switch v2, :pswitch_data_6bc

    .line 162
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_441

    .line 6494
    :cond_441
    const/4 v2, 0x0

    move-object v4, v2

    .line 6486
    :goto_443
    if-nez v4, :cond_592

    .line 6487
    const/4 v2, 0x0

    :goto_446
    packed-switch v2, :pswitch_data_6c2

    .line 162
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_496

    .line 6487
    const/4 v2, 0x0

    .line 173
    :goto_456
    :try_start_456
    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_266

    .line 6496
    :pswitch_45b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6497
    const-string v4, "latitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6498
    const-string v4, "longitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6499
    const-string v4, "timestamp"

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6500
    const-string v4, "horizontalAccuracy"

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v2

    .line 6501
    goto :goto_443

    .line 6487
    :cond_496
    const/4 v2, 0x0

    goto :goto_456

    .line 6489
    :pswitch_498
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    goto :goto_456

    .line 1526
    :pswitch_49e
    sget-object v2, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;
    :try_end_4a6
    .catch Ljava/lang/Exception; {:try_start_456 .. :try_end_4a6} :catch_270

    .line 1527
    if-eqz v2, :cond_598

    .line 6487
    const/16 v5, 0x56

    :goto_4aa
    packed-switch v5, :pswitch_data_6c8

    goto/16 :goto_26

    .line 1527
    :pswitch_4af
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2ef

    .line 6487
    const/16 v2, 0x42

    goto/16 :goto_2f1

    .line 1527
    :pswitch_4bf
    :try_start_4bf
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isShown()Z
    :try_end_4c2
    .catch Ljava/lang/Exception; {:try_start_4bf .. :try_end_4c2} :catch_270

    move-result v2

    if-nez v2, :cond_59c

    .line 6487
    const/16 v2, 0x57

    :goto_4c7
    packed-switch v2, :pswitch_data_6ce

    goto/16 :goto_5f

    .line 1527
    :pswitch_4cc
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3c2

    .line 6487
    const/16 v2, 0x42

    goto/16 :goto_3c4

    .line 1527
    :pswitch_4dc
    :try_start_4dc
    iget-wide v14, v12, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ˊ:Lcom/moat/analytics/mobile/iro/y$a;

    iget-wide v0, v2, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D

    move-wide/from16 v16, v0
    :try_end_4e6
    .catch Ljava/lang/Exception; {:try_start_4dc .. :try_end_4e6} :catch_270

    cmpl-double v2, v14, v16

    if-nez v2, :cond_5a6

    .line 6487
    const/16 v2, 0x52

    :goto_4ec
    packed-switch v2, :pswitch_data_6d4

    goto/16 :goto_159

    .line 1527
    :pswitch_4f1
    sget v2, Lcom/moat/analytics/mobile/iro/y;->ˏॱ:I

    add-int/lit8 v2, v2, 0x63

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/iro/y;->ˊॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_414

    :try_start_4fd
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/iro/y;->ʼ:Ljava/util/HashMap;

    invoke-interface {v10, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_504
    .catch Ljava/lang/Exception; {:try_start_4fd .. :try_end_504} :catch_270

    move-result v2

    if-eqz v2, :cond_1e4

    move v2, v4

    goto/16 :goto_1e9

    .line 6487
    :cond_50a
    const/4 v2, 0x0

    goto/16 :goto_c

    :cond_50d
    const/4 v2, 0x1

    goto/16 :goto_23

    :cond_510
    const/4 v2, 0x1

    goto/16 :goto_28b

    :cond_513
    const/16 v5, 0x3b

    goto/16 :goto_2aa

    :cond_517
    const/4 v2, 0x1

    goto/16 :goto_3a

    :cond_51a
    const/16 v2, 0x2b

    goto/16 :goto_2c4

    :cond_51e
    const/16 v2, 0x32

    goto/16 :goto_2d3

    :cond_522
    const/16 v2, 0x1a

    goto/16 :goto_41

    :cond_526
    const/16 v2, 0x26

    goto/16 :goto_4c

    :cond_52a
    const/4 v2, 0x0

    goto/16 :goto_54

    :cond_52d
    const/4 v2, 0x0

    goto/16 :goto_2e6

    :cond_530
    const/4 v2, 0x1

    goto/16 :goto_5c

    :cond_533
    const/16 v2, 0x59

    goto/16 :goto_2fc

    :cond_537
    const/16 v2, 0x25

    goto/16 :goto_65

    :cond_53b
    const/4 v2, 0x0

    goto/16 :goto_9a

    :cond_53e
    const/4 v2, 0x0

    goto/16 :goto_aa

    :cond_541
    const/4 v2, 0x0

    goto/16 :goto_ba

    :cond_544
    const/4 v2, 0x1

    goto/16 :goto_dc

    :cond_547
    const/16 v2, 0x37

    goto/16 :goto_f6

    :cond_54b
    const/16 v2, 0x5a

    goto/16 :goto_32f

    :cond_54f
    const/4 v2, 0x1

    goto/16 :goto_112

    :cond_552
    const/16 v2, 0x5b

    goto/16 :goto_119

    :cond_556
    const/4 v2, 0x1

    goto/16 :goto_12b

    :cond_559
    const/4 v2, 0x0

    goto/16 :goto_14c

    :cond_55c
    const/4 v2, 0x1

    goto/16 :goto_340

    :cond_55f
    const/16 v2, 0x54

    goto/16 :goto_352

    :cond_563
    const/16 v2, 0x5c

    goto/16 :goto_36f

    :cond_567
    const/16 v2, 0x12

    goto/16 :goto_37c

    :cond_56b
    const/16 v2, 0x1a

    goto/16 :goto_389

    :cond_56f
    const/4 v2, 0x1

    goto/16 :goto_156

    :cond_572
    const/4 v2, 0x0

    goto/16 :goto_3d6

    :cond_575
    const/16 v2, 0x2a

    goto/16 :goto_3e9

    :cond_579
    const/4 v2, 0x0

    goto/16 :goto_187

    :cond_57c
    const/4 v2, 0x1

    goto/16 :goto_1c1

    :cond_57f
    const/4 v2, 0x1

    goto/16 :goto_1e1

    :cond_582
    const/4 v2, 0x0

    goto/16 :goto_41f

    :cond_585
    const/4 v4, 0x0

    goto/16 :goto_1fc

    :cond_588
    const/4 v2, 0x1

    goto/16 :goto_213

    :cond_58b
    const/4 v2, 0x0

    goto/16 :goto_263

    :cond_58e
    const/16 v2, 0x58

    goto/16 :goto_432

    :cond_592
    const/4 v2, 0x1

    goto/16 :goto_446

    :cond_595
    const/4 v2, 0x0

    goto/16 :goto_29b

    :cond_598
    const/16 v5, 0x5b

    goto/16 :goto_4aa

    :cond_59c
    const/16 v2, 0x34

    goto/16 :goto_4c7

    :cond_5a0
    const/4 v2, 0x0

    goto/16 :goto_106

    :cond_5a3
    const/4 v2, 0x1

    goto/16 :goto_10c

    :cond_5a6
    const/4 v2, 0x3

    goto/16 :goto_4ec

    :cond_5a9
    const/16 v2, 0x59

    goto/16 :goto_197

    nop

    :pswitch_data_5ae
    .packed-switch 0x4e
        :pswitch_10
    .end packed-switch

    :pswitch_data_5b4
    .packed-switch 0x0
        :pswitch_27a
    .end packed-switch

    :pswitch_data_5ba
    .packed-switch 0x0
        :pswitch_2c0
    .end packed-switch

    :pswitch_data_5c0
    .packed-switch 0x1a
        :pswitch_2db
    .end packed-switch

    :pswitch_data_5c6
    .packed-switch 0x26
        :pswitch_2db
    .end packed-switch

    :pswitch_data_5cc
    .packed-switch 0x1
        :pswitch_2df
    .end packed-switch

    :pswitch_data_5d2
    .packed-switch 0x0
        :pswitch_4af
    .end packed-switch

    :pswitch_data_5d8
    .packed-switch 0x25
        :pswitch_303
    .end packed-switch

    :pswitch_data_5de
    .packed-switch 0x1
        :pswitch_30a
    .end packed-switch

    :pswitch_data_5e4
    .packed-switch 0x1
        :pswitch_319
    .end packed-switch

    :pswitch_data_5ea
    .packed-switch 0x1
        :pswitch_31c
    .end packed-switch

    :pswitch_data_5f0
    .packed-switch 0x1
        :pswitch_31f
    .end packed-switch

    :pswitch_data_5f6
    .packed-switch 0x37
        :pswitch_14f
    .end packed-switch

    :pswitch_data_5fc
    .packed-switch 0x0
        :pswitch_32b
    .end packed-switch

    :pswitch_data_602
    .packed-switch 0x1
        :pswitch_14f
    .end packed-switch

    :pswitch_data_608
    .packed-switch 0x1
        :pswitch_14f
    .end packed-switch

    :pswitch_data_60e
    .packed-switch 0x5b
        :pswitch_14f
    .end packed-switch

    :pswitch_data_614
    .packed-switch 0x1
        :pswitch_14f
    .end packed-switch

    :pswitch_data_61a
    .packed-switch 0x1
        :pswitch_334
    .end packed-switch

    :pswitch_data_620
    .packed-switch 0x0
        :pswitch_4cc
    .end packed-switch

    :pswitch_data_626
    .packed-switch 0x0
        :pswitch_1a4
    .end packed-switch

    :pswitch_data_62c
    .packed-switch 0x59
        :pswitch_3fc
    .end packed-switch

    :pswitch_data_632
    .packed-switch 0x0
        :pswitch_408
    .end packed-switch

    :pswitch_data_638
    .packed-switch 0x0
        :pswitch_4f1
    .end packed-switch

    :pswitch_data_63e
    .packed-switch 0x0
        :pswitch_210
    .end packed-switch

    :pswitch_data_644
    .packed-switch 0x0
        :pswitch_218
    .end packed-switch

    :pswitch_data_64a
    .packed-switch 0x1
        :pswitch_42c
    .end packed-switch

    :pswitch_data_650
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch

    :pswitch_data_656
    .packed-switch 0x1
        :pswitch_49e
    .end packed-switch

    :pswitch_data_65c
    .packed-switch 0x3b
        :pswitch_26
    .end packed-switch

    :pswitch_data_662
    .packed-switch 0xc
        :pswitch_2cb
    .end packed-switch

    :pswitch_data_668
    .packed-switch 0x21
        :pswitch_2d7
    .end packed-switch

    :pswitch_data_66e
    .packed-switch 0x1
        :pswitch_2eb
    .end packed-switch

    :pswitch_data_674
    .packed-switch 0x42
        :pswitch_4bf
    .end packed-switch

    :pswitch_data_67a
    .packed-switch 0x45
        :pswitch_5f
    .end packed-switch

    :pswitch_data_680
    .packed-switch 0x5a
        :pswitch_14f
    .end packed-switch

    :pswitch_data_686
    .packed-switch 0x0
        :pswitch_398
    .end packed-switch

    :pswitch_data_68c
    .packed-switch 0x29
        :pswitch_357
    .end packed-switch

    :pswitch_data_692
    .packed-switch 0x5c
        :pswitch_378
    .end packed-switch

    :pswitch_data_698
    .packed-switch 0x15
        :pswitch_381
    .end packed-switch

    :pswitch_data_69e
    .packed-switch 0x5d
        :pswitch_3ad
    .end packed-switch

    :pswitch_data_6a4
    .packed-switch 0x42
        :pswitch_4dc
    .end packed-switch

    :pswitch_data_6aa
    .packed-switch 0x0
        :pswitch_159
    .end packed-switch

    :pswitch_data_6b0
    .packed-switch 0x2a
        :pswitch_159
    .end packed-switch

    :pswitch_data_6b6
    .packed-switch 0x1
        :pswitch_1e4
    .end packed-switch

    :pswitch_data_6bc
    .packed-switch 0x58
        :pswitch_45b
    .end packed-switch

    :pswitch_data_6c2
    .packed-switch 0x1
        :pswitch_498
    .end packed-switch

    :pswitch_data_6c8
    .packed-switch 0x56
        :pswitch_2ad
    .end packed-switch

    :pswitch_data_6ce
    .packed-switch 0x34
        :pswitch_2ff
    .end packed-switch

    :pswitch_data_6d4
    .packed-switch 0x52
        :pswitch_3d9
    .end packed-switch
.end method

###### Class com.moat.analytics.mobile.iro.y.AnonymousClass2 (com.moat.analytics.mobile.iro.y$2)
.class final Lcom/moat/analytics/mobile/iro/y$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/iro/y;->ˊ(Landroid/graphics/Rect;Ljava/util/HashSet;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/graphics/Rect;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 421
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    .line 1424
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 421
    return v0
.end method

###### Class com.moat.analytics.mobile.iro.y.a (com.moat.analytics.mobile.iro.y$a)
.class final Lcom/moat/analytics/mobile/iro/y$a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field ˊ:Landroid/graphics/Rect;

.field ˋ:D

.field ˎ:D


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/iro/y$a;->ˊ:Landroid/graphics/Rect;

    .line 72
    iput-wide v2, p0, Lcom/moat/analytics/mobile/iro/y$a;->ˋ:D

    .line 73
    iput-wide v2, p0, Lcom/moat/analytics/mobile/iro/y$a;->ˎ:D

    .line 74
    return-void
.end method

###### Class com.moat.analytics.mobile.iro.y.b (com.moat.analytics.mobile.iro.y$b)
.class final Lcom/moat/analytics/mobile/iro/y$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final ˊ:Landroid/view/View;

.field final ˋ:Z

.field final ॱ:I


# direct methods
.method constructor <init>(Landroid/view/View;IZ)V
    .registers 4

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/y$b;->ˊ:Landroid/view/View;

    .line 88
    iput p2, p0, Lcom/moat/analytics/mobile/iro/y$b;->ॱ:I

    .line 89
    iput-boolean p3, p0, Lcom/moat/analytics/mobile/iro/y$b;->ˋ:Z

    .line 90
    return-void
.end method
