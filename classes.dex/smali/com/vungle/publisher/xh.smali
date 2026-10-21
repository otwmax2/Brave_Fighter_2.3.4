###### Class com.vungle.publisher.xh (com.vungle.publisher.xh)
.class final synthetic Lcom/vungle/publisher/xh;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final a:Lcom/vungle/publisher/xg;


# direct methods
.method private constructor <init>(Lcom/vungle/publisher/xg;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/publisher/xh;->a:Lcom/vungle/publisher/xg;

    return-void
.end method

.method public static a(Lcom/vungle/publisher/xg;)Lrx/functions/Func1;
    .registers 2

    new-instance v0, Lcom/vungle/publisher/xh;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/xh;-><init>(Lcom/vungle/publisher/xg;)V

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/vungle/publisher/xh;->a:Lcom/vungle/publisher/xg;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/xg;->b(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    return-object v0
.end method
