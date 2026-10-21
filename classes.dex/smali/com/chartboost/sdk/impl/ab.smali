###### Class com.chartboost.sdk.impl.ab (com.chartboost.sdk.impl.ab)
.class public Lcom/chartboost/sdk/impl/ab;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/CharSequence;


# instance fields
.field final a:Landroid/widget/RelativeLayout;

.field final b:Lcom/chartboost/sdk/impl/aa;

.field final c:Lcom/chartboost/sdk/impl/aa;

.field final d:Lcom/chartboost/sdk/impl/ay;

.field final e:Landroid/widget/TextView;

.field final f:Lcom/chartboost/sdk/impl/x;

.field final g:Lcom/chartboost/sdk/impl/au;

.field final h:Lcom/chartboost/sdk/impl/v;

.field final i:Landroid/os/Handler;

.field final j:Ljava/lang/Runnable;

.field private l:Z

.field private m:Z

.field private final n:Ljava/lang/Runnable;

.field private final o:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const-string v0, "00:00"

    sput-object v0, Lcom/chartboost/sdk/impl/ab;->k:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .registers 15

    .prologue
    const/4 v6, -0x2

    const/high16 v11, 0x41200000    # 10.0f

    const/16 v10, 0x8

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 60
    iput-boolean v8, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    .line 61
    iput-boolean v8, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    .line 281
    new-instance v0, Lcom/chartboost/sdk/impl/ab$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ab$2;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    .line 287
    new-instance v0, Lcom/chartboost/sdk/impl/ab$3;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ab$3;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    .line 347
    new-instance v0, Lcom/chartboost/sdk/impl/ab$4;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ab$4;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    .line 69
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    .line 70
    iget-object v0, p2, Lcom/chartboost/sdk/impl/v;->a:Landroid/os/Handler;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    .line 72
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/v;->g()Lorg/json/JSONObject;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    .line 74
    mul-float v0, v2, v11

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 77
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v4

    .line 78
    new-instance v0, Lcom/chartboost/sdk/impl/au;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/au;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/au;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    .line 80
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    const/16 v5, 0xd

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 82
    iget-object v5, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {p0, v5, v0}, Lcom/chartboost/sdk/impl/ab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    .line 88
    if-eqz v1, :cond_1c9

    const-string v0, "video-click-button"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1c9

    .line 89
    new-instance v0, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/aa;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 93
    new-instance v0, Lcom/chartboost/sdk/impl/ab$1;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/impl/ab$1;-><init>(Lcom/chartboost/sdk/impl/ab;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/widget/ImageView$ScaleType;)V

    .line 109
    iget-object v0, p2, Lcom/chartboost/sdk/impl/v;->I:Lcom/chartboost/sdk/Libraries/h;

    .line 110
    const-string v1, "video-click-button"

    invoke-virtual {p2, v1}, Lcom/chartboost/sdk/impl/v;->b(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v1

    .line 111
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 112
    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 113
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/h;->f()F

    move-result v6

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 114
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p2, v5, v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/ViewGroup$LayoutParams;Lcom/chartboost/sdk/Libraries/h;F)V

    .line 115
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ay;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v1, v5}, Lcom/chartboost/sdk/impl/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v1, v1

    mul-float v5, v11, v2

    add-float/2addr v1, v5

    .line 120
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 121
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 122
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :goto_e9
    new-instance v0, Lcom/chartboost/sdk/impl/aa;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/aa;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/aa;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 131
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v1, 0x42020000    # 32.5f

    mul-float/2addr v1, v2

    .line 132
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 134
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    iget-object v5, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v1, v5, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setGravity(I)V

    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/chartboost/sdk/impl/aa;->setPadding(IIII)V

    .line 138
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v0, v1, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    sget-object v1, Lcom/chartboost/sdk/impl/ab;->k:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8, v3, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 143
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 146
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->measure(II)V

    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 150
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 151
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v0, Lcom/chartboost/sdk/impl/x;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/x;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v10}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 155
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    mul-float v1, v11, v2

    .line 156
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v0, v9, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 157
    const/4 v1, 0x1

    invoke-static {v1, p1}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v8, v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 158
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/aa;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 162
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 163
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 164
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 165
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/ab;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ab;->a()V

    .line 167
    return-void

    .line 124
    :cond_1c9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    goto/16 :goto_e9
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 317
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->a()I

    move-result v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(I)Z

    move-result v0

    .line 318
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->c(Z)V

    .line 319
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_9

    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/aa;->setBackgroundColor(I)V

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/aa;->setBackgroundColor(I)V

    .line 333
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/au$a;->a(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 391
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/au$a;->a(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 392
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/chartboost/sdk/impl/au$a;->a(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/au$a;->a(Landroid/net/Uri;)V

    .line 394
    return-void
.end method

.method a(Z)V
    .registers 3

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/impl/ab;->a(ZZ)V

    .line 220
    return-void

    .line 219
    :cond_9
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected a(ZZ)V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 223
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 226
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->y:Z

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->p()Z

    move-result v0

    if-nez v0, :cond_22

    .line 253
    :cond_21
    :goto_21
    return-void

    .line 229
    :cond_22
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    if-eq p1, v0, :cond_21

    .line 232
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    .line 234
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    if-eqz v0, :cond_7a

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    .line 235
    :goto_32
    if-eqz p2, :cond_81

    const-wide/16 v0, 0x64

    :goto_36
    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 237
    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 238
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_57

    .line 239
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aa;->startAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    if-eqz v0, :cond_57

    .line 242
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v5}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 244
    :cond_57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v0, :cond_62

    .line 245
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 246
    :cond_62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aa;->startAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    if-eqz v0, :cond_84

    .line 250
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21

    .line 234
    :cond_7a
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v2, v0

    goto :goto_32

    .line 235
    :cond_81
    const-wide/16 v0, 0xc8

    goto :goto_36

    .line 252
    :cond_84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_21
.end method

.method public b()Lcom/chartboost/sdk/impl/au$a;
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    return-object v0
.end method

.method public b(Z)V
    .registers 6

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 256
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->o:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 258
    if-eqz p1, :cond_3d

    .line 259
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_20

    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 261
    :cond_20
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v0, :cond_2b

    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 263
    :cond_2b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    if-eqz v0, :cond_3a

    .line 265
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 278
    :cond_3a
    :goto_3a
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ab;->l:Z

    .line 279
    return-void

    .line 267
    :cond_3d
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_4b

    .line 268
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aa;->clearAnimation()V

    .line 269
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 271
    :cond_4b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aa;->clearAnimation()V

    .line 272
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v0, :cond_5b

    .line 273
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 274
    :cond_5b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    if-eqz v0, :cond_3a

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    goto :goto_3a
.end method

.method public c()Lcom/chartboost/sdk/impl/x;
    .registers 2

    .prologue
    .line 326
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    return-object v0
.end method

.method public c(Z)V
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 300
    if-eqz p1, :cond_4f

    const/high16 v0, -0x1000000

    :goto_5
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->setBackgroundColor(I)V

    .line 301
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    if-nez p1, :cond_38

    .line 303
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 304
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 305
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 306
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/au;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 308
    :cond_38
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_4e

    .line 311
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setGravity(I)V

    .line 312
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/aa;->requestLayout()V

    .line 314
    :cond_4e
    return-void

    .line 300
    :cond_4f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()V
    .registers 3

    .prologue
    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_b

    .line 337
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 338
    :cond_b
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ab;->m:Z

    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    if-eqz v0, :cond_18

    .line 340
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 341
    :cond_18
    return-void
.end method

.method public d(Z)V
    .registers 4

    .prologue
    .line 344
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    return-void

    .line 344
    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public e()V
    .registers 5

    .prologue
    .line 398
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    new-instance v1, Lcom/chartboost/sdk/impl/ab$5;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ab$5;-><init>(Lcom/chartboost/sdk/impl/ab;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/au$a;->a()V

    .line 404
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method

.method public f()V
    .registers 3

    .prologue
    .line 409
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/au$a;->e()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 410
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->v:I

    .line 411
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/au$a;->b()V

    .line 414
    :cond_23
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 415
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/v$a;->e:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->postInvalidate()V

    .line 417
    :cond_3c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 418
    return-void
.end method

.method public g()V
    .registers 3

    .prologue
    .line 421
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/au$a;->e()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 422
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->d()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->v:I

    .line 423
    :cond_1a
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/au$a;->b()V

    .line 424
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 425
    return-void
.end method

.method public h()V
    .registers 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/au;->setVisibility(I)V

    .line 431
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ab;->invalidate()V

    .line 432
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "arg0"    # Landroid/media/MediaPlayer;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->v:I

    .line 202
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v$a;->e()V

    .line 204
    :cond_1f
    return-void
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 183
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->v()V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->c()I

    move-result v1

    iput v1, v0, Lcom/chartboost/sdk/impl/v;->w:I

    .line 209
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v$a;->a(Z)V

    .line 210
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "e"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->e()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_1b

    .line 191
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    if-eqz v1, :cond_1a

    .line 193
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->a(Z)V

    .line 196
    :cond_1a
    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 172
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    if-eqz v0, :cond_c

    .line 173
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 175
    :cond_c
    if-eqz p1, :cond_12

    .line 177
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ab;->b(Z)V

    .line 179
    :cond_12
    return-void
.end method

###### Class com.chartboost.sdk.impl.ab.AnonymousClass1 (com.chartboost.sdk.impl.ab$1)
.class Lcom/chartboost/sdk/impl/ab$1;
.super Lcom/chartboost/sdk/impl/ay;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ab;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ab;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ab;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 93
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$1;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/view/MotionEvent;)V
    .registers 6

    .prologue
    .line 96
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v1, 0x0

    const-string v2, "x"

    .line 97
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "y"

    .line 98
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "w"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab$1;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    .line 99
    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ay;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "h"

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab$1;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    .line 100
    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/ay;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 96
    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab$1;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/v;->b(Lorg/json/JSONObject;)Z

    .line 104
    return-void
.end method

###### Class com.chartboost.sdk.impl.ab.AnonymousClass2 (com.chartboost.sdk.impl.ab$2)
.class Lcom/chartboost/sdk/impl/ab$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ab;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ab;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$2;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$2;->a:Lcom/chartboost/sdk/impl/ab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ab;->a(Z)V

    .line 284
    return-void
.end method

###### Class com.chartboost.sdk.impl.ab.AnonymousClass3 (com.chartboost.sdk.impl.ab$3)
.class Lcom/chartboost/sdk/impl/ab$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ab;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ab;)V
    .registers 2

    .prologue
    .line 287
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 289
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    if-eqz v0, :cond_f

    .line 290
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->b:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 291
    :cond_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v0, :cond_1e

    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/x;->setVisibility(I)V

    .line 293
    :cond_1e
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->c:Lcom/chartboost/sdk/impl/aa;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/aa;->setVisibility(I)V

    .line 294
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    if-eqz v0, :cond_33

    .line 295
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$3;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->d:Lcom/chartboost/sdk/impl/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 296
    :cond_33
    return-void
.end method

###### Class com.chartboost.sdk.impl.ab.AnonymousClass4 (com.chartboost.sdk.impl.ab$4)
.class Lcom/chartboost/sdk/impl/ab$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ab;

.field private b:I


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ab;)V
    .registers 3

    .prologue
    .line 347
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ab$4;->b:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    .line 351
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v;->q()Lcom/chartboost/sdk/impl/v$a;

    move-result-object v0

    .line 352
    if-eqz v0, :cond_d1

    .line 353
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->e()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 354
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/impl/au$a;->d()I

    move-result v1

    .line 355
    if-lez v1, :cond_54

    .line 356
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iput v1, v2, Lcom/chartboost/sdk/impl/v;->v:I

    .line 357
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget v2, v2, Lcom/chartboost/sdk/impl/v;->v:I

    int-to-float v2, v2

    .line 358
    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_54

    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/v;->t()Z

    move-result v2

    if-nez v2, :cond_54

    .line 359
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/v;->r()V

    .line 360
    iget-object v2, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v2, v8}, Lcom/chartboost/sdk/impl/v;->a(Z)V

    .line 363
    :cond_54
    int-to-float v2, v1

    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/au;->a()Lcom/chartboost/sdk/impl/au$a;

    move-result-object v3

    invoke-interface {v3}, Lcom/chartboost/sdk/impl/au$a;->c()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 364
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    iget-boolean v3, v3, Lcom/chartboost/sdk/impl/v;->M:Z

    if-eqz v3, :cond_72

    .line 365
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ab;->f:Lcom/chartboost/sdk/impl/x;

    invoke-virtual {v3, v2}, Lcom/chartboost/sdk/impl/x;->a(F)V

    .line 366
    :cond_72
    div-int/lit16 v1, v1, 0x3e8

    .line 368
    iget v2, p0, Lcom/chartboost/sdk/impl/ab$4;->b:I

    if-eq v2, v1, :cond_9d

    .line 369
    iput v1, p0, Lcom/chartboost/sdk/impl/ab$4;->b:I

    .line 370
    div-int/lit8 v2, v1, 0x3c

    .line 371
    rem-int/lit8 v1, v1, 0x3c

    .line 372
    iget-object v3, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v3, v3, Lcom/chartboost/sdk/impl/ab;->e:Landroid/widget/TextView;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v6, v8

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_9d
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/v$a;->f()Z

    move-result v1

    if-eqz v1, :cond_b9

    .line 377
    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/impl/v$a;->d(Z)Lcom/chartboost/sdk/impl/ay;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ay;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b9

    .line 379
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ab;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v1, v8, v0}, Lcom/chartboost/sdk/impl/v;->a(ZLandroid/view/View;)V

    .line 380
    invoke-virtual {v0, v8}, Lcom/chartboost/sdk/impl/ay;->setEnabled(Z)V

    .line 384
    :cond_b9
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 385
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->i:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ab$4;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ab;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 387
    :cond_d1
    return-void
.end method

###### Class com.chartboost.sdk.impl.ab.AnonymousClass5 (com.chartboost.sdk.impl.ab$5)
.class Lcom/chartboost/sdk/impl/ab$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ab;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ab;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ab;)V
    .registers 2

    .prologue
    .line 398
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ab$5;->a:Lcom/chartboost/sdk/impl/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ab$5;->a:Lcom/chartboost/sdk/impl/ab;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ab;->g:Lcom/chartboost/sdk/impl/au;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/au;->setVisibility(I)V

    .line 401
    return-void
.end method
