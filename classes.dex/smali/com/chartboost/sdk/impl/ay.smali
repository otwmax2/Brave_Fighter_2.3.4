###### Class com.chartboost.sdk.impl.ay (com.chartboost.sdk.impl.ay)
.class public abstract Lcom/chartboost/sdk/impl/ay;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ay$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/graphics/Rect;

.field final c:Lcom/chartboost/sdk/impl/ay$a;

.field protected d:Landroid/widget/Button;

.field e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay;->e:Z

    .line 39
    new-instance v0, Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/impl/ay$a;-><init>(Lcom/chartboost/sdk/impl/ay;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    new-instance v1, Lcom/chartboost/sdk/impl/ay$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ay$1;-><init>(Lcom/chartboost/sdk/impl/ay;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay$a;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    return-void
.end method


# virtual methods
.method public a()Landroid/widget/TextView;
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    if-nez v0, :cond_16

    .line 148
    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 151
    :cond_16
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->postInvalidate()V

    .line 152
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    return-object v0
.end method

.method protected abstract a(Landroid/view/MotionEvent;)V
.end method

.method public a(Landroid/widget/ImageView$ScaleType;)V
    .registers 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ay$a;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 171
    return-void
.end method

.method public a(Lcom/chartboost/sdk/Libraries/h;)V
    .registers 3

    .prologue
    .line 156
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Lcom/chartboost/sdk/Libraries/h;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 157
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ay$a;->a(Lcom/chartboost/sdk/Libraries/h;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ay;->a(Ljava/lang/String;)V

    .line 160
    :cond_11
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 127
    if-eqz p1, :cond_2c

    .line 128
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay;->a()Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/ay;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay$a;->setVisibility(I)V

    .line 131
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/ay;->a(Z)V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/ay$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/ay$2;-><init>(Lcom/chartboost/sdk/impl/ay;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_2b
    :goto_2b
    return-void

    .line 138
    :cond_2c
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    if-eqz v0, :cond_2b

    .line 139
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ay;->removeView(Landroid/view/View;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ay;->d:Landroid/widget/Button;

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/impl/ay$a;->setVisibility(I)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ay;->a(Z)V

    goto :goto_2b
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 179
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ay;->e:Z

    .line 180
    return-void
.end method

.method a(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6

    .prologue
    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay;->a:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

###### Class com.chartboost.sdk.impl.ay.AnonymousClass1 (com.chartboost.sdk.impl.ay$1)
.class Lcom/chartboost/sdk/impl/ay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ay;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ay;)V
    .registers 2

    .prologue
    .line 40
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 44
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, p1, p2}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 45
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 62
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0

    .line 47
    :pswitch_10
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ay$a;->a(Z)V

    goto :goto_f

    .line 50
    :pswitch_18
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/ay$a;->a(Z)V

    goto :goto_e

    .line 53
    :pswitch_20
    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ay;->getVisibility()I

    move-result v1

    if-nez v1, :cond_37

    iget-object v1, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/ay;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v0, :cond_37

    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-virtual {v0, p2}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/view/MotionEvent;)V

    .line 55
    :cond_37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay$a;->a(Z)V

    goto :goto_e

    .line 59
    :pswitch_3f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay$1;->a:Lcom/chartboost/sdk/impl/ay;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/ay;->c:Lcom/chartboost/sdk/impl/ay$a;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/ay$a;->a(Z)V

    goto :goto_e

    .line 45
    nop

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_10
        :pswitch_20
        :pswitch_18
        :pswitch_3f
        :pswitch_3f
    .end packed-switch
.end method

###### Class com.chartboost.sdk.impl.ay.AnonymousClass2 (com.chartboost.sdk.impl.ay$2)
.class Lcom/chartboost/sdk/impl/ay$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/ay;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ay;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/ay;)V
    .registers 2

    .prologue
    .line 132
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ay$2;->a:Lcom/chartboost/sdk/impl/ay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay$2;->a:Lcom/chartboost/sdk/impl/ay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/ay;->a(Landroid/view/MotionEvent;)V

    .line 136
    return-void
.end method

###### Class com.chartboost.sdk.impl.ay.a (com.chartboost.sdk.impl.ay$a)
.class Lcom/chartboost/sdk/impl/ay$a;
.super Lcom/chartboost/sdk/impl/ax;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic b:Lcom/chartboost/sdk/impl/ay;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ay;Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 83
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ay$a;->b:Lcom/chartboost/sdk/impl/ay;

    .line 84
    invoke-direct {p0, p2}, Lcom/chartboost/sdk/impl/ax;-><init>(Landroid/content/Context;)V

    .line 81
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay$a;->c:Z

    .line 86
    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay$a;->c:Z

    .line 87
    return-void
.end method


# virtual methods
.method protected a(Z)V
    .registers 5

    .prologue
    const/high16 v2, 0x77000000

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ay$a;->b:Lcom/chartboost/sdk/impl/ay;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/ay;->e:Z

    if-eqz v0, :cond_34

    if-eqz p1, :cond_34

    .line 97
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ay$a;->c:Z

    if-nez v0, :cond_23

    .line 98
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_24

    .line 99
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 102
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->invalidate()V

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay$a;->c:Z

    .line 115
    :cond_23
    :goto_23
    return-void

    .line 100
    :cond_24
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1d

    .line 106
    :cond_34
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ay$a;->c:Z

    if-eqz v0, :cond_23

    .line 107
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 108
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 111
    :cond_45
    :goto_45
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->invalidate()V

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ay$a;->c:Z

    goto :goto_23

    .line 109
    :cond_4c
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 110
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ay$a;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    goto :goto_45
.end method

.method public performClick()Z
    .registers 2

    .prologue
    .line 91
    invoke-super {p0}, Lcom/chartboost/sdk/impl/ax;->performClick()Z

    .line 92
    const/4 v0, 0x1

    return v0
.end method
