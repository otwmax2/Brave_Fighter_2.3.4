###### Class com.moat.analytics.mobile.cha.u (com.moat.analytics.mobile.cha.u)
.class final Lcom/moat/analytics/mobile/cha/u;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/cha/u$b;,
        Lcom/moat/analytics/mobile/cha/u$a;,
        Lcom/moat/analytics/mobile/cha/u$c;
    }
.end annotation


# static fields
.field private static ʼ:I

.field private static ˋॱ:I


# instance fields
.field private ʻ:Landroid/location/Location;

.field private ʽ:Lorg/json/JSONObject;

.field private ˊ:Landroid/graphics/Rect;

.field private ˊॱ:Lorg/json/JSONObject;

.field private ˋ:Lorg/json/JSONObject;

.field private ˎ:Landroid/graphics/Rect;

.field private ˏ:Lcom/moat/analytics/mobile/cha/u$c;

.field ॱ:Ljava/lang/String;

.field private ᐝ:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    const/4 v0, 0x1

    sput v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    .line 105
    const-string v0, "{}"

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;

    .line 109
    new-instance v0, Lcom/moat/analytics/mobile/cha/u$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/u$c;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    return-void
.end method

.method private static ˊ(Landroid/view/View;)F
    .registers 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    move v3, v0

    .line 209
    :goto_7
    if-eqz p0, :cond_47

    .line 218
    const/16 v0, 0x19

    :goto_b
    packed-switch v0, :pswitch_data_52

    :goto_e
    return v3

    .line 209
    :pswitch_f
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4a

    move v0, v1

    .line 218
    :goto_16
    packed-switch v0, :pswitch_data_58

    goto :goto_e

    .line 210
    :pswitch_1a
    float-to-double v4, v3

    const-wide/16 v6, 0x0

    cmpl-double v0, v4, v6

    if-eqz v0, :cond_4c

    move v0, v1

    .line 218
    :goto_22
    packed-switch v0, :pswitch_data_5e

    goto :goto_e

    .line 211
    :pswitch_26
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_4e

    .line 218
    const/16 v0, 0x1b

    :goto_30
    packed-switch v0, :pswitch_data_64

    goto :goto_e

    .line 212
    :pswitch_34
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    mul-float/2addr v3, v0

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object p0, v0

    goto :goto_7

    .line 218
    :cond_47
    const/16 v0, 0x45

    goto :goto_b

    :cond_4a
    move v0, v2

    goto :goto_16

    :cond_4c
    move v0, v2

    goto :goto_22

    :cond_4e
    const/16 v0, 0x5d

    goto :goto_30

    nop

    :pswitch_data_52
    .packed-switch 0x19
        :pswitch_f
    .end packed-switch

    :pswitch_data_58
    .packed-switch 0x1
        :pswitch_1a
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_26
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x1b
        :pswitch_34
    .end packed-switch
.end method

.method private static ˋ(Landroid/graphics/Rect;Ljava/util/HashSet;)I
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
    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 464
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_54

    .line 465
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 466
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 468
    new-instance v0, Lcom/moat/analytics/mobile/cha/u$1;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/cha/u$1;-><init>()V

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 475
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 476
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    move v0, v5

    .line 478
    :goto_28
    packed-switch v0, :pswitch_data_12e

    .line 498
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_128

    move v0, v5

    .line 478
    :goto_38
    packed-switch v0, :pswitch_data_134

    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 477
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_54
    move v3, v2

    .line 498
    :pswitch_55
    return v3

    .line 480
    :pswitch_56
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    move v1, v2

    move v3, v2

    .line 481
    :goto_5b
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_119

    .line 478
    const/16 v0, 0x26

    :goto_65
    packed-switch v0, :pswitch_data_13a

    .line 482
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11d

    move v0, v2

    .line 478
    :goto_7b
    packed-switch v0, :pswitch_data_140

    .line 481
    :cond_7e
    :goto_7e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5b

    .line 483
    :pswitch_82
    new-instance v9, Landroid/graphics/Rect;

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v6, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v1, 0x1

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v10, p0, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v9, v4, v6, v0, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 484
    iget v0, p0, Landroid/graphics/Rect;->top:I

    .line 485
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v4, v3

    move v3, v0

    :goto_a9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_120

    .line 478
    const/16 v0, 0x19

    :goto_b1
    packed-switch v0, :pswitch_data_146

    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x17

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c0

    .line 485
    :cond_c0
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 486
    invoke-static {v0, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_123

    move v6, v5

    .line 478
    :goto_cd
    packed-switch v6, :pswitch_data_14c

    move v0, v3

    move v3, v4

    :goto_d2
    move v4, v3

    move v3, v0

    .line 491
    goto :goto_a9

    .line 487
    :pswitch_d5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_125

    .line 478
    const/16 v6, 0x10

    :goto_db
    packed-switch v6, :pswitch_data_152

    move v13, v3

    move v3, v4

    move v4, v13

    .line 491
    :goto_e1
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v6, :cond_7e

    move v0, v4

    goto :goto_d2

    .line 488
    :pswitch_e9
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    sub-int v3, v11, v3

    mul-int/2addr v3, v6

    add-int/2addr v3, v4

    .line 489
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_e1

    .line 498
    :pswitch_fc
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 477
    iget v3, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_21

    :cond_116
    move v0, v2

    goto/16 :goto_28

    :cond_119
    const/16 v0, 0x55

    goto/16 :goto_65

    :cond_11d
    move v0, v5

    goto/16 :goto_7b

    :cond_120
    const/16 v0, 0x9

    goto :goto_b1

    :cond_123
    move v6, v2

    goto :goto_cd

    :cond_125
    const/16 v6, 0x41

    goto :goto_db

    :cond_128
    move v0, v2

    goto/16 :goto_38

    :pswitch_12b
    move v3, v4

    goto/16 :goto_7e

    :pswitch_data_12e
    .packed-switch 0x0
        :pswitch_56
    .end packed-switch

    :pswitch_data_134
    .packed-switch 0x1
        :pswitch_fc
    .end packed-switch

    :pswitch_data_13a
    .packed-switch 0x55
        :pswitch_55
    .end packed-switch

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_82
    .end packed-switch

    :pswitch_data_146
    .packed-switch 0x9
        :pswitch_12b
    .end packed-switch

    :pswitch_data_14c
    .packed-switch 0x1
        :pswitch_d5
    .end packed-switch

    :pswitch_data_152
    .packed-switch 0x10
        :pswitch_e9
    .end packed-switch
.end method

.method private static ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;
    .registers 7

    .prologue
    .line 520
    iget v1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 521
    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_33

    .line 528
    const/4 v0, 0x0

    :goto_8
    packed-switch v0, :pswitch_data_36

    :goto_b
    return-object p0

    .line 524
    :pswitch_c
    iget v0, p0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 525
    iget v2, p0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 526
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 527
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float v1, v4, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 528
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

.method static ˋ(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 228
    if-eqz p0, :cond_2a

    const/16 v0, 0x2b

    :goto_5
    packed-switch v0, :pswitch_data_2e

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x1

    :goto_f
    packed-switch v0, :pswitch_data_34

    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_d

    :pswitch_17
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_e

    move v0, v1

    goto :goto_f

    :pswitch_25
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_d

    :cond_2a
    const/16 v0, 0x3e

    goto :goto_5

    nop

    :pswitch_data_2e
    .packed-switch 0x2b
        :pswitch_17
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_25
    .end packed-switch
.end method

.method private static ˋ(Landroid/graphics/Rect;Landroid/view/View;)Lcom/moat/analytics/mobile/cha/u$b;
    .registers 14
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 396
    new-instance v3, Lcom/moat/analytics/mobile/cha/u$b;

    invoke-direct {v3}, Lcom/moat/analytics/mobile/cha/u$b;-><init>()V

    .line 8280
    :try_start_5
    new-instance v8, Ljava/util/ArrayDeque;

    invoke-direct {v8}, Ljava/util/ArrayDeque;-><init>()V

    .line 8282
    const/4 v0, 0x0

    move-object v1, p1

    move v2, v0

    .line 8283
    :goto_d
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_174

    move-result-object v0

    if-nez v0, :cond_1d1

    .line 8306
    const/16 v0, 0x5f

    :goto_15
    packed-switch v0, :pswitch_data_228

    .line 8284
    :goto_18
    :pswitch_18
    add-int/lit8 v2, v2, 0x1

    const/16 v0, 0x32

    if-le v2, v0, :cond_1d8

    .line 8306
    const/16 v0, 0x35

    :goto_20
    packed-switch v0, :pswitch_data_22e

    .line 450
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2f

    .line 8285
    :cond_2f
    const/4 v0, 0x3

    :try_start_30
    const-string v1, "VisibilityInfo"

    const/4 v2, 0x0

    const-string v4, "Short-circuiting chain retrieval, reached max"

    invoke-static {v0, v1, v2, v4}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    :goto_38
    :pswitch_38
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_3b} :catch_174

    move-result v0

    if-eqz v0, :cond_1e0

    .line 8306
    const/16 v0, 0x49

    :goto_40
    packed-switch v0, :pswitch_data_234

    .line 450
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_216

    .line 8306
    const/4 v0, 0x0

    :goto_50
    packed-switch v0, :pswitch_data_23a

    move-object v0, v3

    .line 450
    :goto_54
    return-object v0

    .line 8283
    :pswitch_55
    :try_start_55
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-ne v1, v0, :cond_1d5

    .line 8306
    const/4 v0, 0x1

    :goto_5c
    packed-switch v0, :pswitch_data_240

    goto :goto_18

    .line 8288
    :pswitch_60
    invoke-virtual {v8, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 8289
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1dc

    .line 8306
    const/16 v0, 0x1d

    :goto_6d
    packed-switch v0, :pswitch_data_246

    .line 8290
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    goto :goto_d

    .line 404
    :pswitch_78
    const-string v0, "VisibilityInfo"

    const-string v1, "starting covering rect search"

    invoke-static {v0, p1, v1}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 407
    const/4 v0, 0x0

    move-object v5, v0

    .line 411
    :goto_81
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e4

    .line 8306
    const/4 v0, 0x0

    :goto_88
    packed-switch v0, :pswitch_data_24c

    .line 412
    invoke-virtual {v8}, Ljava/util/ArrayDeque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 415
    new-instance v6, Lcom/moat/analytics/mobile/cha/u$a;

    invoke-direct {v6, v0, v5}, Lcom/moat/analytics/mobile/cha/u$a;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V

    .line 418
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1e7

    .line 8306
    const/4 v1, 0x0

    :goto_9d
    packed-switch v1, :pswitch_data_252

    move-object v5, v6

    goto :goto_81

    .line 421
    :pswitch_a2
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1ea

    .line 8306
    const/16 v1, 0x12

    :goto_ac
    packed-switch v1, :pswitch_data_258

    .line 423
    :goto_af
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 424
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    .line 425
    const/4 v4, 0x0

    .line 426
    const/4 v2, 0x0

    move v7, v2

    move v2, v4

    :goto_bd
    if-ge v7, v9, :cond_1ee

    .line 8306
    const/4 v4, 0x1

    :goto_c0
    packed-switch v4, :pswitch_data_25e

    :pswitch_c3
    move-object v5, v6

    .line 426
    goto :goto_81

    .line 427
    :pswitch_c5
    iget v4, v3, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    const/16 v10, 0x1f4

    if-lt v4, v10, :cond_1f1

    .line 8306
    const/4 v4, 0x0

    :goto_cc
    packed-switch v4, :pswitch_data_264

    .line 428
    :pswitch_cf
    const/4 v0, 0x3

    const-string v1, "VisibilityInfo"

    const/4 v2, 0x0

    const-string v4, "Short-circuiting cover retrieval, reached max"

    invoke-static {v0, v1, v2, v4}, Lcom/moat/analytics/mobile/cha/a;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d8
    :pswitch_d8
    move-object v0, v3

    .line 450
    goto/16 :goto_54

    .line 8306
    :cond_db
    const/4 v4, 0x0

    :goto_dc
    packed-switch v4, :pswitch_data_26a

    .line 431
    :pswitch_df
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 432
    if-ne v10, v0, :cond_1f4

    .line 8306
    const/4 v4, 0x1

    :goto_e6
    packed-switch v4, :pswitch_data_270

    .line 436
    iget v4, v3, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    .line 8301
    if-eqz v2, :cond_1f7

    .line 8306
    const/4 v4, 0x0

    :goto_f2
    packed-switch v4, :pswitch_data_276

    .line 8305
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_f7} :catch_174

    const/16 v11, 0x15

    if-lt v4, v11, :cond_202

    .line 8306
    const/16 v4, 0x4d

    :goto_fd
    packed-switch v4, :pswitch_data_27c

    .line 427
    sget v4, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v4, v4, 0x73

    rem-int/lit16 v11, v4, 0x80

    sput v11, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_220

    .line 8306
    const/16 v4, 0x24

    :goto_10e
    packed-switch v4, :pswitch_data_282

    :try_start_111
    invoke-virtual {v10}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v11

    cmpl-float v4, v4, v11

    if-lez v4, :cond_224

    const/4 v4, 0x0

    :goto_11e
    packed-switch v4, :pswitch_data_288

    :goto_121
    :pswitch_121
    const/4 v4, 0x0

    :goto_122
    if-eqz v4, :cond_209

    const/16 v4, 0x10

    :goto_126
    packed-switch v4, :pswitch_data_28e

    .line 439
    new-instance v4, Lcom/moat/analytics/mobile/cha/u$a;

    invoke-direct {v4, v10, v5}, Lcom/moat/analytics/mobile/cha/u$a;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V

    invoke-static {v4, p0, v3}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Lcom/moat/analytics/mobile/cha/u$a;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/cha/u$b;)V

    .line 440
    iget-boolean v4, v3, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    if-eqz v4, :cond_20d

    .line 8306
    const/4 v4, 0x0

    :goto_136
    packed-switch v4, :pswitch_data_294

    .line 426
    :goto_139
    :pswitch_139
    add-int/lit8 v4, v7, 0x1

    move v7, v4

    goto :goto_bd

    .line 433
    :pswitch_13d
    const/4 v2, 0x1

    goto :goto_139

    .line 8302
    :pswitch_13f
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x15

    if-lt v4, v11, :cond_1fb

    .line 8306
    const/4 v4, 0x0

    :goto_146
    packed-switch v4, :pswitch_data_29a

    .line 8303
    invoke-virtual {v10}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v11

    cmpl-float v4, v4, v11

    if-ltz v4, :cond_1fe

    .line 8306
    const/16 v4, 0x35

    :goto_157
    packed-switch v4, :pswitch_data_2a0

    .line 8303
    const/4 v4, 0x0

    goto :goto_122

    :pswitch_15c
    const/4 v4, 0x1

    goto :goto_122

    .line 8306
    :pswitch_15e
    invoke-virtual {v10}, Landroid/view/View;->getZ()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getZ()F
    :try_end_165
    .catch Ljava/lang/Exception; {:try_start_111 .. :try_end_165} :catch_174

    move-result v11

    cmpl-float v4, v4, v11

    if-lez v4, :cond_206

    const/4 v4, 0x0

    :goto_16b
    packed-switch v4, :pswitch_data_2a6

    goto :goto_121

    :pswitch_16f
    const/4 v4, 0x1

    goto :goto_122

    :pswitch_171
    move-object v0, v3

    .line 441
    goto/16 :goto_54

    .line 448
    :catch_174
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    goto/16 :goto_d8

    .line 450
    :pswitch_17a
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_210

    .line 8306
    const/4 v0, 0x0

    :goto_187
    packed-switch v0, :pswitch_data_2ac

    .line 450
    :try_start_18a
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_174

    move-result-object v0

    if-ne v1, v0, :cond_213

    .line 8306
    const/4 v0, 0x1

    :goto_191
    packed-switch v0, :pswitch_data_2b2

    goto/16 :goto_38

    :pswitch_196
    move-object v0, v3

    .line 401
    goto/16 :goto_54

    :pswitch_199
    sget v1, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_219

    .line 8306
    const/4 v1, 0x0

    :goto_1a6
    packed-switch v1, :pswitch_data_2b8

    .line 421
    :try_start_1a9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_1a9 .. :try_end_1af} :catch_174

    if-eqz v1, :cond_21b

    .line 8306
    const/16 v1, 0x5a

    :goto_1b3
    packed-switch v1, :pswitch_data_2be

    goto/16 :goto_af

    .line 421
    :pswitch_1b8
    sget v4, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v4, v4, 0x19

    rem-int/lit16 v10, v4, 0x80

    sput v10, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_21e

    .line 8306
    const/4 v4, 0x0

    :goto_1c5
    packed-switch v4, :pswitch_data_2c4

    .line 427
    :try_start_1c8
    iget v4, v3, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I
    :try_end_1ca
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1ca} :catch_174

    const/16 v10, 0x1f4

    if-lt v4, v10, :cond_db

    .line 8306
    const/4 v4, 0x1

    goto/16 :goto_dc

    :cond_1d1
    const/16 v0, 0x49

    goto/16 :goto_15

    :cond_1d5
    const/4 v0, 0x0

    goto/16 :goto_5c

    :cond_1d8
    const/16 v0, 0x5c

    goto/16 :goto_20

    :cond_1dc
    const/16 v0, 0x31

    goto/16 :goto_6d

    :cond_1e0
    const/16 v0, 0x40

    goto/16 :goto_40

    :cond_1e4
    const/4 v0, 0x1

    goto/16 :goto_88

    :cond_1e7
    const/4 v1, 0x1

    goto/16 :goto_9d

    :cond_1ea
    const/16 v1, 0x53

    goto/16 :goto_ac

    :cond_1ee
    const/4 v4, 0x0

    goto/16 :goto_c0

    :cond_1f1
    const/4 v4, 0x1

    goto/16 :goto_cc

    :cond_1f4
    const/4 v4, 0x0

    goto/16 :goto_e6

    :cond_1f7
    const/16 v4, 0x31

    goto/16 :goto_f2

    :cond_1fb
    const/4 v4, 0x1

    goto/16 :goto_146

    :cond_1fe
    const/16 v4, 0x5e

    goto/16 :goto_157

    :cond_202
    const/16 v4, 0x13

    goto/16 :goto_fd

    :cond_206
    const/4 v4, 0x1

    goto/16 :goto_16b

    :cond_209
    const/16 v4, 0x12

    goto/16 :goto_126

    :cond_20d
    const/4 v4, 0x1

    goto/16 :goto_136

    :cond_210
    const/4 v0, 0x1

    goto/16 :goto_187

    :cond_213
    const/4 v0, 0x0

    goto/16 :goto_191

    :cond_216
    const/4 v0, 0x1

    goto/16 :goto_50

    :cond_219
    const/4 v1, 0x1

    goto :goto_1a6

    :cond_21b
    const/16 v1, 0x47

    goto :goto_1b3

    :cond_21e
    const/4 v4, 0x1

    goto :goto_1c5

    :cond_220
    const/16 v4, 0x48

    goto/16 :goto_10e

    :cond_224
    const/4 v4, 0x1

    goto/16 :goto_11e

    nop

    :pswitch_data_228
    .packed-switch 0x5f
        :pswitch_17a
    .end packed-switch

    :pswitch_data_22e
    .packed-switch 0x5c
        :pswitch_60
    .end packed-switch

    :pswitch_data_234
    .packed-switch 0x40
        :pswitch_78
    .end packed-switch

    :pswitch_data_23a
    .packed-switch 0x0
        :pswitch_196
    .end packed-switch

    :pswitch_data_240
    .packed-switch 0x0
        :pswitch_38
    .end packed-switch

    :pswitch_data_246
    .packed-switch 0x31
        :pswitch_38
    .end packed-switch

    :pswitch_data_24c
    .packed-switch 0x1
        :pswitch_d8
    .end packed-switch

    :pswitch_data_252
    .packed-switch 0x0
        :pswitch_199
    .end packed-switch

    :pswitch_data_258
    .packed-switch 0x53
        :pswitch_c3
    .end packed-switch

    :pswitch_data_25e
    .packed-switch 0x1
        :pswitch_1b8
    .end packed-switch

    :pswitch_data_264
    .packed-switch 0x1
        :pswitch_df
    .end packed-switch

    :pswitch_data_26a
    .packed-switch 0x1
        :pswitch_cf
    .end packed-switch

    :pswitch_data_270
    .packed-switch 0x1
        :pswitch_13d
    .end packed-switch

    :pswitch_data_276
    .packed-switch 0x0
        :pswitch_13f
    .end packed-switch

    :pswitch_data_27c
    .packed-switch 0x13
        :pswitch_121
    .end packed-switch

    :pswitch_data_282
    .packed-switch 0x48
        :pswitch_15e
    .end packed-switch

    :pswitch_data_288
    .packed-switch 0x0
        :pswitch_16f
    .end packed-switch

    :pswitch_data_28e
    .packed-switch 0x12
        :pswitch_139
    .end packed-switch

    :pswitch_data_294
    .packed-switch 0x0
        :pswitch_171
    .end packed-switch

    :pswitch_data_29a
    .packed-switch 0x1
        :pswitch_15c
    .end packed-switch

    :pswitch_data_2a0
    .packed-switch 0x35
        :pswitch_15c
    .end packed-switch

    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_16f
    .end packed-switch

    :pswitch_data_2ac
    .packed-switch 0x1
        :pswitch_55
    .end packed-switch

    :pswitch_data_2b2
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch

    :pswitch_data_2b8
    .packed-switch 0x1
        :pswitch_a2
    .end packed-switch

    :pswitch_data_2be
    .packed-switch 0x47
        :pswitch_c3
    .end packed-switch

    :pswitch_data_2c4
    .packed-switch 0x1
        :pswitch_c5
    .end packed-switch
.end method

.method private static ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 7

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 560
    invoke-virtual {p0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 570
    const/16 v2, 0x5a

    :goto_b
    packed-switch v2, :pswitch_data_32

    move v0, v1

    :goto_f
    return v0

    .line 561
    :pswitch_10
    new-array v2, v3, [I

    fill-array-data v2, :array_38

    .line 562
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 563
    new-array v3, v3, [I

    fill-array-data v3, :array_40

    .line 564
    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 565
    aget v4, v3, v1

    aget v1, v2, v1

    sub-int v1, v4, v1

    .line 566
    aget v3, v3, v0

    aget v2, v2, v0

    sub-int v2, v3, v2

    .line 567
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_f

    :cond_30
    move v2, v0

    .line 570
    goto :goto_b

    :pswitch_data_32
    .packed-switch 0x5a
        :pswitch_10
    .end packed-switch

    .line 561
    :array_38
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data

    .line 563
    :array_40
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method static synthetic ˎ(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 38
    invoke-static {p0}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;
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
    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 509
    const-string v1, "x"

    iget v2, p0, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const-string v1, "y"

    iget v2, p0, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    const-string v1, "w"

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v1, "h"

    iget v2, p0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-object v0
.end method

.method private static ˏ(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 6

    .prologue
    .line 574
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_20

    .line 575
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 576
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 577
    const/4 v2, 0x1

    aget v0, v0, v2

    .line 578
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v2, v1, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 574
    nop

    :array_20
    .array-data 4
        -0x80000000
        -0x80000000
    .end array-data
.end method

.method private static ˏ(Lcom/moat/analytics/mobile/cha/u$a;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/cha/u$b;)V
    .registers 13

    .prologue
    const/16 v5, 0x5a

    const/16 v4, 0x30

    const/16 v1, 0x13

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    iget-object v6, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7266
    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_191

    move v0, v1

    .line 7314
    :goto_11
    packed-switch v0, :pswitch_data_1c2

    .line 7266
    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v0

    float-to-double v6, v0

    const-wide/16 v8, 0x0

    cmpl-double v0, v6, v8

    if-lez v0, :cond_195

    move v0, v3

    .line 7314
    :goto_20
    packed-switch v0, :pswitch_data_1c8

    :pswitch_23
    move v0, v3

    .line 7266
    :goto_24
    if-nez v0, :cond_35

    .line 7348
    :cond_26
    :goto_26
    :pswitch_26
    return-void

    :pswitch_27
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_33

    :cond_33
    move v0, v2

    .line 7266
    goto :goto_24

    .line 358
    :cond_35
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_198

    move v0, v3

    .line 7314
    :goto_3c
    packed-switch v0, :pswitch_data_1ce

    move v1, v2

    .line 380
    :pswitch_40
    if-eqz v1, :cond_1ae

    .line 7314
    const/16 v0, 0x34

    :goto_44
    packed-switch v0, :pswitch_data_1d4

    goto :goto_26

    .line 7322
    :pswitch_48
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    .line 7323
    invoke-virtual {v0, p1, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_51

    move v4, v5

    .line 7314
    :cond_51
    packed-switch v4, :pswitch_data_1da

    .line 7326
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v1, v4, :cond_1b2

    move v1, v3

    .line 7314
    :goto_5b
    packed-switch v1, :pswitch_data_1e0

    .line 7338
    :cond_5e
    invoke-static {}, Lcom/moat/analytics/mobile/cha/t;->ˏ()Lcom/moat/analytics/mobile/cha/t;

    move-result-object v1

    iget-boolean v1, v1, Lcom/moat/analytics/mobile/cha/t;->ˋ:Z

    if-eqz v1, :cond_1b7

    move v1, v2

    .line 7314
    :goto_67
    packed-switch v1, :pswitch_data_1e6

    .line 7339
    const-string v1, "VisibilityInfo"

    iget-object v4, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "Covered by %s-%s alpha=%f"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7341
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    .line 7342
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    const/4 v3, 0x2

    iget-object v8, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7343
    invoke-virtual {v8}, Landroid/view/View;->getAlpha()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    .line 7340
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 7339
    invoke-static {v1, v4, v3}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 7346
    :pswitch_9b
    iget-object v1, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˋ:Ljava/util/HashSet;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7347
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1ba

    .line 7314
    const/16 v0, 0x5b

    :goto_a8
    packed-switch v0, :pswitch_data_1ec

    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_b7

    .line 7348
    :cond_b7
    iput-boolean v2, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    goto/16 :goto_26

    :pswitch_bb
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_c7

    .line 360
    :cond_c7
    const-class v0, Landroid/view/ViewGroup;

    iget-object v6, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 361
    iget-object v7, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 7313
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_19b

    .line 7314
    const/4 v0, 0x4

    :goto_de
    packed-switch v0, :pswitch_data_1f2

    move v1, v2

    .line 365
    :goto_e2
    if-eqz v6, :cond_1a3

    .line 7314
    const/16 v0, 0x46

    :goto_e6
    packed-switch v0, :pswitch_data_1f8

    :pswitch_e9
    move v1, v2

    .line 368
    :goto_ea
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    .line 369
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    move v7, v3

    .line 370
    :goto_f3
    if-ge v7, v8, :cond_1aa

    move v6, v5

    .line 7314
    :goto_f6
    packed-switch v6, :pswitch_data_1fe

    .line 371
    iget v6, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    const/16 v9, 0x1f4

    if-gt v6, v9, :cond_26

    .line 372
    new-instance v6, Lcom/moat/analytics/mobile/cha/u$a;

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-direct {v6, v9, p0}, Lcom/moat/analytics/mobile/cha/u$a;-><init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V

    .line 373
    invoke-static {v6, p1, p2}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Lcom/moat/analytics/mobile/cha/u$a;Landroid/graphics/Rect;Lcom/moat/analytics/mobile/cha/u$b;)V

    .line 374
    iget-boolean v6, p2, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    if-nez v6, :cond_26

    .line 370
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_f3

    :cond_117
    move v0, v3

    .line 7314
    :goto_118
    packed-switch v0, :pswitch_data_204

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_19e

    const/16 v0, 0x59

    :goto_123
    packed-switch v0, :pswitch_data_20a

    :pswitch_126
    move v1, v2

    goto :goto_e2

    :cond_128
    const/4 v0, 0x6

    :goto_129
    packed-switch v0, :pswitch_data_210

    :pswitch_12c
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-nez v0, :cond_1a0

    const/16 v0, 0x1f

    :goto_138
    packed-switch v0, :pswitch_data_216

    move v1, v3

    goto :goto_e2

    .line 365
    :pswitch_13d
    if-eqz v1, :cond_1a7

    .line 7314
    const/16 v0, 0x53

    :goto_141
    packed-switch v0, :pswitch_data_21c

    :goto_144
    move v1, v3

    .line 365
    goto :goto_ea

    .line 7327
    :pswitch_146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7328
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_1b5

    move v0, v3

    .line 7314
    :goto_154
    packed-switch v0, :pswitch_data_222

    goto/16 :goto_26

    .line 7329
    :pswitch_159
    iget-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    .line 7330
    invoke-virtual {v0, v1, v0}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_5e

    goto/16 :goto_26

    .line 7348
    :pswitch_163
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_117

    move v0, v2

    .line 7314
    goto :goto_118

    :pswitch_171
    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_128

    const/16 v0, 0x3d

    goto :goto_129

    :pswitch_17a
    sget v0, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1be

    move v0, v3

    :goto_187
    packed-switch v0, :pswitch_data_228

    if-eqz v1, :cond_1c0

    move v0, v2

    :goto_18d
    packed-switch v0, :pswitch_data_22e

    goto :goto_144

    :cond_191
    const/16 v0, 0x4a

    goto/16 :goto_11

    :cond_195
    move v0, v2

    goto/16 :goto_20

    :cond_198
    move v0, v2

    goto/16 :goto_3c

    :cond_19b
    move v0, v2

    goto/16 :goto_de

    :cond_19e
    move v0, v4

    goto :goto_123

    :cond_1a0
    const/16 v0, 0xd

    goto :goto_138

    :cond_1a3
    const/16 v0, 0x5b

    goto/16 :goto_e6

    :cond_1a7
    const/16 v0, 0x39

    goto :goto_141

    :cond_1aa
    const/16 v6, 0x63

    goto/16 :goto_f6

    :cond_1ae
    const/16 v0, 0x10

    goto/16 :goto_44

    :cond_1b2
    move v1, v2

    goto/16 :goto_5b

    :cond_1b5
    move v0, v2

    goto :goto_154

    :cond_1b7
    move v1, v3

    goto/16 :goto_67

    :cond_1ba
    const/16 v0, 0x19

    goto/16 :goto_a8

    :cond_1be
    move v0, v2

    goto :goto_187

    :cond_1c0
    move v0, v3

    goto :goto_18d

    :pswitch_data_1c2
    .packed-switch 0x4a
        :pswitch_23
    .end packed-switch

    :pswitch_data_1c8
    .packed-switch 0x0
        :pswitch_27
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x0
        :pswitch_bb
    .end packed-switch

    :pswitch_data_1d4
    .packed-switch 0x34
        :pswitch_48
    .end packed-switch

    :pswitch_data_1da
    .packed-switch 0x30
        :pswitch_26
    .end packed-switch

    :pswitch_data_1e0
    .packed-switch 0x0
        :pswitch_146
    .end packed-switch

    :pswitch_data_1e6
    .packed-switch 0x0
        :pswitch_9b
    .end packed-switch

    :pswitch_data_1ec
    .packed-switch 0x19
        :pswitch_26
    .end packed-switch

    :pswitch_data_1f2
    .packed-switch 0x4
        :pswitch_163
    .end packed-switch

    :pswitch_data_1f8
    .packed-switch 0x46
        :pswitch_17a
    .end packed-switch

    :pswitch_data_1fe
    .packed-switch 0x63
        :pswitch_40
    .end packed-switch

    :pswitch_data_204
    .packed-switch 0x1
        :pswitch_171
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x59
        :pswitch_12c
    .end packed-switch

    :pswitch_data_210
    .packed-switch 0x6
        :pswitch_126
    .end packed-switch

    :pswitch_data_216
    .packed-switch 0x1f
        :pswitch_126
    .end packed-switch

    :pswitch_data_21c
    .packed-switch 0x39
        :pswitch_e9
    .end packed-switch

    :pswitch_data_222
    .packed-switch 0x0
        :pswitch_159
    .end packed-switch

    :pswitch_data_228
    .packed-switch 0x1
        :pswitch_13d
    .end packed-switch

    :pswitch_data_22e
    .packed-switch 0x0
        :pswitch_e9
    .end packed-switch
.end method


# virtual methods
.method final ˋ(Ljava/lang/String;Landroid/view/View;)V
    .registers 21

    .prologue
    .line 113
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 114
    const-string v3, "{}"

    .line 115
    const/4 v4, 0x0

    .line 117
    if-eqz p2, :cond_4ea

    .line 2239
    const/4 v2, 0x1

    :goto_b
    packed-switch v2, :pswitch_data_594

    .line 182
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x5

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1a

    .line 1594
    :cond_1a
    :try_start_1a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1c} :catch_3c0

    const/16 v5, 0x11

    if-lt v2, v5, :cond_4ed

    .line 2239
    const/4 v2, 0x0

    :goto_21
    packed-switch v2, :pswitch_data_59a

    .line 182
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_30

    .line 1595
    :cond_30
    :try_start_30
    sget-object v2, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_32} :catch_3c0

    if-eqz v2, :cond_4f0

    .line 2239
    const/16 v2, 0x39

    :goto_36
    packed-switch v2, :pswitch_data_5a0

    .line 182
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_577

    .line 2239
    const/4 v2, 0x1

    :goto_46
    packed-switch v2, :pswitch_data_5a6

    .line 1596
    :try_start_49
    sget-object v2, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1597
    if-eqz v2, :cond_57a

    .line 2239
    const/4 v5, 0x1

    :goto_54
    packed-switch v5, :pswitch_data_5ac

    .line 1604
    :pswitch_57
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1605
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1606
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    move-object v9, v2

    .line 2188
    :goto_64
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_66} :catch_3c0

    const/16 v5, 0x13

    if-lt v2, v5, :cond_4f8

    .line 2239
    const/4 v2, 0x0

    :goto_6b
    packed-switch v2, :pswitch_data_5b2

    .line 2191
    if-eqz p2, :cond_501

    .line 2239
    const/16 v2, 0x39

    :goto_72
    packed-switch v2, :pswitch_data_5b8

    .line 2191
    :goto_75
    :pswitch_75
    const/4 v2, 0x0

    move v8, v2

    .line 2196
    :goto_77
    if-eqz p2, :cond_509

    .line 2239
    const/16 v2, 0x36

    :goto_7b
    packed-switch v2, :pswitch_data_5be

    .line 1597
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_581

    .line 2239
    const/16 v2, 0x5b

    :goto_8c
    packed-switch v2, :pswitch_data_5c4

    .line 2196
    :try_start_8f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_50d

    .line 2239
    const/16 v2, 0xe

    :goto_97
    packed-switch v2, :pswitch_data_5ca

    .line 2196
    :pswitch_9a
    const/4 v2, 0x1

    move v5, v2

    .line 2200
    :goto_9c
    if-eqz p2, :cond_511

    .line 2239
    const/16 v2, 0x52

    :goto_a0
    packed-switch v2, :pswitch_data_5d0

    .line 2200
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-nez v2, :cond_514

    .line 2239
    const/16 v2, 0x40

    :goto_ab
    packed-switch v2, :pswitch_data_5d6

    .line 2200
    :pswitch_ae
    const/4 v2, 0x1

    move v7, v2

    .line 2204
    :goto_b0
    if-nez p2, :cond_518

    .line 2239
    const/4 v2, 0x1

    :goto_b3
    packed-switch v2, :pswitch_data_5dc

    .line 2204
    invoke-static/range {p2 .. p2}, Lcom/moat/analytics/mobile/cha/u;->ˊ(Landroid/view/View;)F

    move-result v2

    move v6, v2

    .line 123
    :goto_bb
    const-string v2, "dr"

    iget v11, v9, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "dv"

    invoke-static {}, Lcom/moat/analytics/mobile/cha/r;->ॱ()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-interface {v10, v2, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "adKey"

    move-object/from16 v0, p1

    invoke-interface {v10, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v11, "isAttached"

    if-eqz v8, :cond_51b

    .line 2239
    const/16 v2, 0x17

    :goto_e0
    packed-switch v2, :pswitch_data_5e2

    .line 126
    const/4 v2, 0x0

    :goto_e4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v11, "inFocus"

    if-eqz v5, :cond_51f

    .line 2239
    const/16 v2, 0x55

    :goto_f1
    packed-switch v2, :pswitch_data_5e8

    .line 127
    const/4 v2, 0x0

    :goto_f5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v11, "isHidden"

    if-eqz v7, :cond_522

    .line 2239
    const/16 v2, 0x30

    :goto_102
    packed-switch v2, :pswitch_data_5ee

    .line 128
    const/4 v2, 0x0

    :goto_106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "opacity"

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v10, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2222
    iget v2, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2223
    iget v6, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2224
    new-instance v11, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13, v2, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2228
    if-eqz p2, :cond_526

    .line 2239
    const/16 v2, 0x58

    :goto_125
    packed-switch v2, :pswitch_data_5f4

    .line 2228
    new-instance v2, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v2, v6, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v6, v2

    .line 2232
    :goto_132
    new-instance v12, Lcom/moat/analytics/mobile/cha/u$c;

    invoke-direct {v12}, Lcom/moat/analytics/mobile/cha/u$c;-><init>()V

    .line 2554
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v13

    mul-int/2addr v13, v2

    .line 2235
    if-eqz p2, :cond_52a

    .line 2239
    const/4 v2, 0x5

    :goto_143
    packed-switch v2, :pswitch_data_5fa

    .line 134
    :goto_146
    :pswitch_146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;
    :try_end_14a
    .catch Ljava/lang/Exception; {:try_start_8f .. :try_end_14a} :catch_3c0

    if-eqz v2, :cond_54e

    .line 2239
    const/4 v2, 0x1

    :goto_14d
    packed-switch v2, :pswitch_data_600

    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3d0

    :try_start_15c
    iget-wide v14, v12, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v0, v2, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    move-wide/from16 v16, v0

    cmpl-double v2, v14, v16

    if-nez v2, :cond_18a

    .line 134
    :goto_16a
    iget-object v2, v12, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-object v5, v5, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 136
    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_555

    .line 2239
    const/4 v2, 0x1

    :goto_179
    packed-switch v2, :pswitch_data_606

    .line 136
    iget-wide v14, v12, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v0, v2, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    move-wide/from16 v16, v0

    cmpl-double v2, v14, v16

    if-eqz v2, :cond_1a6

    .line 138
    :cond_18a
    :pswitch_18a
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    .line 139
    new-instance v2, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-object v4, v4, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 4504
    invoke-static {v4, v9}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 139
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;

    .line 140
    const/4 v4, 0x1

    .line 142
    :cond_1a6
    const-string v2, "coveredPercent"

    iget-wide v12, v12, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v10, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˊॱ:Lorg/json/JSONObject;
    :try_end_1b5
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_1b5} :catch_3c0

    if-eqz v2, :cond_558

    .line 2239
    const/4 v2, 0x1

    :goto_1b8
    packed-switch v2, :pswitch_data_60c

    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1c7

    .line 143
    :cond_1c7
    :try_start_1c7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˎ:Landroid/graphics/Rect;

    invoke-virtual {v11, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e7

    .line 144
    :pswitch_1d1
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/moat/analytics/mobile/cha/u;->ˎ:Landroid/graphics/Rect;

    .line 145
    new-instance v2, Lorg/json/JSONObject;

    .line 5504
    invoke-static {v11, v9}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 145
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˊॱ:Lorg/json/JSONObject;

    .line 146
    const/4 v4, 0x1

    .line 148
    :cond_1e7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ʽ:Lorg/json/JSONObject;

    if-eqz v2, :cond_55b

    .line 2239
    const/16 v2, 0x12

    :goto_1ef
    packed-switch v2, :pswitch_data_612

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˊ:Landroid/graphics/Rect;

    invoke-virtual {v6, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_212

    .line 149
    :pswitch_1fc
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/moat/analytics/mobile/cha/u;->ˊ:Landroid/graphics/Rect;

    .line 150
    new-instance v2, Lorg/json/JSONObject;

    .line 6504
    invoke-static {v6, v9}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/util/DisplayMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v4}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/graphics/Rect;)Ljava/util/HashMap;

    move-result-object v4

    .line 150
    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ʽ:Lorg/json/JSONObject;

    .line 151
    const/4 v4, 0x1

    .line 153
    :cond_212
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;
    :try_end_216
    .catch Ljava/lang/Exception; {:try_start_1c7 .. :try_end_216} :catch_3c0

    if-eqz v2, :cond_55f

    .line 2239
    const/4 v2, 0x0

    :goto_219
    packed-switch v2, :pswitch_data_618

    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_228

    .line 153
    :cond_228
    :try_start_228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    invoke-interface {v10, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_562

    .line 2239
    const/4 v2, 0x0

    :goto_233
    packed-switch v2, :pswitch_data_61e

    .line 154
    :pswitch_236
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    .line 155
    const/4 v2, 0x1

    .line 158
    :goto_23b
    invoke-static {}, Lcom/moat/analytics/mobile/cha/n;->ˏ()Lcom/moat/analytics/mobile/cha/n;

    move-result-object v4

    invoke-virtual {v4}, Lcom/moat/analytics/mobile/cha/n;->ˊ()Landroid/location/Location;

    move-result-object v5

    .line 159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ʻ:Landroid/location/Location;

    invoke-static {v5, v4}, Lcom/moat/analytics/mobile/cha/n;->ˎ(Landroid/location/Location;Landroid/location/Location;)Z
    :try_end_24a
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_24a} :catch_3c0

    move-result v4

    if-nez v4, :cond_565

    .line 2239
    const/16 v4, 0x15

    :goto_24f
    packed-switch v4, :pswitch_data_624

    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_25e

    .line 160
    :cond_25e
    const/4 v2, 0x1

    .line 161
    :try_start_25f
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/moat/analytics/mobile/cha/u;->ʻ:Landroid/location/Location;

    .line 164
    :pswitch_263
    if-eqz v2, :cond_569

    .line 2239
    const/4 v2, 0x0

    :goto_266
    packed-switch v2, :pswitch_data_62a

    .line 182
    :goto_269
    :pswitch_269
    return-void

    .line 1596
    :pswitch_26a
    sget-object v2, Lcom/moat/analytics/mobile/cha/c;->ˏ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 1597
    if-eqz v2, :cond_4f4

    .line 2239
    const/16 v5, 0x3c

    :goto_276
    packed-switch v5, :pswitch_data_630

    .line 1598
    :pswitch_279
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1599
    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V
    :try_end_289
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_289} :catch_3c0

    move-object v9, v5

    .line 1600
    goto/16 :goto_64

    .line 1597
    :pswitch_28c
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_298

    .line 2189
    :cond_298
    if-eqz p2, :cond_4fb

    .line 2239
    const/4 v2, 0x1

    :goto_29b
    packed-switch v2, :pswitch_data_636

    .line 2189
    :try_start_29e
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->isAttachedToWindow()Z
    :try_end_2a1
    .catch Ljava/lang/Exception; {:try_start_29e .. :try_end_2a1} :catch_3c0

    move-result v2

    if-eqz v2, :cond_4fe

    .line 2239
    const/4 v2, 0x1

    :goto_2a5
    packed-switch v2, :pswitch_data_63c

    .line 2189
    :pswitch_2a8
    const/4 v2, 0x0

    move v8, v2

    goto/16 :goto_77

    .line 1597
    :pswitch_2ac
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2b8

    .line 2189
    :cond_2b8
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_77

    .line 2239
    :cond_2bc
    const/16 v2, 0x41

    :goto_2be
    packed-switch v2, :pswitch_data_642

    .line 2191
    :try_start_2c1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;
    :try_end_2c4
    .catch Ljava/lang/Exception; {:try_start_2c1 .. :try_end_2c4} :catch_3c0

    move-result-object v2

    if-eqz v2, :cond_505

    .line 2239
    const/16 v2, 0x5b

    :goto_2c9
    packed-switch v2, :pswitch_data_648

    .line 2191
    :pswitch_2cc
    const/4 v2, 0x1

    move v8, v2

    goto/16 :goto_77

    .line 2239
    :cond_2d0
    const/4 v2, 0x0

    :goto_2d1
    packed-switch v2, :pswitch_data_64e

    .line 2196
    :pswitch_2d4
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_9c

    .line 2200
    :pswitch_2d8
    const/4 v2, 0x0

    move v7, v2

    goto/16 :goto_b0

    .line 2204
    :pswitch_2dc
    const/4 v2, 0x0

    move v6, v2

    goto/16 :goto_bb

    .line 126
    :pswitch_2e0
    const/4 v2, 0x1

    goto/16 :goto_e4

    .line 1597
    :pswitch_2e3
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x13

    rem-int/lit16 v12, v2, 0x80

    sput v12, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2ef

    .line 127
    :cond_2ef
    const/4 v2, 0x1

    goto/16 :goto_f5

    .line 2239
    :cond_2f2
    const/4 v2, 0x0

    :goto_2f3
    packed-switch v2, :pswitch_data_654

    .line 128
    const/4 v2, 0x1

    goto/16 :goto_106

    .line 2228
    :pswitch_2f9
    :try_start_2f9
    invoke-static/range {p2 .. p2}, Lcom/moat/analytics/mobile/cha/u;->ˏ(Landroid/view/View;)Landroid/graphics/Rect;
    :try_end_2fc
    .catch Ljava/lang/Exception; {:try_start_2f9 .. :try_end_2fc} :catch_3c0

    move-result-object v2

    move-object v6, v2

    goto/16 :goto_132

    .line 1597
    :pswitch_300
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x15

    rem-int/lit16 v14, v2, 0x80

    sput v14, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_30c

    .line 2235
    :cond_30c
    if-eqz v8, :cond_52e

    .line 2239
    const/16 v2, 0x43

    :goto_310
    packed-switch v2, :pswitch_data_65a

    .line 2235
    if-eqz v5, :cond_532

    .line 2239
    const/16 v2, 0xa

    :goto_317
    packed-switch v2, :pswitch_data_660

    .line 1597
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_326

    .line 2235
    :cond_326
    if-nez v7, :cond_536

    .line 2239
    const/16 v2, 0x29

    :goto_32a
    packed-switch v2, :pswitch_data_666

    .line 2235
    if-lez v13, :cond_53a

    .line 2239
    const/4 v2, 0x1

    :goto_330
    packed-switch v2, :pswitch_data_66c

    goto/16 :goto_146

    .line 1597
    :pswitch_335
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_589

    .line 2239
    const/16 v2, 0x26

    :goto_343
    packed-switch v2, :pswitch_data_672

    .line 2236
    :try_start_346
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-direct {v5, v2, v7, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2239
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_53e

    const/16 v2, 0x9

    :goto_359
    packed-switch v2, :pswitch_data_678

    goto/16 :goto_146

    .line 3554
    :pswitch_35e
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v7

    mul-int/2addr v7, v2

    .line 2241
    if-ge v7, v13, :cond_542

    .line 2239
    const/4 v2, 0x1

    :goto_36a
    packed-switch v2, :pswitch_data_67e

    .line 2242
    const-string v2, "VisibilityInfo"

    const/4 v8, 0x0

    const-string v14, "Ad is clipped"

    invoke-static {v2, v8, v14}, Lcom/moat/analytics/mobile/cha/a;->ˏ(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2244
    :pswitch_375
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 2245
    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_545

    .line 2239
    const/4 v2, 0x1

    :goto_37e
    packed-switch v2, :pswitch_data_684

    goto/16 :goto_146

    .line 2246
    :pswitch_383
    iput-object v5, v12, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 2247
    move-object/from16 v0, p2

    invoke-static {v5, v0}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Landroid/view/View;)Lcom/moat/analytics/mobile/cha/u$b;

    move-result-object v8

    .line 2248
    iget-boolean v2, v8, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    if-eqz v2, :cond_548

    .line 2239
    const/4 v2, 0x1

    :goto_390
    packed-switch v2, :pswitch_data_68a

    .line 2251
    iget-object v2, v8, Lcom/moat/analytics/mobile/cha/u$b;->ˋ:Ljava/util/HashSet;

    invoke-static {v5, v2}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Ljava/util/HashSet;)I
    :try_end_398
    .catch Ljava/lang/Exception; {:try_start_346 .. :try_end_398} :catch_3c0

    move-result v5

    .line 2252
    if-lez v5, :cond_54b

    .line 2239
    const/16 v2, 0x5a

    :goto_39d
    packed-switch v2, :pswitch_data_690

    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3ac

    .line 2253
    :cond_3ac
    int-to-double v14, v5

    int-to-double v0, v7

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    :try_start_3b2
    iput-wide v14, v12, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    .line 2255
    :pswitch_3b4
    sub-int v2, v7, v5

    .line 2256
    int-to-double v14, v2

    int-to-double v0, v13

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    iput-wide v14, v12, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D
    :try_end_3be
    .catch Ljava/lang/Exception; {:try_start_3b2 .. :try_end_3be} :catch_3c0

    goto/16 :goto_146

    .line 181
    :catch_3c0
    move-exception v2

    invoke-static {v2}, Lcom/moat/analytics/mobile/cha/o;->ˎ(Ljava/lang/Exception;)V

    .line 182
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;

    goto/16 :goto_269

    .line 2249
    :pswitch_3ca
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    :try_start_3cc
    iput-wide v14, v12, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    goto/16 :goto_146

    .line 134
    :cond_3d0
    iget-wide v14, v12, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v0, v2, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    move-wide/from16 v16, v0

    cmpl-double v2, v14, v16

    if-nez v2, :cond_551

    .line 2239
    const/16 v2, 0x26

    :goto_3e0
    packed-switch v2, :pswitch_data_696

    goto/16 :goto_16a

    .line 165
    :pswitch_3e5
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/moat/analytics/mobile/cha/u;->ᐝ:Ljava/util/HashMap;

    invoke-direct {v6, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 166
    const-string v2, "screen"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ˊॱ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    const-string v2, "view"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ʽ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 168
    const-string v2, "visible"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v2, "maybe"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ˋ:Lorg/json/JSONObject;

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v2, "visiblePercent"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/moat/analytics/mobile/cha/u;->ˏ:Lcom/moat/analytics/mobile/cha/u$c;

    iget-wide v8, v4, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    if-eqz v5, :cond_56c

    .line 2239
    const/16 v2, 0x3e

    :goto_425
    packed-switch v2, :pswitch_data_69c

    .line 172
    const-string v7, "location"

    .line 6540
    if-nez v5, :cond_570

    .line 2239
    const/4 v2, 0x1

    :goto_42d
    packed-switch v2, :pswitch_data_6a2

    .line 6541
    const/4 v2, 0x0

    move-object v4, v2

    .line 6533
    :goto_432
    if-nez v4, :cond_573

    .line 2239
    const/16 v2, 0xe

    :goto_436
    packed-switch v2, :pswitch_data_6a8

    .line 6536
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 172
    :goto_43e
    invoke-virtual {v6, v7, v2}, Lorg/json/JSONObject;->accumulate(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    :pswitch_441
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/moat/analytics/mobile/cha/u;->ॱ:Ljava/lang/String;

    goto/16 :goto_269

    .line 6543
    :pswitch_44b
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6544
    const-string v4, "latitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6545
    const-string v4, "longitude"

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6546
    const-string v4, "timestamp"

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v4, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6547
    const-string v4, "horizontalAccuracy"

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_484
    .catch Ljava/lang/Exception; {:try_start_3cc .. :try_end_484} :catch_3c0

    move-object v4, v2

    .line 6548
    goto :goto_432

    .line 6534
    :pswitch_486
    const/4 v2, 0x0

    goto :goto_43e

    .line 1597
    :pswitch_488
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2bc

    .line 2239
    const/4 v2, 0x1

    goto/16 :goto_2be

    .line 1597
    :pswitch_497
    :try_start_497
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_57d

    .line 2239
    const/16 v2, 0x5a

    :goto_49f
    packed-switch v2, :pswitch_data_6ae

    goto/16 :goto_75

    .line 1597
    :pswitch_4a4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasWindowFocus()Z
    :try_end_4a7
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_4a7} :catch_3c0

    move-result v2

    if-eqz v2, :cond_2d0

    .line 2239
    const/4 v2, 0x1

    goto/16 :goto_2d1

    .line 1597
    :pswitch_4ad
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x59

    rem-int/lit16 v12, v2, 0x80

    sput v12, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_585

    .line 2239
    const/16 v2, 0x2e

    :goto_4bb
    packed-switch v2, :pswitch_data_6b4

    .line 1597
    const/4 v2, 0x1

    goto/16 :goto_e4

    :pswitch_4c1
    sget v2, Lcom/moat/analytics/mobile/cha/u;->ˋॱ:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v12, v2, 0x80

    sput v12, Lcom/moat/analytics/mobile/cha/u;->ʼ:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2f2

    .line 2239
    const/4 v2, 0x1

    goto/16 :goto_2f3

    .line 1597
    :pswitch_4d0
    const/4 v2, 0x1

    goto/16 :goto_106

    .line 2236
    :pswitch_4d3
    :try_start_4d3
    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    invoke-direct {v5, v2, v7, v8, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2239
    move-object/from16 v0, p2

    invoke-static {v0, v5}, Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/view/View;Landroid/graphics/Rect;)Z
    :try_end_4e1
    .catch Ljava/lang/Exception; {:try_start_4d3 .. :try_end_4e1} :catch_3c0

    move-result v2

    if-eqz v2, :cond_58d

    const/4 v2, 0x1

    :goto_4e5
    packed-switch v2, :pswitch_data_6ba

    goto/16 :goto_146

    :cond_4ea
    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_4ed
    const/4 v2, 0x1

    goto/16 :goto_21

    :cond_4f0
    const/16 v2, 0x19

    goto/16 :goto_36

    :cond_4f4
    const/16 v5, 0x30

    goto/16 :goto_276

    :cond_4f8
    const/4 v2, 0x1

    goto/16 :goto_6b

    :cond_4fb
    const/4 v2, 0x0

    goto/16 :goto_29b

    :cond_4fe
    const/4 v2, 0x0

    goto/16 :goto_2a5

    :cond_501
    const/16 v2, 0x9

    goto/16 :goto_72

    :cond_505
    const/16 v2, 0x45

    goto/16 :goto_2c9

    :cond_509
    const/16 v2, 0x25

    goto/16 :goto_7b

    :cond_50d
    const/16 v2, 0x10

    goto/16 :goto_97

    :cond_511
    const/4 v2, 0x4

    goto/16 :goto_a0

    :cond_514
    const/16 v2, 0x25

    goto/16 :goto_ab

    :cond_518
    const/4 v2, 0x0

    goto/16 :goto_b3

    :cond_51b
    const/16 v2, 0x1e

    goto/16 :goto_e0

    :cond_51f
    const/4 v2, 0x1

    goto/16 :goto_f1

    :cond_522
    const/16 v2, 0x2a

    goto/16 :goto_102

    :cond_526
    const/16 v2, 0x39

    goto/16 :goto_125

    :cond_52a
    const/16 v2, 0x4a

    goto/16 :goto_143

    :cond_52e
    const/16 v2, 0x56

    goto/16 :goto_310

    :cond_532
    const/16 v2, 0x28

    goto/16 :goto_317

    :cond_536
    const/16 v2, 0x4e

    goto/16 :goto_32a

    :cond_53a
    const/16 v2, 0xd

    goto/16 :goto_330

    :cond_53e
    const/16 v2, 0x31

    goto/16 :goto_359

    :cond_542
    const/4 v2, 0x0

    goto/16 :goto_36a

    :cond_545
    const/4 v2, 0x0

    goto/16 :goto_37e

    :cond_548
    const/4 v2, 0x0

    goto/16 :goto_390

    :cond_54b
    const/4 v2, 0x4

    goto/16 :goto_39d

    :cond_54e
    const/4 v2, 0x0

    goto/16 :goto_14d

    :cond_551
    const/16 v2, 0x47

    goto/16 :goto_3e0

    :cond_555
    const/4 v2, 0x0

    goto/16 :goto_179

    :cond_558
    const/4 v2, 0x0

    goto/16 :goto_1b8

    :cond_55b
    const/16 v2, 0x47

    goto/16 :goto_1ef

    :cond_55f
    const/4 v2, 0x1

    goto/16 :goto_219

    :cond_562
    const/4 v2, 0x1

    goto/16 :goto_233

    :cond_565
    const/16 v4, 0x5d

    goto/16 :goto_24f

    :cond_569
    const/4 v2, 0x1

    goto/16 :goto_266

    :cond_56c
    const/16 v2, 0x3c

    goto/16 :goto_425

    :cond_570
    const/4 v2, 0x0

    goto/16 :goto_42d

    :cond_573
    const/16 v2, 0x55

    goto/16 :goto_436

    :cond_577
    const/4 v2, 0x0

    goto/16 :goto_46

    :cond_57a
    const/4 v5, 0x0

    goto/16 :goto_54

    :cond_57d
    const/16 v2, 0x14

    goto/16 :goto_49f

    :cond_581
    const/16 v2, 0x1f

    goto/16 :goto_8c

    :cond_585
    const/16 v2, 0x4f

    goto/16 :goto_4bb

    :cond_589
    const/16 v2, 0x39

    goto/16 :goto_343

    :cond_58d
    const/4 v2, 0x0

    goto/16 :goto_4e5

    :pswitch_590
    move v2, v4

    goto/16 :goto_23b

    nop

    :pswitch_data_594
    .packed-switch 0x0
        :pswitch_269
    .end packed-switch

    :pswitch_data_59a
    .packed-switch 0x1
        :pswitch_57
    .end packed-switch

    :pswitch_data_5a0
    .packed-switch 0x19
        :pswitch_57
    .end packed-switch

    :pswitch_data_5a6
    .packed-switch 0x0
        :pswitch_26a
    .end packed-switch

    :pswitch_data_5ac
    .packed-switch 0x1
        :pswitch_279
    .end packed-switch

    :pswitch_data_5b2
    .packed-switch 0x0
        :pswitch_28c
    .end packed-switch

    :pswitch_data_5b8
    .packed-switch 0x39
        :pswitch_488
    .end packed-switch

    :pswitch_data_5be
    .packed-switch 0x25
        :pswitch_2d4
    .end packed-switch

    :pswitch_data_5c4
    .packed-switch 0x5b
        :pswitch_4a4
    .end packed-switch

    :pswitch_data_5ca
    .packed-switch 0x10
        :pswitch_2d4
    .end packed-switch

    :pswitch_data_5d0
    .packed-switch 0x4
        :pswitch_ae
    .end packed-switch

    :pswitch_data_5d6
    .packed-switch 0x25
        :pswitch_2d8
    .end packed-switch

    :pswitch_data_5dc
    .packed-switch 0x1
        :pswitch_2dc
    .end packed-switch

    :pswitch_data_5e2
    .packed-switch 0x17
        :pswitch_4ad
    .end packed-switch

    :pswitch_data_5e8
    .packed-switch 0x55
        :pswitch_2e3
    .end packed-switch

    :pswitch_data_5ee
    .packed-switch 0x30
        :pswitch_4c1
    .end packed-switch

    :pswitch_data_5f4
    .packed-switch 0x58
        :pswitch_2f9
    .end packed-switch

    :pswitch_data_5fa
    .packed-switch 0x5
        :pswitch_300
    .end packed-switch

    :pswitch_data_600
    .packed-switch 0x0
        :pswitch_18a
    .end packed-switch

    :pswitch_data_606
    .packed-switch 0x0
        :pswitch_18a
    .end packed-switch

    :pswitch_data_60c
    .packed-switch 0x0
        :pswitch_1d1
    .end packed-switch

    :pswitch_data_612
    .packed-switch 0x47
        :pswitch_1fc
    .end packed-switch

    :pswitch_data_618
    .packed-switch 0x1
        :pswitch_236
    .end packed-switch

    :pswitch_data_61e
    .packed-switch 0x1
        :pswitch_590
    .end packed-switch

    :pswitch_data_624
    .packed-switch 0x5d
        :pswitch_263
    .end packed-switch

    :pswitch_data_62a
    .packed-switch 0x0
        :pswitch_3e5
    .end packed-switch

    :pswitch_data_630
    .packed-switch 0x30
        :pswitch_57
    .end packed-switch

    :pswitch_data_636
    .packed-switch 0x0
        :pswitch_2a8
    .end packed-switch

    :pswitch_data_63c
    .packed-switch 0x1
        :pswitch_2ac
    .end packed-switch

    :pswitch_data_642
    .packed-switch 0x1
        :pswitch_497
    .end packed-switch

    :pswitch_data_648
    .packed-switch 0x45
        :pswitch_75
    .end packed-switch

    :pswitch_data_64e
    .packed-switch 0x1
        :pswitch_9a
    .end packed-switch

    :pswitch_data_654
    .packed-switch 0x1
        :pswitch_4d0
    .end packed-switch

    :pswitch_data_65a
    .packed-switch 0x56
        :pswitch_146
    .end packed-switch

    :pswitch_data_660
    .packed-switch 0x28
        :pswitch_146
    .end packed-switch

    :pswitch_data_666
    .packed-switch 0x4e
        :pswitch_146
    .end packed-switch

    :pswitch_data_66c
    .packed-switch 0x1
        :pswitch_335
    .end packed-switch

    :pswitch_data_672
    .packed-switch 0x26
        :pswitch_4d3
    .end packed-switch

    :pswitch_data_678
    .packed-switch 0x9
        :pswitch_35e
    .end packed-switch

    :pswitch_data_67e
    .packed-switch 0x0
        :pswitch_375
    .end packed-switch

    :pswitch_data_684
    .packed-switch 0x1
        :pswitch_383
    .end packed-switch

    :pswitch_data_68a
    .packed-switch 0x1
        :pswitch_3ca
    .end packed-switch

    :pswitch_data_690
    .packed-switch 0x4
        :pswitch_3b4
    .end packed-switch

    :pswitch_data_696
    .packed-switch 0x47
        :pswitch_18a
    .end packed-switch

    :pswitch_data_69c
    .packed-switch 0x3c
        :pswitch_441
    .end packed-switch

    :pswitch_data_6a2
    .packed-switch 0x0
        :pswitch_44b
    .end packed-switch

    :pswitch_data_6a8
    .packed-switch 0xe
        :pswitch_486
    .end packed-switch

    :pswitch_data_6ae
    .packed-switch 0x5a
        :pswitch_2cc
    .end packed-switch

    :pswitch_data_6b4
    .packed-switch 0x4f
        :pswitch_2e0
    .end packed-switch

    :pswitch_data_6ba
    .packed-switch 0x1
        :pswitch_35e
    .end packed-switch
.end method

###### Class com.moat.analytics.mobile.cha.u.AnonymousClass1 (com.moat.analytics.mobile.cha.u$1)
.class final Lcom/moat/analytics/mobile/cha/u$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/cha/u;->ˋ(Landroid/graphics/Rect;Ljava/util/HashSet;)I
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
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    .prologue
    .line 468
    check-cast p1, Landroid/graphics/Rect;

    check-cast p2, Landroid/graphics/Rect;

    .line 1471
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    .line 468
    return v0
.end method

###### Class com.moat.analytics.mobile.cha.u.a (com.moat.analytics.mobile.cha.u$a)
.class final Lcom/moat/analytics/mobile/cha/u$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final ˎ:Landroid/graphics/Rect;

.field final ˏ:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/moat/analytics/mobile/cha/u$a;)V
    .registers 8

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˏ:Landroid/view/View;

    .line 87
    if-eqz p2, :cond_2b

    .line 88
    iget-object v0, p2, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p2, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1582
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v0, v2

    .line 1583
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    .line 1584
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 88
    iput-object v2, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    .line 92
    :goto_2a
    return-void

    .line 90
    :cond_2b
    invoke-static {p1}, Lcom/moat/analytics/mobile/cha/u;->ˎ(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u$a;->ˎ:Landroid/graphics/Rect;

    goto :goto_2a
.end method

###### Class com.moat.analytics.mobile.cha.u.b (com.moat.analytics.mobile.cha.u$b)
.class final Lcom/moat/analytics/mobile/cha/u$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field ˊ:Z

.field final ˋ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field ˎ:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput v1, p0, Lcom/moat/analytics/mobile/cha/u$b;->ˎ:I

    .line 388
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u$b;->ˋ:Ljava/util/HashSet;

    .line 389
    iput-boolean v1, p0, Lcom/moat/analytics/mobile/cha/u$b;->ˊ:Z

    return-void
.end method

###### Class com.moat.analytics.mobile.cha.u.c (com.moat.analytics.mobile.cha.u$c)
.class final Lcom/moat/analytics/mobile/cha/u$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/cha/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field ˊ:D

.field ˋ:Landroid/graphics/Rect;

.field ॱ:D


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

    iput-object v0, p0, Lcom/moat/analytics/mobile/cha/u$c;->ˋ:Landroid/graphics/Rect;

    .line 72
    iput-wide v2, p0, Lcom/moat/analytics/mobile/cha/u$c;->ˊ:D

    .line 73
    iput-wide v2, p0, Lcom/moat/analytics/mobile/cha/u$c;->ॱ:D

    .line 74
    return-void
.end method
