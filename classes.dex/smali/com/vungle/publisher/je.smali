###### Class com.vungle.publisher.je (com.vungle.publisher.je)
.class public abstract Lcom/vungle/publisher/je;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/je$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/vungle/publisher/je",
        "<TD;TA;TR;TE;TF;TT;>;A:",
        "Lcom/vungle/publisher/cn;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        "E:",
        "Lcom/vungle/publisher/eh;",
        "F:",
        "Lcom/vungle/publisher/eh$a",
        "<TE;TT;TR;>;T:",
        "Lcom/vungle/publisher/wu;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/cn;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/jf;)Ljava/util/List;
    .registers 5
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
    .line 30
    const/4 v1, 0x0

    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    .line 32
    if-eqz v0, :cond_32

    .line 33
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 34
    if-eqz v0, :cond_32

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 36
    if-lez v2, :cond_32

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eh;

    .line 39
    invoke-virtual {v0}, Lcom/vungle/publisher/eh;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_30
    move-object v0, v1

    .line 44
    :goto_31
    return-object v0

    :cond_32
    move-object v0, v1

    goto :goto_31
.end method

.method public a(Lcom/vungle/publisher/wc;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/vungle/publisher/je;->b()Lcom/vungle/publisher/je$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/je$a;->c()Lcom/vungle/publisher/eh$a;

    move-result-object v0

    .line 53
    if-eqz v0, :cond_10

    .line 54
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/eh$a;->a(Lcom/vungle/publisher/wc;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    .line 56
    :cond_10
    iget-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .registers 4

    .prologue
    .line 48
    const-string v1, "eventTrackings"

    iget-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    :goto_7
    invoke-static {p1, v1, v0}, Lcom/vungle/publisher/dp;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void

    .line 48
    :cond_b
    iget-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_7
.end method

.method protected abstract b()Lcom/vungle/publisher/je$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/je$a",
            "<TD;TA;TR;TE;TF;TT;>;"
        }
    .end annotation
.end method

.method public c()V
    .registers 4

    .prologue
    .line 20
    iget-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    if-eqz v0, :cond_2e

    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/eh;

    .line 23
    invoke-virtual {v0}, Lcom/vungle/publisher/eh;->d_()Ljava/lang/Object;

    goto :goto_1e

    .line 27
    :cond_2e
    return-void
.end method

###### Class com.vungle.publisher.je.a (com.vungle.publisher.je$a)
.class abstract Lcom/vungle/publisher/je$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/je;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Lcom/vungle/publisher/je",
        "<TD;TA;TR;TE;TF;TT;>;A:",
        "Lcom/vungle/publisher/cn;",
        "R:",
        "Lcom/vungle/publisher/wc;",
        "E:",
        "Lcom/vungle/publisher/eh;",
        "F:",
        "Lcom/vungle/publisher/eh$a",
        "<TE;TT;TR;>;T:",
        "Lcom/vungle/publisher/wu;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/je;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)TD;"
        }
    .end annotation

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/vungle/publisher/je$a;->d()Lcom/vungle/publisher/je;

    move-result-object v0

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/vungle/publisher/je$a;->a(Lcom/vungle/publisher/je;Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/je;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/je;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TD;"
        }
    .end annotation

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/vungle/publisher/je$a;->d()Lcom/vungle/publisher/je;

    move-result-object v0

    .line 65
    invoke-virtual {p0, v0, p1, p2}, Lcom/vungle/publisher/je$a;->a(Lcom/vungle/publisher/je;Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/je;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/je;Lcom/vungle/publisher/cn;)Lcom/vungle/publisher/je;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TA;)TD;"
        }
    .end annotation

    .prologue
    .line 74
    iput-object p2, p1, Lcom/vungle/publisher/je;->c:Lcom/vungle/publisher/cn;

    .line 75
    invoke-virtual {p0}, Lcom/vungle/publisher/je$a;->c()Lcom/vungle/publisher/eh$a;

    move-result-object v1

    iget-object v0, p2, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/eh$a;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_3d

    .line 77
    iput-object v0, p1, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    .line 78
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " event trackings by adId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_3c
    return-object p1

    .line 80
    :cond_3d
    const-string v1, "VungleReport"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no event trackings for adId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p2, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c
.end method

.method public a(Lcom/vungle/publisher/je;Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/je;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;TA;TR;)TD;"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p2, p1, Lcom/vungle/publisher/je;->c:Lcom/vungle/publisher/cn;

    .line 88
    invoke-virtual {p0}, Lcom/vungle/publisher/je$a;->c()Lcom/vungle/publisher/eh$a;

    move-result-object v1

    iget-object v0, p2, Lcom/vungle/publisher/cn;->u:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/vungle/publisher/wc;->e()Lcom/vungle/publisher/wu;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/String;Lcom/vungle/publisher/wu;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/je;->b:Ljava/util/Map;

    .line 89
    return-object p1
.end method

.method protected abstract c()Lcom/vungle/publisher/eh$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation
.end method

.method protected abstract d()Lcom/vungle/publisher/je;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method
