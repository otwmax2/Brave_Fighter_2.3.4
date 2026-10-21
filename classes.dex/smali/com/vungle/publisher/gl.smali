###### Class com.vungle.publisher.gl (com.vungle.publisher.gl)
.class public Lcom/vungle/publisher/gl;
.super Lcom/vungle/publisher/eb;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gl$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/eb",
        "<",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/wj;",
        "Lcom/vungle/publisher/gk$a;",
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

###### Class com.vungle.publisher.gl.a (com.vungle.publisher.gl$a)
.class public Lcom/vungle/publisher/gl$a;
.super Lcom/vungle/publisher/eb$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/gl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/eb$a",
        "<",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/wj;",
        "Lcom/vungle/publisher/gk$a;",
        "Lcom/vungle/publisher/gl;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/gl;
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
    invoke-virtual {p0}, Lcom/vungle/publisher/gl$a;->b()Lcom/vungle/publisher/gl;

    move-result-object v0

    return-object v0
.end method

.method b()Lcom/vungle/publisher/gl;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/gl$a;->a:Lcom/vungle/publisher/gl;

    return-object v0
.end method
