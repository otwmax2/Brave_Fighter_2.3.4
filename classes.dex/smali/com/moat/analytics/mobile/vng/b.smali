###### Class com.moat.analytics.mobile.vng.b (com.moat.analytics.mobile.vng.b)
.class abstract Lcom/moat/analytics/mobile/vng/b;
.super Ljava/lang/Object;


# instance fields
.field a:Lcom/moat/analytics/mobile/vng/j;

.field final b:Ljava/lang/String;

.field final c:Z

.field d:Z

.field e:Z

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/moat/analytics/mobile/vng/z;

.field private final i:Z


# direct methods
.method constructor <init>(Landroid/view/View;ZZ)V
    .registers 8
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    const-string v1, "BaseTracker"

    const-string v2, "Initializing."

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_3e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "m"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    :goto_27
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->f:Ljava/lang/ref/WeakReference;

    iput-boolean p2, p0, Lcom/moat/analytics/mobile/vng/b;->i:Z

    iput-boolean p3, p0, Lcom/moat/analytics/mobile/vng/b;->c:Z

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/vng/b;->d:Z

    iput-boolean v3, p0, Lcom/moat/analytics/mobile/vng/b;->e:Z

    new-instance v0, Lcom/moat/analytics/mobile/vng/z;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/vng/z;-><init>()V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->h:Lcom/moat/analytics/mobile/vng/z;

    return-void

    :cond_3e
    const-string v0, ""

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    goto :goto_27
.end method

.method private g()V
    .registers 6

    const/4 v4, 0x3

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->g:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a/a/a;->a(Ljava/lang/Object;)V

    const-string v0, "BaseTracker"

    const-string v1, "Attempting bridge installation."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/b;->i:Z

    if-nez v0, :cond_2e

    iget-boolean v0, p0, Lcom/moat/analytics/mobile/vng/b;->c:Z

    if-nez v0, :cond_2e

    new-instance v1, Lcom/moat/analytics/mobile/vng/j;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    sget-object v2, Lcom/moat/analytics/mobile/vng/j$a;->a:Lcom/moat/analytics/mobile/vng/j$a;

    invoke-direct {v1, v0, v2}, Lcom/moat/analytics/mobile/vng/j;-><init>(Landroid/webkit/WebView;Lcom/moat/analytics/mobile/vng/j$a;)V

    iput-object v1, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    :cond_2e
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/j;->a:Z

    const-string v1, "BaseTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bridge "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_55

    const-string v0, ""

    :goto_43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "installed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_54
    return-void

    :cond_55
    const-string v0, "not "

    goto :goto_43

    :cond_58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    const-string v0, "BaseTracker"

    const-string v1, "Bridge not installed, WebView is null."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_54
.end method


# virtual methods
.method abstract a()Ljava/lang/String;
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 3

    if-eqz p1, :cond_1f

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->g:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    if-nez v0, :cond_10

    invoke-direct {p0}, Lcom/moat/analytics/mobile/vng/b;->g()V

    :cond_10
    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/j;->a:Z

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/j;->a(Lcom/moat/analytics/mobile/vng/b;)V

    :cond_1f
    return-void
.end method

.method a(Lcom/moat/analytics/mobile/vng/j;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    return-void
.end method

.method b()Z
    .registers 7

    const/4 v5, 0x1

    const/4 v4, 0x3

    const-string v0, "BaseTracker"

    const-string v1, "Attempting to start impression."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/moat/analytics/mobile/vng/b;->e:Z

    if-nez v1, :cond_41

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/j;->b(Lcom/moat/analytics/mobile/vng/b;)Z

    move-result v1

    const-string v2, "BaseTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3e

    const-string v0, ""

    :goto_25
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "started."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_65

    iput-boolean v5, p0, Lcom/moat/analytics/mobile/vng/b;->d:Z

    iput-boolean v5, p0, Lcom/moat/analytics/mobile/vng/b;->e:Z

    move v0, v1

    :goto_3d
    return v0

    :cond_3e
    const-string v0, "not "

    goto :goto_25

    :cond_41
    const-string v1, "BaseTracker"

    const-string v2, "startTracking failed, tracker already started"

    invoke-static {v4, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "[INFO] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already started"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    :cond_65
    move v0, v1

    goto :goto_3d
.end method

.method c()Z
    .registers 6

    const/4 v4, 0x3

    const-string v0, "BaseTracker"

    const-string v1, "Attempting to stop impression."

    invoke-static {v4, v0, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/moat/analytics/mobile/vng/b;->d:Z

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->a:Lcom/moat/analytics/mobile/vng/j;

    invoke-virtual {v0, p0}, Lcom/moat/analytics/mobile/vng/j;->c(Lcom/moat/analytics/mobile/vng/b;)Z

    move-result v1

    const-string v2, "BaseTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression tracking "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_34

    const-string v0, ""

    :goto_22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "stopped."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return v1

    :cond_34
    const-string v0, "not "

    goto :goto_22
.end method

.method public changeTargetView(Landroid/view/View;)V
    .registers 7
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const/4 v1, 0x3

    const-string v2, "BaseTracker"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changing view to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_46

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, p0, v0}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->f:Ljava/lang/ref/WeakReference;

    return-void

    :cond_46
    const-string v0, "null"

    goto :goto_33
.end method

.method d()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->d()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->d()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0

    :cond_32
    const-string v0, ""

    goto :goto_31
.end method

.method f()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->h:Lcom/moat/analytics/mobile/vng/z;

    iget-object v1, p0, Lcom/moat/analytics/mobile/vng/b;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->d()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/moat/analytics/mobile/vng/z;->a(Ljava/lang/String;Landroid/view/View;)V

    iget-object v0, p0, Lcom/moat/analytics/mobile/vng/b;->h:Lcom/moat/analytics/mobile/vng/z;

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/z;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public startTracking()V
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_3
    const-string v2, "BaseTracker"

    const-string v3, "In startTracking method."

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->b()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_65

    move-result v0

    :goto_e
    const-string v2, "BaseTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to start tracking ad impression was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_6a

    const-string v1, ""

    :goto_1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "successful."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_6d

    const-string v1, "[SUCCESS] "

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " startTracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_70

    const-string v0, "succeeded"

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_65
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_e

    :cond_6a
    const-string v1, "un"

    goto :goto_1f

    :cond_6d
    const-string v1, "[ERROR] "

    goto :goto_34

    :cond_70
    const-string v0, "failed"

    goto :goto_4b
.end method

.method public stopTracking()V
    .registers 6

    const/4 v4, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :try_start_3
    const-string v2, "BaseTracker"

    const-string v3, "In stopTracking method."

    invoke-static {v1, v2, p0, v3}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->c()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_65

    move-result v0

    :goto_e
    const-string v2, "BaseTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to stop tracking ad impression was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_6a

    const-string v1, ""

    :goto_1f
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "successful."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v2, p0, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_6d

    const-string v1, "[SUCCESS] "

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " stopTracking "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_70

    const-string v0, "succeeded"

    :goto_4b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/vng/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/vng/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_65
    move-exception v1

    invoke-static {v1}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_e

    :cond_6a
    const-string v1, "un"

    goto :goto_1f

    :cond_6d
    const-string v1, "[ERROR] "

    goto :goto_34

    :cond_70
    const-string v0, "failed"

    goto :goto_4b
.end method
