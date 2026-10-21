###### Class com.vungle.publisher.xy (com.vungle.publisher.xy)
.class public Lcom/vungle/publisher/xy;
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
        "Lcom/vungle/publisher/gd",
        "<*>;",
        "Lrx/Observable",
        "<+",
        "Lcom/vungle/publisher/gd",
        "<*>;>;>;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/th$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/uu;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/uz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/yd;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/gd;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 72
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "viewable prep error, update status to failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/publisher/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/vungle/publisher/ei$a;->d:Lcom/vungle/publisher/ei$a;

    invoke-interface {p0, v0}, Lcom/vungle/publisher/gd;->b(Lcom/vungle/publisher/ei$a;)V

    .line 74
    return-void
.end method

.method static synthetic c(Lcom/vungle/publisher/gd;)Lrx/Observable;
    .registers 4

    .prologue
    .line 79
    invoke-interface {p0}, Lcom/vungle/publisher/gd;->m()Z

    move-result v0

    if-nez v0, :cond_37

    .line 80
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/vungle/publisher/gd;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " post processing failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lcom/vungle/publisher/gd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_37
    invoke-static {p0}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/vungle/publisher/gd;)Lrx/Observable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/gd",
            "<*>;)",
            "Lrx/Observable",
            "<+",
            "Lcom/vungle/publisher/gd",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-interface {p1}, Lcom/vungle/publisher/gd;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v1

    .line 43
    invoke-interface {p1}, Lcom/vungle/publisher/gd;->j()Lcom/vungle/publisher/ei$a;

    move-result-object v2

    .line 44
    invoke-interface {p1}, Lcom/vungle/publisher/gd;->f()Ljava/lang/String;

    move-result-object v3

    .line 45
    const-string v0, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preparing viewable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v0

    .line 47
    sget-object v4, Lcom/vungle/publisher/xy$1;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/ei$a;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_b2

    .line 62
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unexpected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " status: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :pswitch_56
    const-string v2, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " will begin downloading for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "ad_id"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/vungle/publisher/xy;->a:Lcom/vungle/publisher/th$a;

    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/xy;->c:Lcom/vungle/publisher/uz;

    .line 58
    invoke-virtual {v0, v1}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 59
    invoke-static {p1}, Lrx/Observable;->just(Ljava/lang/Object;)Lrx/Observable;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/xy;->b:Lcom/vungle/publisher/uu;

    invoke-virtual {v0, v1, v2}, Lrx/Observable;->zipWith(Lrx/Observable;Lrx/functions/Func2;)Lrx/Observable;

    move-result-object v0

    .line 64
    :pswitch_94
    iget-object v1, p0, Lcom/vungle/publisher/xy;->d:Lcom/vungle/publisher/yd;

    const/4 v2, 0x3

    const-string v3, "viewable prep failed"

    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/yd;->a(ILjava/lang/String;)Lrx/functions/Func1;

    move-result-object v1

    .line 65
    invoke-virtual {p0}, Lcom/vungle/publisher/xy;->a()Lrx/functions/Func1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 66
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xy;->b(Lcom/vungle/publisher/gd;)Lrx/functions/Action1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/Observable;->doOnError(Lrx/functions/Action1;)Lrx/Observable;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v1}, Lrx/Observable;->retryWhen(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v0

    .line 65
    :pswitch_b1
    return-object v0

    .line 47
    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_b1
        :pswitch_94
        :pswitch_56
        :pswitch_56
    .end packed-switch
.end method

.method a()Lrx/functions/Func1;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/functions/Func1",
            "<",
            "Lcom/vungle/publisher/gd",
            "<*>;",
            "Lrx/Observable",
            "<+",
            "Lcom/vungle/publisher/gd",
            "<*>;>;>;"
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {}, Lcom/vungle/publisher/ya;->a()Lrx/functions/Func1;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/vungle/publisher/gd;)Lrx/functions/Action1;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/gd",
            "<*>;)",
            "Lrx/functions/Action1",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    invoke-static {p1}, Lcom/vungle/publisher/xz;->a(Lcom/vungle/publisher/gd;)Lrx/functions/Action1;

    move-result-object v0

    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 20
    check-cast p1, Lcom/vungle/publisher/gd;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/xy;->a(Lcom/vungle/publisher/gd;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.xy.AnonymousClass1 (com.vungle.publisher.xy$1)
.class synthetic Lcom/vungle/publisher/xy$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/xy;
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
    .line 47
    invoke-static {}, Lcom/vungle/publisher/ei$a;->values()[Lcom/vungle/publisher/ei$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/xy$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/xy$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$a;->c:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/xy$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$a;->b:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/xy$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$a;->a:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/vungle/publisher/xy$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$a;->d:Lcom/vungle/publisher/ei$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method
