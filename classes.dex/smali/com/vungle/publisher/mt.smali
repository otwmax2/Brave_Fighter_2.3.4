###### Class com.vungle.publisher.mt (com.vungle.publisher.mt)
.class final synthetic Lcom/vungle/publisher/mt;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field private final a:Lcom/vungle/publisher/mq$a;


# direct methods
.method private constructor <init>(Lcom/vungle/publisher/mq$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vungle/publisher/mt;->a:Lcom/vungle/publisher/mq$a;

    return-void
.end method

.method public static a(Lcom/vungle/publisher/mq$a;)Landroid/content/DialogInterface$OnCancelListener;
    .registers 2

    new-instance v0, Lcom/vungle/publisher/mt;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/mt;-><init>(Lcom/vungle/publisher/mq$a;)V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    iget-object v0, p0, Lcom/vungle/publisher/mt;->a:Lcom/vungle/publisher/mq$a;

    invoke-static {v0, p1}, Lcom/vungle/publisher/mq;->a(Lcom/vungle/publisher/mq$a;Landroid/content/DialogInterface;)V

    return-void
.end method
