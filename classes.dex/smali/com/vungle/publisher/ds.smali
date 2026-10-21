###### Class com.vungle.publisher.ds (com.vungle.publisher.ds)
.class public Lcom/vungle/publisher/ds;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ds$a;
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/cz",
            "<****>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 9

    .prologue
    .line 19
    const/4 v0, -0x1

    .line 20
    iget-object v1, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    iget-object v1, v1, Lcom/vungle/publisher/cz;->o:Ljava/lang/Long;

    .line 21
    iget-object v2, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    iget-object v2, v2, Lcom/vungle/publisher/cz;->d:Ljava/lang/Long;

    .line 22
    iget-object v3, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    invoke-virtual {v3}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v3

    .line 23
    if-nez v1, :cond_2a

    .line 24
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "download end millis null for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_29
    return v0

    .line 26
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_36

    .line 28
    const/4 v0, 0x0

    goto :goto_29

    .line 30
    :cond_36
    if-nez v2, :cond_51

    .line 31
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insert timestamp millis null for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 34
    :cond_51
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_29
.end method

.method protected a(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 4

    .prologue
    .line 51
    const-string v0, "download_end_millis"

    iget-object v1, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    iget-object v1, v1, Lcom/vungle/publisher/cz;->o:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 52
    return-object p1
.end method

.method a(Ljava/lang/Long;)V
    .registers 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    iput-object p1, v0, Lcom/vungle/publisher/cz;->o:Ljava/lang/Long;

    .line 41
    iget-object v0, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    invoke-virtual {v0}, Lcom/vungle/publisher/cz;->B()Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting ad download end millis "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (duration "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/vungle/publisher/ds;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms) for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public b(Ljava/lang/Long;)V
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/ds;->a(Ljava/lang/Long;)V

    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    invoke-virtual {v0}, Lcom/vungle/publisher/cz;->e_()Ljava/lang/Object;

    .line 48
    return-void
.end method

###### Class com.vungle.publisher.ds.a (com.vungle.publisher.ds$a)
.class Lcom/vungle/publisher/ds$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
            "Lcom/vungle/publisher/ds;",
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
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/cz;)Lcom/vungle/publisher/ds;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cz",
            "<****>;)",
            "Lcom/vungle/publisher/ds;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/ds$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ds;

    .line 64
    iput-object p1, v0, Lcom/vungle/publisher/ds;->a:Lcom/vungle/publisher/cz;

    .line 65
    return-object v0
.end method
