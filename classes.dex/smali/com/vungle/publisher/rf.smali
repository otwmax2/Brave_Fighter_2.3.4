###### Class com.vungle.publisher.rf (com.vungle.publisher.rf)
.class public Lcom/vungle/publisher/rf;
.super Lcom/vungle/publisher/mj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/rf$a;
    }
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/rg;

.field c:Lcom/vungle/publisher/rr;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/vungle/publisher/mj;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()Z
    .registers 5

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/vungle/publisher/rf;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 26
    iget-object v0, p0, Lcom/vungle/publisher/rf;->c:Lcom/vungle/publisher/rr;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/rr;->b(Landroid/webkit/WebView;)V

    .line 36
    :cond_b
    :goto_b
    const/4 v0, 0x1

    return v0

    .line 28
    :cond_d
    iget-object v0, p0, Lcom/vungle/publisher/rf;->b:Lcom/vungle/publisher/rg;

    invoke-virtual {v0}, Lcom/vungle/publisher/rg;->b()Z

    move-result v0

    if-nez v0, :cond_b

    .line 29
    invoke-virtual {p0}, Lcom/vungle/publisher/rf;->getHistoryIndex()I

    move-result v0

    .line 30
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "back pressed at index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    if-lez v0, :cond_b

    .line 32
    invoke-virtual {p0}, Lcom/vungle/publisher/rf;->goBack()V

    goto :goto_b
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/rf;->b:Lcom/vungle/publisher/rg;

    invoke-virtual {v0}, Lcom/vungle/publisher/rg;->a()Z

    move-result v0

    return v0
.end method

.method getHistoryIndex()I
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/vungle/publisher/rf;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    return v0
.end method

###### Class com.vungle.publisher.rf.a (com.vungle.publisher.rf$a)
.class public Lcom/vungle/publisher/rf$a;
.super Lcom/vungle/publisher/mj$b;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/rf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mj$b",
        "<",
        "Lcom/vungle/publisher/rf;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field c:Lcom/vungle/publisher/rg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/rd;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/rr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vungle/publisher/mj$b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a(Landroid/content/Context;)Lcom/vungle/publisher/mj;
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/rf$a;->b(Landroid/content/Context;)Lcom/vungle/publisher/rf;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/mj;)V
    .registers 2

    .prologue
    .line 48
    check-cast p1, Lcom/vungle/publisher/rf;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/rf$a;->a(Lcom/vungle/publisher/rf;)V

    return-void
.end method

.method protected a(Lcom/vungle/publisher/rf;)V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/rf$a;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebChromeClient;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/rf;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 79
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/String;Lcom/vungle/publisher/mj;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V
    .registers 12

    .prologue
    .line 48
    move-object v2, p2

    check-cast v2, Lcom/vungle/publisher/rf;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/rf$a;->a(Ljava/lang/String;Lcom/vungle/publisher/rf;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/vungle/publisher/rf;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)V
    .registers 7

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/rf$a;->c:Lcom/vungle/publisher/rg$a;

    invoke-virtual {v0, p1, p3, p4, p5}, Lcom/vungle/publisher/rg$a;->a(Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)Lcom/vungle/publisher/rg;

    move-result-object v0

    .line 72
    iput-object v0, p2, Lcom/vungle/publisher/rf;->b:Lcom/vungle/publisher/rg;

    .line 73
    invoke-virtual {p2, v0}, Lcom/vungle/publisher/rf;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 74
    return-void
.end method

.method protected b(Landroid/content/Context;)Lcom/vungle/publisher/rf;
    .registers 4

    .prologue
    .line 63
    new-instance v0, Lcom/vungle/publisher/rf;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/rf;-><init>(Landroid/content/Context;)V

    .line 64
    iget-object v1, p0, Lcom/vungle/publisher/rf$a;->e:Lcom/vungle/publisher/rr;

    iput-object v1, v0, Lcom/vungle/publisher/rf;->c:Lcom/vungle/publisher/rr;

    .line 65
    return-object v0
.end method
