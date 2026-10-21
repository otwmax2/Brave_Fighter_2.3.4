###### Class com.vungle.publisher.oj (com.vungle.publisher.oj)
.class public Lcom/vungle/publisher/oj;
.super Lcom/vungle/publisher/oa;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/oj$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/drawable/ShapeDrawable;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/vungle/publisher/oa;-><init>(Landroid/content/Context;)V

    .line 11
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/oj;->a:Landroid/graphics/drawable/ShapeDrawable;

    .line 12
    const/4 v0, -0x1

    iput v0, p0, Lcom/vungle/publisher/oj;->b:I

    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/oj;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xd06f32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/vungle/publisher/oj$1;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0, p1}, Lcom/vungle/publisher/oj;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/oj;I)I
    .registers 2

    .prologue
    .line 10
    iput p1, p0, Lcom/vungle/publisher/oj;->e:I

    return p1
.end method

.method static synthetic b(Lcom/vungle/publisher/oj;I)I
    .registers 2

    .prologue
    .line 10
    iput p1, p0, Lcom/vungle/publisher/oj;->d:I

    return p1
.end method

.method private setProgressBarWidth(F)V
    .registers 6
    .param p1, "percent"    # F

    .prologue
    const/4 v3, 0x0

    .line 37
    iget v0, p0, Lcom/vungle/publisher/oj;->b:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 38
    iget-object v1, p0, Lcom/vungle/publisher/oj;->a:Landroid/graphics/drawable/ShapeDrawable;

    iget v2, p0, Lcom/vungle/publisher/oj;->d:I

    invoke-virtual {v1, v3, v3, v0, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 39
    return-void
.end method


# virtual methods
.method public getId()I
    .registers 2

    .prologue
    .line 56
    iget v0, p0, Lcom/vungle/publisher/oj;->e:I

    return v0
.end method

.method public getProgressBarHeight()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/vungle/publisher/oj;->d:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/vungle/publisher/oa;->onDraw(Landroid/graphics/Canvas;)V

    .line 27
    iget-object v0, p0, Lcom/vungle/publisher/oj;->a:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 28
    return-void
.end method

.method protected onMeasure(II)V
    .registers 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/oa;->onMeasure(II)V

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/oj;->b:I

    .line 34
    return-void
.end method

.method public setCurrentTimeMillis(I)V
    .registers 4
    .param p1, "currentTimeMillis"    # I

    .prologue
    .line 46
    int-to-float v0, p1

    iget v1, p0, Lcom/vungle/publisher/oj;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/oj;->setProgressBarWidth(F)V

    .line 47
    invoke-virtual {p0}, Lcom/vungle/publisher/oj;->invalidate()V

    .line 48
    return-void
.end method

.method public setMaxTimeMillis(I)V
    .registers 2
    .param p1, "maxTimeMillis"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/vungle/publisher/oj;->c:I

    .line 43
    return-void
.end method

###### Class com.vungle.publisher.oj.AnonymousClass1 (com.vungle.publisher.oj$1)
.class synthetic Lcom/vungle/publisher/oj$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.vungle.publisher.oj.a (com.vungle.publisher.oj$a)
.class public Lcom/vungle/publisher/oj$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/oj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/mv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/vungle/publisher/oj;
    .registers 5

    .prologue
    .line 70
    new-instance v0, Lcom/vungle/publisher/oj;

    iget-object v1, p0, Lcom/vungle/publisher/oj$a;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/oj;-><init>(Landroid/content/Context;Lcom/vungle/publisher/oj$1;)V

    .line 71
    invoke-static {v0, p1}, Lcom/vungle/publisher/oj;->a(Lcom/vungle/publisher/oj;I)I

    .line 72
    iget-object v1, p0, Lcom/vungle/publisher/oj$a;->b:Lcom/vungle/publisher/mv;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/mv;->a(I)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/oj;->b(Lcom/vungle/publisher/oj;I)I

    .line 73
    return-object v0
.end method
