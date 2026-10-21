###### Class com.vungle.publisher.li (com.vungle.publisher.li)
.class public Lcom/vungle/publisher/li;
.super Lcom/vungle/publisher/lf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/li$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/lf;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/li;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/vungle/publisher/li;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 32
    const-string v0, "webViewRootContentString"

    iget-object v1, p0, Lcom/vungle/publisher/li;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/li;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/li;->b:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 25
    iget-object v0, p0, Lcom/vungle/publisher/li;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/vungle/publisher/zk;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/li;->b:Ljava/lang/String;

    .line 27
    :cond_c
    iget-object v0, p0, Lcom/vungle/publisher/li;->b:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.li.a (com.vungle.publisher.li$a)
.class public Lcom/vungle/publisher/li$a;
.super Lcom/vungle/publisher/lf$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/li;
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
            "Lcom/vungle/publisher/li;",
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
    .line 40
    invoke-direct {p0}, Lcom/vungle/publisher/lf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/vungle/publisher/lf;
    .registers 3

    .prologue
    .line 49
    const-string v0, "webViewRootContentString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/li$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/li;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/vungle/publisher/li;
    .registers 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/li$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/li;

    .line 44
    invoke-static {v0, p1}, Lcom/vungle/publisher/li;->a(Lcom/vungle/publisher/li;Ljava/lang/String;)Ljava/lang/String;

    .line 45
    return-object v0
.end method
