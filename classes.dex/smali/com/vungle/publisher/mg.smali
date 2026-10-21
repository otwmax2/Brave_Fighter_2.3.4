###### Class com.vungle.publisher.mg (com.vungle.publisher.mg)
.class public abstract Lcom/vungle/publisher/mg;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/mg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/vungle/publisher/VungleAdActivity;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/vungle/publisher/mf;

.field d:Lcom/vungle/publisher/me;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/me",
            "<*>;"
        }
    .end annotation
.end field

.field e:Lcom/vungle/publisher/yj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/yj",
            "<*>;"
        }
    .end annotation
.end field

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lrx/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/BehaviorSubject",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field i:Lcom/vungle/publisher/qg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/zc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/env/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private l:Lcom/vungle/publisher/p;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    .line 46
    invoke-static {}, Lrx/subjects/BehaviorSubject;->create()Lrx/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/mg;->h:Lrx/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method protected abstract a()Lcom/vungle/publisher/me;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/me",
            "<*>;"
        }
    .end annotation
.end method

.method protected a(I)V
    .registers 5

    .prologue
    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 159
    if-eqz v0, :cond_d

    .line 160
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 165
    :cond_d
    :goto_d
    return-void

    .line 162
    :catch_e
    move-exception v0

    .line 163
    const-string v1, "VungleAd"

    const-string v2, "could not set orientation"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method public a(Landroid/content/res/Configuration;)V
    .registers 2

    .prologue
    .line 88
    return-void
.end method

.method a(Landroid/net/Uri;)V
    .registers 6

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/mg;->j:Lcom/vungle/publisher/zc;

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/vungle/publisher/zc;->a(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 127
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 129
    if-eqz v0, :cond_1b

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 137
    :goto_1a
    return-void

    .line 132
    :cond_1b
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "Activity destroyed."

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3e} :catch_3f

    goto :goto_1a

    .line 134
    :catch_3f
    move-exception v0

    .line 135
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error loading URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 79
    :try_start_0
    const-string v0, "currentFragment"

    iget-object v1, p0, Lcom/vungle/publisher/mg;->c:Lcom/vungle/publisher/mf;

    invoke-virtual {v1}, Lcom/vungle/publisher/mf;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 84
    :goto_b
    return-void

    .line 81
    :catch_c
    move-exception v0

    .line 82
    const-string v1, "VungleAd"

    const-string v2, "error in onSaveInstanceState"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a(Lcom/vungle/publisher/VungleAdActivity;)V
    .registers 4

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/mg;->h:Lrx/subjects/BehaviorSubject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public a(Lcom/vungle/publisher/VungleAdActivity;Lcom/vungle/publisher/cn;Ljava/lang/String;Lcom/vungle/publisher/p;Landroid/os/Bundle;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/VungleAdActivity;",
            "TA;",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/p;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p2, p0, Lcom/vungle/publisher/mg;->a:Lcom/vungle/publisher/cn;

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    .line 63
    iput-object p4, p0, Lcom/vungle/publisher/mg;->l:Lcom/vungle/publisher/p;

    .line 64
    iput-object p3, p0, Lcom/vungle/publisher/mg;->g:Ljava/lang/String;

    .line 65
    invoke-virtual {p0}, Lcom/vungle/publisher/mg;->a()Lcom/vungle/publisher/me;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/mg;->d:Lcom/vungle/publisher/me;

    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/mg;->b()Lcom/vungle/publisher/yj;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/mg;->e:Lcom/vungle/publisher/yj;

    .line 67
    iget-object v0, p0, Lcom/vungle/publisher/mg;->d:Lcom/vungle/publisher/me;

    invoke-virtual {v0}, Lcom/vungle/publisher/me;->register()V

    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/mg;->e:Lcom/vungle/publisher/yj;

    invoke-virtual {v0}, Lcom/vungle/publisher/yj;->register()V

    .line 70
    if-eqz p5, :cond_3d

    const/4 v0, 0x1

    .line 71
    :goto_26
    if-nez v0, :cond_32

    .line 72
    iget-object v1, p0, Lcom/vungle/publisher/mg;->i:Lcom/vungle/publisher/qg;

    new-instance v2, Lcom/vungle/publisher/av;

    invoke-direct {v2, p2, p3, p4}, Lcom/vungle/publisher/av;-><init>(Lcom/vungle/publisher/cn;Ljava/lang/String;Lcom/vungle/publisher/p;)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 74
    :cond_32
    if-eqz v0, :cond_3f

    const-string v0, "currentFragment"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3a
    iput-object v0, p0, Lcom/vungle/publisher/mg;->f:Ljava/lang/String;

    .line 75
    return-void

    .line 70
    :cond_3d
    const/4 v0, 0x0

    goto :goto_26

    .line 74
    :cond_3f
    const/4 v0, 0x0

    goto :goto_3a
.end method

.method protected a(Lcom/vungle/publisher/mf;)V
    .registers 5

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 145
    iget-object v1, p0, Lcom/vungle/publisher/mg;->c:Lcom/vungle/publisher/mf;

    if-eq p1, v1, :cond_36

    if-eqz v0, :cond_36

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 147
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 148
    iget-object v1, p0, Lcom/vungle/publisher/mg;->l:Lcom/vungle/publisher/p;

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/vungle/publisher/mg;->l:Lcom/vungle/publisher/p;

    invoke-interface {v1}, Lcom/vungle/publisher/p;->isTransitionAnimationEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 149
    :cond_22
    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 151
    :cond_27
    const v1, 0x1020002

    iput-object p1, p0, Lcom/vungle/publisher/mg;->c:Lcom/vungle/publisher/mf;

    invoke-virtual {p1}, Lcom/vungle/publisher/mf;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 152
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 154
    :cond_36
    return-void
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/mg;->c:Lcom/vungle/publisher/mf;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/mf;->a(Z)V

    .line 100
    return-void
.end method

.method a(ZZ)V
    .registers 7

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/mg;->i:Lcom/vungle/publisher/qg;

    if-eqz p1, :cond_24

    new-instance v0, Lcom/vungle/publisher/bv;

    iget-object v2, p0, Lcom/vungle/publisher/mg;->a:Lcom/vungle/publisher/cn;

    iget-object v3, p0, Lcom/vungle/publisher/mg;->g:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p2}, Lcom/vungle/publisher/bv;-><init>(Lcom/vungle/publisher/cn;Ljava/lang/String;Z)V

    :goto_d
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/qg;->a(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lcom/vungle/publisher/mg;->h:Lrx/subjects/BehaviorSubject;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_2e
    .catchall {:try_start_0 .. :try_end_16} :catchall_44

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    if-eqz v0, :cond_23

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 122
    :cond_23
    :goto_23
    return-void

    .line 108
    :cond_24
    :try_start_24
    new-instance v0, Lcom/vungle/publisher/bu;

    iget-object v2, p0, Lcom/vungle/publisher/mg;->a:Lcom/vungle/publisher/cn;

    iget-object v3, p0, Lcom/vungle/publisher/mg;->g:Ljava/lang/String;

    invoke-direct {v0, v2, v3, p2}, Lcom/vungle/publisher/bu;-><init>(Lcom/vungle/publisher/cn;Ljava/lang/String;Z)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2d} :catch_2e
    .catchall {:try_start_24 .. :try_end_2d} :catchall_44

    goto :goto_d

    .line 114
    :catch_2e
    move-exception v0

    .line 115
    :try_start_2f
    const-string v1, "VungleAd"

    const-string v2, "error exiting ad"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_44

    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    if-eqz v0, :cond_23

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_23

    .line 117
    :catchall_44
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Lcom/vungle/publisher/mg;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 118
    if-eqz v0, :cond_53

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 121
    :cond_53
    throw v1
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .registers 4

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vungle/publisher/mg;->c:Lcom/vungle/publisher/mf;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/mf;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected abstract b()Lcom/vungle/publisher/yj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/yj",
            "<*>;"
        }
    .end annotation
.end method

.method b(Landroid/net/Uri;)V
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/mg;->a(Landroid/net/Uri;)V

    .line 141
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/mg;->c:Lcom/vungle/publisher/mf;

    invoke-virtual {v0}, Lcom/vungle/publisher/mf;->a()V

    .line 96
    return-void
.end method

###### Class com.vungle.publisher.mg.a (com.vungle.publisher.mg$a)
.class public Lcom/vungle/publisher/mg$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/oy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/nk;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ns;",
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
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/mg;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/vungle/publisher/mg",
            "<TA;>;A:",
            "Lcom/vungle/publisher/cn;",
            ">(TA;)TP;"
        }
    .end annotation

    .prologue
    .line 183
    sget-object v0, Lcom/vungle/publisher/x;->b:Lcom/vungle/publisher/x;

    iget-object v1, p1, Lcom/vungle/publisher/cn;->s:Ljava/lang/String;

    invoke-static {v1}, Lcom/vungle/publisher/x;->a(Ljava/lang/String;)Lcom/vungle/publisher/x;

    move-result-object v1

    if-ne v0, v1, :cond_13

    .line 184
    iget-object v0, p0, Lcom/vungle/publisher/mg$a;->c:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg;

    .line 187
    :goto_12
    return-object v0

    :cond_13
    new-instance v0, Lcom/vungle/publisher/mg$a$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/mg$a$1;-><init>(Lcom/vungle/publisher/mg$a;)V

    .line 207
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/mg$a$1;->a(Lcom/vungle/publisher/cn;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg;

    goto :goto_12
.end method

###### Class com.vungle.publisher.mg.a.AnonymousClass1 (com.vungle.publisher.mg$a$1)
.class Lcom/vungle/publisher/mg$a$1;
.super Lcom/vungle/publisher/q;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/mg$a;->a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/mg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/q",
        "<TP;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/mg$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/mg$a;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/vungle/publisher/mg$a$1;->a:Lcom/vungle/publisher/mg$a;

    invoke-direct {p0}, Lcom/vungle/publisher/q;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/mg$a$1;->e()Lcom/vungle/publisher/mg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/mg$a$1;->f()Lcom/vungle/publisher/mg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/mg$a$1;->g()Lcom/vungle/publisher/mg;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/mg$a$1;->h()Lcom/vungle/publisher/mg;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/mg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/mg$a$1;->a:Lcom/vungle/publisher/mg$a;

    iget-object v0, v0, Lcom/vungle/publisher/mg$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg;

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/mg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/vungle/publisher/mg$a$1;->a:Lcom/vungle/publisher/mg$a;

    iget-object v0, v0, Lcom/vungle/publisher/mg$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg;

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/mg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/vungle/publisher/mg$a$1;->a:Lcom/vungle/publisher/mg$a;

    iget-object v0, v0, Lcom/vungle/publisher/mg$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg;

    return-object v0
.end method

.method protected h()Lcom/vungle/publisher/mg;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lcom/vungle/publisher/mg$a$1;->a:Lcom/vungle/publisher/mg$a;

    iget-object v0, v0, Lcom/vungle/publisher/mg$a;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mg;

    return-object v0
.end method
