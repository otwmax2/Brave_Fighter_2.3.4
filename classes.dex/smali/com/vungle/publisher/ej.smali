###### Class com.vungle.publisher.ej (com.vungle.publisher.ej)
.class public abstract Lcom/vungle/publisher/ej;
.super Lcom/vungle/publisher/jm;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ge$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ej$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        "V:",
        "Lcom/vungle/publisher/ej",
        "<TA;TV;>;>",
        "Lcom/vungle/publisher/jm",
        "<TA;>;",
        "Lcom/vungle/publisher/ge$b",
        "<TA;>;"
    }
.end annotation


# instance fields
.field a:[Lcom/vungle/publisher/df;

.field b:Z

.field c:Z

.field d:Z

.field e:Lcom/vungle/publisher/df$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/ge;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/jm;-><init>()V

    return-void
.end method

.method private final I()Lcom/vungle/publisher/ej;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/ej",
            "<TA;TV;>;"
        }
    .end annotation

    .prologue
    .line 75
    return-object p0
.end method

.method static synthetic a(Lcom/vungle/publisher/ej;)Lcom/vungle/publisher/ej;
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/ej;->I()Lcom/vungle/publisher/ej;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public D()Ljava/io/File;
    .registers 3

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->E()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public E()Ljava/lang/String;
    .registers 4

    .prologue
    .line 104
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->z()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "index.html"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method F()Z
    .registers 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    const-string v0, "VunglePrepare"

    .line 133
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->h()Ljava/io/File;

    move-result-object v3

    .line 135
    :try_start_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->x()Ljava/io/File;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/vungle/publisher/qu$a;

    const/4 v6, 0x0

    new-instance v7, Lcom/vungle/publisher/ej$1;

    invoke-direct {v7, p0, v0}, Lcom/vungle/publisher/ej$1;-><init>(Lcom/vungle/publisher/ej;Ljava/util/List;)V

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/vungle/publisher/qu;->a(Ljava/io/File;Ljava/io/File;[Lcom/vungle/publisher/qu$a;)V

    .line 144
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/vungle/publisher/df;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/df;

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v4}, Lcom/vungle/publisher/ej;->a([Lcom/vungle/publisher/df;Z)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2f} :catch_31

    move v0, v1

    .line 150
    :goto_30
    return v0

    .line 147
    :catch_31
    move-exception v0

    .line 148
    const-string v1, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error extracting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_30
.end method

.method G()Z
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->n()Z

    move-result v0

    return v0
.end method

.method H()Z
    .registers 6

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->z()Ljava/lang/String;

    move-result-object v0

    .line 195
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/ej;->r:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/qr;->a(Ljava/lang/String;)Z

    move-result v1

    .line 197
    if-eqz v1, :cond_5d

    .line 198
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/ej;->r:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/ej;->a:[Lcom/vungle/publisher/df;

    .line 200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ej;->d:Z

    .line 205
    :goto_5c
    return v1

    .line 203
    :cond_5d
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to delete "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vungle/publisher/ej;->r:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c
.end method

.method protected a(Z)Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 236
    invoke-super {p0, p1}, Lcom/vungle/publisher/jm;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge;->a(Landroid/content/ContentValues;)V

    .line 238
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->v()Ljava/lang/String;

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
    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ge;->a(Ljava/lang/Integer;)V

    .line 62
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ge;->a(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method a([Lcom/vungle/publisher/df;Z)V
    .registers 4

    .prologue
    .line 86
    iput-object p1, p0, Lcom/vungle/publisher/ej;->a:[Lcom/vungle/publisher/df;

    .line 87
    iput-boolean p2, p0, Lcom/vungle/publisher/ej;->c:Z

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ej;->b:Z

    .line 89
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f_()I
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 217
    invoke-super {p0}, Lcom/vungle/publisher/jm;->f_()I

    move-result v1

    .line 218
    const/4 v0, 0x1

    if-ne v1, v0, :cond_21

    .line 219
    iget-boolean v0, p0, Lcom/vungle/publisher/ej;->d:Z

    if-eqz v0, :cond_22

    .line 220
    iget-object v2, p0, Lcom/vungle/publisher/ej;->e:Lcom/vungle/publisher/df$a;

    iget-object v0, p0, Lcom/vungle/publisher/ej;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/df$a;->a(Ljava/lang/Integer;)I

    .line 221
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->H()Z

    .line 222
    const-string v0, "VungleDatabase"

    const-string v2, "resetting areArchiveEntriesDeleted = false"

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iput-boolean v3, p0, Lcom/vungle/publisher/ej;->d:Z

    .line 231
    :cond_21
    :goto_21
    return v1

    .line 225
    :cond_22
    iget-boolean v0, p0, Lcom/vungle/publisher/ej;->c:Z

    if-eqz v0, :cond_21

    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/ej;->e:Lcom/vungle/publisher/df$a;

    iget-object v2, p0, Lcom/vungle/publisher/ej;->a:[Lcom/vungle/publisher/df;

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/df$a;->a([Lcom/vungle/publisher/dp;)Ljava/util/List;

    .line 227
    const-string v0, "VungleDatabase"

    const-string v2, "resetting areArchiveEntriesNew = false"

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iput-boolean v3, p0, Lcom/vungle/publisher/ej;->c:Z

    goto :goto_21
.end method

.method public h()Ljava/io/File;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->d()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Z
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->j()Z

    move-result v0

    return v0
.end method

.method public n()Z
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->l()Z

    move-result v0

    return v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 3

    .prologue
    .line 245
    invoke-super {p0}, Lcom/vungle/publisher/jm;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 246
    iget-object v1, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ge;->a(Ljava/lang/StringBuilder;)V

    .line 247
    return-object v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->H()Z

    .line 178
    iget-object v0, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0}, Lcom/vungle/publisher/ge;->h()I

    move-result v0

    return v0
.end method

.method public r()Z
    .registers 3

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->G()Z

    move-result v0

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->H()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public s()I
    .registers 2

    .prologue
    .line 212
    invoke-super {p0}, Lcom/vungle/publisher/jm;->q()I

    move-result v0

    return v0
.end method

.method public t()Z
    .registers 3

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 122
    iget-object v1, p0, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v1}, Lcom/vungle/publisher/ge;->m()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 123
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->F()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 124
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->u()Z

    move-result v0

    .line 127
    :cond_13
    return v0
.end method

.method public u()Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->w()[Lcom/vungle/publisher/df;

    move-result-object v4

    array-length v5, v4

    move v2, v0

    move v1, v0

    :goto_8
    if-ge v2, v5, :cond_19

    aget-object v1, v4, v2

    .line 163
    const/4 v3, 0x1

    .line 164
    invoke-virtual {v1}, Lcom/vungle/publisher/df;->r()Z

    move-result v1

    if-nez v1, :cond_14

    .line 169
    :goto_13
    return v0

    .line 161
    :cond_14
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v3

    goto :goto_8

    :cond_19
    move v0, v1

    goto :goto_13
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    const-string v0, "zip"

    return-object v0
.end method

.method public w()[Lcom/vungle/publisher/df;
    .registers 3

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/vungle/publisher/ej;->b:Z

    if-nez v0, :cond_12

    .line 80
    iget-object v0, p0, Lcom/vungle/publisher/ej;->e:Lcom/vungle/publisher/df$a;

    invoke-direct {p0}, Lcom/vungle/publisher/ej;->I()Lcom/vungle/publisher/ej;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/df$a;->a(Lcom/vungle/publisher/ej;)[Lcom/vungle/publisher/df;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ej;->a([Lcom/vungle/publisher/df;Z)V

    .line 82
    :cond_12
    iget-object v0, p0, Lcom/vungle/publisher/ej;->a:[Lcom/vungle/publisher/df;

    return-object v0
.end method

.method x()Ljava/io/File;
    .registers 3

    .prologue
    .line 92
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->z()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method z()Ljava/lang/String;
    .registers 4

    .prologue
    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/ej;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/ej;->r:Lcom/vungle/publisher/ei$b;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.ej.AnonymousClass1 (com.vungle.publisher.ej$1)
.class Lcom/vungle/publisher/ej$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/qu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/ej;->F()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/vungle/publisher/ej;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ej;Ljava/util/List;)V
    .registers 3

    .prologue
    .line 136
    iput-object p1, p0, Lcom/vungle/publisher/ej$1;->b:Lcom/vungle/publisher/ej;

    iput-object p2, p0, Lcom/vungle/publisher/ej$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;Ljava/lang/String;J)V
    .registers 10

    .prologue
    .line 139
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extracted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/vungle/publisher/ej$1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/vungle/publisher/ej$1;->b:Lcom/vungle/publisher/ej;

    iget-object v1, v1, Lcom/vungle/publisher/ej;->e:Lcom/vungle/publisher/df$a;

    iget-object v2, p0, Lcom/vungle/publisher/ej$1;->b:Lcom/vungle/publisher/ej;

    .line 141
    invoke-static {v2}, Lcom/vungle/publisher/ej;->a(Lcom/vungle/publisher/ej;)Lcom/vungle/publisher/ej;

    move-result-object v2

    long-to-int v3, p3

    invoke-virtual {v1, v2, p1, p2, v3}, Lcom/vungle/publisher/df$a;->a(Lcom/vungle/publisher/ej;Ljava/io/File;Ljava/lang/String;I)Lcom/vungle/publisher/df;

    move-result-object v1

    .line 140
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-void
.end method

###### Class com.vungle.publisher.ej.a (com.vungle.publisher.ej$a)
.class abstract Lcom/vungle/publisher/ej$a;
.super Lcom/vungle/publisher/jm$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ej;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        "V:",
        "Lcom/vungle/publisher/ej",
        "<TA;TV;>;R:",
        "Lcom/vungle/publisher/wc;",
        ">",
        "Lcom/vungle/publisher/jm$a",
        "<TA;TV;TR;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ge$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 255
    invoke-direct {p0}, Lcom/vungle/publisher/jm$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 250
    check-cast p1, Lcom/vungle/publisher/ej;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ej$a;->a(Lcom/vungle/publisher/ej;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ej;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;Lcom/vungle/publisher/ei$b;)Lcom/vungle/publisher/ej;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;",
            "Lcom/vungle/publisher/ei$b;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 258
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/jm;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ej;

    .line 259
    if-eqz v0, :cond_a

    .line 260
    iput-object p3, v0, Lcom/vungle/publisher/ej;->r:Lcom/vungle/publisher/ei$b;

    .line 262
    :cond_a
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/ej;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ej;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Landroid/database/Cursor;",
            "Z)TV;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/jm$a;->a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;

    .line 268
    iget-object v0, p1, Lcom/vungle/publisher/ej;->f:Lcom/vungle/publisher/ge;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/ge;->a(Landroid/database/Cursor;)V

    .line 269
    if-eqz p3, :cond_d

    .line 270
    invoke-virtual {p1}, Lcom/vungle/publisher/ej;->w()[Lcom/vungle/publisher/df;

    .line 272
    :cond_d
    return-object p1
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/jm;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jm;
    .registers 5

    .prologue
    .line 250
    check-cast p1, Lcom/vungle/publisher/ej;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/ej$a;->a(Lcom/vungle/publisher/ej;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ej;

    move-result-object v0

    return-object v0
.end method
