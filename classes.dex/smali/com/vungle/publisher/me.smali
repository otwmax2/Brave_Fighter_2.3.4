###### Class com.vungle.publisher.me (com.vungle.publisher.me)
.class abstract Lcom/vungle/publisher/me;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/mg",
        "<*>;>",
        "Lcom/vungle/publisher/pi;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/mg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/aq;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/aq;

    .prologue
    .line 15
    .local p0, "this":Lcom/vungle/publisher/me;, "Lcom/vungle/publisher/me<TA;>;"
    iget-object v0, p0, Lcom/vungle/publisher/me;->a:Lcom/vungle/publisher/mg;

    invoke-virtual {p1}, Lcom/vungle/publisher/aq;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/mg;->b(Landroid/net/Uri;)V

    .line 16
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bg;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/bg;

    .prologue
    .local p0, "this":Lcom/vungle/publisher/me;, "Lcom/vungle/publisher/me<TA;>;"
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/vungle/publisher/me;->a:Lcom/vungle/publisher/mg;

    invoke-virtual {v0, v1, v1}, Lcom/vungle/publisher/mg;->a(ZZ)V

    .line 12
    return-void
.end method
