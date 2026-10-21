###### Class com.vungle.publisher.lf (com.vungle.publisher.lf)
.class public abstract Lcom/vungle/publisher/lf;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/lf$b;,
        Lcom/vungle/publisher/lf$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Bundle;)V
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.vungle.publisher.lf.a (com.vungle.publisher.lf$a)
.class public abstract Lcom/vungle/publisher/lf$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.vungle.publisher.lf.b (com.vungle.publisher.lf$b)
.class public Lcom/vungle/publisher/lf$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/lb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/li$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)Lcom/vungle/publisher/lf;
    .registers 3

    .prologue
    .line 47
    const-string v0, "webViewRootContentIndexFile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 48
    iget-object v0, p0, Lcom/vungle/publisher/lf$b;->a:Lcom/vungle/publisher/lb$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/lb$a;->a(Landroid/os/Bundle;)Lcom/vungle/publisher/lf;

    move-result-object v0

    .line 52
    :goto_e
    return-object v0

    .line 49
    :cond_f
    const-string v0, "webViewRootContentString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 50
    iget-object v0, p0, Lcom/vungle/publisher/lf$b;->b:Lcom/vungle/publisher/li$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/li$a;->a(Landroid/os/Bundle;)Lcom/vungle/publisher/lf;

    move-result-object v0

    goto :goto_e

    .line 52
    :cond_1e
    const/4 v0, 0x0

    goto :goto_e
.end method
