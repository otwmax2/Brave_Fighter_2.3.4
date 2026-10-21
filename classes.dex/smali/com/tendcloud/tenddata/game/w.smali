###### Class com.tendcloud.tenddata.game.w (com.tendcloud.tenddata.game.w)
.class public Lcom/tendcloud/tenddata/game/w;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/w$a;
    }
.end annotation


# static fields
.field private static volatile b:Lcom/tendcloud/tenddata/game/w; = null

.field private static final g:J = 0x2710L

.field private static final h:I = 0xa


# instance fields
.field private a:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private e:J

.field private final f:I

.field private i:Landroid/hardware/SensorManager;

.field private j:Lcom/tendcloud/tenddata/game/w$a;

.field private k:Landroid/os/Handler;

.field private l:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/w;->b:Lcom/tendcloud/tenddata/game/w;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 6

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    const/16 v0, 0xfa

    iput v0, p0, Lcom/tendcloud/tenddata/game/w;->c:I

    const/16 v0, 0x12

    iput v0, p0, Lcom/tendcloud/tenddata/game/w;->d:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/w;->e:J

    const/4 v0, 0x5

    iput v0, p0, Lcom/tendcloud/tenddata/game/w;->f:I

    iput-object v2, p0, Lcom/tendcloud/tenddata/game/w;->j:Lcom/tendcloud/tenddata/game/w$a;

    new-instance v0, Lcom/tendcloud/tenddata/game/x;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/tendcloud/tenddata/game/x;-><init>(Lcom/tendcloud/tenddata/game/w;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/w;->k:Landroid/os/Handler;

    new-instance v0, Lcom/tendcloud/tenddata/game/y;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/y;-><init>(Lcom/tendcloud/tenddata/game/w;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/w;->l:Landroid/hardware/SensorEventListener;

    :try_start_29
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/w;->i:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->i:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/w;->l:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/w;->i:Landroid/hardware/SensorManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->k:Landroid/os/Handler;

    const/16 v1, 0xa

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_4d} :catch_4e

    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    goto :goto_4d
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/w;J)J
    .registers 4

    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/w;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorManager;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->i:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/tendcloud/tenddata/game/w;
    .registers 3

    sget-object v0, Lcom/tendcloud/tenddata/game/w;->b:Lcom/tendcloud/tenddata/game/w;

    if-nez v0, :cond_13

    const-class v1, Lcom/tendcloud/tenddata/game/w;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/tendcloud/tenddata/game/w;->b:Lcom/tendcloud/tenddata/game/w;

    if-nez v0, :cond_12

    new-instance v0, Lcom/tendcloud/tenddata/game/w;

    invoke-direct {v0, p0}, Lcom/tendcloud/tenddata/game/w;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/w;->b:Lcom/tendcloud/tenddata/game/w;

    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    :cond_13
    sget-object v0, Lcom/tendcloud/tenddata/game/w;->b:Lcom/tendcloud/tenddata/game/w;

    return-object v0

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/w;)Landroid/hardware/SensorEventListener;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->l:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/w;)J
    .registers 3

    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/w;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/tendcloud/tenddata/game/w;)Lcom/tendcloud/tenddata/game/w$a;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->j:Lcom/tendcloud/tenddata/game/w$a;

    return-object v0
.end method

.method static synthetic e(Lcom/tendcloud/tenddata/game/w;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/w;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/tendcloud/tenddata/game/w$a;)V
    .registers 2

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/w;->j:Lcom/tendcloud/tenddata/game/w$a;

    return-void
.end method

###### Class com.tendcloud.tenddata.game.w.a (com.tendcloud.tenddata.game.w$a)
.class public interface abstract Lcom/tendcloud/tenddata/game/w$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a()V
.end method
