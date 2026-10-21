###### Class com.vungle.publisher.dk (com.vungle.publisher.dk)
.class public Lcom/vungle/publisher/dk;
.super Lcom/vungle/publisher/jm;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ge$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/dk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jm",
        "<",
        "Lcom/vungle/publisher/jn;",
        ">;",
        "Lcom/vungle/publisher/ge$b",
        "<",
        "Lcom/vungle/publisher/jn;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ge;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/vungle/publisher/iz;

.field e:Lcom/vungle/publisher/jn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/dk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vungle/publisher/jm;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/vungle/publisher/jm;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge;->a(Landroid/content/ContentValues;)V

    .line 131
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/dk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "extension"

    iget-object v2, p0, Lcom/vungle/publisher/dk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/publisher/dk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/dk;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/Integer;)V
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ge;->a(Ljava/lang/Integer;)V

    .line 55
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ge;->a(Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/dk;->w()Lcom/vungle/publisher/dk$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/dk;->x()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/vungle/publisher/dk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->j()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->l()Z

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->e()Z

    move-result v0

    return v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/vungle/publisher/jm;->q()I

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public u()Z
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method protected v()Lcom/vungle/publisher/jn$a;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/dk;->e:Lcom/vungle/publisher/jn$a;

    return-object v0
.end method

.method protected w()Lcom/vungle/publisher/dk$a;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/vungle/publisher/dk;->f:Lcom/vungle/publisher/dk$a;

    return-object v0
.end method

.method public x()Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/vungle/publisher/jm;->d_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    iget-object v1, p0, Lcom/vungle/publisher/dk;->d:Lcom/vungle/publisher/iz;

    if-eqz v1, :cond_f

    .line 122
    iget-object v1, p0, Lcom/vungle/publisher/dk;->d:Lcom/vungle/publisher/iz;

    invoke-virtual {v1}, Lcom/vungle/publisher/iz;->d_()Ljava/lang/Object;

    .line 124
    :cond_f
    return-object v0
.end method

.method protected synthetic y()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/dk;->v()Lcom/vungle/publisher/jn$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.dk.a (com.vungle.publisher.dk$a)
.class Lcom/vungle/publisher/dk$a;
.super Lcom/vungle/publisher/jm$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jm$a",
        "<",
        "Lcom/vungle/publisher/jn;",
        "Lcom/vungle/publisher/dk;",
        "Lcom/vungle/publisher/wr;",
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
            "Lcom/vungle/publisher/dk;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ge$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/iz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/vungle/publisher/jm$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/dk;
    .registers 3

    .prologue
    .line 204
    iget-object v0, p0, Lcom/vungle/publisher/dk$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dk;

    .line 205
    iget-object v1, p0, Lcom/vungle/publisher/dk$a;->b:Lcom/vungle/publisher/ge$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge$a;->a(Lcom/vungle/publisher/ge$b;)Lcom/vungle/publisher/ge;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    .line 206
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/dk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dk;
    .registers 5

    .prologue
    .line 175
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;

    .line 176
    const-string v0, "extension"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dk;->b:Ljava/lang/String;

    .line 177
    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/dk;->c:Ljava/lang/String;

    .line 178
    iget-object v0, p1, Lcom/vungle/publisher/dk;->a:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/ge;->a(Landroid/database/Cursor;)V

    .line 179
    return-object p1
.end method

.method a(Lcom/vungle/publisher/dk;Lcom/vungle/publisher/wy;)Lcom/vungle/publisher/dk;
    .registers 6

    .prologue
    .line 183
    sget-object v0, Lcom/vungle/publisher/ei$b;->e:Lcom/vungle/publisher/ei$b;

    iput-object v0, p1, Lcom/vungle/publisher/dk;->r:Lcom/vungle/publisher/ei$b;

    .line 184
    invoke-virtual {p2}, Lcom/vungle/publisher/wy;->b()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-virtual {p2}, Lcom/vungle/publisher/wy;->a()Ljava/lang/String;

    move-result-object v1

    .line 186
    invoke-virtual {p2}, Lcom/vungle/publisher/wy;->c()Ljava/lang/String;

    move-result-object v2

    .line 187
    if-nez v0, :cond_1a

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_1a
    if-nez v1, :cond_24

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null extension"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_24
    if-nez v2, :cond_2e

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "asset object must have a non-null name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_2e
    iput-object v2, p1, Lcom/vungle/publisher/dk;->c:Ljava/lang/String;

    .line 197
    iput-object v1, p1, Lcom/vungle/publisher/dk;->b:Ljava/lang/String;

    .line 198
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/dk;->a(Ljava/lang/String;)V

    .line 199
    return-object p1
.end method

.method a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;Lcom/vungle/publisher/wy;)Lcom/vungle/publisher/dk;
    .registers 9

    .prologue
    .line 150
    const/4 v0, 0x0

    .line 151
    if-eqz p2, :cond_2d

    .line 152
    if-eqz p3, :cond_25

    .line 153
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/jm;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dk;

    .line 154
    invoke-virtual {p0, v0, p3}, Lcom/vungle/publisher/dk$a;->a(Lcom/vungle/publisher/dk;Lcom/vungle/publisher/wy;)Lcom/vungle/publisher/dk;

    move-result-object v0

    move-object v1, v0

    .line 159
    :goto_10
    iget-object v2, p0, Lcom/vungle/publisher/dk$a;->c:Lcom/vungle/publisher/iz$a;

    invoke-virtual {p1}, Lcom/vungle/publisher/jn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, v1, Lcom/vungle/publisher/dk;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/vungle/publisher/dk;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/vungle/publisher/iz$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/vungle/publisher/iz;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/dk;->d:Lcom/vungle/publisher/iz;

    .line 160
    return-object v1

    .line 156
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot create asset with null url"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    move-object v1, v0

    goto :goto_10
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 136
    check-cast p1, Lcom/vungle/publisher/dk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/dk$a;->a(Lcom/vungle/publisher/dk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dk;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;
    .registers 5

    .prologue
    .line 136
    check-cast p1, Lcom/vungle/publisher/dk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/dk$a;->a(Lcom/vungle/publisher/dk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dk;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jn;",
            "Lcom/vungle/publisher/wr;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p2}, Lcom/vungle/publisher/wr;->p()Lcom/vungle/publisher/wz;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/vungle/publisher/wz;->a()Ljava/util/Collection;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wy;

    .line 168
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/dk$a;->a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;Lcom/vungle/publisher/wy;)Lcom/vungle/publisher/dk;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 170
    :cond_25
    return-object v1
.end method

.method protected a(I)[Lcom/vungle/publisher/dk;
    .registers 3

    .prologue
    .line 211
    new-array v0, p1, [Lcom/vungle/publisher/dk;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 136
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/dk$a;->a(I)[Lcom/vungle/publisher/dk;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/vungle/publisher/dk$a;->a()Lcom/vungle/publisher/dk;

    move-result-object v0

    return-object v0
.end method
