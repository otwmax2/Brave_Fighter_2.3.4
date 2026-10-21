###### Class com.vungle.publisher.ks (com.vungle.publisher.ks)
.class public Lcom/vungle/publisher/ks;
.super Lcom/vungle/publisher/je;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ks$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/je",
        "<",
        "Lcom/vungle/publisher/ks;",
        "Lcom/vungle/publisher/jn;",
        "Lcom/vungle/publisher/wr;",
        "Lcom/vungle/publisher/jy;",
        "Lcom/vungle/publisher/jy$a;",
        "Lcom/vungle/publisher/vu;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ks$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/je;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/ks$a;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/ks;->a:Lcom/vungle/publisher/ks$a;

    return-object v0
.end method

.method protected synthetic b()Lcom/vungle/publisher/je$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/ks;->a()Lcom/vungle/publisher/ks$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.ks.a (com.vungle.publisher.ks$a)
.class public Lcom/vungle/publisher/ks$a;
.super Lcom/vungle/publisher/je$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/je$a",
        "<",
        "Lcom/vungle/publisher/ks;",
        "Lcom/vungle/publisher/jn;",
        "Lcom/vungle/publisher/wr;",
        "Lcom/vungle/publisher/jy;",
        "Lcom/vungle/publisher/jy$a;",
        "Lcom/vungle/publisher/vu;",
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
            "Lcom/vungle/publisher/ks;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/jy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/je$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/jy$a;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/ks$a;->b:Lcom/vungle/publisher/jy$a;

    return-object v0
.end method

.method protected b()Lcom/vungle/publisher/ks;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/publisher/ks$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ks;

    return-object v0
.end method

.method public synthetic c()Lcom/vungle/publisher/eh$a;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vungle/publisher/ks$a;->a()Lcom/vungle/publisher/jy$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Lcom/vungle/publisher/je;
    .registers 2

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vungle/publisher/ks$a;->b()Lcom/vungle/publisher/ks;

    move-result-object v0

    return-object v0
.end method
