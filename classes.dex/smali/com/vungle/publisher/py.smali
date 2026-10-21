###### Class com.vungle.publisher.py (com.vungle.publisher.py)
.class public Lcom/vungle/publisher/py;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/py$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/VungleInitListener;

.field b:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    .line 19
    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .registers 4

    .prologue
    .line 42
    iget-object v0, p0, Lcom/vungle/publisher/py;->b:Lcom/vungle/publisher/bw;

    sget-object v1, Lcom/vungle/publisher/bw$b;->p:Lcom/vungle/publisher/bw$b;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bw$b;)V

    .line 43
    return-void
.end method


# virtual methods
.method synthetic a()V
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    if-eqz v0, :cond_f

    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    invoke-interface {v0}, Lcom/vungle/publisher/VungleInitListener;->onSuccess()V

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    .line 26
    invoke-virtual {p0}, Lcom/vungle/publisher/py;->unregister()V

    .line 28
    :cond_f
    return-void
.end method

.method synthetic a(Lcom/vungle/publisher/qj;)V
    .registers 4

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    if-eqz v0, :cond_11

    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    iget-object v1, p1, Lcom/vungle/publisher/qj;->a:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/VungleInitListener;->onFailure(Ljava/lang/Throwable;)V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    .line 36
    invoke-virtual {p0}, Lcom/vungle/publisher/py;->unregister()V

    .line 38
    :cond_11
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/qj;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/qj;

    .prologue
    .line 32
    invoke-static {p0, p1}, Lcom/vungle/publisher/qa;->a(Lcom/vungle/publisher/py;Lcom/vungle/publisher/qj;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/py;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/qk;)V
    .registers 3
    .param p1, "event"    # Lcom/vungle/publisher/qk;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/vungle/publisher/pz;->a(Lcom/vungle/publisher/py;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/py;->a(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

###### Class com.vungle.publisher.py.a (com.vungle.publisher.py$a)
.class public Lcom/vungle/publisher/py$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/py;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/VungleInitListener;)Lcom/vungle/publisher/py;
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/py$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/py;

    .line 56
    iput-object p1, v0, Lcom/vungle/publisher/py;->a:Lcom/vungle/publisher/VungleInitListener;

    .line 57
    return-object v0
.end method
