###### Class com.vungle.publisher.er (com.vungle.publisher.er)
.class public Lcom/vungle/publisher/er;
.super Lcom/vungle/publisher/eb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/er$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/eb",
        "<",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/wg;",
        "Lcom/vungle/publisher/el$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/vungle/publisher/eb;-><init>()V

    return-void
.end method

###### Class com.vungle.publisher.er.a (com.vungle.publisher.er$a)
.class public Lcom/vungle/publisher/er$a;
.super Lcom/vungle/publisher/eb$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/er;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/eb$a",
        "<",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/wg;",
        "Lcom/vungle/publisher/el$a;",
        "Lcom/vungle/publisher/er;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/er;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vungle/publisher/eb$a;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic a()Lcom/vungle/publisher/eb;
    .registers 2

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/vungle/publisher/er$a;->b()Lcom/vungle/publisher/er;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/vungle/publisher/er;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/er$a;->a:Lcom/vungle/publisher/er;

    return-object v0
.end method
