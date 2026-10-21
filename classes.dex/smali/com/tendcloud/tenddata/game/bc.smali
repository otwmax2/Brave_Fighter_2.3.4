###### Class com.tendcloud.tenddata.game.bc (com.tendcloud.tenddata.game.bc)
.class public final Lcom/tendcloud/tenddata/game/bc;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x270f

.field static final b:I = 0x65

.field static final c:I = 0x66

.field static final d:I = 0x67

.field static final e:I = 0x68

.field static final f:I = 0x69

.field private static g:Landroid/os/Handler;

.field private static final h:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bc;->g:Landroid/os/Handler;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PushThreadProcess"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bc;->h:Landroid/os/HandlerThread;

    sget-object v0, Lcom/tendcloud/tenddata/game/bc;->h:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/tendcloud/tenddata/game/bd;

    sget-object v1, Lcom/tendcloud/tenddata/game/bc;->h:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bd;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bc;->g:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/tendcloud/tenddata/game/bc;->g:Landroid/os/Handler;

    return-object v0
.end method
