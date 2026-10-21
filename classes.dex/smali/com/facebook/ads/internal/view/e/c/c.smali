###### Class com.facebook.ads.internal.view.e.c.c (com.facebook.ads.internal.view.e.c.c)
.class public Lcom/facebook/ads/internal/view/e/c/c;
.super Lcom/facebook/ads/internal/view/e/a/c;


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/facebook/ads/internal/j/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/j/f",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/c$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/c$1;-><init>(Lcom/facebook/ads/internal/view/e/c/c;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c;->c:Lcom/facebook/ads/internal/j/f;

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c;->a:Landroid/widget/TextView;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/e/c/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/e/c/c;->addView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/c;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .registers 14

    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_c

    const-string v0, "00:00"

    :goto_b
    return-object v0

    :cond_c
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0xea60

    rem-long v4, p1, v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/c;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3a

    const-string v4, "%02d:%02d"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_3a
    iget-object v4, p0, Lcom/facebook/ads/internal/view/e/c/c;->b:Ljava/lang/String;

    const-string v5, "{{REMAINING_TIME}}"

    const-string v6, "%02d:%02d"

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/c;J)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/internal/view/e/c/c;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/c;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/c;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/ads/internal/view/e/c/c;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c;->a:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 3

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/c;->c:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a(Lcom/facebook/ads/internal/j/f;)Z

    :cond_16
    return-void
.end method

.method protected b()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/c;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/c;->c:Lcom/facebook/ads/internal/j/f;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b(Lcom/facebook/ads/internal/j/f;)Z

    :cond_13
    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

.method public setCountdownTextColor(I)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.c.AnonymousClass1 (com.facebook.ads.internal.view.e.c.c$1)
.class Lcom/facebook/ads/internal/view/e/c/c$1;
.super Lcom/facebook/ads/internal/j/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/j/f",
        "<",
        "Lcom/facebook/ads/internal/view/e/b/n;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/c;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/c$1;->a:Lcom/facebook/ads/internal/view/e/c/c;

    invoke-direct {p0}, Lcom/facebook/ads/internal/j/f;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/facebook/ads/internal/view/e/b/n;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/ads/internal/view/e/b/n;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/n;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/c$1;->a(Lcom/facebook/ads/internal/view/e/b/n;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/n;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c$1;->a:Lcom/facebook/ads/internal/view/e/c/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/c;->a(Lcom/facebook/ads/internal/view/e/c/c;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/c$1;->a:Lcom/facebook/ads/internal/view/e/c/c;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/c;->d(Lcom/facebook/ads/internal/view/e/c/c;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/c$1;->a:Lcom/facebook/ads/internal/view/e/c/c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/e/c/c$1;->a:Lcom/facebook/ads/internal/view/e/c/c;

    invoke-static {v2}, Lcom/facebook/ads/internal/view/e/c/c;->b(Lcom/facebook/ads/internal/view/e/c/c;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/ads/internal/view/e/b;->getDuration()I

    move-result v2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/c$1;->a:Lcom/facebook/ads/internal/view/e/c/c;

    invoke-static {v3}, Lcom/facebook/ads/internal/view/e/c/c;->c(Lcom/facebook/ads/internal/view/e/c/c;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/internal/view/e/b;->getCurrentPosition()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/facebook/ads/internal/view/e/c/c;->a(Lcom/facebook/ads/internal/view/e/c/c;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method
