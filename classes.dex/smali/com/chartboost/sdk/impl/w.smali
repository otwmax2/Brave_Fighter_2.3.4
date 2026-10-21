###### Class com.chartboost.sdk.impl.w (com.chartboost.sdk.impl.w)
.class public Lcom/chartboost/sdk/impl/w;
.super Lcom/chartboost/sdk/impl/z;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private b:Landroid/widget/LinearLayout;

.field private c:Lcom/chartboost/sdk/impl/ax;

.field private d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V
    .registers 3

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/z;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/v;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected a()Landroid/view/View;
    .registers 7

    .prologue
    const/16 v5, 0x11

    .line 38
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/w;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 39
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 40
    const/high16 v2, 0x41000000    # 8.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 42
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/widget/LinearLayout;

    .line 43
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 46
    const/16 v2, 0x24

    invoke-static {v2, v0}, Lcom/chartboost/sdk/Libraries/CBUtility;->a(ILandroid/content/Context;)I

    move-result v2

    .line 47
    new-instance v3, Lcom/chartboost/sdk/impl/ax;

    invoke-direct {v3, v0}, Lcom/chartboost/sdk/impl/ax;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/chartboost/sdk/impl/w;->c:Lcom/chartboost/sdk/impl/ax;

    .line 48
    iget-object v3, p0, Lcom/chartboost/sdk/impl/w;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v3, v1, v1, v1, v1}, Lcom/chartboost/sdk/impl/ax;->setPadding(IIII)V

    .line 49
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 50
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w;->c:Lcom/chartboost/sdk/impl/ax;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/impl/ax;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 52
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    div-int/lit8 v2, v1, 0x2

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    const v1, -0xe8eaeb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 57
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/w;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public a(Lcom/chartboost/sdk/Libraries/h;)V
    .registers 4

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->c:Lcom/chartboost/sdk/impl/ax;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ax;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->c:Lcom/chartboost/sdk/impl/ax;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ax;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 68
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method

.method protected b()I
    .registers 2

    .prologue
    .line 76
    const/16 v0, 0x30

    return v0
.end method
