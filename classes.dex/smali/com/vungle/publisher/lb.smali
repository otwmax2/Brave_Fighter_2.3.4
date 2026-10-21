###### Class com.vungle.publisher.lb (com.vungle.publisher.lb)
.class public Lcom/vungle/publisher/lb;
.super Lcom/vungle/publisher/lf;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/lb$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/publisher/lf;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/lb;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 9
    iput-object p1, p0, Lcom/vungle/publisher/lb;->a:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 26
    const-string v0, "webViewRootContentIndexFile"

    iget-object v1, p0, Lcom/vungle/publisher/lb;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/vungle/publisher/lb;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/lb;->a:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.lb.a (com.vungle.publisher.lb$a)
.class public Lcom/vungle/publisher/lb$a;
.super Lcom/vungle/publisher/lf$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/lb;
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
            "Lcom/vungle/publisher/lb;",
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
    .line 34
    invoke-direct {p0}, Lcom/vungle/publisher/lf$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/vungle/publisher/lb;
    .registers 3

    .prologue
    .line 37
    iget-object v0, p0, Lcom/vungle/publisher/lb$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lb;

    .line 38
    invoke-static {v0, p1}, Lcom/vungle/publisher/lb;->a(Lcom/vungle/publisher/lb;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    return-object v0
.end method

.method public a(Landroid/os/Bundle;)Lcom/vungle/publisher/lf;
    .registers 3

    .prologue
    .line 43
    const-string v0, "webViewRootContentIndexFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/lb$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/lb;

    move-result-object v0

    return-object v0
.end method
