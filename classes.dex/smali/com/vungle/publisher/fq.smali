###### Class com.vungle.publisher.fq (com.vungle.publisher.fq)
.class public Lcom/vungle/publisher/fq;
.super Lcom/vungle/publisher/je;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/fq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/je",
        "<",
        "Lcom/vungle/publisher/fq;",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/wg;",
        "Lcom/vungle/publisher/ji;",
        "Lcom/vungle/publisher/ew$a;",
        "Lcom/vungle/publisher/wv;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/fq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/je;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/fq$a;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/fq;->a:Lcom/vungle/publisher/fq$a;

    return-object v0
.end method

.method protected synthetic b()Lcom/vungle/publisher/je$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/fq;->a()Lcom/vungle/publisher/fq$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.fq.a (com.vungle.publisher.fq$a)
.class public Lcom/vungle/publisher/fq$a;
.super Lcom/vungle/publisher/je$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/fq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/je$a",
        "<",
        "Lcom/vungle/publisher/fq;",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/wg;",
        "Lcom/vungle/publisher/ji;",
        "Lcom/vungle/publisher/ew$a;",
        "Lcom/vungle/publisher/wv;",
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
            "Lcom/vungle/publisher/fq;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ew$a;
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
    invoke-direct {p0}, Lcom/vungle/publisher/je$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/ew$a;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/fq$a;->b:Lcom/vungle/publisher/ew$a;

    return-object v0
.end method

.method protected b()Lcom/vungle/publisher/fq;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vungle/publisher/fq$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/fq;

    return-object v0
.end method

.method public synthetic c()Lcom/vungle/publisher/eh$a;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/fq$a;->a()Lcom/vungle/publisher/ew$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Lcom/vungle/publisher/je;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/fq$a;->b()Lcom/vungle/publisher/fq;

    move-result-object v0

    return-object v0
.end method
