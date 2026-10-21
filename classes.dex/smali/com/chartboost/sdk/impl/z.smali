###### Class com.chartboost.sdk.impl.z (com.chartboost.sdk.impl.z)
.class public abstract Lcom/chartboost/sdk/impl/z;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field protected a:Lcom/chartboost/sdk/impl/v;

.field private b:Lcom/chartboost/sdk/impl/aa;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .registers 4

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/z;->c:I

    .line 54
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/z;->a(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 92
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/z;->setGravity(I)V

    .line 96
    new-instance v1, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/aa;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aa;->a(I)V

    .line 98
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const v1, -0x33000001    # -1.3421772E8f

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setBackgroundColor(I)V

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->a()Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/z;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    return-void
.end method

.method private a(ZJ)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iput-boolean p1, v0, Lcom/chartboost/sdk/impl/v;->C:Z

    .line 113
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_18

    :cond_e
    if-nez p1, :cond_19

    .line 114
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getVisibility()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_19

    .line 156
    :cond_18
    :goto_18
    return-void

    .line 116
    :cond_19
    new-instance v5, Lcom/chartboost/sdk/impl/z$1;

    invoke-direct {v5, p0, p1}, Lcom/chartboost/sdk/impl/z$1;-><init>(Lcom/chartboost/sdk/impl/z;Z)V

    .line 127
    if-eqz p1, :cond_23

    .line 128
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/z;->setVisibility(I)V

    .line 130
    :cond_23
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->b()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(FLandroid/content/Context;)F

    move-result v0

    .line 131
    const/4 v2, 0x0

    .line 132
    iget v4, p0, Lcom/chartboost/sdk/impl/z;->c:I

    packed-switch v4, :pswitch_data_9e

    move-object v0, v2

    .line 148
    :goto_37
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 150
    if-nez p1, :cond_98

    const/4 v1, 0x1

    :goto_3d
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 151
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z;->startAnimation(Landroid/view/animation/Animation;)V

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    monitor-enter v1

    .line 153
    :try_start_48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    invoke-interface {v0, p0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_9a

    .line 155
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->a:Landroid/os/Handler;

    invoke-virtual {v0, v5, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_18

    .line 134
    :pswitch_58
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_65

    neg-float v4, v0

    :goto_5d
    if-eqz p1, :cond_67

    move v0, v1

    :goto_60
    invoke-direct {v2, v1, v1, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    .line 135
    goto :goto_37

    :cond_65
    move v4, v1

    .line 134
    goto :goto_5d

    :cond_67
    neg-float v0, v0

    goto :goto_60

    .line 137
    :pswitch_69
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_76

    move v4, v0

    :goto_6e
    if-eqz p1, :cond_71

    move v0, v1

    :cond_71
    invoke-direct {v2, v1, v1, v4, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    .line 138
    goto :goto_37

    :cond_76
    move v4, v1

    .line 137
    goto :goto_6e

    .line 140
    :pswitch_78
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_85

    neg-float v4, v0

    :goto_7d
    if-eqz p1, :cond_87

    move v0, v1

    :goto_80
    invoke-direct {v2, v4, v0, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    .line 141
    goto :goto_37

    :cond_85
    move v4, v1

    .line 140
    goto :goto_7d

    :cond_87
    neg-float v0, v0

    goto :goto_80

    .line 143
    :pswitch_89
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    if-eqz p1, :cond_96

    move v4, v0

    :goto_8e
    if-eqz p1, :cond_91

    move v0, v1

    :cond_91
    invoke-direct {v2, v4, v0, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v0, v2

    goto :goto_37

    :cond_96
    move v4, v1

    goto :goto_8e

    :cond_98
    move v1, v3

    .line 150
    goto :goto_3d

    .line 154
    :catchall_9a
    move-exception v0

    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v0

    .line 132
    nop

    :pswitch_data_9e
    .packed-switch 0x0
        :pswitch_58
        :pswitch_69
        :pswitch_78
        :pswitch_89
    .end packed-switch
.end method


# virtual methods
.method protected abstract a()Landroid/view/View;
.end method

.method public a(I)V
    .registers 6

    .prologue
    const/4 v3, -0x1

    .line 58
    iput p1, p0, Lcom/chartboost/sdk/impl/z;->c:I

    .line 59
    const/4 v0, 0x0

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/z;->setClickable(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->b()I

    move-result v1

    .line 65
    iget v2, p0, Lcom/chartboost/sdk/impl/z;->c:I

    packed-switch v2, :pswitch_data_7a

    .line 88
    :goto_11
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/z;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    return-void

    .line 67
    :pswitch_15
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 68
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_11

    .line 72
    :pswitch_2e
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 73
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_11

    .line 77
    :pswitch_47
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 78
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 79
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_11

    .line 82
    :pswitch_61
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 83
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 84
    iget-object v1, p0, Lcom/chartboost/sdk/impl/z;->b:Lcom/chartboost/sdk/impl/aa;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/aa;->b(I)V

    goto :goto_11

    .line 65
    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_15
        :pswitch_2e
        :pswitch_47
        :pswitch_61
    .end packed-switch
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 108
    const-wide/16 v0, 0x1f4

    invoke-direct {p0, p1, v0, v1}, Lcom/chartboost/sdk/impl/z;->a(ZJ)V

    .line 109
    return-void
.end method

.method protected abstract b()I
.end method

###### Class com.chartboost.sdk.impl.z.AnonymousClass1 (com.chartboost.sdk.impl.z$1)
.class Lcom/chartboost/sdk/impl/z$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/z;->a(ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/chartboost/sdk/impl/z;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/z;Z)V
    .registers 3

    .prologue
    .line 116
    iput-object p1, p0, Lcom/chartboost/sdk/impl/z$1;->b:Lcom/chartboost/sdk/impl/z;

    iput-boolean p2, p0, Lcom/chartboost/sdk/impl/z$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/z$1;->a:Z

    if-nez v0, :cond_10

    .line 119
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$1;->b:Lcom/chartboost/sdk/impl/z;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/z;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$1;->b:Lcom/chartboost/sdk/impl/z;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/z;->clearAnimation()V

    .line 122
    :cond_10
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$1;->b:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v1, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    monitor-enter v1

    .line 123
    :try_start_17
    iget-object v0, p0, Lcom/chartboost/sdk/impl/z$1;->b:Lcom/chartboost/sdk/impl/z;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/z;->a:Lcom/chartboost/sdk/impl/v;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v;->g:Ljava/util/Map;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/z$1;->b:Lcom/chartboost/sdk/impl/z;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    monitor-exit v1

    .line 125
    return-void

    .line 124
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_17 .. :try_end_26} :catchall_24

    throw v0
.end method
