###### Class com.vungle.publisher.InitializationEventListener_MembersInjector (com.vungle.publisher.InitializationEventListener_MembersInjector)
.class public final Lcom/vungle/publisher/InitializationEventListener_MembersInjector;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/InitializationEventListener;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    const-class v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    .local p2, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    .local p3, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/vc;>;"
    .local p4, "initialConfigUpdatedEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$a;>;"
    .local p5, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 37
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->b:Ljavax/inject/Provider;

    .line 38
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 39
    :cond_1d
    iput-object p2, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->c:Ljavax/inject/Provider;

    .line 40
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 41
    :cond_2b
    iput-object p3, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->d:Ljavax/inject/Provider;

    .line 42
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 43
    :cond_39
    iput-object p4, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->e:Ljavax/inject/Provider;

    .line 44
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 45
    :cond_47
    iput-object p5, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->f:Ljavax/inject/Provider;

    .line 46
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    .local p1, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    .local p2, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/vc;>;"
    .local p3, "initialConfigUpdatedEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$a;>;"
    .local p4, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    new-instance v0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectExecutor(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bw;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/bw;

    .line 78
    return-void
.end method

.method public static injectInitialConfigUpdatedEventListener(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "initialConfigUpdatedEventListenerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/InitializationEventListener$a;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/InitializationEventListener$a;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/InitializationEventListener$a;

    .line 91
    return-void
.end method

.method public static injectProtocolHttpGateway(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/vc;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vc;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/vc;

    .line 84
    return-void
.end method

.method public static injectSdkState(Lcom/vungle/publisher/InitializationEventListener;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/r;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/env/r;

    .line 96
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/vungle/publisher/InitializationEventListener;)V
    .registers 4
    .param p1, "instance"    # Lcom/vungle/publisher/InitializationEventListener;

    .prologue
    .line 65
    if-nez p1, :cond_a

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_a
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qg;

    iput-object v0, p1, Lcom/vungle/publisher/pi;->eventBus:Lcom/vungle/publisher/qg;

    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bw;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->a:Lcom/vungle/publisher/bw;

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vc;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->b:Lcom/vungle/publisher/vc;

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/InitializationEventListener$a;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->c:Lcom/vungle/publisher/InitializationEventListener$a;

    .line 72
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/r;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener;->d:Lcom/vungle/publisher/env/r;

    .line 73
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 12
    check-cast p1, Lcom/vungle/publisher/InitializationEventListener;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/InitializationEventListener_MembersInjector;->injectMembers(Lcom/vungle/publisher/InitializationEventListener;)V

    return-void
.end method
