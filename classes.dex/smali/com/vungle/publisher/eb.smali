###### Class com.vungle.publisher.eb (com.vungle.publisher.eb)
.class public abstract Lcom/vungle/publisher/eb;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/eb$c;,
        Lcom/vungle/publisher/eb$b;,
        Lcom/vungle/publisher/eb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        "F:",
        "Lcom/vungle/publisher/cn$a",
        "<TA;TR;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ci;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/eb$c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/hk$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/ct$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/cn$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/cn$a",
            "<TA;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;)",
            "Ljava/util/List",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    .line 73
    iget v4, v0, Lcom/vungle/publisher/cn;->l:I

    add-int/lit8 v1, v4, 0x1

    iput v1, v0, Lcom/vungle/publisher/cn;->l:I

    .line 75
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->a()Lcom/vungle/publisher/cn$a;

    move-result-object v5

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->m()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/vungle/publisher/cn$c;

    const/4 v8, 0x0

    sget-object v9, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    aput-object v9, v7, v8

    invoke-virtual {v5, v1, v6, v7}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Z

    move-result v1

    if-nez v1, :cond_73

    .line 76
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->b()Z

    move-result v1

    if-nez v1, :cond_45

    const/4 v1, 0x3

    if-lt v4, v1, :cond_49

    .line 77
    :cond_45
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 81
    :cond_49
    const-string v1, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to delete files for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->B()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " attempt "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->f_()I

    goto :goto_9

    .line 85
    :cond_73
    const-string v1, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not deleting files of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->B()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for Matching ad_token_hash: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 89
    :cond_9f
    return-object v2
.end method


# virtual methods
.method protected a()I
    .registers 7

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/cn$a;->a()Lcom/vungle/publisher/m;

    move-result-object v0

    .line 94
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting expired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records without pending reports"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "type = ? AND expiration_timestamp_seconds <= ?"

    .line 96
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/eb;->c:Lcom/vungle/publisher/zl;

    invoke-virtual {v2}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    const-string v2, "type = ? AND expiration_timestamp_seconds <= ?"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/eb;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TA;>;)I"
        }
    .end annotation

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    if-eqz p1, :cond_5e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5e

    .line 56
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " local ad(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    sget-object v1, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/cn$a;->a(Ljava/util/List;Lcom/vungle/publisher/cn$c;)I

    .line 61
    invoke-direct {p0, p1}, Lcom/vungle/publisher/eb;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 62
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleted local files "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " local ad(s)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/cn$a;->b()I

    move-result v0

    .line 67
    :cond_5e
    return v0
.end method

.method protected b()I
    .registers 5

    .prologue
    .line 103
    const-string v0, "type = ?"

    .line 104
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/cn$a;->a()Lcom/vungle/publisher/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vungle/publisher/m;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 105
    iget-object v1, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    const-string v2, "type = ?"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/vungle/publisher/cn$a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 106
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    invoke-virtual {v3}, Lcom/vungle/publisher/cn$a;->a()Lcom/vungle/publisher/m;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " records"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/eb;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public b(Ljava/util/List;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/s;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 116
    const-string v0, "VunglePrepare"

    const-string v1, "cleanUpInactivePlacements"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 121
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/s;

    .line 122
    iget-object v0, v0, Lcom/vungle/publisher/s;->a:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 126
    :cond_26
    iget-object v0, p0, Lcom/vungle/publisher/eb;->d:Lcom/vungle/publisher/hk$a;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hk$a;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 127
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inActivePlacements: size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 129
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_56
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/hk;

    .line 132
    iget-object v5, p0, Lcom/vungle/publisher/eb;->e:Lcom/vungle/publisher/ct$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/hk;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/vungle/publisher/ct$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 133
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_56

    .line 135
    :cond_72
    const-string v0, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adPlacementsForInactivePlacement: size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ct;

    .line 139
    iget-object v0, v0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_92

    .line 141
    :cond_a4
    iget-object v0, p0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/cn$a;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/eb;->a(Ljava/util/List;)I

    move-result v0

    .line 147
    iget-object v2, p0, Lcom/vungle/publisher/eb;->d:Lcom/vungle/publisher/hk$a;

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/hk$a;->a(Ljava/util/List;)I

    move-result v1

    .line 149
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "num of ads cleaned: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " for num of placements cleaned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return v1
.end method

###### Class com.vungle.publisher.eb.AnonymousClass1 (com.vungle.publisher.eb$1)
.class synthetic Lcom/vungle/publisher/eb$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.vungle.publisher.eb.a (com.vungle.publisher.eb$a)
.class public abstract Lcom/vungle/publisher/eb$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cn;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        "F:",
        "Lcom/vungle/publisher/cn$a",
        "<TA;TR;>;C:",
        "Lcom/vungle/publisher/eb",
        "<TA;TR;TF;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract a()Lcom/vungle/publisher/eb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method

.method public a(Lcom/vungle/publisher/cn$a;)Lcom/vungle/publisher/eb;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TC;"
        }
    .end annotation

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/vungle/publisher/eb$a;->a()Lcom/vungle/publisher/eb;

    move-result-object v0

    .line 160
    iput-object p1, v0, Lcom/vungle/publisher/eb;->f:Lcom/vungle/publisher/cn$a;

    .line 161
    return-object v0
.end method

###### Class com.vungle.publisher.eb.b (com.vungle.publisher.eb$b)
.class public Lcom/vungle/publisher/eb$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/eb$b$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ci;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/m$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ct$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/cn$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/jt$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/er$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/eb$c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/eb$b;)[Lcom/vungle/publisher/eb;
    .registers 2

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/vungle/publisher/eb$b;->d()[Lcom/vungle/publisher/eb;

    move-result-object v0

    return-object v0
.end method

.method private d()[Lcom/vungle/publisher/eb;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lcom/vungle/publisher/eb",
            "<***>;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/eb;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/eb$b;->d:Lcom/vungle/publisher/cn$b;

    sget-object v3, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    .line 192
    invoke-virtual {v2, v3}, Lcom/vungle/publisher/cn$b;->a(Lcom/vungle/publisher/m;)Lcom/vungle/publisher/ea;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/publisher/ea;->d()Lcom/vungle/publisher/eb;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/eb$b;->d:Lcom/vungle/publisher/cn$b;

    sget-object v3, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    .line 193
    invoke-virtual {v2, v3}, Lcom/vungle/publisher/cn$b;->a(Lcom/vungle/publisher/m;)Lcom/vungle/publisher/ea;

    move-result-object v2

    invoke-interface {v2}, Lcom/vungle/publisher/ea;->d()Lcom/vungle/publisher/eb;

    move-result-object v2

    aput-object v2, v0, v1

    .line 191
    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 198
    new-instance v0, Lcom/vungle/publisher/eb$b$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/eb$b$1;-><init>(Lcom/vungle/publisher/eb$b;)V

    .line 203
    invoke-virtual {v0}, Lcom/vungle/publisher/eb$b$1;->a()I

    move-result v0

    .line 198
    return v0
.end method

.method public a(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/s;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 216
    const-string v0, "VunglePrepare"

    const-string v1, "Mediator cleanUpInactivePlacements"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    new-instance v0, Lcom/vungle/publisher/eb$b$3;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/eb$b$3;-><init>(Lcom/vungle/publisher/eb$b;Ljava/util/List;)V

    .line 223
    invoke-virtual {v0}, Lcom/vungle/publisher/eb$b$3;->a()I

    move-result v0

    .line 217
    return v0
.end method

.method public a(Ljava/lang/String;)Lcom/vungle/publisher/dr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 227
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/cn$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/eb$b;->a(Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Lcom/vungle/publisher/dr;

    move-result-object v0

    return-object v0
.end method

.method varargs a(Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Lcom/vungle/publisher/dr;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cn;",
            "R:",
            "Lcom/vungle/publisher/wc;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Lcom/vungle/publisher/cn$c;",
            ")",
            "Lcom/vungle/publisher/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 273
    .line 275
    invoke-static {p2}, Lcom/vungle/publisher/yz;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v3

    .line 277
    :try_start_6
    iget-object v0, p0, Lcom/vungle/publisher/eb$b;->b:Lcom/vungle/publisher/m$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/m$a;->a()[Lcom/vungle/publisher/m;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/yz;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v4

    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/eb$b;->c:Lcom/vungle/publisher/ct$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ct$a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_b7
    .catchall {:try_start_6 .. :try_end_19} :catchall_b4

    move-result-object v5

    move-object v2, v1

    :cond_1b
    :goto_1b
    :try_start_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ct;

    .line 281
    iget-object v6, p0, Lcom/vungle/publisher/eb$b;->g:Lcom/vungle/publisher/eb$c;

    iget-object v0, v0, Lcom/vungle/publisher/ct;->a:Ljava/lang/String;

    invoke-virtual {v6, v0, v3, v4}, Lcom/vungle/publisher/eb$c;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/vungle/publisher/hp;

    move-result-object v0

    .line 282
    iget-object v6, p0, Lcom/vungle/publisher/eb$b;->a:Lcom/vungle/publisher/ci;

    invoke-virtual {v6, v0}, Lcom/vungle/publisher/ci;->a(Lcom/vungle/publisher/hp;)Landroid/database/Cursor;

    move-result-object v2

    .line 283
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 284
    if-nez v6, :cond_67

    .line 285
    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "no record found for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/vungle/publisher/hp;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_57} :catch_58
    .catchall {:try_start_1b .. :try_end_57} :catchall_ad

    goto :goto_1b

    .line 298
    :catch_58
    move-exception v0

    .line 299
    :goto_59
    :try_start_59
    const-string v3, "VunglePrepare"

    const-string v4, "could not get next ad by status"

    invoke-static {v3, v4, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_60
    .catchall {:try_start_59 .. :try_end_60} :catchall_ad

    .line 301
    if-eqz v2, :cond_ba

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 305
    :cond_66
    :goto_66
    return-object v0

    .line 286
    :cond_67
    if-ne v6, v9, :cond_94

    .line 287
    :try_start_69
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 288
    iget-object v0, p0, Lcom/vungle/publisher/eb$b;->b:Lcom/vungle/publisher/m$a;

    const-string v3, "type"

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/m$a;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/vungle/publisher/m;

    move-result-object v0

    .line 289
    iget-object v3, p0, Lcom/vungle/publisher/eb$b;->d:Lcom/vungle/publisher/cn$b;

    invoke-virtual {v3, v0}, Lcom/vungle/publisher/cn$b;->a(Lcom/vungle/publisher/m;)Lcom/vungle/publisher/ea;

    move-result-object v0

    .line 290
    invoke-interface {v0}, Lcom/vungle/publisher/ea;->n_()Lcom/vungle/publisher/cn$a;

    move-result-object v3

    .line 291
    invoke-virtual {v3}, Lcom/vungle/publisher/cn$a;->g_()Lcom/vungle/publisher/dp;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cn;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/vungle/publisher/cn$a;->a(Lcom/vungle/publisher/cn;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dr;
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8e} :catch_58
    .catchall {:try_start_69 .. :try_end_8e} :catchall_ad

    .line 301
    :goto_8e
    if-eqz v2, :cond_66

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_66

    .line 295
    :cond_94
    :try_start_94
    new-instance v0, Landroid/database/SQLException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fetched "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_ad} :catch_58
    .catchall {:try_start_94 .. :try_end_ad} :catchall_ad

    .line 301
    :catchall_ad
    move-exception v0

    :goto_ae
    if-eqz v2, :cond_b3

    .line 302
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_b3
    throw v0

    .line 301
    :catchall_b4
    move-exception v0

    move-object v2, v1

    goto :goto_ae

    .line 298
    :catch_b7
    move-exception v0

    move-object v2, v1

    goto :goto_59

    :cond_ba
    move-object v0, v1

    goto :goto_66

    :cond_bc
    move-object v0, v1

    goto :goto_8e
.end method

.method public b()I
    .registers 2

    .prologue
    .line 207
    new-instance v0, Lcom/vungle/publisher/eb$b$2;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/eb$b$2;-><init>(Lcom/vungle/publisher/eb$b;)V

    .line 212
    invoke-virtual {v0}, Lcom/vungle/publisher/eb$b$2;->a()I

    move-result v0

    .line 207
    return v0
.end method

.method public b(Ljava/lang/String;)Lcom/vungle/publisher/dr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 231
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/cn$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/eb$b;->a(Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Lcom/vungle/publisher/dr;

    move-result-object v0

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/vungle/publisher/dr;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/dr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 235
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/cn$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/eb$b;->a(Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Lcom/vungle/publisher/dr;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Long;
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 239
    .line 242
    const/4 v0, 0x2

    :try_start_2
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/cn$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/cn$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 243
    new-instance v1, Lcom/vungle/publisher/hp$a;

    invoke-direct {v1}, Lcom/vungle/publisher/hp$a;-><init>()V

    const-string v3, "ad"

    .line 244
    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hp$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "status NOT IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v0

    .line 245
    invoke-static {v4}, Lcom/vungle/publisher/ce;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    const-string v3, " ORDER BY expiration_timestamp_seconds ASC"

    .line 246
    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    const-string v3, " LIMIT ?"

    .line 247
    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    .line 248
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hp$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v0

    const-string v1, "1"

    .line 249
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/hp$a;->c(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v0

    .line 250
    invoke-virtual {v0}, Lcom/vungle/publisher/hp$a;->a()Lcom/vungle/publisher/hp;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/vungle/publisher/eb$b;->a:Lcom/vungle/publisher/ci;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ci;->a(Lcom/vungle/publisher/hp;)Landroid/database/Cursor;
    :try_end_62
    .catchall {:try_start_2 .. :try_end_62} :catchall_a9

    move-result-object v1

    .line 253
    :try_start_63
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 254
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {v1, v0}, Lcom/vungle/publisher/ce;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 255
    if-nez v0, :cond_7e

    .line 256
    const-string v0, "VunglePrepare"

    const-string v3, "next ad expiration time seconds is null"

    invoke-static {v0, v3}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_78
    .catchall {:try_start_63 .. :try_end_78} :catchall_a2

    .line 264
    :cond_78
    :goto_78
    if-eqz v1, :cond_7d

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 268
    :cond_7d
    return-object v2

    .line 259
    :cond_7e
    :try_start_7e
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 260
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "next ad expiration time millis "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a1
    .catchall {:try_start_7e .. :try_end_a1} :catchall_a2

    goto :goto_78

    .line 264
    :catchall_a2
    move-exception v0

    :goto_a3
    if-eqz v1, :cond_a8

    .line 265
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_a8
    throw v0

    .line 264
    :catchall_a9
    move-exception v0

    move-object v1, v2

    goto :goto_a3
.end method

###### Class com.vungle.publisher.eb.b.AnonymousClass1 (com.vungle.publisher.eb$b$1)
.class Lcom/vungle/publisher/eb$b$1;
.super Lcom/vungle/publisher/eb$b$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/eb$b;->a()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/eb$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/eb$b;)V
    .registers 3

    .prologue
    .line 198
    iput-object p1, p0, Lcom/vungle/publisher/eb$b$1;->a:Lcom/vungle/publisher/eb$b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/publisher/eb$b$a;-><init>(Lcom/vungle/publisher/eb$b;Lcom/vungle/publisher/eb$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/vungle/publisher/eb;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/eb",
            "<***>;)I"
        }
    .end annotation

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/vungle/publisher/eb;->a()I

    move-result v0

    return v0
.end method

###### Class com.vungle.publisher.eb.b.AnonymousClass2 (com.vungle.publisher.eb$b$2)
.class Lcom/vungle/publisher/eb$b$2;
.super Lcom/vungle/publisher/eb$b$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/eb$b;->b()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/eb$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/eb$b;)V
    .registers 3

    .prologue
    .line 207
    iput-object p1, p0, Lcom/vungle/publisher/eb$b$2;->a:Lcom/vungle/publisher/eb$b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/publisher/eb$b$a;-><init>(Lcom/vungle/publisher/eb$b;Lcom/vungle/publisher/eb$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/vungle/publisher/eb;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/eb",
            "<***>;)I"
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Lcom/vungle/publisher/eb;->b()I

    move-result v0

    return v0
.end method

###### Class com.vungle.publisher.eb.b.AnonymousClass3 (com.vungle.publisher.eb$b$3)
.class Lcom/vungle/publisher/eb$b$3;
.super Lcom/vungle/publisher/eb$b$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/eb$b;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/vungle/publisher/eb$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/eb$b;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 217
    iput-object p1, p0, Lcom/vungle/publisher/eb$b$3;->b:Lcom/vungle/publisher/eb$b;

    iput-object p2, p0, Lcom/vungle/publisher/eb$b$3;->a:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/vungle/publisher/eb$b$a;-><init>(Lcom/vungle/publisher/eb$b;Lcom/vungle/publisher/eb$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/vungle/publisher/eb;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/eb",
            "<***>;)I"
        }
    .end annotation

    .prologue
    .line 220
    const-string v0, "VunglePrepare"

    const-string v1, "DeleteCommand : cleanUpInactivePlacements"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/vungle/publisher/eb$b$3;->a:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/eb;->b(Ljava/util/List;)I

    move-result v0

    return v0
.end method

###### Class com.vungle.publisher.eb.b.a (com.vungle.publisher.eb$b$a)
.class abstract Lcom/vungle/publisher/eb$b$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eb$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lcom/vungle/publisher/eb$b;


# direct methods
.method private constructor <init>(Lcom/vungle/publisher/eb$b;)V
    .registers 2

    .prologue
    .line 308
    iput-object p1, p0, Lcom/vungle/publisher/eb$b$a;->c:Lcom/vungle/publisher/eb$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vungle/publisher/eb$b;Lcom/vungle/publisher/eb$1;)V
    .registers 3

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/vungle/publisher/eb$b$a;-><init>(Lcom/vungle/publisher/eb$b;)V

    return-void
.end method


# virtual methods
.method a()I
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 311
    .line 312
    iget-object v1, p0, Lcom/vungle/publisher/eb$b$a;->c:Lcom/vungle/publisher/eb$b;

    invoke-static {v1}, Lcom/vungle/publisher/eb$b;->a(Lcom/vungle/publisher/eb$b;)[Lcom/vungle/publisher/eb;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_9
    if-ge v0, v3, :cond_15

    aget-object v4, v2, v0

    .line 313
    invoke-virtual {p0, v4}, Lcom/vungle/publisher/eb$b$a;->a(Lcom/vungle/publisher/eb;)I

    move-result v4

    add-int/2addr v1, v4

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 315
    :cond_15
    return v1
.end method

.method abstract a(Lcom/vungle/publisher/eb;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/eb",
            "<***>;)I"
        }
    .end annotation
.end method

###### Class com.vungle.publisher.eb.c (com.vungle.publisher.eb$c)
.class public Lcom/vungle/publisher/eb$c;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/eb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ci;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/m$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ct$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/zl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lcom/vungle/publisher/hp;
    .registers 10

    .prologue
    .line 337
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vungle/publisher/eb$c;->d:Lcom/vungle/publisher/zl;

    invoke-virtual {v2}, Lcom/vungle/publisher/zl;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 338
    new-instance v1, Lcom/vungle/publisher/hp$a;

    invoke-direct {v1}, Lcom/vungle/publisher/hp$a;-><init>()V

    const-string v2, "ad"

    .line 339
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    const-string v2, "id = ? "

    .line 340
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND status IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p2

    .line 341
    invoke-static {v3}, Lcom/vungle/publisher/ce;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AND type IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p3

    .line 342
    invoke-static {v3}, Lcom/vungle/publisher/ce;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    const-string v2, " AND expiration_timestamp_seconds > ?"

    .line 343
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    const-string v2, " ORDER BY received_timestamp_millis ASC"

    .line 344
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    const-string v2, " LIMIT ?"

    .line 345
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/hp$a;->b(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    .line 346
    invoke-virtual {v1, p1}, Lcom/vungle/publisher/hp$a;->c(Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    .line 347
    invoke-virtual {v1, p2}, Lcom/vungle/publisher/hp$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    .line 348
    invoke-virtual {v1, p3}, Lcom/vungle/publisher/hp$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v1

    .line 349
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hp$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hp$a;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Lcom/vungle/publisher/hp$a;->a()Lcom/vungle/publisher/hp;

    move-result-object v0

    .line 352
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "built query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/vungle/publisher/hp;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-object v0
.end method
