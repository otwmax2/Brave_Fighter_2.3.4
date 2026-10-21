###### Class com.vungle.publisher.ew (com.vungle.publisher.ew)
.class public Lcom/vungle/publisher/ew;
.super Lcom/vungle/publisher/ji;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ew$a;
    }
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/ew$a;
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
    invoke-virtual {p0}, Lcom/vungle/publisher/ew;->e()Lcom/vungle/publisher/ew$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/ew$a;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/ew;->d:Lcom/vungle/publisher/ew$a;

    return-object v0
.end method

###### Class com.vungle.publisher.ew.a (com.vungle.publisher.ew$a)
.class Lcom/vungle/publisher/ew$a;
.super Lcom/vungle/publisher/ji$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ji$b",
        "<",
        "Lcom/vungle/publisher/wg;",
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
            "Lcom/vungle/publisher/ew;",
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
.method protected a()Lcom/vungle/publisher/ew;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vungle/publisher/ew$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ew;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/ew$a;->a()Lcom/vungle/publisher/ew;

    move-result-object v0

    return-object v0
.end method
