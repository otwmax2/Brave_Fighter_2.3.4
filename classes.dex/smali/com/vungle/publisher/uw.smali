###### Class com.vungle.publisher.uw (com.vungle.publisher.uw)
.class public Lcom/vungle/publisher/uw;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1",
        "<",
        "Lcom/vungle/publisher/tw;",
        "Lrx/Observable",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/uj;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/tw;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/tw;",
            ")",
            "Lrx/Observable",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/uw;->a:Lcom/vungle/publisher/uj;

    invoke-virtual {p1}, Lcom/vungle/publisher/tw;->a()Ljava/net/HttpURLConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/uj;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    return-object v0

    .line 25
    :catch_f
    move-exception v0

    .line 26
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 14
    check-cast p1, Lcom/vungle/publisher/tw;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/uw;->a(Lcom/vungle/publisher/tw;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
