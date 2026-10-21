###### Class com.vungle.publisher.fh (com.vungle.publisher.fh)
.class public Lcom/vungle/publisher/fh;
.super Lcom/vungle/publisher/jl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jl",
        "<",
        "Lcom/vungle/publisher/fb;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/fh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/vungle/publisher/jl;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/vungle/publisher/fh;->m()Lcom/vungle/publisher/fh$a;

    move-result-object v0

    return-object v0
.end method

.method protected m()Lcom/vungle/publisher/fh$a;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vungle/publisher/fh;->e:Lcom/vungle/publisher/fh$a;

    return-object v0
.end method

###### Class com.vungle.publisher.fh.a (com.vungle.publisher.fh$a)
.class Lcom/vungle/publisher/fh$a;
.super Lcom/vungle/publisher/jl$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jl$b",
        "<",
        "Lcom/vungle/publisher/fh;",
        "Lcom/vungle/publisher/fb;",
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
            "Lcom/vungle/publisher/fh;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/vungle/publisher/jl$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/fh;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/fh$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fh;

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/fh;
    .registers 3

    .prologue
    .line 29
    new-array v0, p1, [Lcom/vungle/publisher/fh;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/fh$a;->c(I)[Lcom/vungle/publisher/fh;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/vungle/publisher/fh$a;->a()Lcom/vungle/publisher/fh;

    move-result-object v0

    return-object v0
.end method
