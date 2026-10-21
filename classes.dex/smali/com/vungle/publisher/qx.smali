###### Class com.vungle.publisher.qx (com.vungle.publisher.qx)
.class final synthetic Lcom/vungle/publisher/qx;
.super Ljava/lang/Object;

# interfaces
.implements Lrx/functions/Action1;


# static fields
.field private static final a:Lcom/vungle/publisher/qx;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/vungle/publisher/qx;

    invoke-direct {v0}, Lcom/vungle/publisher/qx;-><init>()V

    sput-object v0, Lcom/vungle/publisher/qx;->a:Lcom/vungle/publisher/qx;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lrx/functions/Action1;
    .registers 1

    sget-object v0, Lcom/vungle/publisher/qx;->a:Lcom/vungle/publisher/qx;

    return-object v0
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .registers 2
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    check-cast p1, Lcom/google/gson/JsonObject;

    invoke-static {p1}, Lcom/vungle/publisher/qw;->d(Lcom/google/gson/JsonObject;)V

    return-void
.end method
