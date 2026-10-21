###### Class com.vungle.publisher.gq (com.vungle.publisher.gq)
.class public Lcom/vungle/publisher/gq;
.super Lcom/vungle/publisher/cy;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cy",
        "<",
        "Lcom/vungle/publisher/gv;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/gw;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/gq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/cy;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/da$a;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/vungle/publisher/gq;->m()Lcom/vungle/publisher/gw$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/vungle/publisher/gq;->n()Lcom/vungle/publisher/gq$a;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/vungle/publisher/gw$a;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/vungle/publisher/gq;->e:Lcom/vungle/publisher/gq$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/gq$a;->d()Lcom/vungle/publisher/gw$a;

    move-result-object v0

    return-object v0
.end method

.method protected n()Lcom/vungle/publisher/gq$a;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/gq;->e:Lcom/vungle/publisher/gq$a;

    return-object v0
.end method

###### Class com.vungle.publisher.gq.a (com.vungle.publisher.gq$a)
.class public Lcom/vungle/publisher/gq$a;
.super Lcom/vungle/publisher/cy$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/gq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cy$a",
        "<",
        "Lcom/vungle/publisher/gv;",
        "Lcom/vungle/publisher/gq;",
        "Lcom/vungle/publisher/gw;",
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
            "Lcom/vungle/publisher/gq;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/gw$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/vungle/publisher/cy$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/vungle/publisher/cy$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected synthetic a()Lcom/vungle/publisher/da$a;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/vungle/publisher/gq$a;->d()Lcom/vungle/publisher/gw$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cy$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/gq;
    .registers 3

    .prologue
    .line 46
    new-array v0, p1, [Lcom/vungle/publisher/gq;

    return-object v0
.end method

.method protected d()Lcom/vungle/publisher/gw$a;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/gq$a;->b:Lcom/vungle/publisher/gw$a;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/gq$a;->c(I)[Lcom/vungle/publisher/gq;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/gq;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vungle/publisher/gq$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gq;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/vungle/publisher/gq$a;->e()Lcom/vungle/publisher/gq;

    move-result-object v0

    return-object v0
.end method
