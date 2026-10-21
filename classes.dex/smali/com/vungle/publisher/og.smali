###### Class com.vungle.publisher.og (com.vungle.publisher.og)
.class public Lcom/vungle/publisher/og;
.super Landroid/widget/LinearLayout;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/og$a;
    }
.end annotation


# instance fields
.field private a:Lcom/vungle/publisher/qg;

.field private b:Z

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/og;->b:Z

    .line 29
    invoke-virtual {p0, p0}, Lcom/vungle/publisher/og;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/og;Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vungle/publisher/og;->c:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/og;Lcom/vungle/publisher/qg;)Lcom/vungle/publisher/qg;
    .registers 2

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vungle/publisher/og;->a:Lcom/vungle/publisher/qg;

    return-object p1
.end method

.method private a()V
    .registers 3

    .prologue
    .line 43
    const-string v0, "#000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/og;->setBackgroundColor(I)V

    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/og;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vungle/publisher/og;->b:Z

    if-eqz v0, :cond_f

    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/og;->a:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/aq;

    invoke-direct {v1}, Lcom/vungle/publisher/aq;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 40
    :goto_e
    return-void

    .line 37
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/og;->b:Z

    .line 38
    invoke-direct {p0}, Lcom/vungle/publisher/og;->a()V

    goto :goto_e
.end method

###### Class com.vungle.publisher.og.a (com.vungle.publisher.og$a)
.class public Lcom/vungle/publisher/og$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/og;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/zo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Z)Lcom/vungle/publisher/og;
    .registers 10

    .prologue
    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 58
    new-instance v0, Lcom/vungle/publisher/og;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/og;-><init>(Landroid/content/Context;)V

    .line 59
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/og;->setGravity(I)V

    .line 60
    new-instance v1, Lcom/vungle/publisher/oa;

    invoke-direct {v1, p1}, Lcom/vungle/publisher/oa;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v2, p0, Lcom/vungle/publisher/og$a;->a:Lcom/vungle/publisher/zo;

    sget-object v3, Lcom/vungle/publisher/image/AssetBitmapFactory$a;->f:Lcom/vungle/publisher/image/AssetBitmapFactory$a;

    invoke-virtual {v2, v1, v3}, Lcom/vungle/publisher/zo;->a(Landroid/widget/ImageView;Lcom/vungle/publisher/image/AssetBitmapFactory$a;)V

    .line 62
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 63
    const-string v3, "privacy"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/high16 v3, 0x41800000    # 16.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 65
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 67
    invoke-virtual {v2, v6, v4, v6, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 68
    if-eqz p2, :cond_48

    .line 69
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/og;->addView(Landroid/view/View;)V

    .line 70
    invoke-virtual {v0, v2}, Lcom/vungle/publisher/og;->addView(Landroid/view/View;)V

    .line 76
    :goto_3c
    iget-object v1, p0, Lcom/vungle/publisher/og$a;->b:Lcom/vungle/publisher/qg;

    invoke-static {v0, v1}, Lcom/vungle/publisher/og;->a(Lcom/vungle/publisher/og;Lcom/vungle/publisher/qg;)Lcom/vungle/publisher/qg;

    .line 77
    invoke-static {v0, v2}, Lcom/vungle/publisher/og;->a(Lcom/vungle/publisher/og;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0, v5}, Lcom/vungle/publisher/og;->setVisibility(I)V

    .line 79
    return-object v0

    .line 72
    :cond_48
    invoke-virtual {v0, v2}, Lcom/vungle/publisher/og;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/og;->addView(Landroid/view/View;)V

    goto :goto_3c
.end method
