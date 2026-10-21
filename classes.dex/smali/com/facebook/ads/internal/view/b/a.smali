###### Class com.facebook.ads.internal.view.b.a (com.facebook.ads.internal.view.b.a)
.class public Lcom/facebook/ads/internal/view/b/a;
.super Lcom/facebook/ads/internal/q/c/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/view/b/a$c;,
        Lcom/facebook/ads/internal/view/b/a$d;,
        Lcom/facebook/ads/internal/view/b/a$a;,
        Lcom/facebook/ads/internal/view/b/a$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/ads/internal/q/a/s;

.field private d:Lcom/facebook/ads/internal/r/a;

.field private e:Lcom/facebook/ads/internal/r/a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/view/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/view/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/b/a$b;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/q/c/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/facebook/ads/internal/q/a/s;

    invoke-direct {v0}, Lcom/facebook/ads/internal/q/a/s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->c:Lcom/facebook/ads/internal/q/a/s;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/b/a;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Lcom/facebook/ads/internal/view/b/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/b/a$1;-><init>(Lcom/facebook/ads/internal/view/b/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->e:Lcom/facebook/ads/internal/r/a$a;

    new-instance v0, Lcom/facebook/ads/internal/r/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/b/a;->e:Lcom/facebook/ads/internal/r/a$a;

    invoke-direct {v0, p0, p3, v1}, Lcom/facebook/ads/internal/r/a;-><init>(Landroid/view/View;ILcom/facebook/ads/internal/r/a$a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b/a;->a()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b/a;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b/a;->b()Landroid/webkit/WebViewClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/internal/view/b/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/view/b/a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    new-instance v1, Lcom/facebook/ads/internal/view/b/a$a;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a$b;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/facebook/ads/internal/view/b/a$a;-><init>(Lcom/facebook/ads/internal/view/b/a;Lcom/facebook/ads/internal/view/b/a$b;Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/view/b/a$1;)V

    const-string v0, "AdControl"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/internal/view/b/a;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/view/b/a;)Lcom/facebook/ads/internal/q/a/s;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->c:Lcom/facebook/ads/internal/q/a/s;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/view/b/a;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->b:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method protected a()Landroid/webkit/WebChromeClient;
    .registers 2

    new-instance v0, Lcom/facebook/ads/internal/view/b/a$2;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/view/b/a$2;-><init>(Lcom/facebook/ads/internal/view/b/a;)V

    return-object v0
.end method

.method public a(II)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/r/a;->a(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/internal/r/a;->b(I)V

    return-void
.end method

.method protected b()Landroid/webkit/WebViewClient;
    .registers 6

    new-instance v0, Lcom/facebook/ads/internal/view/b/a$d;

    iget-object v1, p0, Lcom/facebook/ads/internal/view/b/a;->b:Ljava/lang/ref/WeakReference;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/ref/WeakReference;

    iget-object v4, p0, Lcom/facebook/ads/internal/view/b/a;->c:Lcom/facebook/ads/internal/q/a/s;

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/view/b/a$d;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->b()V

    iput-object v1, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    :cond_c
    iput-object v1, p0, Lcom/facebook/ads/internal/view/b/a;->e:Lcom/facebook/ads/internal/r/a$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/view/b/a;->c:Lcom/facebook/ads/internal/q/a/s;

    invoke-static {p0}, Lcom/facebook/ads/internal/q/c/b;->a(Landroid/webkit/WebView;)V

    invoke-super {p0}, Lcom/facebook/ads/internal/q/c/a;->destroy()V

    return-void
.end method

.method public getTouchData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->c:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/q/a/s;->e()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getViewabilityChecker()Lcom/facebook/ads/internal/r/a;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->c:Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {v0, p1, p0, p0}, Lcom/facebook/ads/internal/q/a/s;->a(Landroid/view/MotionEvent;Landroid/view/View;Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/q/c/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    invoke-super {p0, p1}, Lcom/facebook/ads/internal/q/c/a;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a$b;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/view/b/a$b;->a(I)V

    :cond_16
    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    if-eqz v0, :cond_21

    if-nez p1, :cond_22

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->a()V

    :cond_21
    :goto_21
    return-void

    :cond_22
    const/16 v0, 0x8

    if-ne p1, v0, :cond_21

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a;->d:Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->b()V

    goto :goto_21
.end method

###### Class com.facebook.ads.internal.view.b.a.AnonymousClass1 (com.facebook.ads.internal.view.b.a$1)
.class Lcom/facebook/ads/internal/view/b/a$1;
.super Lcom/facebook/ads/internal/r/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/b/a;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/b/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/b/a$1;->a:Lcom/facebook/ads/internal/view/b/a;

    invoke-direct {p0}, Lcom/facebook/ads/internal/r/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$1;->a:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/b/a;->a(Lcom/facebook/ads/internal/view/b/a;)Lcom/facebook/ads/internal/q/a/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/q/a/s;->a()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$1;->a:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/b/a;->b(Lcom/facebook/ads/internal/view/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$1;->a:Lcom/facebook/ads/internal/view/b/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/view/b/a;->b(Lcom/facebook/ads/internal/view/b/a;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a$b;

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/b/a$b;->b()V

    :cond_24
    return-void
.end method

###### Class com.facebook.ads.internal.view.b.a.AnonymousClass2 (com.facebook.ads.internal.view.b.a$2)
.class Lcom/facebook/ads/internal/view/b/a$2;
.super Landroid/webkit/WebChromeClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/view/b/a;->a()Landroid/webkit/WebChromeClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/view/b/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/view/b/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/view/b/a$2;->a:Lcom/facebook/ads/internal/view/b/a;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

###### Class com.facebook.ads.internal.view.b.a.C0021a (com.facebook.ads.internal.view.b.a$a)
.class public Lcom/facebook/ads/internal/view/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/b/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/r/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/ads/internal/view/b/a;Lcom/facebook/ads/internal/view/b/a$b;Lcom/facebook/ads/internal/r/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/facebook/ads/internal/view/b/a$a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->b:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->c:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/view/b/a;Lcom/facebook/ads/internal/view/b/a$b;Lcom/facebook/ads/internal/r/a;Lcom/facebook/ads/internal/view/b/a$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/internal/view/b/a$a;-><init>(Lcom/facebook/ads/internal/view/b/a;Lcom/facebook/ads/internal/view/b/a$b;Lcom/facebook/ads/internal/r/a;)V

    return-void
.end method


# virtual methods
.method public alert(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getAnalogInfo()Ljava/lang/String;
    .registers 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/facebook/ads/internal/g/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onPageInitialized()V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/facebook/ads/internal/view/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a$b;

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/facebook/ads/internal/view/b/a$b;->a()V

    :cond_1e
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/facebook/ads/internal/view/b/a$c;

    iget-object v2, p0, Lcom/facebook/ads/internal/view/b/a$a;->d:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Lcom/facebook/ads/internal/view/b/a$c;-><init>(Ljava/lang/ref/WeakReference;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

###### Class com.facebook.ads.internal.view.b.a.b (com.facebook.ads.internal.view.b.a$b)
.class public interface abstract Lcom/facebook/ads/internal/view/b/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b()V
.end method

###### Class com.facebook.ads.internal.view.b.a.c (com.facebook.ads.internal.view.b.a$c)
.class Lcom/facebook/ads/internal/view/b/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/r/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/r/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/b/a$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/r/a;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/facebook/ads/internal/r/a;->a()V

    :cond_d
    return-void
.end method

###### Class com.facebook.ads.internal.view.b.a.d (com.facebook.ads.internal.view.b.a$d)
.class Lcom/facebook/ads/internal/view/b/a$d;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/view/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/b/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/r/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/q/a/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/view/b/a$b;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/r/a;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/facebook/ads/internal/q/a/s;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/view/b/a$d;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/facebook/ads/internal/view/b/a$d;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/facebook/ads/internal/view/b/a$d;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 6

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$d;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/r/a;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/internal/r/a;->a(Ljava/util/Map;)V

    :cond_18
    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v2, "touch"

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$d;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/q/a/s;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/q/a/s;->e()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_35
    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/facebook/ads/internal/view/b/a$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/view/b/a$b;

    invoke-interface {v0, p2, v1}, Lcom/facebook/ads/internal/view/b/a$b;->a(Ljava/lang/String;Ljava/util/Map;)V

    :cond_48
    const/4 v0, 0x1

    return v0
.end method
