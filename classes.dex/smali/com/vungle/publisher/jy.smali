###### Class com.vungle.publisher.jy (com.vungle.publisher.jy)
.class public Lcom/vungle/publisher/jy;
.super Lcom/vungle/publisher/eh;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jy$a;
    }
.end annotation


# instance fields
.field d:Lcom/vungle/publisher/jy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/eh;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b_()Lcom/vungle/publisher/dp$a;
    .registers 2

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/vungle/publisher/jy;->e()Lcom/vungle/publisher/jy$a;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lcom/vungle/publisher/jy$a;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vungle/publisher/jy;->d:Lcom/vungle/publisher/jy$a;

    return-object v0
.end method

###### Class com.vungle.publisher.jy.a (com.vungle.publisher.jy$a)
.class public Lcom/vungle/publisher/jy$a;
.super Lcom/vungle/publisher/eh$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/eh$a",
        "<",
        "Lcom/vungle/publisher/jy;",
        "Lcom/vungle/publisher/vu;",
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
            "Lcom/vungle/publisher/jy;",
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
    .line 37
    invoke-direct {p0}, Lcom/vungle/publisher/eh$a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/util/List;)I
    .registers 3

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/vungle/publisher/eh$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/dp;
    .registers 5

    .prologue
    .line 32
    check-cast p1, Lcom/vungle/publisher/jy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jy$a;->a(Lcom/vungle/publisher/jy;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jy;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/eh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eh;
    .registers 5

    .prologue
    .line 32
    check-cast p1, Lcom/vungle/publisher/jy;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jy$a;->a(Lcom/vungle/publisher/jy;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jy;

    move-result-object v0

    return-object v0
.end method

.method protected a()Lcom/vungle/publisher/jy;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/jy$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jy;

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/jy;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jy;
    .registers 6

    .prologue
    .line 56
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/eh$a;->a(Lcom/vungle/publisher/eh;Landroid/database/Cursor;Z)Lcom/vungle/publisher/eh;

    .line 57
    new-instance v0, Lcom/vungle/publisher/hf;

    const-string v1, "event"

    invoke-static {p2, v1}, Lcom/vungle/publisher/ce;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vungle/publisher/hf;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/vungle/publisher/jy;->c:Lcom/vungle/publisher/jf;

    .line 58
    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .registers 4

    .prologue
    .line 32
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/eh$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Lcom/vungle/publisher/vu;)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/vu;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/jf;",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/jy;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    const/4 v0, 0x0

    .line 42
    if-eqz p2, :cond_2a

    .line 43
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 44
    invoke-virtual {p2}, Lcom/vungle/publisher/vu;->c()Ljava/util/Collection;

    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    new-instance v3, Lcom/vungle/publisher/hf;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/hf;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p2, v0}, Lcom/vungle/publisher/vu;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/vungle/publisher/jy$a;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/jf;Ljava/util/List;)V

    goto :goto_10

    :cond_29
    move-object v0, v1

    .line 51
    :cond_2a
    return-object v0
.end method

.method bridge synthetic a(Ljava/lang/String;Lcom/vungle/publisher/wu;)Ljava/util/Map;
    .registers 4

    .prologue
    .line 32
    check-cast p2, Lcom/vungle/publisher/vu;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jy$a;->a(Ljava/lang/String;Lcom/vungle/publisher/vu;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected c(I)[Lcom/vungle/publisher/jy;
    .registers 3

    .prologue
    .line 68
    new-array v0, p1, [Lcom/vungle/publisher/jy;

    return-object v0
.end method

.method protected synthetic d(I)[Lcom/vungle/publisher/dp;
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jy$a;->c(I)[Lcom/vungle/publisher/jy;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic g_()Lcom/vungle/publisher/dp;
    .registers 2

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/vungle/publisher/jy$a;->a()Lcom/vungle/publisher/jy;

    move-result-object v0

    return-object v0
.end method
