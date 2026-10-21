###### Class com.vungle.publisher.hr (com.vungle.publisher.hr)
.class public Lcom/vungle/publisher/hr;
.super Lcom/vungle/publisher/jh;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/hr$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh",
        "<",
        "Lcom/vungle/publisher/hr;",
        "Lcom/vungle/publisher/hq;",
        "Lcom/vungle/publisher/wm;",
        ">;"
    }
.end annotation


# instance fields
.field w:Lcom/vungle/publisher/hr$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/jh;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/hr;->s()Lcom/vungle/publisher/hr$a;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/hr;->t()Lcom/vungle/publisher/hr$a;

    move-result-object v0

    return-object v0
.end method

.method protected s()Lcom/vungle/publisher/hr$a;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/hr;->w:Lcom/vungle/publisher/hr$a;

    return-object v0
.end method

.method protected t()Lcom/vungle/publisher/hr$a;
    .registers 2

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vungle/publisher/hr;->s()Lcom/vungle/publisher/hr$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic x()Lcom/vungle/publisher/jh$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/hr;->s()Lcom/vungle/publisher/hr$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.hr.a (com.vungle.publisher.hr$a)
.class public Lcom/vungle/publisher/hr$a;
.super Lcom/vungle/publisher/jh$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh$a",
        "<",
        "Lcom/vungle/publisher/hr;",
        "Lcom/vungle/publisher/hq;",
        "Lcom/vungle/publisher/wm;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/hr;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/hq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/im$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/vungle/publisher/jh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/wm;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/hr$a;->a(Lcom/vungle/publisher/wm;)Lcom/vungle/publisher/hr;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/wm;)Lcom/vungle/publisher/hr;
    .registers 4

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hr;

    .line 63
    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 64
    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;
    .registers 3

    .prologue
    .line 47
    check-cast p1, Lcom/vungle/publisher/wm;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/hr$a;->a(Lcom/vungle/publisher/wm;)Lcom/vungle/publisher/hr;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 69
    sget-object v0, Lcom/vungle/publisher/m;->b:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method protected a(I)[Ljava/lang/String;
    .registers 3

    .prologue
    .line 94
    new-array v0, p1, [Ljava/lang/String;

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/hr$a;->a(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    const-string v0, "ad"

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/hr;
    .registers 3

    .prologue
    .line 89
    new-array v0, p1, [Lcom/vungle/publisher/hr;

    return-object v0
.end method

.method protected d()Lcom/vungle/publisher/hq$a;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/hr$a;->f:Lcom/vungle/publisher/hq$a;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/hr$a;->c(I)[Lcom/vungle/publisher/hr;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/im$a;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/hr$a;->g:Lcom/vungle/publisher/im$a;

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/hr;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/hr$a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hr;

    .line 100
    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vungle/publisher/hr$a;->f()Lcom/vungle/publisher/hr;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic j()Lcom/vungle/publisher/je$a;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vungle/publisher/hr$a;->e()Lcom/vungle/publisher/im$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic k()Lcom/vungle/publisher/jg$a;
    .registers 2

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/vungle/publisher/hr$a;->d()Lcom/vungle/publisher/hq$a;

    move-result-object v0

    return-object v0
.end method
