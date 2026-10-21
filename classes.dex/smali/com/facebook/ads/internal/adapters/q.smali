###### Class com.facebook.ads.internal.adapters.q (com.facebook.ads.internal.adapters.q)
.class public Lcom/facebook/ads/internal/adapters/q;
.super Lcom/facebook/ads/internal/adapters/ab;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/x;


# static fields
.field private static volatile a:Z


# instance fields
.field private b:Lcom/facebook/ads/internal/adapters/ac;

.field private c:Lcom/flurry/android/ads/FlurryAdNative;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/facebook/ads/internal/n/f;

.field private k:Lcom/facebook/ads/internal/n/f;

.field private l:Lcom/facebook/ads/internal/n/f;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/ab;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/facebook/ads/internal/adapters/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->j:Lcom/facebook/ads/internal/n/f;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/q;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/q;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->k:Lcom/facebook/ads/internal/n/f;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->f:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->l:Lcom/facebook/ads/internal/n/f;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->g:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->i:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic e(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->h:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/n/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public D()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public E()Lcom/facebook/ads/internal/n/c;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/n/c;->c:Lcom/facebook/ads/internal/n/c;

    return-object v0
.end method

.method public F()Lcom/facebook/ads/internal/adapters/g;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->e:Lcom/facebook/ads/internal/adapters/g;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/ac;",
            "Lcom/facebook/ads/internal/m/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/n/e$d;",
            ")V"
        }
    .end annotation

    const-string v0, "data"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "api_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "placement_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/facebook/ads/internal/adapters/q;

    monitor-enter v2

    :try_start_17
    sget-boolean v3, Lcom/facebook/ads/internal/adapters/q;->a:Z

    if-nez v3, :cond_43

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Initializing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->setLogEnabled(Z)V

    invoke-static {p1, v1}, Lcom/flurry/android/FlurryAgent;->init(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/ads/internal/adapters/q;->a:Z

    :cond_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_17 .. :try_end_44} :catchall_7b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loading"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/facebook/ads/internal/adapters/ac;

    new-instance v1, Lcom/flurry/android/ads/FlurryAdNative;

    invoke-direct {v1, p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    new-instance v1, Lcom/facebook/ads/internal/adapters/q$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/adapters/q$1;-><init>(Lcom/facebook/ads/internal/adapters/q;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/flurry/android/ads/FlurryAdNative;->setListener(Lcom/flurry/android/ads/FlurryAdNativeListener;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->fetchAd()V

    return-void

    :catchall_7b
    move-exception v0

    :try_start_7c
    monitor-exit v2
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    throw v0
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0, p1}, Lcom/flurry/android/ads/FlurryAdNative;->setTrackingView(Landroid/view/View;)V

    :cond_9
    return-void
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/facebook/ads/internal/adapters/ac;

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b_()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->removeTrackingView()V

    :cond_9
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/q;->d:Z

    return v0
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/facebook/ads/internal/n/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->j:Lcom/facebook/ads/internal/n/f;

    return-object v0
.end method

.method public m()Lcom/facebook/ads/internal/n/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->k:Lcom/facebook/ads/internal/n/f;

    return-object v0
.end method

.method public n()Lcom/facebook/ads/internal/n/h;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->e:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/q;->b_()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/q;->b:Lcom/facebook/ads/internal/adapters/ac;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNative;->destroy()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/q;->c:Lcom/flurry/android/ads/FlurryAdNative;

    :cond_11
    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->g:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->f:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->h:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->i:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lcom/facebook/ads/internal/n/g;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Lcom/facebook/ads/internal/n/f;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q;->l:Lcom/facebook/ads/internal/n/f;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    const-string v0, "Ad"

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Lcom/facebook/ads/internal/n/j;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/n/j;->a:Lcom/facebook/ads/internal/n/j;

    return-object v0
.end method

###### Class com.facebook.ads.internal.adapters.q.AnonymousClass1 (com.facebook.ads.internal.adapters.q$1)
.class Lcom/facebook/ads/internal/adapters/q$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/flurry/android/ads/FlurryAdNativeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/q;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/q;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/q;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/q$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppExit(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 2

    return-void
.end method

.method public onClicked(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->c(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_13
    return-void
.end method

.method public onCloseFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 2

    return-void
.end method

.method public onCollapsed(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 2

    return-void
.end method

.method public onError(Lcom/flurry/android/ads/FlurryAdNative;Lcom/flurry/android/ads/FlurryAdErrorType;I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/q;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed with FlurryError: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/flurry/android/ads/FlurryAdErrorType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {p2}, Lcom/flurry/android/ads/FlurryAdErrorType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    :cond_47
    return-void
.end method

.method public onExpanded(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 2

    return-void
.end method

.method public onFetched(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 8

    const/16 v3, 0x52

    const/16 v5, 0x14

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-nez v0, :cond_d

    :goto_c
    return-void

    :cond_d
    invoke-virtual {p1}, Lcom/flurry/android/ads/FlurryAdNative;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/q;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed. AN does not support Flurry video ads"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    new-instance v2, Lcom/facebook/ads/internal/protocol/a;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v4, "video ad"

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/protocol/a;-><init>(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_c

    :cond_4a
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;Z)Z

    const-string v0, "headline"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_61

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    :cond_61
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_72

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/q;->b(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    :cond_72
    const-string v0, "source"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/q;->c(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    :cond_83
    const-string v0, "appCategory"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_94

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/q;->d(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    :cond_94
    const-string v0, "callToAction"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_11a

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/internal/adapters/q;->e(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    :goto_a5
    const-string v0, "secImage"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_bb

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    new-instance v2, Lcom/facebook/ads/internal/n/f;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v3, v3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;

    :cond_bb
    const-string v0, "secHqImage"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_d5

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    new-instance v2, Lcom/facebook/ads/internal/n/f;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4b0

    const/16 v4, 0x273

    invoke-direct {v2, v0, v3, v4}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/q;->b(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;

    :cond_d5
    const-string v0, "secBrandingLogo"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_eb

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    new-instance v2, Lcom/facebook/ads/internal/n/f;

    invoke-virtual {v0}, Lcom/flurry/android/ads/FlurryAdNativeAsset;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v5, v5}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/adapters/q;->c(Lcom/facebook/ads/internal/adapters/q;Lcom/facebook/ads/internal/n/f;)Lcom/facebook/ads/internal/n/f;

    :cond_eb
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/q;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;)V

    goto/16 :goto_c

    :cond_11a
    const-string v0, "appRating"

    invoke-virtual {p1, v0}, Lcom/flurry/android/ads/FlurryAdNative;->getAsset(Ljava/lang/String;)Lcom/flurry/android/ads/FlurryAdNativeAsset;

    move-result-object v0

    if-eqz v0, :cond_12b

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    const-string v1, "Install Now"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/q;->e(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a5

    :cond_12b
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    const-string v1, "Learn More"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/q;->e(Lcom/facebook/ads/internal/adapters/q;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_a5
.end method

.method public onImpressionLogged(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 4

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/q;->a(Lcom/facebook/ads/internal/adapters/q;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/q$1;->b:Lcom/facebook/ads/internal/adapters/q;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->b(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_13
    return-void
.end method

.method public onShowFullscreen(Lcom/flurry/android/ads/FlurryAdNative;)V
    .registers 2

    return-void
.end method
