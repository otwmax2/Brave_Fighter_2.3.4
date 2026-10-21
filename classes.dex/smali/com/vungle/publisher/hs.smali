###### Class com.vungle.publisher.hs (com.vungle.publisher.hs)
.class public Lcom/vungle/publisher/hs;
.super Lcom/vungle/publisher/ji;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/hs$a;
    }
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/hs$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/vungle/publisher/ji;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 9
    invoke-virtual {p0}, Lcom/vungle/publisher/hs;->e()Lcom/vungle/publisher/hs$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/hs$a;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/hs;->d:Lcom/vungle/publisher/hs$a;

    return-object v0
.end method

###### Class com.vungle.publisher.hs.a (com.vungle.publisher.hs$a)
.class Lcom/vungle/publisher/hs$a;
.super Lcom/vungle/publisher/ji$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/hs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ji$b",
        "<",
        "Lcom/vungle/publisher/wm;",
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
            "Lcom/vungle/publisher/hs;",
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
    .line 26
    invoke-direct {p0}, Lcom/vungle/publisher/ji$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/hs;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vungle/publisher/hs$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hs;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/hs$a;->a()Lcom/vungle/publisher/hs;

    move-result-object v0

    return-object v0
.end method
