###### Class com.vungle.publisher.gk (com.vungle.publisher.gk)
.class public Lcom/vungle/publisher/gk;
.super Lcom/vungle/publisher/dq;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/gk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dq;",
        "Lcom/vungle/publisher/dr",
        "<",
        "Lcom/vungle/publisher/gk;",
        ">;"
    }
.end annotation


# instance fields
.field w:Ljava/lang/String;

.field x:Lcom/vungle/publisher/gk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field y:Lcom/vungle/publisher/li$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/dq;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/vungle/publisher/dq;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 56
    const-string v1, "html_content"

    iget-object v2, p0, Lcom/vungle/publisher/gk;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-object v0
.end method

.method public synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/vungle/publisher/gk;->t()Lcom/vungle/publisher/gk$a;

    move-result-object v0

    return-object v0
.end method

.method protected b()Z
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/vungle/publisher/gk;->u()Lcom/vungle/publisher/gk$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    invoke-super {p0}, Lcom/vungle/publisher/dq;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public k_()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gd",
            "<",
            "Lcom/vungle/publisher/gk;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public l_()Z
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public synthetic m_()Lcom/vungle/publisher/cn;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/vungle/publisher/gk;->w()Lcom/vungle/publisher/gk;

    move-result-object v0

    return-object v0
.end method

.method public synthetic s()Lcom/vungle/publisher/lf;
    .registers 2

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/vungle/publisher/gk;->v()Lcom/vungle/publisher/li;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/vungle/publisher/gk$a;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/gk;->x:Lcom/vungle/publisher/gk$a;

    return-object v0
.end method

.method protected u()Lcom/vungle/publisher/gk$a;
    .registers 2

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/vungle/publisher/gk;->t()Lcom/vungle/publisher/gk$a;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/vungle/publisher/li;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/gk;->y:Lcom/vungle/publisher/li$a;

    iget-object v1, p0, Lcom/vungle/publisher/gk;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/li$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/li;

    move-result-object v0

    return-object v0
.end method

.method public w()Lcom/vungle/publisher/gk;
    .registers 1

    .prologue
    .line 63
    return-object p0
.end method

###### Class com.vungle.publisher.gk.a (com.vungle.publisher.gk$a)
.class public Lcom/vungle/publisher/gk$a;
.super Lcom/vungle/publisher/cn$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/gk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cn$a",
        "<",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/wj;",
        ">;",
        "Lcom/vungle/publisher/ea",
        "<",
        "Lcom/vungle/publisher/gk;",
        "Lcom/vungle/publisher/wj;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/gk;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/gl$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vungle/publisher/cn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gk;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/vungle/publisher/gk$a;->f()Lcom/vungle/publisher/gl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/gl;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;
    .registers 5

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/gk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/gk$a;->a(Lcom/vungle/publisher/gk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/wj;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/gk$a;->a(Lcom/vungle/publisher/wj;)Lcom/vungle/publisher/gk;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 82
    check-cast p1, Lcom/vungle/publisher/gk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/gk$a;->a(Lcom/vungle/publisher/gk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gk;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;
    .registers 4

    .prologue
    .line 82
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dr;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/gk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/gk;
    .registers 5

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;

    .line 103
    const-string v0, "html_content"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/gk;->w:Ljava/lang/String;

    .line 104
    return-object p1
.end method

.method public a(Lcom/vungle/publisher/wj;)Lcom/vungle/publisher/gk;
    .registers 4

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gk;

    .line 95
    invoke-virtual {p1}, Lcom/vungle/publisher/wj;->n()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/gk;->w:Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/gk;->a(Lcom/vungle/publisher/cn$c;)V

    .line 97
    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 109
    sget-object v0, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/gk;
    .registers 3

    .prologue
    .line 119
    new-array v0, p1, [Lcom/vungle/publisher/gk;

    return-object v0
.end method

.method public synthetic d()Lcom/vungle/publisher/eb;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vungle/publisher/gk$a;->f()Lcom/vungle/publisher/gl;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/gk$a;->c(I)[Lcom/vungle/publisher/gk;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/gk;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/gk$a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gk;

    return-object v0
.end method

.method public f()Lcom/vungle/publisher/gl;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/gk$a;->f:Lcom/vungle/publisher/gl$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/gl$a;->a(Lcom/vungle/publisher/cn$a;)Lcom/vungle/publisher/eb;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gl;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/vungle/publisher/gk$a;->e()Lcom/vungle/publisher/gk;

    move-result-object v0

    return-object v0
.end method

.method public n_()Lcom/vungle/publisher/cn$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cn$a",
            "<",
            "Lcom/vungle/publisher/gk;",
            "Lcom/vungle/publisher/wj;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    return-object p0
.end method
