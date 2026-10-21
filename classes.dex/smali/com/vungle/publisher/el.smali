###### Class com.vungle.publisher.el (com.vungle.publisher.el)
.class public Lcom/vungle/publisher/el;
.super Lcom/vungle/publisher/jh;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/el$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh",
        "<",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/ek;",
        "Lcom/vungle/publisher/wg;",
        ">;",
        "Lcom/vungle/publisher/dr",
        "<",
        "Lcom/vungle/publisher/el;",
        ">;"
    }
.end annotation


# instance fields
.field w:Lcom/vungle/publisher/em;

.field public x:Lcom/vungle/publisher/dw;

.field y:Z

.field z:Lcom/vungle/publisher/el$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/jh;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->u()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/cn$c;)V
    .registers 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/el;->f:Lcom/vungle/publisher/cn$c;

    .line 57
    invoke-super {p0, p1}, Lcom/vungle/publisher/jh;->a(Lcom/vungle/publisher/cn$c;)V

    .line 58
    iget-object v1, p0, Lcom/vungle/publisher/el;->x:Lcom/vungle/publisher/dw;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/dw;->a(Lcom/vungle/publisher/cn$c;Lcom/vungle/publisher/cn$c;)V

    .line 59
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/qr;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->s()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    invoke-super {p0}, Lcom/vungle/publisher/jh;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public synthetic d_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f_()I
    .registers 3

    .prologue
    .line 141
    invoke-super {p0}, Lcom/vungle/publisher/jh;->f_()I

    move-result v0

    .line 142
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    .line 143
    iget-object v1, p0, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    if-eqz v1, :cond_10

    .line 144
    iget-object v1, p0, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    invoke-virtual {v1}, Lcom/vungle/publisher/em;->f_()I

    .line 147
    :cond_10
    return v0
.end method

.method public k_()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gd",
            "<",
            "Lcom/vungle/publisher/el;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->D()Lcom/vungle/publisher/jg;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ek;

    .line 65
    if-eqz v0, :cond_10

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_10
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->v()Lcom/vungle/publisher/em;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_19

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_19
    return-object v1
.end method

.method public l_()Z
    .registers 9

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    const-string v0, "VunglePrepare"

    .line 97
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->D()Lcom/vungle/publisher/jg;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ek;

    .line 98
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->v()Lcom/vungle/publisher/em;

    move-result-object v5

    .line 99
    if-eqz v0, :cond_7c

    move v4, v2

    .line 100
    :goto_11
    if-eqz v5, :cond_7e

    move v3, v2

    .line 101
    :goto_14
    if-nez v4, :cond_18

    if-eqz v3, :cond_19

    :cond_18
    move v1, v2

    .line 102
    :cond_19
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->B()Ljava/lang/String;

    move-result-object v2

    .line 103
    if-eqz v1, :cond_80

    .line 104
    if-eqz v4, :cond_4d

    .line 105
    const-string v4, "VunglePrepare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/vungle/publisher/ei$b;->a:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/vungle/publisher/ek;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_4d
    if-eqz v3, :cond_7b

    .line 108
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/ei$b;->b:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/vungle/publisher/em;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_7b
    :goto_7b
    return v1

    :cond_7c
    move v4, v1

    .line 99
    goto :goto_11

    :cond_7e
    move v3, v1

    .line 100
    goto :goto_14

    .line 111
    :cond_80
    sget-object v0, Lcom/vungle/publisher/cn$c;->c:Lcom/vungle/publisher/cn$c;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/el;->a(Lcom/vungle/publisher/cn$c;)V

    goto :goto_7b
.end method

.method public synthetic m_()Lcom/vungle/publisher/cn;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->t()Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method protected s()Lcom/vungle/publisher/el$a;
    .registers 2

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->u()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/vungle/publisher/el;
    .registers 1

    .prologue
    .line 41
    return-object p0
.end method

.method public u()Lcom/vungle/publisher/el$a;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vungle/publisher/el;->z:Lcom/vungle/publisher/el$a;

    return-object v0
.end method

.method public v()Lcom/vungle/publisher/em;
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/el;->z:Lcom/vungle/publisher/el$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/el;Z)Lcom/vungle/publisher/em;

    move-result-object v0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 132
    invoke-super {p0}, Lcom/vungle/publisher/jh;->w()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    if-eqz v1, :cond_d

    .line 134
    iget-object v1, p0, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    invoke-virtual {v1}, Lcom/vungle/publisher/em;->d_()Ljava/lang/Object;

    .line 136
    :cond_d
    return-object v0
.end method

.method public synthetic x()Lcom/vungle/publisher/jh$a;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/el;->u()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.el.a (com.vungle.publisher.el$a)
.class public Lcom/vungle/publisher/el$a;
.super Lcom/vungle/publisher/jh$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jh$a",
        "<",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/ek;",
        "Lcom/vungle/publisher/wg;",
        ">;",
        "Lcom/vungle/publisher/ea",
        "<",
        "Lcom/vungle/publisher/el;",
        "Lcom/vungle/publisher/wg;",
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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/em$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/el;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/ek$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/er$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/dw$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/fq$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/vungle/publisher/jh$a;-><init>()V

    .line 177
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
            "Lcom/vungle/publisher/el;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/vungle/publisher/el$a;->i()Lcom/vungle/publisher/er;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/er;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;
    .registers 5

    .prologue
    .line 150
    check-cast p1, Lcom/vungle/publisher/el;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/el;Landroid/database/Cursor;Z)Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 150
    check-cast p1, Lcom/vungle/publisher/wg;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 150
    check-cast p1, Lcom/vungle/publisher/el;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/el;Landroid/database/Cursor;Z)Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;
    .registers 4

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jh$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dr;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/el;Landroid/database/Cursor;Z)Lcom/vungle/publisher/el;
    .registers 5

    .prologue
    .line 212
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/jh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jh;

    .line 213
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/el;->a(Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/vungle/publisher/el$a;->j:Lcom/vungle/publisher/dw$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/dw;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/el;->x:Lcom/vungle/publisher/dw;

    .line 215
    if-eqz p3, :cond_19

    .line 216
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/el;Z)Lcom/vungle/publisher/em;

    .line 218
    :cond_19
    return-object p1
.end method

.method public a(Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/el;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/qm;
        }
    .end annotation

    .prologue
    .line 191
    invoke-super {p0, p1}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/el;

    .line 192
    iget-object v1, p0, Lcom/vungle/publisher/el$a;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 193
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/el;->a(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/vungle/publisher/el$a;->f:Lcom/vungle/publisher/em$a;

    sget-object v2, Lcom/vungle/publisher/ei$b;->b:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/em$a;->a(Lcom/vungle/publisher/el;Lcom/vungle/publisher/wg;Lcom/vungle/publisher/ei$b;)Lcom/vungle/publisher/em;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    .line 195
    iget-object v1, p0, Lcom/vungle/publisher/el$a;->j:Lcom/vungle/publisher/dw$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/dw;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/el;->x:Lcom/vungle/publisher/dw;

    .line 196
    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/el;->a(Lcom/vungle/publisher/cn$c;)V

    .line 197
    return-object v0
.end method

.method a(Lcom/vungle/publisher/el;Z)Lcom/vungle/publisher/em;
    .registers 6

    .prologue
    .line 223
    iget-boolean v0, p1, Lcom/vungle/publisher/el;->y:Z

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p1, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    .line 229
    :goto_6
    return-object v0

    .line 226
    :cond_7
    iget-object v1, p0, Lcom/vungle/publisher/el$a;->f:Lcom/vungle/publisher/em$a;

    iget-object v0, p1, Lcom/vungle/publisher/el;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/ei$b;->b:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/em$a;->a(Ljava/lang/String;Lcom/vungle/publisher/ei$b;Z)Lcom/vungle/publisher/jm;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/em;

    iput-object v0, p1, Lcom/vungle/publisher/el;->w:Lcom/vungle/publisher/em;

    .line 227
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/el;->y:Z

    goto :goto_6
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/jh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jh;
    .registers 5

    .prologue
    .line 150
    check-cast p1, Lcom/vungle/publisher/el;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/el;Landroid/database/Cursor;Z)Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/wp;)Lcom/vungle/publisher/jh;
    .registers 3

    .prologue
    .line 150
    check-cast p1, Lcom/vungle/publisher/wg;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/el$a;->a(Lcom/vungle/publisher/wg;)Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 202
    sget-object v0, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/el;
    .registers 3

    .prologue
    .line 234
    new-array v0, p1, [Lcom/vungle/publisher/el;

    return-object v0
.end method

.method public synthetic d()Lcom/vungle/publisher/eb;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/vungle/publisher/el$a;->i()Lcom/vungle/publisher/er;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 150
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/el$a;->c(I)[Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/ek$a;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vungle/publisher/el$a;->h:Lcom/vungle/publisher/ek$a;

    return-object v0
.end method

.method protected f()Lcom/vungle/publisher/fq$a;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/el$a;->k:Lcom/vungle/publisher/fq$a;

    return-object v0
.end method

.method protected g()Lcom/vungle/publisher/el;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/el$a;->g:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/el;

    .line 240
    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/vungle/publisher/el$a;->g()Lcom/vungle/publisher/el;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/vungle/publisher/el$a;
    .registers 1

    .prologue
    .line 245
    return-object p0
.end method

.method public i()Lcom/vungle/publisher/er;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/vungle/publisher/el$a;->i:Lcom/vungle/publisher/er$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/er$a;->a(Lcom/vungle/publisher/cn$a;)Lcom/vungle/publisher/eb;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/er;

    return-object v0
.end method

.method protected synthetic j()Lcom/vungle/publisher/je$a;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/vungle/publisher/el$a;->f()Lcom/vungle/publisher/fq$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic k()Lcom/vungle/publisher/jg$a;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/vungle/publisher/el$a;->e()Lcom/vungle/publisher/ek$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n_()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/vungle/publisher/el$a;->h()Lcom/vungle/publisher/el$a;

    move-result-object v0

    return-object v0
.end method
