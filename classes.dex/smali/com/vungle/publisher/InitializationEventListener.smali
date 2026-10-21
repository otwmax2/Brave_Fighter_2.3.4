###### Class com.vungle.publisher.InitializationEventListener (com.vungle.publisher.InitializationEventListener)
.class public Lcom/vungle/publisher/InitializationEventListener;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/InitializationEventListener$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/vc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/env/r;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final e:Lcom/vungle/publisher/zs;


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    .line 34
    new-instance v0, Lcom/vungle/publisher/zs;

    invoke-direct {v0}, Lcom/vungle/publisher/zs;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->e:Lcom/vungle/publisher/zs;

    .line 54
    return-void
.end method

.method private a(I)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->e:Lcom/vungle/publisher/zs;

    invoke-virtual {v0, p1, v2}, Lcom/vungle/publisher/zs;->a(II)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_23

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/env/r;

    iget-object v0, v0, Lcom/vungle/publisher/env/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 74
    invoke-virtual {p0}, Lcom/vungle/publisher/InitializationEventListener;->unregister()V

    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/bw;

    invoke-static {p0}, Lcom/vungle/publisher/a;->a(Lcom/vungle/publisher/InitializationEventListener;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/bw;->a(Ljava/lang/Runnable;J)V

    .line 88
    :cond_23
    :goto_23
    return-void

    .line 85
    :cond_24
    const-string v0, "VungleEvent"

    const-string v1, "Already processing initialize, going to drop this request"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
.end method


# virtual methods
.method synthetic a()V
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/InitializationEventListener$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/InitializationEventListener$a;->register()V

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/r;->g()V

    .line 80
    invoke-static {}, Lcom/vungle/publisher/qw;->a()V

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/vc;

    invoke-virtual {v0}, Lcom/vungle/publisher/vc;->a()V

    .line 82
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/cm;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/cm;

    .prologue
    .line 62
    const-string v0, "VungleDatabase"

    const-string v1, "on database ready"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/InitializationEventListener;->a(I)V

    .line 64
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/pf;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/pf;

    .prologue
    .line 57
    const-string v0, "VungleDevice"

    const-string v1, "device ID available"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/InitializationEventListener;->a(I)V

    .line 59
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/pg;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/pg;

    .prologue
    .line 67
    const-string v0, "VungleDevice"

    const-string v1, "webview user agent updated"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/vungle/publisher/InitializationEventListener;->a(I)V

    .line 69
    return-void
.end method

###### Class com.vungle.publisher.InitializationEventListener.a (com.vungle.publisher.InitializationEventListener$a)
.class Lcom/vungle/publisher/InitializationEventListener$a;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/InitializationEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/yk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/env/r;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/log/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/vc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/bw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic a()V
    .registers 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->d:Lcom/vungle/publisher/log/g;

    iget-object v1, p0, Lcom/vungle/publisher/InitializationEventListener$a;->e:Lcom/vungle/publisher/vc;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/log/g;->a(Lcom/vungle/publisher/vc;)V

    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/td;)V
    .registers 6
    .param p1, "event"    # Lcom/vungle/publisher/td;

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->c:Lcom/vungle/publisher/env/r;

    iget-object v0, v0, Lcom/vungle/publisher/env/r;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    invoke-virtual {p1}, Lcom/vungle/publisher/td;->a()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->c:Lcom/vungle/publisher/env/r;

    iget-object v0, v0, Lcom/vungle/publisher/env/r;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_41

    .line 118
    invoke-virtual {p0}, Lcom/vungle/publisher/InitializationEventListener$a;->unregister()V

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/qk;

    invoke-direct {v1}, Lcom/vungle/publisher/qk;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->b:Lcom/vungle/publisher/yk;

    invoke-virtual {v0}, Lcom/vungle/publisher/yk;->a()V

    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->a:Lcom/vungle/publisher/c;

    invoke-virtual {v0}, Lcom/vungle/publisher/c;->a()V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->c:Lcom/vungle/publisher/env/r;

    invoke-virtual {v0}, Lcom/vungle/publisher/env/r;->d()V

    .line 123
    invoke-static {p0}, Lcom/vungle/publisher/b;->a(Lcom/vungle/publisher/InitializationEventListener$a;)Ljava/lang/Runnable;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/vungle/publisher/InitializationEventListener$a;->f:Lcom/vungle/publisher/bw;

    const-wide/32 v2, 0x927c0

    invoke-virtual {v1, v0, v2, v3}, Lcom/vungle/publisher/bw;->b(Ljava/lang/Runnable;J)V

    .line 129
    :cond_41
    :goto_41
    return-void

    .line 127
    :cond_42
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/qj;

    new-instance v2, Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/vungle/publisher/td;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/vungle/publisher/qj;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    goto :goto_41
.end method
