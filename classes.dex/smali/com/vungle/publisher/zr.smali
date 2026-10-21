###### Class com.vungle.publisher.zr (com.vungle.publisher.zr)
.class public final Lcom/vungle/publisher/zr;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector",
        "<",
        "Lcom/vungle/publisher/zo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/image/AssetBitmapFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/vungle/publisher/zr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/zr;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/image/AssetBitmapFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-boolean v0, Lcom/vungle/publisher/zr;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 17
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/zr;->b:Ljavax/inject/Provider;

    .line 18
    return-void
.end method

.method public static a(Ljavax/inject/Provider;)Ldagger/MembersInjector;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/image/AssetBitmapFactory;",
            ">;)",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/zo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/vungle/publisher/zr;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/zr;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/zo;)V
    .registers 4

    .prologue
    .line 27
    if-nez p1, :cond_a

    .line 28
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot inject members into a null reference"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_a
    iget-object v0, p0, Lcom/vungle/publisher/zr;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/image/AssetBitmapFactory;

    iput-object v0, p1, Lcom/vungle/publisher/zo;->a:Lcom/vungle/publisher/image/AssetBitmapFactory;

    .line 31
    return-void
.end method

.method public synthetic injectMembers(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 8
    check-cast p1, Lcom/vungle/publisher/zo;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/zr;->a(Lcom/vungle/publisher/zo;)V

    return-void
.end method
