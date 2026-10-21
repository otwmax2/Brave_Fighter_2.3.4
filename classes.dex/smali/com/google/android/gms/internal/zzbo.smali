###### Class com.google.android.gms.internal.zzbo (com.google.android.gms.internal.zzbo)
.class public Lcom/google/android/gms/internal/zzbo;
.super Ljava/lang/Object;


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private final className:Ljava/lang/String;

.field private final zzaey:Lcom/google/android/gms/internal/zzax;

.field private final zzahf:Ljava/lang/String;

.field private final zzahg:I

.field private volatile zzahh:Ljava/lang/reflect/Method;

.field private zzahi:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private zzahj:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/google/android/gms/internal/zzbo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbo;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzax;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahg:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahh:Ljava/lang/reflect/Method;

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbo;->zzaey:Lcom/google/android/gms/internal/zzax;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbo;->className:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbo;->zzahf:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahi:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzce()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbo$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbo$1;-><init>(Lcom/google/android/gms/internal/zzbo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzbo;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbo;->zzcz()V

    return-void
.end method

.method private zzcz()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcf()Ldalvik/system/DexClassLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzax;->zzch()[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbo;->className:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/zzbo;->zzd([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_15
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_0 .. :try_end_15} :catch_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_15} :catch_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_15} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_15} :catch_6c
    .catchall {:try_start_0 .. :try_end_15} :catchall_73

    move-result-object v1

    if-nez v1, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :goto_1d
    return-void

    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzch()[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbo;->zzahf:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/google/android/gms/internal/zzbo;->zzd([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahi:Ljava/util/List;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbo;->zzahi:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/Class;

    invoke-interface {v0, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahh:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahh:Ljava/lang/reflect/Method;
    :try_end_42
    .catch Lcom/google/android/gms/internal/zzau$zza; {:try_start_1e .. :try_end_42} :catch_50
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1e .. :try_end_42} :catch_57
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_42} :catch_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1e .. :try_end_42} :catch_65
    .catch Ljava/lang/NullPointerException; {:try_start_1e .. :try_end_42} :catch_6c
    .catchall {:try_start_1e .. :try_end_42} :catchall_73

    if-nez v0, :cond_4a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :cond_4a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catch_50
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catch_57
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catch_5e
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catch_65
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catch_6c
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1d

    :catchall_73
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method private zzd([BLjava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzaey:Lcom/google/android/gms/internal/zzax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzax;->zzcg()Lcom/google/android/gms/internal/zzau;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzau;->zzc([BLjava/lang/String;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public zzda()Ljava/lang/reflect/Method;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzahh:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahh:Ljava/lang/reflect/Method;

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbo;->zzahj:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo;->zzahh:Ljava/lang/reflect/Method;
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_16} :catch_17

    goto :goto_7

    :catch_17
    move-exception v1

    goto :goto_7
.end method

###### Class com.google.android.gms.internal.zzbo.AnonymousClass1 (com.google.android.gms.internal.zzbo$1)
.class Lcom/google/android/gms/internal/zzbo$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbo;-><init>(Lcom/google/android/gms/internal/zzax;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzahk:Lcom/google/android/gms/internal/zzbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbo;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbo$1;->zzahk:Lcom/google/android/gms/internal/zzbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbo$1;->zzahk:Lcom/google/android/gms/internal/zzbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbo;->zza(Lcom/google/android/gms/internal/zzbo;)V

    return-void
.end method
