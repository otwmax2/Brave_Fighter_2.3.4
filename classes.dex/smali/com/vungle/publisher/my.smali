###### Class com.vungle.publisher.my (com.vungle.publisher.my)
.class public Lcom/vungle/publisher/my;
.super Lcom/vungle/publisher/mm;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/my$b;,
        Lcom/vungle/publisher/my$a;,
        Lcom/vungle/publisher/my$e;,
        Lcom/vungle/publisher/my$c;,
        Lcom/vungle/publisher/my$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mm",
        "<",
        "Lcom/vungle/publisher/rf;",
        ">;"
    }
.end annotation


# instance fields
.field final n:Landroid/os/Handler;

.field o:Ljava/util/concurrent/atomic/AtomicInteger;

.field p:Ljava/util/concurrent/atomic/AtomicInteger;

.field q:Lcom/vungle/publisher/ro;

.field r:Lcom/vungle/publisher/og;

.field s:Lcom/vungle/publisher/rf$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/my$b$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field u:Lcom/vungle/publisher/rr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field v:Lcom/vungle/publisher/ro$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Lcom/vungle/publisher/og$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Lcom/vungle/publisher/mm;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/my;->n:Landroid/os/Handler;

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/publisher/my;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/vungle/publisher/my;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/my;)V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/vungle/publisher/my;->e()V

    return-void
.end method

.method private e()V
    .registers 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/vungle/publisher/my;->f()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/my;->a:Landroid/app/AlertDialog;

    .line 201
    iget-object v0, p0, Lcom/vungle/publisher/my;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 202
    return-void
.end method

.method private f()Landroid/app/AlertDialog;
    .registers 5

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vungle/publisher/my;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 206
    iget-object v0, p0, Lcom/vungle/publisher/my;->a:Landroid/app/AlertDialog;

    .line 208
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/vungle/publisher/my;->d:Lcom/vungle/publisher/mq;

    .line 209
    invoke-virtual {p0}, Lcom/vungle/publisher/my;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/my;->h:Lcom/vungle/publisher/p;

    new-instance v3, Lcom/vungle/publisher/my$1;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/my$1;-><init>(Lcom/vungle/publisher/my;)V

    .line 208
    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/mq;->a(Landroid/content/Context;Lcom/vungle/publisher/p;Lcom/vungle/publisher/mq$a;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_6
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;Lcom/vungle/publisher/p;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/mj;
    .registers 5

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/my;->b(Ljava/lang/String;Lcom/vungle/publisher/p;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/rf;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 4

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    check-cast v0, Lcom/vungle/publisher/rf;

    invoke-virtual {v0}, Lcom/vungle/publisher/rf;->a()Z

    move-result v0

    .line 185
    if-nez v0, :cond_d

    .line 186
    invoke-virtual {p0}, Lcom/vungle/publisher/my;->d()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 192
    :cond_d
    :goto_d
    return-void

    .line 189
    :catch_e
    move-exception v0

    .line 190
    const-string v1, "VungleAd"

    const-string v2, "exception in onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method synthetic a(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/vungle/publisher/my;->d()V

    return-void
.end method

.method a(Lcom/vungle/publisher/ro$b;IJ)V
    .registers 8

    .prologue
    .line 119
    new-instance v0, Lcom/vungle/publisher/my$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/vungle/publisher/my$c;-><init>(Lcom/vungle/publisher/my;Lcom/vungle/publisher/ro$b;I)V

    .line 120
    iget-object v1, p0, Lcom/vungle/publisher/my;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 121
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 162
    invoke-super {p0, p1}, Lcom/vungle/publisher/mm;->a(Z)V

    .line 163
    if-eqz p1, :cond_9

    .line 164
    invoke-virtual {p0}, Lcom/vungle/publisher/my;->onResume()V

    .line 169
    :goto_8
    return-void

    .line 167
    :cond_9
    invoke-virtual {p0}, Lcom/vungle/publisher/my;->onPause()V

    goto :goto_8
.end method

.method a(ZIJ)V
    .registers 8

    .prologue
    .line 124
    new-instance v1, Lcom/vungle/publisher/my$e;

    if-eqz p1, :cond_12

    const/4 v0, 0x0

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, p0, v0, p2}, Lcom/vungle/publisher/my$e;-><init>(Lcom/vungle/publisher/my;Ljava/lang/Integer;I)V

    .line 125
    iget-object v0, p0, Lcom/vungle/publisher/my;->n:Landroid/os/Handler;

    invoke-virtual {v0, v1, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 126
    return-void

    .line 124
    :cond_12
    const/16 v0, 0x8

    goto :goto_5
.end method

.method protected b(Ljava/lang/String;Lcom/vungle/publisher/p;Lcom/vungle/publisher/x;)Lcom/vungle/publisher/rf;
    .registers 6

    .prologue
    .line 177
    iget-object v0, p0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    invoke-virtual {v0, p3}, Lcom/vungle/publisher/rr;->a(Lcom/vungle/publisher/x;)V

    .line 178
    iget-object v0, p0, Lcom/vungle/publisher/my;->s:Lcom/vungle/publisher/rf$a;

    iget-boolean v1, p0, Lcom/vungle/publisher/my;->c:Z

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/vungle/publisher/rf$a;->a(Ljava/lang/String;Lcom/vungle/publisher/p;ZLcom/vungle/publisher/x;)Lcom/vungle/publisher/mj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/rf;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    const-string v0, "fullScreenMraidFragment"

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    check-cast v0, Lcom/vungle/publisher/rf;

    invoke-virtual {v0}, Lcom/vungle/publisher/rf;->b()Z

    move-result v0

    return v0
.end method

.method d()V
    .registers 3

    .prologue
    .line 172
    iget-object v0, p0, Lcom/vungle/publisher/my;->k:Lcom/vungle/publisher/qg;

    new-instance v1, Lcom/vungle/publisher/sj;

    invoke-direct {v1}, Lcom/vungle/publisher/sj;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/vungle/publisher/mm;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    iget-object v1, p0, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;)V

    .line 88
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/mm;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->getInstance()Lcom/vungle/publisher/inject/Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/inject/Injector;->d()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 73
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->c()Lcom/vungle/publisher/inject/w;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/inject/w;->a(Lcom/vungle/publisher/my;)V

    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/my;->t:Lcom/vungle/publisher/my$b$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/my$b$a;->a(Lcom/vungle/publisher/my;)Lcom/vungle/publisher/my$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/my$b;->register()V

    .line 82
    :goto_1d
    return-void

    .line 76
    :cond_1e
    const-string v0, "VungleAd"

    const-string v1, "SDK not initialized"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/vungle/publisher/my;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    goto :goto_1d

    .line 79
    :catch_2d
    move-exception v0

    .line 80
    const-string v1, "VungleAd"

    const-string v2, "exception while creating Mraid ad fragment"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/mm;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 95
    :try_start_6
    iget-object v1, p0, Lcom/vungle/publisher/my;->v:Lcom/vungle/publisher/ro$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ro$a;->a()Lcom/vungle/publisher/ro;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/my;->q:Lcom/vungle/publisher/ro;

    .line 96
    iget-object v1, p0, Lcom/vungle/publisher/my;->q:Lcom/vungle/publisher/ro;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lcom/vungle/publisher/my;->q:Lcom/vungle/publisher/ro;

    invoke-virtual {v1}, Lcom/vungle/publisher/ro;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 100
    iget-object v1, p0, Lcom/vungle/publisher/my;->v:Lcom/vungle/publisher/ro$a;

    iget-object v2, p0, Lcom/vungle/publisher/my;->q:Lcom/vungle/publisher/ro;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ro$a;->a(Lcom/vungle/publisher/ro;)V

    .line 101
    sget-object v1, Lcom/vungle/publisher/ro$b;->a:Lcom/vungle/publisher/ro$b;

    const/4 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/vungle/publisher/my;->a(Lcom/vungle/publisher/ro$b;IJ)V

    .line 102
    iget-object v1, p0, Lcom/vungle/publisher/my;->q:Lcom/vungle/publisher/ro;

    invoke-static {p0}, Lcom/vungle/publisher/mz;->a(Lcom/vungle/publisher/my;)Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ro;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcom/vungle/publisher/my;->w:Lcom/vungle/publisher/og$a;

    iget-object v2, p0, Lcom/vungle/publisher/my;->m:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/og$a;->a(Landroid/content/Context;Z)Lcom/vungle/publisher/og;

    move-result-object v1

    iput-object v1, p0, Lcom/vungle/publisher/my;->r:Lcom/vungle/publisher/og;

    .line 106
    iget-object v1, p0, Lcom/vungle/publisher/my;->r:Lcom/vungle/publisher/og;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/vungle/publisher/my;->r:Lcom/vungle/publisher/og;

    invoke-virtual {v1}, Lcom/vungle/publisher/og;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 108
    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 109
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 110
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/vungle/publisher/my;->a(ZIJ)V

    .line 111
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6a} :catch_6b

    .line 115
    :goto_6a
    return-object v0

    .line 112
    :catch_6b
    move-exception v1

    .line 113
    const-string v2, "VungleAd"

    const-string v3, "error creating MraidAdFragment"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a
.end method

.method public onDestroy()V
    .registers 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/vungle/publisher/mm;->onDestroy()V

    .line 135
    iget-object v0, p0, Lcom/vungle/publisher/my;->t:Lcom/vungle/publisher/my$b$a;

    if-eqz v0, :cond_10

    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/my;->t:Lcom/vungle/publisher/my$b$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/my$b$a;->a(Lcom/vungle/publisher/my;)Lcom/vungle/publisher/my$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/my$b;->unregister()V

    .line 138
    :cond_10
    return-void
.end method

.method public onPause()V
    .registers 4

    .prologue
    .line 153
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/mm;->onPause()V

    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/rr;->a(ZLandroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 158
    :goto_b
    return-void

    .line 155
    :catch_c
    move-exception v0

    .line 156
    const-string v1, "VungleAd"

    const-string v2, "error pausing mraid ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 143
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/mm;->onResume()V

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/rr;->a(ZLandroid/webkit/WebView;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 148
    :goto_b
    return-void

    .line 145
    :catch_c
    move-exception v0

    .line 146
    const-string v1, "VungleAd"

    const-string v2, "error resuming mraid ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

###### Class com.vungle.publisher.my.AnonymousClass1 (com.vungle.publisher.my$1)
.class Lcom/vungle/publisher/my$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/mq$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/my;->f()Landroid/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/my;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/my;)V
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 215
    iget-object v0, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    iget-object v1, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    iget-object v1, v1, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Z)V

    .line 216
    return-void
.end method

.method public b()V
    .registers 4

    .prologue
    .line 220
    const-string v0, "VungleAd"

    const-string v1, "cancel video"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    iget-object v1, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    iget-object v1, v1, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Z)V

    .line 222
    return-void
.end method

.method public c()V
    .registers 4

    .prologue
    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->u:Lcom/vungle/publisher/rr;

    iget-object v1, p0, Lcom/vungle/publisher/my$1;->a:Lcom/vungle/publisher/my;

    iget-object v1, v1, Lcom/vungle/publisher/my;->f:Lcom/vungle/publisher/mj;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/rr;->a(Landroid/webkit/WebView;Z)V

    .line 227
    return-void
.end method

###### Class com.vungle.publisher.my.a (com.vungle.publisher.my$a)
.class public Lcom/vungle/publisher/my$a;
.super Lcom/vungle/publisher/mm$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mm$a",
        "<",
        "Lcom/vungle/publisher/my;",
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
            "Lcom/vungle/publisher/my;",
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
    .line 305
    invoke-direct {p0}, Lcom/vungle/publisher/mm$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/vungle/publisher/mm;
    .registers 2

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/vungle/publisher/my$a;->c()Lcom/vungle/publisher/my;

    move-result-object v0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 314
    const-string v0, "fullScreenMraidFragment"

    return-object v0
.end method

.method protected c()Lcom/vungle/publisher/my;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/vungle/publisher/my$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/my;

    return-object v0
.end method

###### Class com.vungle.publisher.my.b (com.vungle.publisher.my$b)
.class public Lcom/vungle/publisher/my$b;
.super Lcom/vungle/publisher/pi;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/my$b$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/my;


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 322
    invoke-direct {p0}, Lcom/vungle/publisher/pi;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/sq;)V
    .registers 8
    .param p1, "event"    # Lcom/vungle/publisher/sq;

    .prologue
    const-wide/16 v4, 0x1f4

    const/4 v2, 0x1

    .line 342
    iget-object v0, p0, Lcom/vungle/publisher/my$b;->a:Lcom/vungle/publisher/my;

    sget-object v1, Lcom/vungle/publisher/ro$b;->a:Lcom/vungle/publisher/ro$b;

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/my;->a(Lcom/vungle/publisher/ro$b;IJ)V

    .line 343
    iget-object v0, p0, Lcom/vungle/publisher/my$b;->a:Lcom/vungle/publisher/my;

    invoke-virtual {v0, v2, v2, v4, v5}, Lcom/vungle/publisher/my;->a(ZIJ)V

    .line 344
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/ss;)V
    .registers 4
    .param p1, "event"    # Lcom/vungle/publisher/ss;

    .prologue
    .line 337
    const-string v0, "VungleEvent"

    const-string v1, "throw incentivized dialog"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/vungle/publisher/my$b;->a:Lcom/vungle/publisher/my;

    invoke-static {v0}, Lcom/vungle/publisher/my;->a(Lcom/vungle/publisher/my;)V

    .line 339
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/st;)V
    .registers 8
    .param p1, "event"    # Lcom/vungle/publisher/st;

    .prologue
    .line 325
    invoke-virtual {p1}, Lcom/vungle/publisher/st;->a()Lcom/vungle/publisher/ro$b;

    move-result-object v0

    .line 326
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set close region: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v1, p0, Lcom/vungle/publisher/my$b;->a:Lcom/vungle/publisher/my;

    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/vungle/publisher/my;->a(Lcom/vungle/publisher/ro$b;IJ)V

    .line 328
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/su;)V
    .registers 8
    .param p1, "event"    # Lcom/vungle/publisher/su;

    .prologue
    .line 331
    invoke-virtual {p1}, Lcom/vungle/publisher/su;->a()Z

    move-result v0

    .line 332
    const-string v1, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "use custom privacy icon? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/vungle/publisher/my$b;->a:Lcom/vungle/publisher/my;

    if-nez v0, :cond_28

    const/4 v0, 0x1

    :goto_21
    const/4 v2, 0x2

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v0, v2, v4, v5}, Lcom/vungle/publisher/my;->a(ZIJ)V

    .line 334
    return-void

    .line 333
    :cond_28
    const/4 v0, 0x0

    goto :goto_21
.end method

###### Class com.vungle.publisher.my.b.a (com.vungle.publisher.my$b$a)
.class public Lcom/vungle/publisher/my$b$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/my$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/my$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/my;)Lcom/vungle/publisher/my$b;
    .registers 3

    .prologue
    .line 354
    iget-object v0, p0, Lcom/vungle/publisher/my$b$a;->a:Lcom/vungle/publisher/my$b;

    iput-object p1, v0, Lcom/vungle/publisher/my$b;->a:Lcom/vungle/publisher/my;

    .line 355
    iget-object v0, p0, Lcom/vungle/publisher/my$b$a;->a:Lcom/vungle/publisher/my$b;

    return-object v0
.end method

###### Class com.vungle.publisher.my.c (com.vungle.publisher.my$c)
.class Lcom/vungle/publisher/my$c;
.super Lcom/vungle/publisher/my$d;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/my$d",
        "<",
        "Lcom/vungle/publisher/ro$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/my;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/my;Lcom/vungle/publisher/ro$b;I)V
    .registers 4

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vungle/publisher/my$c;->a:Lcom/vungle/publisher/my;

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/my$d;-><init>(Lcom/vungle/publisher/my;Ljava/lang/Object;I)V

    .line 269
    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/my$c;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method a(Lcom/vungle/publisher/ro$b;)V
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/vungle/publisher/my$c;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->q:Lcom/vungle/publisher/ro;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ro;->setCloseVisibility(Lcom/vungle/publisher/ro$b;)V

    .line 274
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 265
    check-cast p1, Lcom/vungle/publisher/ro$b;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/my$c;->a(Lcom/vungle/publisher/ro$b;)V

    return-void
.end method

###### Class com.vungle.publisher.my.d (com.vungle.publisher.my$d)
.class abstract Lcom/vungle/publisher/my$d;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final c:I

.field final synthetic d:Lcom/vungle/publisher/my;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/my;Ljava/lang/Object;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 237
    iput-object p1, p0, Lcom/vungle/publisher/my$d;->d:Lcom/vungle/publisher/my;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    iput p3, p0, Lcom/vungle/publisher/my$d;->c:I

    .line 239
    iput-object p2, p0, Lcom/vungle/publisher/my$d;->b:Ljava/lang/Object;

    .line 240
    return-void
.end method


# virtual methods
.method abstract a()Ljava/util/concurrent/atomic/AtomicInteger;
.end method

.method abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation
.end method

.method public run()V
    .registers 4

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/vungle/publisher/my$d;->a()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 248
    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 249
    iget v2, p0, Lcom/vungle/publisher/my$d;->c:I

    if-lt v2, v1, :cond_19

    .line 250
    iget v2, p0, Lcom/vungle/publisher/my$d;->c:I

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 251
    iget-object v0, p0, Lcom/vungle/publisher/my$d;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/my$d;->a(Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 262
    :cond_19
    :goto_19
    return-void

    .line 259
    :catch_1a
    move-exception v0

    .line 260
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_19
.end method

###### Class com.vungle.publisher.my.e (com.vungle.publisher.my$e)
.class Lcom/vungle/publisher/my$e;
.super Lcom/vungle/publisher/my$d;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/my;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/my$d",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/my;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/my;Ljava/lang/Integer;I)V
    .registers 4

    .prologue
    .line 284
    iput-object p1, p0, Lcom/vungle/publisher/my$e;->a:Lcom/vungle/publisher/my;

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/my$d;-><init>(Lcom/vungle/publisher/my;Ljava/lang/Object;I)V

    .line 286
    return-void
.end method


# virtual methods
.method a()Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vungle/publisher/my$e;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method a(Ljava/lang/Integer;)V
    .registers 4

    .prologue
    .line 290
    iget-object v0, p0, Lcom/vungle/publisher/my$e;->a:Lcom/vungle/publisher/my;

    iget-object v0, v0, Lcom/vungle/publisher/my;->r:Lcom/vungle/publisher/og;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/og;->setVisibility(I)V

    .line 291
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 282
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/my$e;->a(Ljava/lang/Integer;)V

    return-void
.end method
