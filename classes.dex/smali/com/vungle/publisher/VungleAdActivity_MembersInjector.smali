###### Class com.vungle.publisher.VungleAdActivity_MembersInjector (com.vungle.publisher.VungleAdActivity_MembersInjector)
.class public final Lcom/vungle/publisher/VungleAdActivity_MembersInjector;
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
        "Lcom/vungle/publisher/VungleAdActivity;",
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
            "Lcom/vungle/publisher/bz;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cn$b;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lm;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mg$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/u;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    const-class v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bz;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cn$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lm;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mg$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/u;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    .local p2, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bz;>;"
    .local p3, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    .local p4, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/cn$b;>;"
    .local p5, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/lm;>;"
    .local p6, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/mg$a;>;"
    .local p7, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/u;>;"
    .local p8, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/log/g;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 46
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->b:Ljavax/inject/Provider;

    .line 47
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 48
    :cond_1d
    iput-object p2, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->c:Ljavax/inject/Provider;

    .line 49
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 50
    :cond_2b
    iput-object p3, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->d:Ljavax/inject/Provider;

    .line 51
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_39

    if-nez p4, :cond_39

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 52
    :cond_39
    iput-object p4, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->e:Ljavax/inject/Provider;

    .line 53
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_47

    if-nez p5, :cond_47

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_47
    iput-object p5, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->f:Ljavax/inject/Provider;

    .line 55
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_55

    if-nez p6, :cond_55

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 56
    :cond_55
    iput-object p6, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->g:Ljavax/inject/Provider;

    .line 57
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_63

    if-nez p7, :cond_63

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 58
    :cond_63
    iput-object p7, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->h:Ljavax/inject/Provider;

    .line 59
    sget-boolean v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->a:Z

    if-nez v0, :cond_71

    if-nez p8, :cond_71

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 60
    :cond_71
    iput-object p8, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->i:Ljavax/inject/Provider;

    .line 61
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bz;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cn$b;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lm;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mg$a;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/u;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/VungleAdActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    .local p1, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bz;>;"
    .local p2, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    .local p3, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/cn$b;>;"
    .local p4, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/lm;>;"
    .local p5, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/mg$a;>;"
    .local p6, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/u;>;"
    .local p7, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/log/g;>;"
    new-instance v0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static injectAdConfigFactory(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/u;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "adConfigFactoryProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/u;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/u;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->i:Lcom/vungle/publisher/u;

    .line 131
    return-void
.end method

.method public static injectAdMediator(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cn$b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 115
    .local p1, "adMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/cn$b;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn$b;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->f:Lcom/vungle/publisher/cn$b;

    .line 116
    return-void
.end method

.method public static injectAdPresenterMediator(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/mg$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "adPresenterMediatorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/mg$a;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg$a;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->h:Lcom/vungle/publisher/mg$a;

    .line 126
    return-void
.end method

.method public static injectAudioHelper(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/lm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "audioHelperProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/lm;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lm;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->g:Lcom/vungle/publisher/lm;

    .line 121
    return-void
.end method

.method public static injectEventBus(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/qg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "eventBusProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/qg;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qg;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->c:Lcom/vungle/publisher/qg;

    .line 101
    return-void
.end method

.method public static injectLogger(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/log/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "loggerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/log/g;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/log/g;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->j:Lcom/vungle/publisher/log/g;

    .line 136
    return-void
.end method

.method public static injectSdkState(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/r;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    .local p1, "sdkStateProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/env/r;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/r;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->e:Lcom/vungle/publisher/env/r;

    .line 111
    return-void
.end method

.method public static injectUiExecutor(Lcom/vungle/publisher/VungleAdActivity;Ljavax/inject/Provider;)V
    .registers 3
    .param p0, "instance"    # Lcom/vungle/publisher/VungleAdActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/bz;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "uiExecutorProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/vungle/publisher/bz;>;"
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bz;

    iput-object v0, p0, Lcom/vungle/publisher/VungleAdActivity;->d:Lcom/vungle/publisher/bz;

    .line 106
    return-void
.end method


# virtual methods
.method public injectMembers(Lcom/vungle/publisher/VungleAdActivity;)V
    .registers 4
    .param p1, "instance"    # Lcom/vungle/publisher/VungleAdActivity;

    .prologue
    .line 85
    if-nez p1, :cond_a

    .line 86
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_a
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/qg;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->c:Lcom/vungle/publisher/qg;

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bz;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->d:Lcom/vungle/publisher/bz;

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/r;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->e:Lcom/vungle/publisher/env/r;

    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn$b;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->f:Lcom/vungle/publisher/cn$b;

    .line 92
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lm;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->g:Lcom/vungle/publisher/lm;

    .line 93
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg$a;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->h:Lcom/vungle/publisher/mg$a;

    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->h:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/u;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->i:Lcom/vungle/publisher/u;

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->i:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/log/g;

    iput-object v0, p1, Lcom/vungle/publisher/VungleAdActivity;->j:Lcom/vungle/publisher/log/g;

    .line 96
    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 15
    check-cast p1, Lcom/vungle/publisher/VungleAdActivity;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/VungleAdActivity_MembersInjector;->injectMembers(Lcom/vungle/publisher/VungleAdActivity;)V

    return-void
.end method
