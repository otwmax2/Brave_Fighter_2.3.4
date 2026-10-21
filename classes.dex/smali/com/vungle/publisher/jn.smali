###### Class com.vungle.publisher.jn (com.vungle.publisher.jn)
.class public Lcom/vungle/publisher/jn;
.super Lcom/vungle/publisher/dq;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jn$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dq;",
        "Lcom/vungle/publisher/dr",
        "<",
        "Lcom/vungle/publisher/jn;",
        ">;"
    }
.end annotation


# instance fields
.field A:Lcom/vungle/publisher/jo;

.field B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/iz;",
            ">;"
        }
    .end annotation
.end field

.field C:Lcom/vungle/publisher/ks;

.field D:Lcom/vungle/publisher/dw;

.field E:Lcom/vungle/publisher/jn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field F:Lcom/vungle/publisher/lb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Z

.field x:Z

.field y:Z

.field z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Lcom/vungle/publisher/dq;-><init>()V

    .line 38
    iput-boolean v0, p0, Lcom/vungle/publisher/jn;->w:Z

    .line 39
    iput-boolean v0, p0, Lcom/vungle/publisher/jn;->x:Z

    .line 53
    return-void
.end method

.method private D()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 74
    invoke-static {}, Lcom/vungle/publisher/ru;->a()Ljava/lang/String;

    move-result-object v0

    .line 75
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-virtual {v3}, Lcom/vungle/publisher/jo;->z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "mraid.js"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/vungle/publisher/qr;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    const/4 v2, 0x0

    .line 78
    :try_start_1a
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 80
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_28} :catch_5d
    .catchall {:try_start_1a .. :try_end_28} :catchall_75

    .line 81
    :try_start_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_4e} :catch_88
    .catchall {:try_start_28 .. :try_end_4e} :catchall_86

    .line 86
    if-eqz v1, :cond_53

    .line 87
    :try_start_50
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 92
    :cond_53
    :goto_53
    return-void

    .line 88
    :catch_54
    move-exception v0

    .line 89
    const-string v1, "VungleDatabase"

    const-string v2, "error closing output file"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 82
    :catch_5d
    move-exception v0

    move-object v1, v2

    .line 83
    :goto_5f
    :try_start_5f
    const-string v2, "VungleDatabase"

    const-string v3, "Failed writing to the mraid js file"

    invoke-static {v2, v3, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_66
    .catchall {:try_start_5f .. :try_end_66} :catchall_86

    .line 86
    if-eqz v1, :cond_53

    .line 87
    :try_start_68
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_53

    .line 88
    :catch_6c
    move-exception v0

    .line 89
    const-string v1, "VungleDatabase"

    const-string v2, "error closing output file"

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_53

    .line 85
    :catchall_75
    move-exception v0

    move-object v1, v2

    .line 86
    :goto_77
    if-eqz v1, :cond_7c

    .line 87
    :try_start_79
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_7d

    .line 90
    :cond_7c
    :goto_7c
    throw v0

    .line 88
    :catch_7d
    move-exception v1

    .line 89
    const-string v2, "VungleDatabase"

    const-string v3, "error closing output file"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7c

    .line 85
    :catchall_86
    move-exception v0

    goto :goto_77

    .line 82
    :catch_88
    move-exception v0

    goto :goto_5f
.end method


# virtual methods
.method protected a(Z)Landroid/content/ContentValues;
    .registers 5

    .prologue
    .line 165
    invoke-super {p0, p1}, Lcom/vungle/publisher/dq;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 166
    const-string v1, "requires_sideloading"

    iget-boolean v2, p0, Lcom/vungle/publisher/jn;->y:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 167
    if-eqz p1, :cond_1f

    .line 168
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/vungle/publisher/jn;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v1, "template_type"

    iget-object v2, p0, Lcom/vungle/publisher/jn;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_1f
    return-object v0
.end method

.method public synthetic a()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->t()Lcom/vungle/publisher/jn$a;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/jf;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jf;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vungle/publisher/jn;->C:Lcom/vungle/publisher/ks;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ks;->a(Lcom/vungle/publisher/jf;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/cn$c;)V
    .registers 4

    .prologue
    .line 117
    iget-object v0, p0, Lcom/vungle/publisher/jn;->f:Lcom/vungle/publisher/cn$c;

    .line 118
    invoke-super {p0, p1}, Lcom/vungle/publisher/dq;->a(Lcom/vungle/publisher/cn$c;)V

    .line 119
    iget-object v1, p0, Lcom/vungle/publisher/jn;->D:Lcom/vungle/publisher/dw;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/dw;->a(Lcom/vungle/publisher/cn$c;Lcom/vungle/publisher/cn$c;)V

    .line 120
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/qr;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->u()Lcom/vungle/publisher/jn$a;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    invoke-super {p0}, Lcom/vungle/publisher/dq;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public synthetic d_()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f_()I
    .registers 4

    .prologue
    .line 144
    invoke-super {p0}, Lcom/vungle/publisher/dq;->f_()I

    move-result v1

    .line 145
    const/4 v0, 0x1

    if-ne v1, v0, :cond_44

    .line 146
    iget-object v0, p0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    if-eqz v0, :cond_21

    .line 147
    iget-object v0, p0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dk;

    .line 148
    invoke-virtual {v0}, Lcom/vungle/publisher/dk;->f_()I

    goto :goto_11

    .line 151
    :cond_21
    iget-object v0, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    if-eqz v0, :cond_2a

    .line 152
    iget-object v0, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-virtual {v0}, Lcom/vungle/publisher/jo;->f_()I

    .line 154
    :cond_2a
    iget-object v0, p0, Lcom/vungle/publisher/jn;->B:Ljava/util/List;

    if-eqz v0, :cond_44

    .line 155
    iget-object v0, p0, Lcom/vungle/publisher/jn;->B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_34
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_44

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/iz;

    .line 156
    invoke-virtual {v0}, Lcom/vungle/publisher/iz;->f_()I

    goto :goto_34

    .line 160
    :cond_44
    return v1
.end method

.method public k_()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gd",
            "<",
            "Lcom/vungle/publisher/jn;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 213
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->u()Lcom/vungle/publisher/jn$a;

    move-result-object v1

    .line 214
    invoke-virtual {v1, p0, v4}, Lcom/vungle/publisher/jn$a;->b(Lcom/vungle/publisher/jn;Z)Ljava/util/List;

    .line 215
    iget-object v2, p0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    if-eqz v2, :cond_23

    .line 216
    iget-object v2, p0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 220
    :goto_16
    invoke-virtual {v1, p0, v4}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Z)Lcom/vungle/publisher/jo;

    .line 221
    iget-object v1, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    if-eqz v1, :cond_2b

    .line 222
    iget-object v1, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :goto_22
    return-object v0

    .line 218
    :cond_23
    const-string v2, "VungleDatabase"

    const-string v3, "vungle mraid ad assets are null"

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_16

    .line 224
    :cond_2b
    const-string v1, "VungleDatabase"

    const-string v2, "vungle mraid ad template is null"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public l_()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    .line 195
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->u()Lcom/vungle/publisher/jn$a;

    move-result-object v1

    .line 196
    invoke-virtual {v1, p0, v0}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Z)Lcom/vungle/publisher/jo;

    .line 197
    const-string v1, "VunglePrepare"

    .line 198
    iget-object v1, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    if-eqz v1, :cond_43

    .line 199
    :goto_e
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->B()Ljava/lang/String;

    move-result-object v1

    .line 200
    if-eqz v0, :cond_45

    .line 201
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/vungle/publisher/ei$b;->d:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-virtual {v3}, Lcom/vungle/publisher/jo;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :goto_42
    return v0

    .line 198
    :cond_43
    const/4 v0, 0x0

    goto :goto_e

    .line 204
    :cond_45
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vungle mraid ad is invalid. template = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    sget-object v1, Lcom/vungle/publisher/cn$c;->c:Lcom/vungle/publisher/cn$c;

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/jn;->a(Lcom/vungle/publisher/cn$c;)V

    goto :goto_42
.end method

.method public synthetic m_()Lcom/vungle/publisher/cn;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->z()Lcom/vungle/publisher/jn;

    move-result-object v0

    return-object v0
.end method

.method protected p()Ljava/lang/StringBuilder;
    .registers 4

    .prologue
    .line 176
    invoke-super {p0}, Lcom/vungle/publisher/dq;->p()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 177
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/vungle/publisher/jn;->k:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 178
    const-string v1, "template_type"

    iget-object v2, p0, Lcom/vungle/publisher/jn;->s:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/jn;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    return-object v0
.end method

.method public synthetic s()Lcom/vungle/publisher/lf;
    .registers 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->v()Lcom/vungle/publisher/lb;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/vungle/publisher/jn$a;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/vungle/publisher/jn;->E:Lcom/vungle/publisher/jn$a;

    return-object v0
.end method

.method protected u()Lcom/vungle/publisher/jn$a;
    .registers 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->t()Lcom/vungle/publisher/jn$a;

    move-result-object v0

    return-object v0
.end method

.method public v()Lcom/vungle/publisher/lb;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->t()Lcom/vungle/publisher/jn$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Z)Lcom/vungle/publisher/jo;

    .line 69
    invoke-direct {p0}, Lcom/vungle/publisher/jn;->D()V

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/jn;->F:Lcom/vungle/publisher/lb$a;

    iget-object v1, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-virtual {v1}, Lcom/vungle/publisher/jo;->D()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/lb$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/lb;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .registers 2

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/vungle/publisher/jn;->y:Z

    return v0
.end method

.method public x()V
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/vungle/publisher/jn;->C:Lcom/vungle/publisher/ks;

    if-eqz v0, :cond_9

    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/jn;->C:Lcom/vungle/publisher/ks;

    invoke-virtual {v0}, Lcom/vungle/publisher/ks;->c()V

    .line 108
    :cond_9
    return-void
.end method

.method public y()Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Lcom/vungle/publisher/dq;->d_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/vungle/publisher/jn;->x()V

    .line 126
    iget-object v1, p0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    if-eqz v1, :cond_23

    .line 127
    iget-object v1, p0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/dk;

    .line 128
    invoke-virtual {v1}, Lcom/vungle/publisher/dk;->x()Ljava/lang/Integer;

    goto :goto_13

    .line 131
    :cond_23
    iget-object v1, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    if-eqz v1, :cond_2c

    .line 132
    iget-object v1, p0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    invoke-virtual {v1}, Lcom/vungle/publisher/jo;->d_()Ljava/lang/Object;

    .line 134
    :cond_2c
    iget-object v1, p0, Lcom/vungle/publisher/jn;->B:Ljava/util/List;

    if-eqz v1, :cond_46

    .line 135
    iget-object v1, p0, Lcom/vungle/publisher/jn;->B:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_36
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/iz;

    .line 136
    invoke-virtual {v1}, Lcom/vungle/publisher/iz;->d_()Ljava/lang/Object;

    goto :goto_36

    .line 139
    :cond_46
    return-object v0
.end method

.method public z()Lcom/vungle/publisher/jn;
    .registers 1

    .prologue
    .line 190
    return-object p0
.end method

###### Class com.vungle.publisher.jn.a (com.vungle.publisher.jn$a)
.class public Lcom/vungle/publisher/jn$a;
.super Lcom/vungle/publisher/cn$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ea;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/cn$a",
        "<",
        "Lcom/vungle/publisher/jn;",
        "Lcom/vungle/publisher/wr;",
        ">;",
        "Lcom/vungle/publisher/ea",
        "<",
        "Lcom/vungle/publisher/jn;",
        "Lcom/vungle/publisher/wr;",
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
            "Lcom/vungle/publisher/jn;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/dk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Ljavax/inject/Provider;
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

.field i:Lcom/vungle/publisher/jt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/jo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Lcom/vungle/publisher/jy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/ks$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/iz$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/dw$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/vungle/publisher/cn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;)I
    .registers 4

    .prologue
    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    .line 287
    invoke-virtual {p2}, Lcom/vungle/publisher/wr;->c()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jn;->m:Ljava/lang/Long;

    .line 288
    iget-object v0, p1, Lcom/vungle/publisher/jn;->C:Lcom/vungle/publisher/ks;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/ks;->a(Lcom/vungle/publisher/wc;)Ljava/util/Map;

    .line 289
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cn$a;->b(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/jn;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/vungle/publisher/jn$a;->g()Lcom/vungle/publisher/jt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/jt;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;
    .registers 5

    .prologue
    .line 229
    check-cast p1, Lcom/vungle/publisher/jn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;
    .registers 3

    .prologue
    .line 229
    check-cast p1, Lcom/vungle/publisher/wr;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/wr;)Lcom/vungle/publisher/jn;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 229
    check-cast p1, Lcom/vungle/publisher/jn;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;
    .registers 4

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/Object;Z)Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dr;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/jn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jn;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 299
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;

    .line 300
    const-string v0, "delete_local_content_attempts"

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/jn;->l:I

    .line 301
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jn;->m:Ljava/lang/Long;

    .line 302
    const-string v0, "parent_path"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/jn;->a(Ljava/lang/String;)V

    .line 303
    const-string v0, "prepare_retry_count"

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/vungle/publisher/jn;->o:I

    .line 304
    iget-object v0, p0, Lcom/vungle/publisher/jn$a;->f:Lcom/vungle/publisher/zl;

    invoke-virtual {v0}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/vungle/publisher/jn;->p:J

    .line 305
    iget-object v0, p0, Lcom/vungle/publisher/jn$a;->l:Lcom/vungle/publisher/ks$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ks$a;->a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/je;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ks;

    iput-object v0, p1, Lcom/vungle/publisher/jn;->C:Lcom/vungle/publisher/ks;

    .line 306
    iget-object v0, p0, Lcom/vungle/publisher/jn$a;->n:Lcom/vungle/publisher/dw$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/dw;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jn;->D:Lcom/vungle/publisher/dw;

    .line 307
    const-string v0, "template_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jn;->k:Ljava/lang/String;

    .line 308
    const-string v0, "template_type"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jn;->s:Ljava/lang/String;

    .line 309
    const-string v0, "requires_sideloading"

    invoke-static {p2, v0}, Lcom/vungle/publisher/ce;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/vungle/publisher/jn;->y:Z

    .line 310
    if-eqz p3, :cond_63

    .line 311
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/jn$a;->b(Lcom/vungle/publisher/jn;Z)Ljava/util/List;

    .line 312
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Z)Lcom/vungle/publisher/jo;

    .line 314
    :cond_63
    return-object p1
.end method

.method public a(Lcom/vungle/publisher/wr;)Lcom/vungle/publisher/jn;
    .registers 6

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jn;

    .line 267
    invoke-virtual {p1}, Lcom/vungle/publisher/wr;->c()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->m:Ljava/lang/Long;

    .line 268
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->h:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 269
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/jn;->a(Ljava/lang/String;)V

    .line 270
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->g:Lcom/vungle/publisher/dk$a;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/dk$a;->a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    .line 271
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->j:Lcom/vungle/publisher/jo$a;

    sget-object v2, Lcom/vungle/publisher/ei$b;->d:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v0, p1, v2}, Lcom/vungle/publisher/jo$a;->a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;Lcom/vungle/publisher/ei$b;)Lcom/vungle/publisher/jo;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    .line 272
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->l:Lcom/vungle/publisher/ks$a;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/ks$a;->a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/je;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/ks;

    iput-object v1, v0, Lcom/vungle/publisher/jn;->C:Lcom/vungle/publisher/ks;

    .line 273
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->n:Lcom/vungle/publisher/dw$a;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/dw$a;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/dw;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->D:Lcom/vungle/publisher/dw;

    .line 274
    invoke-virtual {p1}, Lcom/vungle/publisher/wr;->r()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->k:Ljava/lang/String;

    .line 275
    invoke-virtual {p1}, Lcom/vungle/publisher/wr;->m()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->s:Ljava/lang/String;

    .line 276
    invoke-virtual {p1}, Lcom/vungle/publisher/wr;->n()Z

    move-result v1

    iput-boolean v1, v0, Lcom/vungle/publisher/jn;->y:Z

    .line 277
    invoke-virtual {p1}, Lcom/vungle/publisher/wr;->o()Lorg/json/JSONObject;

    move-result-object v2

    .line 278
    if-eqz v2, :cond_5f

    .line 279
    iget-object v3, p0, Lcom/vungle/publisher/jn$a;->m:Lcom/vungle/publisher/iz$a;

    iget-object v1, v0, Lcom/vungle/publisher/jn;->u:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v2}, Lcom/vungle/publisher/iz$a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jn;->B:Ljava/util/List;

    .line 281
    :cond_5f
    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/jn;->a(Lcom/vungle/publisher/cn$c;)V

    .line 282
    return-object v0
.end method

.method a(Lcom/vungle/publisher/jn;Z)Lcom/vungle/publisher/jo;
    .registers 6

    .prologue
    .line 319
    iget-boolean v0, p1, Lcom/vungle/publisher/jn;->x:Z

    if-eqz v0, :cond_7

    .line 320
    iget-object v0, p1, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    .line 325
    :goto_6
    return-object v0

    .line 322
    :cond_7
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->j:Lcom/vungle/publisher/jo$a;

    iget-object v0, p1, Lcom/vungle/publisher/jn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/vungle/publisher/ei$b;->d:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1, v0, v2, p2}, Lcom/vungle/publisher/jo$a;->a(Ljava/lang/String;Lcom/vungle/publisher/ei$b;Z)Lcom/vungle/publisher/jm;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jo;

    iput-object v0, p1, Lcom/vungle/publisher/jn;->A:Lcom/vungle/publisher/jo;

    .line 323
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/jn;->x:Z

    goto :goto_6
.end method

.method protected a()Lcom/vungle/publisher/m;
    .registers 2

    .prologue
    .line 341
    sget-object v0, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    return-object v0
.end method

.method public synthetic b(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)I
    .registers 4

    .prologue
    .line 229
    check-cast p1, Lcom/vungle/publisher/jn;

    check-cast p2, Lcom/vungle/publisher/wr;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jn$a;->a(Lcom/vungle/publisher/jn;Lcom/vungle/publisher/wr;)I

    move-result v0

    return v0
.end method

.method b(Lcom/vungle/publisher/jn;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/jn;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-boolean v0, p1, Lcom/vungle/publisher/jn;->w:Z

    if-eqz v0, :cond_7

    .line 331
    iget-object v0, p1, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    .line 336
    :goto_6
    return-object v0

    .line 333
    :cond_7
    iget-object v1, p0, Lcom/vungle/publisher/jn$a;->g:Lcom/vungle/publisher/dk$a;

    sget-object v2, Lcom/vungle/publisher/ei$b;->e:Lcom/vungle/publisher/ei$b;

    iget-object v0, p1, Lcom/vungle/publisher/jn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0, p2}, Lcom/vungle/publisher/dk$a;->a(Lcom/vungle/publisher/ei$b;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jn;->z:Ljava/util/List;

    .line 334
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/jn;->w:Z

    goto :goto_6
.end method

.method protected c(I)[Lcom/vungle/publisher/jn;
    .registers 3

    .prologue
    .line 352
    new-array v0, p1, [Lcom/vungle/publisher/jn;

    return-object v0
.end method

.method public synthetic d()Lcom/vungle/publisher/eb;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/vungle/publisher/jn$a;->g()Lcom/vungle/publisher/jt;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 229
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jn$a;->c(I)[Lcom/vungle/publisher/jn;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/jn;
    .registers 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/vungle/publisher/jn$a;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jn;

    .line 347
    return-object v0
.end method

.method public f()Lcom/vungle/publisher/jn$a;
    .registers 1

    .prologue
    .line 357
    return-object p0
.end method

.method public g()Lcom/vungle/publisher/jt;
    .registers 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/vungle/publisher/jn$a;->i:Lcom/vungle/publisher/jt$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/jt$a;->a(Lcom/vungle/publisher/cn$a;)Lcom/vungle/publisher/eb;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jt;

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/vungle/publisher/jn$a;->e()Lcom/vungle/publisher/jn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n_()Lcom/vungle/publisher/cn$a;
    .registers 2

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/vungle/publisher/jn$a;->f()Lcom/vungle/publisher/jn$a;

    move-result-object v0

    return-object v0
.end method
