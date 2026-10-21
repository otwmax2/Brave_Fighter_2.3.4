###### Class com.vungle.publisher.xm (com.vungle.publisher.xm)
.class final synthetic Lcom/vungle/publisher/xm;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field private final a:Lcom/vungle/publisher/xg;


# direct methods
.method private constructor <init>(Lcom/vungle/publisher/xg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/publisher/xm;->a:Lcom/vungle/publisher/xg;

    return-void
.end method

.method public static a(Lcom/vungle/publisher/xg;)Lrx/functions/Action1;
    .registers 2

    new-instance v0, Lcom/vungle/publisher/xm;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/xm;-><init>(Lcom/vungle/publisher/xg;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/vungle/publisher/xm;->a:Lcom/vungle/publisher/xg;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/xg;->a(Ljava/lang/Throwable;)V

    return-void
.end method
