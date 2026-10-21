###### Class com.vungle.publisher.tx (com.vungle.publisher.tx)
.class public abstract Lcom/vungle/publisher/tx;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field protected a:Lcom/vungle/publisher/uj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V
    .registers 7

    .prologue
    .line 24
    :try_start_0
    invoke-virtual {p2}, Lcom/vungle/publisher/tw;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/tx;->a(I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_1d

    move-result v0

    if-eqz v0, :cond_19

    .line 26
    :try_start_a
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/tx;->c(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V
    :try_end_d
    .catch Ljava/net/SocketTimeoutException; {:try_start_a .. :try_end_d} :catch_e
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_22
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_d} :catch_41
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_1d

    .line 47
    :goto_d
    return-void

    .line 29
    :catch_e
    move-exception v0

    .line 30
    :try_start_f
    const-string v1, "VungleNetwork"

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    const/16 v0, 0x25b

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/tw;->a(I)V

    .line 42
    :cond_19
    :goto_19
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/tx;->b(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1c} :catch_1d

    goto :goto_d

    .line 44
    :catch_1d
    move-exception v0

    .line 45
    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/tx;->a(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;Ljava/lang/Exception;)V

    goto :goto_d

    .line 33
    :catch_22
    move-exception v0

    .line 34
    :try_start_23
    const-string v1, "VungleNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException while handling response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/16 v0, 0x258

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/tw;->a(I)V

    goto :goto_19

    .line 37
    :catch_41
    move-exception v0

    .line 38
    const-string v1, "VungleNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JSONException while handling response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/16 v0, 0x25c

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/tw;->a(I)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_5f} :catch_1d

    goto :goto_19
.end method

.method protected a(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;Ljava/lang/Exception;)V
    .registers 7

    .prologue
    .line 56
    const-string v0, "VungleNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while handling response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p3}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/tx;->d(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V

    .line 58
    return-void
.end method

.method protected a(I)Z
    .registers 3

    .prologue
    .line 71
    const/16 v0, 0xc8

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected b(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/tx;->d(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V

    .line 51
    return-void
.end method

.method protected b(I)Z
    .registers 3

    .prologue
    .line 81
    const/16 v0, 0x198

    if-eq p1, v0, :cond_a

    const/16 v0, 0x25b

    if-eq p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected c(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method protected d(Lcom/vungle/publisher/ub;Lcom/vungle/publisher/tw;)V
    .registers 6

    .prologue
    .line 61
    const-string v0, "VungleNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/vungle/publisher/ub;->a()Lcom/vungle/publisher/tr;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed permanently with response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/vungle/publisher/tw;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
