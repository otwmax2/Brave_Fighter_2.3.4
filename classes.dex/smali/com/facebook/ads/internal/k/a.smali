###### Class com.facebook.ads.internal.k.a (com.facebook.ads.internal.k.a)
.class public Lcom/facebook/ads/internal/k/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Landroid/os/Messenger;

.field private final f:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/k/a;->d:Z

    new-instance v0, Lcom/facebook/ads/internal/k/a$1;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/k/a$1;-><init>(Lcom/facebook/ads/internal/k/a;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/k/a;->f:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/facebook/ads/internal/k/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/ads/internal/k/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/ads/internal/k/a;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k/a;)Landroid/os/Bundle;
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/k/a;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k/a;Landroid/os/Messenger;)Landroid/os/Messenger;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/k/a;->e:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/k/a;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/k/a;->d:Z

    return p1
.end method

.method private b()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PARAM_PROTOCOL_VERSION"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "PARAM_AN_UUID"

    iget-object v2, p0, Lcom/facebook/ads/internal/k/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PARAM_REQUEST_ID"

    iget-object v2, p0, Lcom/facebook/ads/internal/k/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/k/a;)Landroid/os/Messenger;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->e:Landroid/os/Messenger;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/k/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.audiencenetwork.AudienceNetworkService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_c
    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/ads/internal/k/a;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->f:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1e} :catch_1f

    :cond_1e
    :goto_1e
    return-void

    :catch_1f
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    goto :goto_1e
.end method

###### Class com.facebook.ads.internal.k.a.AnonymousClass1 (com.facebook.ads.internal.k.a$1)
.class Lcom/facebook/ads/internal/k/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/k/a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/k/a;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/k/a;->a(Lcom/facebook/ads/internal/k/a;Z)Z

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/k/a;->a(Lcom/facebook/ads/internal/k/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    const/4 v0, 0x0

    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/k/a;->a(Lcom/facebook/ads/internal/k/a;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_1e
    iget-object v1, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/k/a;->b(Lcom/facebook/ads/internal/k/a;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_27} :catch_31

    :goto_27
    iget-object v0, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/k/a;->c(Lcom/facebook/ads/internal/k/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void

    :catch_31
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-static {v1}, Lcom/facebook/ads/internal/k/a;->c(Lcom/facebook/ads/internal/k/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    goto :goto_27
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    invoke-static {v0}, Lcom/facebook/ads/internal/k/a;->c(Lcom/facebook/ads/internal/k/a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_16

    :goto_9
    iget-object v0, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/k/a;->a(Lcom/facebook/ads/internal/k/a;Landroid/os/Messenger;)Landroid/os/Messenger;

    iget-object v0, p0, Lcom/facebook/ads/internal/k/a$1;->a:Lcom/facebook/ads/internal/k/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/k/a;->a(Lcom/facebook/ads/internal/k/a;Z)Z

    return-void

    :catch_16
    move-exception v0

    goto :goto_9
.end method
