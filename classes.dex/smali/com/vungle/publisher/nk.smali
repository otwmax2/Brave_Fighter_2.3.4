###### Class com.vungle.publisher.nk (com.vungle.publisher.nk)
.class public Lcom/vungle/publisher/nk;
.super Lcom/vungle/publisher/ni;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ni",
        "<",
        "Lcom/vungle/publisher/dq;",
        ">;"
    }
.end annotation


# instance fields
.field q:Lcom/vungle/publisher/nk$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vungle/publisher/ni;-><init>()V

    return-void
.end method

.method private e()V
    .registers 3
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x18
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/nk;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 58
    if-nez v0, :cond_b

    .line 76
    :goto_a
    return-void

    .line 60
    :cond_b
    invoke-static {p0, v0}, Lcom/vungle/publisher/nl;->a(Lcom/vungle/publisher/nk;Landroid/view/View;)Landroid/view/View$OnApplyWindowInsetsListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_a
.end method


# virtual methods
.method synthetic a(Landroid/view/View;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 62
    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/nk;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/vungle/publisher/nk;->l:Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p3}, Landroid/view/WindowInsets;->hasStableInsets()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 65
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v3

    .line 66
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getStableInsetTop()I

    move-result v2

    .line 67
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v1

    .line 68
    invoke-virtual {p3}, Landroid/view/WindowInsets;->getStableInsetBottom()I

    move-result v0

    .line 70
    :goto_2d
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/view/View;->setPadding(IIII)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_35

    .line 74
    :goto_34
    return-object p3

    .line 71
    :catch_35
    move-exception v0

    .line 72
    const-string v1, "VungleAd"

    const-string v2, "Exception setting root view padding to avoid system controls overlap"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_34

    :cond_3e
    move v0, v1

    move v2, v1

    move v3, v1

    goto :goto_2d
.end method

.method protected a()Lcom/vungle/publisher/me;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/me",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/nk;->q:Lcom/vungle/publisher/nk$a$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/nk$a$a;->a(Lcom/vungle/publisher/nk;)Lcom/vungle/publisher/nk$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/cn;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V
    .registers 12

    .prologue
    .line 26
    move-object v2, p2

    check-cast v2, Lcom/vungle/publisher/dq;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/nk;->a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/dq;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/dq;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V
    .registers 8

    .prologue
    .line 36
    invoke-super/range {p0 .. p5}, Lcom/vungle/publisher/ni;->a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/dq;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V

    .line 37
    const-string v0, "VungleAd"

    const-string v1, "create mraid ad"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_13

    .line 39
    invoke-direct {p0}, Lcom/vungle/publisher/nk;->e()V

    .line 41
    :cond_13
    return-void
.end method

.method protected b()Lcom/vungle/publisher/yj;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/yj",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/vungle/publisher/nk;->n:Lcom/vungle/publisher/yn$a;

    iget-object v0, p0, Lcom/vungle/publisher/nk;->a:Lcom/vungle/publisher/cn;

    check-cast v0, Lcom/vungle/publisher/dq;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/yn$a;->a(Lcom/vungle/publisher/dq;)Lcom/vungle/publisher/yn;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.nk.a (com.vungle.publisher.nk$a)
.class public Lcom/vungle/publisher/nk$a;
.super Lcom/vungle/publisher/me;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nk$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/me",
        "<",
        "Lcom/vungle/publisher/nk;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private b:Z


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/vungle/publisher/me;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/nk$a;Z)Z
    .registers 2

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/vungle/publisher/nk$a;->b:Z

    return p1
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 127
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_10

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nk;->a(I)V

    .line 132
    :goto_f
    return-void

    .line 130
    :cond_10
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nk;->a(I)V

    goto :goto_f
.end method

.method public bridge synthetic onEvent(Lcom/vungle/publisher/aq;)V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/vungle/publisher/me;->onEvent(Lcom/vungle/publisher/aq;)V

    return-void
.end method

.method public bridge synthetic onEvent(Lcom/vungle/publisher/bg;)V
    .registers 2

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/vungle/publisher/me;->onEvent(Lcom/vungle/publisher/bg;)V

    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sj;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sj;

    .prologue
    .line 89
    const-string v0, "VungleEvent"

    const-string v1, "mraidAd.onClose()"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->b:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/vungle/publisher/nk$a;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/nk;->a(ZZ)V

    .line 92
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sk;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sk;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->a:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/nk$a;->b:Z

    .line 101
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sl;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sl;

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/vungle/publisher/nk$a;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/nk;->a(ZZ)V

    .line 105
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/so;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/so;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    invoke-virtual {p1}, Lcom/vungle/publisher/so;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nk;->a(Landroid/net/Uri;)V

    .line 96
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sr;)V
    .registers 6
    .param p1, "event"    # Lcom/vungle/publisher/sr;

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/sr;->a()Lcom/vungle/publisher/ry;

    move-result-object v1

    .line 110
    invoke-virtual {p1}, Lcom/vungle/publisher/sr;->b()Z

    move-result v0

    .line 111
    sget-object v2, Lcom/vungle/publisher/ry;->c:Lcom/vungle/publisher/ry;

    if-ne v1, v2, :cond_24

    .line 112
    if-eqz v0, :cond_17

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nk;->a(I)V

    .line 124
    :goto_16
    return-void

    .line 115
    :cond_17
    invoke-virtual {p0}, Lcom/vungle/publisher/nk$a;->a()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_16

    .line 121
    :catch_1b
    move-exception v0

    .line 122
    const-string v1, "VungleEvent"

    const-string v2, "error setting mraid orientation"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 118
    :cond_24
    :try_start_24
    const-string v0, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "force mraid orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/nk;

    invoke-virtual {v1}, Lcom/vungle/publisher/ry;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nk;->a(I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_47} :catch_1b

    goto :goto_16
.end method

###### Class com.vungle.publisher.nk.a.C0169a (com.vungle.publisher.nk$a$a)
.class public Lcom/vungle/publisher/nk$a$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nk$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/nk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/nk;)Lcom/vungle/publisher/nk$a;
    .registers 4

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vungle/publisher/nk$a$a;->a:Lcom/vungle/publisher/nk$a;

    iput-object p1, v0, Lcom/vungle/publisher/nk$a;->a:Lcom/vungle/publisher/mg;

    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/nk$a$a;->a:Lcom/vungle/publisher/nk$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/publisher/nk$a;->a(Lcom/vungle/publisher/nk$a;Z)Z

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/nk$a$a;->a:Lcom/vungle/publisher/nk$a;

    return-object v0
.end method
