###### Class com.moat.analytics.mobile.vng.n (com.moat.analytics.mobile.vng.n)
.class Lcom/moat/analytics/mobile/vng/n;
.super Lcom/moat/analytics/mobile/vng/MoatFactory;


# direct methods
.method constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/MoatFactory;-><init>()V

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/n;->a()Z

    move-result v0

    if-nez v0, :cond_1e

    const/4 v0, 0x3

    const-string v1, "Factory"

    const-string v2, "Failed to initialize MoatFactory. Please check that you\'ve initialized the Moat SDK correctly."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "Failed to initialize MoatFactory, SDK was not started"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/m;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/m;-><init>()V

    throw v0

    :cond_1e
    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;"
        }
    .end annotation

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/n$3;

    invoke-direct {v1, p0, v0, p2}, Lcom/moat/analytics/mobile/vng/n$3;-><init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    const-class v0, Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/x;->a(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
    .registers 4

    new-instance v0, Lcom/moat/analytics/mobile/vng/n$4;

    invoke-direct {v0, p0, p1}, Lcom/moat/analytics/mobile/vng/n$4;-><init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/String;)V

    const-class v1, Lcom/moat/analytics/mobile/vng/NativeVideoTracker;

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/x;->a(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/NativeVideoTracker;

    return-object v0
.end method

.method private a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .registers 4

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/n$2;

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/vng/n$2;-><init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/moat/analytics/mobile/vng/WebAdTracker;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/x;->a(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/WebAdTracker;

    return-object v0
.end method

.method private a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .registers 4

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/n$1;

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/vng/n$1;-><init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/ref/WeakReference;)V

    const-class v0, Lcom/moat/analytics/mobile/vng/WebAdTracker;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/x;->a(Lcom/moat/analytics/mobile/vng/x$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/WebAdTracker;

    return-object v0
.end method

.method private a(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/vng/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/moat/analytics/mobile/vng/MoatPlugin;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private a()Z
    .registers 2

    invoke-static {}, Lcom/moat/analytics/mobile/vng/k;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/k;->a()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public createCustomTracker(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/vng/MoatPlugin",
            "<TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/n;->a(Lcom/moat/analytics/mobile/vng/MoatPlugin;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    invoke-interface {p1}, Lcom/moat/analytics/mobile/vng/MoatPlugin;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method

.method public createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/moat/analytics/mobile/vng/n;->a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$c;-><init>()V

    goto :goto_4
.end method

.method public createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$d;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$d;-><init>()V

    goto :goto_4
.end method

.method public createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/n;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$e;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$e;-><init>()V

    goto :goto_4
.end method

.method public createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    .registers 3

    :try_start_0
    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/vng/n;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/v$e;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/v$e;-><init>()V

    goto :goto_4
.end method

###### Class com.moat.analytics.mobile.vng.n.AnonymousClass1 (com.moat.analytics.mobile.vng.n$1)
.class Lcom/moat/analytics/mobile/vng/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/n;->a(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/x$a",
        "<",
        "Lcom/moat/analytics/mobile/vng/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/n$1;->b:Lcom/moat/analytics/mobile/vng/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/n$1;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Lcom/moat/analytics/mobile/vng/WebAdTracker;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/n$1;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    if-nez v0, :cond_1e

    const-string v0, "Factory"

    const-string v1, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "WebAdTracker not created, webView is null"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const-string v1, "Factory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating WebAdTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[INFO] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to create WebAdTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/aa;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/vng/aa;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto :goto_1d
.end method

###### Class com.moat.analytics.mobile.vng.n.AnonymousClass2 (com.moat.analytics.mobile.vng.n$2)
.class Lcom/moat/analytics/mobile/vng/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/n;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/WebAdTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/x$a",
        "<",
        "Lcom/moat/analytics/mobile/vng/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/ref/WeakReference;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/n$2;->b:Lcom/moat/analytics/mobile/vng/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/n$2;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Lcom/moat/analytics/mobile/vng/WebAdTracker;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/n$2;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1e

    const-string v0, "Factory"

    const-string v1, "Target ViewGroup is null. Not creating WebAdTracker."

    invoke-static {v5, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "WebAdTracker not created, adContainer ViewGroup is null"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    const-string v1, "Factory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating WebAdTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[INFO] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to create WebAdTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/ab;->a(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/vng/a/b/a;->c()Z

    move-result v2

    const-string v3, "Factory"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WebView "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v2, :cond_bf

    const-string v0, ""

    :goto_93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "found inside of ad container."

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v3, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v2, :cond_ad

    const-string v0, "[ERROR] "

    const-string v2, "WebAdTracker not created, no WebView to track inside of ad container"

    invoke-static {v0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    new-instance v2, Lcom/moat/analytics/mobile/vng/aa;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-direct {v2, v0}, Lcom/moat/analytics/mobile/vng/aa;-><init>(Landroid/webkit/WebView;)V

    invoke-static {v2}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto/16 :goto_1d

    :cond_bf
    const-string v0, "not "

    goto :goto_93
.end method

###### Class com.moat.analytics.mobile.vng.n.AnonymousClass3 (com.moat.analytics.mobile.vng.n$3)
.class Lcom/moat/analytics/mobile/vng/n$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/n;->a(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/x$a",
        "<",
        "Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/ref/WeakReference;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/moat/analytics/mobile/vng/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V
    .registers 4

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/n$3;->c:Lcom/moat/analytics/mobile/vng/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/n$3;->a:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/vng/n$3;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Lcom/moat/analytics/mobile/vng/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/n$3;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1e

    const-string v0, "Factory"

    const-string v1, "Target view is null. Not creating NativeDisplayTracker."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "NativeDisplayTracker creation failed, subject view is null"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :goto_1d
    return-object v0

    :cond_1e
    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/n$3;->b:Ljava/util/Map;

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/n$3;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3d

    :cond_2a
    const-string v0, "Factory"

    const-string v1, "adIds is null or empty. NativeDisplayTracker initialization failed."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "NativeDisplayTracker creation failed, adIds is null or empty"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto :goto_1d

    :cond_3d
    const-string v1, "Factory"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating NativeDisplayTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[INFO] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to create NativeDisplayTracker for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/moat/analytics/mobile/vng/t;

    iget-object v2, p0, Lcom/moat/analytics/mobile/vng/n$3;->b:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/moat/analytics/mobile/vng/t;-><init>(Landroid/view/View;Ljava/util/Map;)V

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto/16 :goto_1d
.end method

###### Class com.moat.analytics.mobile.vng.n.AnonymousClass4 (com.moat.analytics.mobile.vng.n$4)
.class Lcom/moat/analytics/mobile/vng/n$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/moat/analytics/mobile/vng/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/vng/n;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/vng/NativeVideoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/vng/x$a",
        "<",
        "Lcom/moat/analytics/mobile/vng/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/moat/analytics/mobile/vng/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/vng/n;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/n$4;->b:Lcom/moat/analytics/mobile/vng/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/vng/n$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/moat/analytics/mobile/vng/a/b/a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/vng/a/b/a",
            "<",
            "Lcom/moat/analytics/mobile/vng/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/n$4;->a:Ljava/lang/String;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/n$4;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    :cond_d
    const-string v0, "Factory"

    const-string v1, "partnerCode is null or empty. NativeVideoTracker initialization failed."

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[ERROR] "

    const-string v1, "NativeDisplayTracker creation failed, partnerCode is null or empty"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a/b/a;->a()Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "Factory"

    const-string v1, "Creating NativeVideo tracker."

    invoke-static {v2, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "[INFO] "

    const-string v1, "Attempting to create NativeVideoTracker"

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/moat/analytics/mobile/vng/u;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/n$4;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/vng/u;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a/b/a;->a(Ljava/lang/Object;)Lcom/moat/analytics/mobile/vng/a/b/a;

    move-result-object v0

    goto :goto_1f
.end method
