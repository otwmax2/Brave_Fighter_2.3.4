###### Class com.facebook.ads.internal.view.e.c.b (com.facebook.ads.internal.view.e.c.b)
.class public Lcom/facebook/ads/internal/view/e/c/b;
.super Lcom/facebook/ads/internal/view/e/a/c;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/AudioManager$OnAudioFocusChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/ads/internal/view/e/b/c;

.field private final c:Lcom/facebook/ads/internal/view/e/b/i;

.field private final d:Lcom/facebook/ads/internal/view/e/b/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/view/e/a/c;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b;->a:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/b$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/b$1;-><init>(Lcom/facebook/ads/internal/view/e/c/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b;->b:Lcom/facebook/ads/internal/view/e/b/c;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/b$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/b$2;-><init>(Lcom/facebook/ads/internal/view/e/c/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b;->c:Lcom/facebook/ads/internal/view/e/b/i;

    new-instance v0, Lcom/facebook/ads/internal/view/e/c/b$3;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/e/c/b$3;-><init>(Lcom/facebook/ads/internal/view/e/c/b;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b;->d:Lcom/facebook/ads/internal/view/e/b/k;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/e/c/b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/b;->a:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/e/c/b;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/view/e/c/b;)Lcom/facebook/ads/internal/view/e/b;
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 5

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->a()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/b;->d:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/b;->b:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/b;->c:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->a([Lcom/facebook/ads/internal/j/f;)V

    :cond_26
    return-void
.end method

.method protected b()V
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/b;->getEventBus()Lcom/facebook/ads/internal/j/e;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/ads/internal/j/f;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/b;->c:Lcom/facebook/ads/internal/view/e/b/i;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/b;->b:Lcom/facebook/ads/internal/view/e/b/c;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/facebook/ads/internal/view/e/c/b;->d:Lcom/facebook/ads/internal/view/e/b/k;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/j/e;->b([Lcom/facebook/ads/internal/j/f;)V

    :cond_23
    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->b()V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .registers 4

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_10

    if-gtz p1, :cond_10

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getVideoView()Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/b;->a(Z)V

    :cond_10
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b;->a:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_1c

    const/4 v1, 0x0

    :goto_15
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    invoke-super {p0}, Lcom/facebook/ads/internal/view/e/a/c;->onDetachedFromWindow()V

    return-void

    :cond_1c
    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_15
.end method

###### Class com.facebook.ads.internal.view.e.c.b.AnonymousClass1 (com.facebook.ads.internal.view.e.c.b$1)
.class Lcom/facebook/ads/internal/view/e/c/b$1;
.super Lcom/facebook/ads/internal/view/e/b/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/b$1;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/b;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/b$1;->a(Lcom/facebook/ads/internal/view/e/b/b;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/b;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$1;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b$1;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void

    :cond_1f
    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b$1;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_1b
.end method

###### Class com.facebook.ads.internal.view.e.c.b.AnonymousClass2 (com.facebook.ads.internal.view.e.c.b$2)
.class Lcom/facebook/ads/internal/view/e/c/b$2;
.super Lcom/facebook/ads/internal/view/e/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/b$2;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/h;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/b$2;->a(Lcom/facebook/ads/internal/view/e/b/h;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/h;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$2;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b$2;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-nez v1, :cond_1f

    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void

    :cond_1f
    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b$2;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    goto :goto_1b
.end method

###### Class com.facebook.ads.internal.view.e.c.b.AnonymousClass3 (com.facebook.ads.internal.view.e.c.b$3)
.class Lcom/facebook/ads/internal/view/e/c/b$3;
.super Lcom/facebook/ads/internal/view/e/b/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/e/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/b;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/b;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-direct {p0}, Lcom/facebook/ads/internal/view/e/b/k;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/facebook/ads/internal/j/d;)V
    .registers 2

    check-cast p1, Lcom/facebook/ads/internal/view/e/b/j;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/view/e/c/b$3;->a(Lcom/facebook/ads/internal/view/e/b/j;)V

    return-void
.end method

.method public a(Lcom/facebook/ads/internal/view/e/b/j;)V
    .registers 6

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_23

    :cond_14
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    new-instance v1, Ljava/lang/ref/WeakReference;

    new-instance v2, Lcom/facebook/ads/internal/view/e/c/b$3$1;

    invoke-direct {v2, p0}, Lcom/facebook/ads/internal/view/e/c/b$3$1;-><init>(Lcom/facebook/ads/internal/view/e/c/b$3;)V

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    :cond_23
    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/e/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v1}, Lcom/facebook/ads/internal/view/e/c/b;->a(Lcom/facebook/ads/internal/view/e/c/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    return-void
.end method

###### Class com.facebook.ads.internal.view.e.c.b.AnonymousClass3.AnonymousClass1 (com.facebook.ads.internal.view.e.c.b$3$1)
.class Lcom/facebook/ads/internal/view/e/c/b$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/e/c/b$3;->a(Lcom/facebook/ads/internal/view/e/b/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/e/c/b$3;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/e/c/b$3;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/e/c/b$3$1;->a:Lcom/facebook/ads/internal/view/e/c/b$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$3$1;->a:Lcom/facebook/ads/internal/view/e/c/b$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/b;->b(Lcom/facebook/ads/internal/view/e/c/b;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    if-eqz v0, :cond_18

    if-gtz p1, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/e/c/b$3$1;->a:Lcom/facebook/ads/internal/view/e/c/b$3;

    iget-object v0, v0, Lcom/facebook/ads/internal/view/e/c/b$3;->a:Lcom/facebook/ads/internal/view/e/c/b;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/e/c/b;->c(Lcom/facebook/ads/internal/view/e/c/b;)Lcom/facebook/ads/internal/view/e/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/view/e/b;->a(Z)V

    :cond_18
    return-void
.end method
