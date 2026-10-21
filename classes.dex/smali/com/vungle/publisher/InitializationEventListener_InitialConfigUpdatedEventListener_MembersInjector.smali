###### Class com.vungle.publisher.InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector (com.vungle.publisher.InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector)
.class public final Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;
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
        "Lcom/vungle/publisher/InitializationEventListener$a;",
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
            "Lcom/vungle/publisher/c;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yk;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/c;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yk;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    .local p2, "adManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/c;>;"
    .local p3, "reportManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/yk;>;"
    .local p4, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    .local p5, "loggingManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/log/g;>;"
    .local p6, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/vc;>;"
    .local p7, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 44
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->b:Ljavax/inject/Provider;

    .line 45
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_1d
    iput-object p2, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->c:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_2b
    iput-object p3, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->d:Ljavax/inject/Provider;

    .line 49
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_39
    iput-object p4, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->e:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_47
    iput-object p5, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->f:Ljavax/inject/Provider;

    .line 53
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_55

    if-nez p6, :cond_55

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_55
    iput-object p6, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->g:Ljavax/inject/Provider;

    .line 55
    sget-boolean v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->a:Z

    if-nez v0, :cond_63

    if-nez p7, :cond_63

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_63
    iput-object p7, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->h:Ljavax/inject/Provider;

    .line 57
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/c;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yk;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    .local p1, "adManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/c;>;"
    .local p2, "reportManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/yk;>;"
    .local p3, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    .local p4, "loggingManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/log/g;>;"
    .local p5, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/vc;>;"
    .local p6, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    new-instance v0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAdManager(Lcom/vungle/publisher/InitializationEventListener$a;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "adManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/c;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/c;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->a:Lcom/vungle/publisher/c;

    .line 97
    return-void
.end method

.method public static injectExecutor(Lcom/vungle/publisher/InitializationEventListener$a;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bw;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "executorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bw;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bw;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->f:Lcom/vungle/publisher/bw;

    .line 127
    return-void
.end method

.method public static injectLoggingManager(Lcom/vungle/publisher/InitializationEventListener$a;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "loggingManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/log/g;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/log/g;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->d:Lcom/vungle/publisher/log/g;

    .line 115
    return-void
.end method

.method public static injectProtocolHttpGateway(Lcom/vungle/publisher/InitializationEventListener$a;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/vc;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "protocolHttpGatewayProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/vc;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vc;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->e:Lcom/vungle/publisher/vc;

    .line 121
    return-void
.end method

.method public static injectReportManager(Lcom/vungle/publisher/InitializationEventListener$a;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p1, "reportManagerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/yk;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yk;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->b:Lcom/vungle/publisher/yk;

    .line 103
    return-void
.end method

.method public static injectSdkState(Lcom/vungle/publisher/InitializationEventListener$a;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/InitializationEventListener$a;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 108
    .local p1, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/r;

    iput-object v0, p0, Lcom/vungle/publisher/InitializationEventListener$a;->c:Lcom/vungle/publisher/env/r;

    .line 109
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/vungle/publisher/InitializationEventListener$a;)V
    .registers 4
    .param p1, "instance"    # Lcom/vungle/publisher/InitializationEventListener$a;

    .prologue
    .line 81
    if-nez p1, :cond_a

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_a
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qg;

    iput-object v0, p1, Lcom/vungle/publisher/pi;->eventBus:Lcom/vungle/publisher/qg;

    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/c;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener$a;->a:Lcom/vungle/publisher/c;

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yk;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener$a;->b:Lcom/vungle/publisher/yk;

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/r;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener$a;->c:Lcom/vungle/publisher/env/r;

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/log/g;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener$a;->d:Lcom/vungle/publisher/log/g;

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vc;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener$a;->e:Lcom/vungle/publisher/vc;

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bw;

    iput-object v0, p1, Lcom/vungle/publisher/InitializationEventListener$a;->f:Lcom/vungle/publisher/bw;

    .line 91
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Lcom/vungle/publisher/InitializationEventListener$a;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/InitializationEventListener_InitialConfigUpdatedEventListener_MembersInjector;->injectMembers(Lcom/vungle/publisher/InitializationEventListener$a;)V

    return-void
.end method
