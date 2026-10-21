###### Class com.vungle.publisher.xd (com.vungle.publisher.xd)
.class public Lcom/vungle/publisher/xd;
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
        "Lcom/vungle/publisher/wc;",
        "Lrx/Observable",
        "<",
        "Lcom/vungle/publisher/dr",
        "<",
        "Lcom/vungle/publisher/cn;",
        ">;>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cn$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/eb$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/wc;)Lrx/Observable;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/wc;",
            ")",
            "Lrx/Observable",
            "<",
            "Lcom/vungle/publisher/dr",
            "<",
            "Lcom/vungle/publisher/cn;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/vungle/publisher/xd;->a:Lcom/vungle/publisher/cn$b;

    invoke-virtual {p1}, Lcom/vungle/publisher/wc;->d()Lcom/vungle/publisher/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cn$b;->a(Lcom/vungle/publisher/m;)Lcom/vungle/publisher/ea;

    move-result-object v0

    .line 31
    const-string v1, "VunglePrepare"

    .line 32
    invoke-virtual {p1}, Lcom/vungle/publisher/wc;->g()Ljava/lang/String;

    move-result-object v2

    .line 33
    const/4 v1, 0x1

    invoke-interface {v0, v2, v1}, Lcom/vungle/publisher/ea;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/dr;

    move-result-object v1

    .line 34
    if-nez v1, :cond_6b

    .line 36
    :try_start_17
    invoke-interface {v0, p1}, Lcom/vungle/publisher/ea;->a(Lcom/vungle/publisher/wc;)Lcom/vungle/publisher/cn;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dr;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_1d} :catch_45

    .line 37
    :try_start_1d
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received new "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Lcom/vungle/publisher/dr;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {v0}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/cn;->d_()Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_40} :catch_11c

    .line 69
    :goto_40
    invoke-static {v0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0

    .line 39
    :catch_45
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    .line 40
    :goto_49
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error preparing ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", retrying"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v1}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    invoke-static {v1}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_40

    .line 46
    :cond_6b
    :try_start_6b
    invoke-interface {v1}, Lcom/vungle/publisher/dr;->m_()Lcom/vungle/publisher/cn;

    move-result-object v3

    invoke-interface {v0, v3, p1}, Lcom/vungle/publisher/ea;->b(Lcom/vungle/publisher/cn;Lcom/vungle/publisher/wc;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_72} :catch_c9

    .line 52
    :goto_72
    invoke-interface {v1}, Lcom/vungle/publisher/dr;->g()Lcom/vungle/publisher/cn$c;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Lcom/vungle/publisher/dr;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    sget-object v3, Lcom/vungle/publisher/xd$1;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_120

    .line 66
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_40

    .line 48
    :catch_c9
    move-exception v0

    .line 50
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error updating ad "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_72

    .line 59
    :pswitch_e3
    const-string v0, "VunglePrepare"

    invoke-static {v0, v2}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 60
    goto/16 :goto_40

    .line 63
    :pswitch_eb
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - retrying"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received invalid ad in status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :catch_11c
    move-exception v1

    goto/16 :goto_49

    .line 54
    nop

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_e3
        :pswitch_eb
        :pswitch_eb
    .end packed-switch
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 17
    check-cast p1, Lcom/vungle/publisher/wc;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xd;->a(Lcom/vungle/publisher/wc;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.xd.AnonymousClass1 (com.vungle.publisher.xd$1)
.class synthetic Lcom/vungle/publisher/xd$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/xd;
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
    .line 54
    invoke-static {}, Lcom/vungle/publisher/cn$c;->values()[Lcom/vungle/publisher/cn$c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->a:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_56

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->b:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_54

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->d:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_52

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->f:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_50

    :goto_35
    :try_start_35
    sget-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->c:Lcom/vungle/publisher/cn$c;

    invoke-virtual {v1}, Lcom/vungle/publisher/cn$c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_4e

    :goto_40
    :try_start_40
    sget-object v0, Lcom/vungle/publisher/xd$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/cn$c;->g:Lcom/vungle/publisher/cn$c;

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
