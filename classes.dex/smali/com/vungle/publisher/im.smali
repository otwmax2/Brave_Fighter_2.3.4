###### Class com.vungle.publisher.im (com.vungle.publisher.im)
.class public Lcom/vungle/publisher/im;
.super Lcom/vungle/publisher/je;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/im$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/je",
        "<",
        "Lcom/vungle/publisher/im;",
        "Lcom/vungle/publisher/hr;",
        "Lcom/vungle/publisher/wm;",
        "Lcom/vungle/publisher/ji;",
        "Lcom/vungle/publisher/hs$a;",
        "Lcom/vungle/publisher/wv;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/im$a;
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
.method protected a()Lcom/vungle/publisher/im$a;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/im;->a:Lcom/vungle/publisher/im$a;

    return-object v0
.end method

.method protected synthetic b()Lcom/vungle/publisher/je$a;
    .registers 2

    .prologue
    .line 10
    invoke-virtual {p0}, Lcom/vungle/publisher/im;->a()Lcom/vungle/publisher/im$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.im.a (com.vungle.publisher.im$a)
.class public Lcom/vungle/publisher/im$a;
.super Lcom/vungle/publisher/je$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/je$a",
        "<",
        "Lcom/vungle/publisher/im;",
        "Lcom/vungle/publisher/hr;",
        "Lcom/vungle/publisher/wm;",
        "Lcom/vungle/publisher/ji;",
        "Lcom/vungle/publisher/hs$a;",
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
            "Lcom/vungle/publisher/im;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/hs$a;
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
.method public a()Lcom/vungle/publisher/hs$a;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/im$a;->b:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method

.method protected b()Lcom/vungle/publisher/im;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/vungle/publisher/im$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/im;

    return-object v0
.end method

.method public synthetic c()Lcom/vungle/publisher/eh$a;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/im$a;->a()Lcom/vungle/publisher/hs$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Lcom/vungle/publisher/je;
    .registers 2

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/vungle/publisher/im$a;->b()Lcom/vungle/publisher/im;

    move-result-object v0

    return-object v0
.end method
