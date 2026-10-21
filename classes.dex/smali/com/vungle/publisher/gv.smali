###### Class com.vungle.publisher.gv (com.vungle.publisher.gv)
.class public Lcom/vungle/publisher/gv;
.super Lcom/vungle/publisher/cz;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/eg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gv$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cz",
        "<",
        "Lcom/vungle/publisher/gv;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/gw;",
        "Lcom/vungle/publisher/gk;",
        ">;",
        "Lcom/vungle/publisher/eg;"
    }
.end annotation


# instance fields
.field s:Lcom/vungle/publisher/gv$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/vungle/publisher/cz;-><init>()V

    return-void
.end method


# virtual methods
.method protected D()Lcom/vungle/publisher/gq$a;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/vungle/publisher/gv;->s:Lcom/vungle/publisher/gv$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/gv$a;->h()Lcom/vungle/publisher/gq$a;

    move-result-object v0

    return-object v0
.end method

.method protected E()Lcom/vungle/publisher/gv$a;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/gv;->s:Lcom/vungle/publisher/gv$a;

    return-object v0
.end method

.method protected synthetic a()Lcom/vungle/publisher/cy$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/gv;->D()Lcom/vungle/publisher/gq$a;

    move-result-object v0

    return-object v0
.end method

.method public a_(Ljava/lang/Long;)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/gv;->E()Lcom/vungle/publisher/gv$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.gv.a (com.vungle.publisher.gv$a)
.class public Lcom/vungle/publisher/gv$a;
.super Lcom/vungle/publisher/cz$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/gv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cz$a",
        "<",
        "Lcom/vungle/publisher/gv;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/gw;",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/wj;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/gk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/gq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gv;",
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
    .line 46
    invoke-direct {p0}, Lcom/vungle/publisher/cz$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vungle/publisher/gv$a;->g()Lcom/vungle/publisher/gk$a;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/gv;
    .registers 3

    .prologue
    .line 70
    new-array v0, p1, [Lcom/vungle/publisher/gv;

    return-object v0
.end method

.method protected synthetic d()Lcom/vungle/publisher/cy$a;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vungle/publisher/gv$a;->h()Lcom/vungle/publisher/gq$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/gv$a;->c(I)[Lcom/vungle/publisher/gv;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 60
    sget-object v0, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/gk$a;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/gv$a;->c:Lcom/vungle/publisher/gk$a;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/vungle/publisher/gv$a;->i()Lcom/vungle/publisher/gv;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/gq$a;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/gv$a;->e:Lcom/vungle/publisher/gq$a;

    return-object v0
.end method

.method protected i()Lcom/vungle/publisher/gv;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/gv$a;->f:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gv;

    return-object v0
.end method
