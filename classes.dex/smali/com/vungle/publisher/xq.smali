###### Class com.vungle.publisher.xq (com.vungle.publisher.xq)
.class public Lcom/vungle/publisher/xq;
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
        "Lcom/vungle/publisher/dr",
        "<*>;",
        "Lrx/Observable",
        "<+",
        "Lcom/vungle/publisher/dr",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cz$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/xy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/eb$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/el$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 164
    const-string v0, "VunglePrepare"

    const-string v1, "could not prepare viewable after multiple retries"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/vungle/publisher/dr;Ljava/util/List;)Lrx/Observable;
    .registers 5

    .prologue
    .line 154
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gd;

    .line 155
    invoke-interface {v0}, Lcom/vungle/publisher/gd;->j()Lcom/vungle/publisher/ei$a;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/ei$a;->c:Lcom/vungle/publisher/ei$a;

    if-eq v0, v2, :cond_4

    .line 156
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "prepared ad somehow has non-ready viewables"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_20
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcom/vungle/publisher/gd;)V
    .registers 4

    .prologue
    .line 183
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewable prepared: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/vungle/publisher/gd;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", has status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/vungle/publisher/gd;->j()Lcom/vungle/publisher/ei$a;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/dr;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)",
            "Lrx/Observable",
            "<+",
            "Lcom/vungle/publisher/dr",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 50
    if-nez p1, :cond_a

    .line 51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no ad to prepare "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_a
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->a_()Lcom/vungle/publisher/m;

    move-result-object v0

    .line 55
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->g()Lcom/vungle/publisher/cn$c;

    move-result-object v2

    .line 56
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "run PrepareAdRunnable. adId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :try_start_38
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local ad not prepared. has status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_f6

    .line 77
    :goto_5b
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->b(Lcom/vungle/publisher/dr;)V

    .line 78
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->e(Lcom/vungle/publisher/dr;)Lrx/Observable;

    move-result-object v0

    :goto_62
    return-object v0

    .line 63
    :pswitch_63
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ad status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_7c} :catch_7c

    .line 80
    :catch_7c
    move-exception v0

    .line 81
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error processing ad.id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 82
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 84
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not prepare ad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_a0
    :try_start_a0
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recycling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->c(Lcom/vungle/publisher/dr;)V

    .line 69
    :pswitch_c7
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ad already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    goto/16 :goto_62

    .line 72
    :pswitch_f1
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->i(Lcom/vungle/publisher/dr;)Z
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_f4} :catch_7c

    goto/16 :goto_5b

    .line 59
    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_63
        :pswitch_63
        :pswitch_a0
        :pswitch_c7
        :pswitch_f1
    .end packed-switch
.end method

.method a(Ljava/util/List;)Lrx/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/vungle/publisher/gd",
            "<*>;>;)",
            "Lrx/Observable",
            "<+",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gd",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_12

    .line 145
    :cond_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 147
    :goto_11
    return-object v0

    :cond_12
    invoke-static {p1}, Lrx/Observable;->from(Ljava/lang/Iterable;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/xq;->b:Lcom/vungle/publisher/xy;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 148
    invoke-virtual {p0}, Lcom/vungle/publisher/xq;->a()Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/xq;->b()Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lrx/Observable;->buffer(I)Lrx/Observable;

    move-result-object v0

    goto :goto_11
.end method

.method public a()Lrx/functions/Action1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {}, Lcom/vungle/publisher/xs;->a()Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method synthetic a(Lcom/vungle/publisher/dr;Ljava/lang/Throwable;)V
    .registers 6

    .prologue
    .line 169
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad prep error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    instance-of v0, p2, Lcom/vungle/publisher/qn;

    if-eqz v0, :cond_29

    .line 172
    const-string v0, "VunglePrepare"

    const-string v1, "deleting all ads due to IO failure"

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/vungle/publisher/xq;->c:Lcom/vungle/publisher/eb$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/eb$b;->b()I

    .line 179
    :goto_28
    return-void

    .line 175
    :cond_29
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "marking current ad as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v0, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 177
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->f_()I

    goto :goto_28
.end method

.method synthetic a(Lcom/vungle/publisher/dr;Ljava/util/List;)V
    .registers 7

    .prologue
    .line 188
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ad ready "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object v0, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/xq;->a:Lcom/vungle/publisher/cz$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vungle/publisher/cz$b;->a(Lcom/vungle/publisher/dr;Ljava/lang/Long;)V

    .line 191
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->f_()I

    .line 192
    return-void
.end method

.method a(Lcom/vungle/publisher/gd;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/gd",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 115
    invoke-interface {p1}, Lcom/vungle/publisher/gd;->n()Z

    move-result v0

    if-nez v0, :cond_37

    .line 116
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/vungle/publisher/gd;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " re-verification failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/vungle/publisher/gd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_37
    return-void
.end method

.method public b()Lrx/functions/Action1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Action1",
            "<",
            "Lcom/vungle/publisher/gd",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lcom/vungle/publisher/xu;->a()Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/vungle/publisher/dr;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/xq;->a:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cz$b;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/eg;

    .line 89
    sget-object v0, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 90
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->f_()I

    .line 91
    return-void
.end method

.method b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/vungle/publisher/gd",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 262
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gd;

    .line 263
    sget-object v2, Lcom/vungle/publisher/ei$a;->c:Lcom/vungle/publisher/ei$a;

    invoke-interface {v0, v2}, Lcom/vungle/publisher/gd;->b(Lcom/vungle/publisher/ei$a;)V

    goto :goto_4

    .line 265
    :cond_16
    return-void
.end method

.method c(Lcom/vungle/publisher/dr;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "re-verify prepare_retry_count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/vungle/publisher/dr;->j()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->d(Lcom/vungle/publisher/dr;)V

    .line 97
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->k_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gd;

    .line 98
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/xq;->a(Lcom/vungle/publisher/gd;)V

    goto :goto_41

    .line 100
    :cond_51
    sget-object v0, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    .line 101
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "re-verified ad and set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/vungle/publisher/xq;->a:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/cz$b;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/eg;

    move-result-object v1

    .line 103
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/publisher/eg;->a_(Ljava/lang/Long;)V

    .line 104
    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 105
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->f_()I

    .line 106
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 29
    check-cast p1, Lcom/vungle/publisher/dr;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->a(Lcom/vungle/publisher/dr;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

.method d(Lcom/vungle/publisher/dr;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->l_()Z

    move-result v0

    if-nez v0, :cond_e

    .line 110
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid ad structure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_e
    return-void
.end method

.method e(Lcom/vungle/publisher/dr;)Lrx/Observable;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/vungle/publisher/dr",
            "<*>;>(TC;)",
            "Lrx/Observable",
            "<TC;>;"
        }
    .end annotation

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->d(Lcom/vungle/publisher/dr;)V

    .line 128
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->k_()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->j(Lcom/vungle/publisher/dr;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 132
    const-string v1, "VunglePrepare"

    const-string v2, "skipping prepare as ad_token_hash already present"

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->k(Lcom/vungle/publisher/dr;)V

    .line 134
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/xq;->b(Ljava/util/List;)V

    .line 135
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 137
    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/xq;->a(Ljava/util/List;)Lrx/Observable;

    move-result-object v0

    .line 138
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->h(Lcom/vungle/publisher/dr;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnNext(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->g(Lcom/vungle/publisher/dr;)Lrx/functions/Action1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 139
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xq;->f(Lcom/vungle/publisher/dr;)Lrx/functions/Func1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    goto :goto_1e
.end method

.method public f(Lcom/vungle/publisher/dr;)Lrx/functions/Func1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Lcom/vungle/publisher/dr",
            "<*>;>(TC;)",
            "Lrx/functions/Func1",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gd",
            "<*>;>;",
            "Lrx/Observable",
            "<TC;>;>;"
        }
    .end annotation

    .prologue
    .line 153
    invoke-static {p1}, Lcom/vungle/publisher/xr;->a(Lcom/vungle/publisher/dr;)Lrx/functions/Func1;

    move-result-object v0

    return-object v0
.end method

.method public g(Lcom/vungle/publisher/dr;)Lrx/functions/Action1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-static {p0, p1}, Lcom/vungle/publisher/xt;->a(Lcom/vungle/publisher/xq;Lcom/vungle/publisher/dr;)Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method public h(Lcom/vungle/publisher/dr;)Lrx/functions/Action1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)",
            "Lrx/functions/Action1",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gd",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 187
    invoke-static {p0, p1}, Lcom/vungle/publisher/xv;->a(Lcom/vungle/publisher/xq;Lcom/vungle/publisher/dr;)Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method i(Lcom/vungle/publisher/dr;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 196
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v2

    .line 197
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->g()Lcom/vungle/publisher/cn$c;

    move-result-object v1

    .line 198
    sget-object v0, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    if-ne v1, v0, :cond_eb

    .line 199
    sget-object v0, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    .line 200
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 201
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->k()J

    move-result-wide v6

    .line 202
    cmp-long v3, v4, v6

    if-gez v3, :cond_5e

    .line 203
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clock change detected; updating ad.id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 223
    :goto_55
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->f_()I

    .line 224
    sget-object v1, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    if-eq v0, v1, :cond_e8

    const/4 v0, 0x1

    :goto_5d
    return v0

    .line 210
    :cond_5e
    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    .line 211
    const-wide/16 v6, 0x5a0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_e0

    .line 212
    const-string v3, "VunglePrepare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "retrying "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ad"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " after "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x5a0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " minutes; updating "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "status"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " from "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    goto/16 :goto_55

    .line 219
    :cond_e0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not update failed status"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 224
    :cond_e8
    const/4 v0, 0x0

    goto/16 :goto_5d

    :cond_eb
    move-object v0, v1

    goto/16 :goto_55
.end method

.method public j(Lcom/vungle/publisher/dr;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 233
    .line 234
    iget-object v3, p0, Lcom/vungle/publisher/xq;->d:Lcom/vungle/publisher/el$a;

    invoke-interface {p1}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/cn;->c_()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vungle/publisher/cn;->m()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Lcom/vungle/publisher/cn$c;

    sget-object v6, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    aput-object v6, v5, v2

    invoke-virtual {v3, v0, v4, v5}, Lcom/vungle/publisher/el$a;->a(Ljava/lang/String;Ljava/lang/String;[Lcom/vungle/publisher/cn$c;)Z

    move-result v0

    if-eqz v0, :cond_24

    move v0, v1

    .line 238
    :goto_23
    return v0

    :cond_24
    move v0, v2

    goto :goto_23
.end method

.method k(Lcom/vungle/publisher/dr;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dr",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 248
    sget-object v0, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    .line 249
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updating and reusing cacheables for ad and set to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/vungle/publisher/dr;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/vungle/publisher/xq;->a:Lcom/vungle/publisher/cz$b;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/cz$b;->a(Lcom/vungle/publisher/dr;)Lcom/vungle/publisher/eg;

    move-result-object v1

    .line 251
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/publisher/eg;->a_(Ljava/lang/Long;)V

    .line 252
    invoke-interface {p1, v0}, Lcom/vungle/publisher/dr;->a(Lcom/vungle/publisher/cn$c;)V

    .line 253
    invoke-interface {p1}, Lcom/vungle/publisher/dr;->f_()I

    .line 254
    return-void
.end method

###### Class com.vungle.publisher.xq.AnonymousClass1 (com.vungle.publisher.xq$1)
.class synthetic Lcom/vungle/publisher/xq$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/xq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 59
    invoke-static {}, Lcom/vungle/publisher/cn$c;->values()[Lcom/vungle/publisher/cn$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_56

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->c:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_54

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_52

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->e:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_50

    :goto_35
    :try_start_35
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_4e

    :goto_40
    :try_start_40
    sget-object v0, Lcom/vungle/publisher/xq$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c

    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    goto :goto_4b

    :catch_4e
    move-exception v0

    goto :goto_40

    :catch_50
    move-exception v0

    goto :goto_35

    :catch_52
    move-exception v0

    goto :goto_2a

    :catch_54
    move-exception v0

    goto :goto_1f

    :catch_56
    move-exception v0

    goto :goto_14
.end method
