###### Class com.vungle.publisher.ob (com.vungle.publisher.ob)
.class public Lcom/vungle/publisher/ob;
.super Lcom/vungle/publisher/mm;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ob$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mm",
        "<",
        "Lcom/vungle/publisher/om;",
        ">;"
    }
.end annotation


# instance fields
.field n:Lcom/vungle/publisher/om$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/vungle/publisher/mm;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;Lcom/vungle/publisher/p;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/mj;
    .registers 5

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ob;->b(Ljava/lang/String;Lcom/vungle/publisher/p;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/om;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ob;->k:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/ao;

    invoke-direct {v1}, Lcom/vungle/publisher/ao;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 33
    :goto_a
    return-void

    .line 30
    :catch_b
    move-exception v0

    .line 31
    const-string v1, "VungleAd"

    const-string v2, "exception in onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a
.end method

.method protected b(Ljava/lang/String;Lcom/vungle/publisher/p;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/om;
    .registers 6

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/ob;->n:Lcom/vungle/publisher/om$a;

    iget-boolean v1, p0, Lcom/vungle/publisher/ob;->c:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/vungle/publisher/om$a;->a(Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)Lcom/vungle/publisher/mj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/om;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v0, "postRollFragment"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/inject/Injector;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 48
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->c()Lcom/vungle/publisher/inject/w;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/inject/w;->a(Lcom/vungle/publisher/ob;)V

    .line 53
    :goto_11
    invoke-super {p0, p1}, Lcom/vungle/publisher/mm;->onActivityCreated(Landroid/os/Bundle;)V

    .line 54
    return-void

    .line 50
    :cond_15
    const-string v0, "VungleAd"

    const-string v1, "SDK not initialized"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/vungle/publisher/ob;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_11
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/vungle/publisher/mm;->onCreate(Landroid/os/Bundle;)V

    .line 43
    return-void
.end method

###### Class com.vungle.publisher.ob.a (com.vungle.publisher.ob$a)
.class public Lcom/vungle/publisher/ob$a;
.super Lcom/vungle/publisher/mm$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mm$a",
        "<",
        "Lcom/vungle/publisher/ob;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ob;",
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
    .line 67
    invoke-direct {p0}, Lcom/vungle/publisher/mm$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/mm;
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/vungle/publisher/ob$a;->c()Lcom/vungle/publisher/ob;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string v0, "postRollFragment"

    return-object v0
.end method

.method protected c()Lcom/vungle/publisher/ob;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/ob$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ob;

    return-object v0
.end method
