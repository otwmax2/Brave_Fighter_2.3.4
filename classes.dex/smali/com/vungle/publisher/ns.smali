###### Class com.vungle.publisher.ns (com.vungle.publisher.ns)
.class public Lcom/vungle/publisher/ns;
.super Lcom/vungle/publisher/ni;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ns$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ni",
        "<",
        "Lcom/vungle/publisher/jn;",
        ">;"
    }
.end annotation


# instance fields
.field q:Lcom/vungle/publisher/mv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/ns$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/vungle/publisher/ni;-><init>()V

    return-void
.end method

.method private b(Z)V
    .registers 10

    .prologue
    const-wide/high16 v6, 0x3fe2000000000000L    # 0.5625

    .line 95
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/ns;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 97
    if-eqz v0, :cond_39

    .line 98
    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 99
    if-eqz p1, :cond_3f

    .line 100
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v4

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x53

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 107
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/vungle/publisher/ns;->q:Lcom/vungle/publisher/mv;

    invoke-virtual {v0, v1, p1}, Lcom/vungle/publisher/mv;->a(Landroid/util/DisplayMetrics;Z)V

    .line 108
    return-void

    .line 103
    :cond_3f
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v3, v4

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 104
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_39
.end method


# virtual methods
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
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/ns;->r:Lcom/vungle/publisher/ns$a$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/ns$a$a;->a(Lcom/vungle/publisher/ns;)Lcom/vungle/publisher/ns$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-super {p0, p1}, Lcom/vungle/publisher/ni;->a(Landroid/content/res/Configuration;)V

    .line 85
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_c

    .line 87
    invoke-direct {p0, v1}, Lcom/vungle/publisher/ns;->b(Z)V

    .line 92
    :cond_b
    :goto_b
    return-void

    .line 88
    :cond_c
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ns;->b(Z)V

    goto :goto_b
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/cn;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V
    .registers 12

    .prologue
    .line 38
    move-object v2, p2

    check-cast v2, Lcom/vungle/publisher/jn;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/ns;->a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/jn;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V

    return-void
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/dq;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V
    .registers 12

    .prologue
    .line 38
    move-object v2, p2

    check-cast v2, Lcom/vungle/publisher/jn;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/vungle/publisher/ns;->a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/jn;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/jn;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V
    .registers 10

    .prologue
    const/4 v3, 0x1

    .line 56
    invoke-super/range {p0 .. p5}, Lcom/vungle/publisher/ni;->a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/dq;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V

    .line 58
    invoke-virtual {p1}, Lcom/vungle/publisher/VungleAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 60
    const-string v0, "window"

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/VungleAdActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4c

    .line 62
    :cond_26
    invoke-direct {p0, v3}, Lcom/vungle/publisher/ns;->b(Z)V

    .line 68
    :goto_29
    invoke-interface {p4}, Lcom/vungle/publisher/p;->getFlexViewCloseTimeInSec()I

    move-result v0

    if-lez v0, :cond_4b

    .line 69
    invoke-interface {p4}, Lcom/vungle/publisher/p;->getFlexViewCloseTimeInSec()I

    move-result v0

    int-to-long v0, v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lrx/Observable;->interval(JLjava/util/concurrent/TimeUnit;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/ns;->h:Lrx/subjects/BehaviorSubject;

    .line 70
    invoke-virtual {v0, v1}, Lrx/Observable;->takeUntil(Lrx/Observable;)Lrx/Observable;

    move-result-object v0

    .line 71
    invoke-virtual {v0, v3}, Lrx/Observable;->take(I)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/vungle/publisher/nt;->a(Lcom/vungle/publisher/ns;)Lrx/functions/Action1;

    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 80
    :cond_4b
    return-void

    .line 64
    :cond_4c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/ns;->b(Z)V

    goto :goto_29
.end method

.method synthetic a(Ljava/lang/Long;)V
    .registers 5

    .prologue
    .line 73
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ns;->a(ZZ)V

    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/ns;->i:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->d:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/ns;->i:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->b:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 78
    return-void
.end method

###### Class com.vungle.publisher.ns.a (com.vungle.publisher.ns$a)
.class public Lcom/vungle/publisher/ns$a;
.super Lcom/vungle/publisher/me;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ns$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/me",
        "<",
        "Lcom/vungle/publisher/ns;",
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
    .line 118
    invoke-direct {p0}, Lcom/vungle/publisher/me;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/ns$a;Z)Z
    .registers 2

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/vungle/publisher/ns$a;->b:Z

    return p1
.end method


# virtual methods
.method a()V
    .registers 3

    .prologue
    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_10

    .line 171
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ns;->a(I)V

    .line 175
    :goto_f
    return-void

    .line 173
    :cond_10
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ns;->a(I)V

    goto :goto_f
.end method

.method public bridge synthetic onEvent(Lcom/vungle/publisher/aq;)V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/vungle/publisher/me;->onEvent(Lcom/vungle/publisher/aq;)V

    return-void
.end method

.method public bridge synthetic onEvent(Lcom/vungle/publisher/bg;)V
    .registers 2

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/vungle/publisher/me;->onEvent(Lcom/vungle/publisher/bg;)V

    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sf;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sf;

    .prologue
    .line 127
    const-string v0, "VungleEvent"

    const-string v1, "processing closeFlexViewAd received from API call"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Lcom/vungle/publisher/sf;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    iget-object v0, v0, Lcom/vungle/publisher/ns;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/ns;->a(ZZ)V

    .line 131
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->c:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->b:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 135
    :cond_38
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sj;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sj;

    .prologue
    .line 121
    const-string v0, "VungleEvent"

    const-string v1, "mraidAd.onClose()"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->b:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/vungle/publisher/ns$a;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/ns;->a(ZZ)V

    .line 124
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sk;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sk;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->eventBus:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/si;

    sget-object v2, Lcom/vungle/publisher/rx;->a:Lcom/vungle/publisher/rx;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/si;-><init>(Lcom/vungle/publisher/jf;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ns$a;->b:Z

    .line 144
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sl;)V
    .registers 5
    .param p1, "event"    # Lcom/vungle/publisher/sl;

    .prologue
    .line 147
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/vungle/publisher/ns$a;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/ns;->a(ZZ)V

    .line 148
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/so;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/so;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    invoke-virtual {p1}, Lcom/vungle/publisher/so;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ns;->a(Landroid/net/Uri;)V

    .line 139
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/sr;)V
    .registers 6
    .param p1, "event"    # Lcom/vungle/publisher/sr;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/sr;->a()Lcom/vungle/publisher/ry;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Lcom/vungle/publisher/sr;->b()Z

    move-result v0

    .line 154
    sget-object v2, Lcom/vungle/publisher/ry;->c:Lcom/vungle/publisher/ry;

    if-ne v1, v2, :cond_24

    .line 155
    if-eqz v0, :cond_17

    .line 156
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ns;->a(I)V

    .line 167
    :goto_16
    return-void

    .line 158
    :cond_17
    invoke-virtual {p0}, Lcom/vungle/publisher/ns$a;->a()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_16

    .line 164
    :catch_1b
    move-exception v0

    .line 165
    const-string v1, "VungleEvent"

    const-string v2, "error setting mraid orientation"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_16

    .line 161
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

    .line 162
    iget-object v0, p0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    check-cast v0, Lcom/vungle/publisher/ns;

    invoke-virtual {v1}, Lcom/vungle/publisher/ry;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ns;->a(I)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_47} :catch_1b

    goto :goto_16
.end method

###### Class com.vungle.publisher.ns.a.C0170a (com.vungle.publisher.ns$a$a)
.class public Lcom/vungle/publisher/ns$a$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ns$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ns$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/ns;)Lcom/vungle/publisher/ns$a;
    .registers 4

    .prologue
    .line 185
    iget-object v0, p0, Lcom/vungle/publisher/ns$a$a;->a:Lcom/vungle/publisher/ns$a;

    iput-object p1, v0, Lcom/vungle/publisher/ns$a;->a:Lcom/vungle/publisher/mg;

    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/ns$a$a;->a:Lcom/vungle/publisher/ns$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vungle/publisher/ns$a;->a(Lcom/vungle/publisher/ns$a;Z)Z

    .line 187
    iget-object v0, p0, Lcom/vungle/publisher/ns$a$a;->a:Lcom/vungle/publisher/ns$a;

    return-object v0
.end method
