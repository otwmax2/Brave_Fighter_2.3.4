###### Class com.facebook.ads.internal.e.d (com.facebook.ads.internal.e.d)
.class public Lcom/facebook/ads/internal/e/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/e/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:Ljava/util/concurrent/ThreadFactory;

.field private static final f:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/Executor;

.field private static final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final i:Ljava/util/concurrent/locks/Lock;

.field private static final j:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private final k:Landroid/content/Context;

.field private final l:Lcom/facebook/ads/internal/e/h;

.field private final m:Lcom/facebook/ads/internal/e/c;

.field private n:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT tokens."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/h;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/h;->b:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->c:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->d:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->f:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->g:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->h:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->i:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " FROM "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " JOIN "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->b:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "tokens"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/h;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ORDER BY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/c;->e:Lcom/facebook/ads/internal/e/b;

    iget-object v1, v1, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ASC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/e/d;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/e/d;->b:I

    const/4 v0, 0x2

    sget v1, Lcom/facebook/ads/internal/e/d;->b:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/internal/e/d;->c:I

    sget v0, Lcom/facebook/ads/internal/e/d;->b:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/ads/internal/e/d;->d:I

    new-instance v0, Lcom/facebook/ads/internal/e/d$1;

    invoke-direct {v0}, Lcom/facebook/ads/internal/e/d$1;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/e/d;->e:Ljava/util/concurrent/ThreadFactory;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/internal/e/d;->f:Ljava/util/concurrent/BlockingQueue;

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/facebook/ads/internal/e/d;->c:I

    sget v3, Lcom/facebook/ads/internal/e/d;->d:I

    const-wide/16 v4, 0x1e

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/facebook/ads/internal/e/d;->f:Ljava/util/concurrent/BlockingQueue;

    sget-object v8, Lcom/facebook/ads/internal/e/d;->e:Ljava/util/concurrent/ThreadFactory;

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    sput-object v1, Lcom/facebook/ads/internal/e/d;->g:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/ads/internal/e/d;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    sget-object v0, Lcom/facebook/ads/internal/e/d;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    sget-object v0, Lcom/facebook/ads/internal/e/d;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d;->k:Landroid/content/Context;

    new-instance v0, Lcom/facebook/ads/internal/e/h;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/e/h;-><init>(Lcom/facebook/ads/internal/e/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->l:Lcom/facebook/ads/internal/e/h;

    new-instance v0, Lcom/facebook/ads/internal/e/c;

    invoke-direct {v0, p0}, Lcom/facebook/ads/internal/e/c;-><init>(Lcom/facebook/ads/internal/e/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->m:Lcom/facebook/ads/internal/e/c;

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/h;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->l:Lcom/facebook/ads/internal/e/h;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->m:Lcom/facebook/ads/internal/e/c;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/locks/Lock;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private declared-synchronized i()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->n:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_e

    new-instance v0, Lcom/facebook/ads/internal/e/e;

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d;->k:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/internal/e/e;-><init>(Landroid/content/Context;Lcom/facebook/ads/internal/e/d;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->n:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_e
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->n:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_16

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(I)Landroid/database/Cursor;
    .registers 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/ads/internal/e/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " LIMIT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_31

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_31
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call getDatabase from the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-direct {p0}, Lcom/facebook/ads/internal/e/d;->i()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/internal/e/f",
            "<TT;>;",
            "Lcom/facebook/ads/internal/e/a",
            "<TT;>;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/e/d;->g:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/internal/e/d$a;

    invoke-direct {v1, p1, p2}, Lcom/facebook/ads/internal/e/d$a;-><init>(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/internal/q/a/d;->a(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/internal/e/a",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    new-instance v3, Lcom/facebook/ads/internal/e/d$2;

    move-object v4, p0

    move-object v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    invoke-direct/range {v3 .. v13}, Lcom/facebook/ads/internal/e/d$2;-><init>(Lcom/facebook/ads/internal/e/d;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v3, v0}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;

    move-result-object v2

    return-object v2
.end method

.method public a(Ljava/lang/String;)Z
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "events"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " SET "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/e/c;->i:Lcom/facebook/ads/internal/e/b;

    iget-object v4, v4, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/e/c;->i:Lcom/facebook/ads/internal/e/b;

    iget-object v4, v4, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/facebook/ads/internal/e/c;->a:Lcom/facebook/ads/internal/e/b;

    iget-object v4, v4, Lcom/facebook/ads/internal/e/b;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5e
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_7 .. :try_end_5e} :catch_64

    :goto_5e
    sget-object v1, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catch_64
    move-exception v0

    move v0, v1

    goto :goto_5e
.end method

.method public declared-synchronized b()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d;->c()[Lcom/facebook/ads/internal/e/g;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_11

    aget-object v3, v1, v0

    invoke-virtual {v3}, Lcom/facebook/ads/internal/e/g;->e()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->n:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->n:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d;->n:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1f

    :cond_1d
    monitor-exit p0

    return-void

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->m:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_11
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public c()[Lcom/facebook/ads/internal/e/g;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/ads/internal/e/g;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d;->l:Lcom/facebook/ads/internal/e/h;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d;->m:Lcom/facebook/ads/internal/e/c;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public d()Landroid/database/Cursor;
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->m:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/c;->c()Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_11
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public e()Landroid/database/Cursor;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->m:Lcom/facebook/ads/internal/e/c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/c;->d()Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_11
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public f()Landroid/database/Cursor;
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->l:Lcom/facebook/ads/internal/e/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/h;->c()Landroid/database/Cursor;
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    move-result-object v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_11
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->i:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public g()V
    .registers 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d;->l:Lcom/facebook/ads/internal/e/h;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/h;->d()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_10

    sget-object v0, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_10
    move-exception v0

    sget-object v1, Lcom/facebook/ads/internal/e/d;->j:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

###### Class com.facebook.ads.internal.e.d.AnonymousClass1 (com.facebook.ads.internal.e.d$1)
.class final Lcom/facebook/ads/internal/e/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/internal/e/d$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DatabaseTask #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$1;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method

###### Class com.facebook.ads.internal.e.d.AnonymousClass2 (com.facebook.ads.internal.e.d$2)
.class Lcom/facebook/ads/internal/e/d$2;
.super Lcom/facebook/ads/internal/e/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/e/d;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/internal/e/a;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/internal/e/i",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:D

.field final synthetic e:D

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/util/Map;

.field final synthetic h:Lcom/facebook/ads/internal/e/d;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/e/d;Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)V
    .registers 12

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    iput-object p2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Ljava/lang/String;

    iput p3, p0, Lcom/facebook/ads/internal/e/d$2;->b:I

    iput-object p4, p0, Lcom/facebook/ads/internal/e/d$2;->c:Ljava/lang/String;

    iput-wide p5, p0, Lcom/facebook/ads/internal/e/d$2;->d:D

    iput-wide p7, p0, Lcom/facebook/ads/internal/e/d$2;->e:D

    iput-object p9, p0, Lcom/facebook/ads/internal/e/d$2;->f:Ljava/lang/String;

    iput-object p10, p0, Lcom/facebook/ads/internal/e/d$2;->g:Ljava/util/Map;

    invoke-direct {p0}, Lcom/facebook/ads/internal/e/i;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 13
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    move-object v0, v10

    :goto_a
    return-object v0

    :cond_b
    invoke-static {}, Lcom/facebook/ads/internal/e/d;->h()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_12
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/d;->a()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_5e
    .catchall {:try_start_12 .. :try_end_17} :catchall_8d

    move-result-object v11

    :try_start_18
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-static {v0}, Lcom/facebook/ads/internal/e/d;->b(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/c;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/e/d;->a(Lcom/facebook/ads/internal/e/d;)Lcom/facebook/ads/internal/e/h;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/internal/e/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/facebook/ads/internal/e/d$2;->b:I

    iget-object v3, p0, Lcom/facebook/ads/internal/e/d$2;->c:Ljava/lang/String;

    iget-wide v4, p0, Lcom/facebook/ads/internal/e/d$2;->d:D

    iget-wide v6, p0, Lcom/facebook/ads/internal/e/d$2;->e:D

    iget-object v8, p0, Lcom/facebook/ads/internal/e/d$2;->f:Ljava/lang/String;

    iget-object v9, p0, Lcom/facebook/ads/internal/e/d$2;->g:Ljava/util/Map;

    invoke-virtual/range {v0 .. v9}, Lcom/facebook/ads/internal/e/c;->a(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_40} :catch_b2
    .catchall {:try_start_18 .. :try_end_40} :catchall_ad

    if-eqz v11, :cond_4b

    :try_start_42
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_4b} :catch_53

    :cond_4b
    :goto_4b
    invoke-static {}, Lcom/facebook/ads/internal/e/d;->h()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_a

    :catch_53
    move-exception v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->c(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    goto :goto_4b

    :catch_5e
    move-exception v0

    move-object v1, v10

    :goto_60
    :try_start_60
    sget-object v2, Lcom/facebook/ads/internal/e/f$a;->c:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {p0, v2}, Lcom/facebook/ads/internal/e/d$2;->a(Lcom/facebook/ads/internal/e/f$a;)V

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->c(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V
    :try_end_6e
    .catchall {:try_start_60 .. :try_end_6e} :catchall_af

    if-eqz v1, :cond_79

    :try_start_70
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_79

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_79} :catch_82

    :cond_79
    :goto_79
    invoke-static {}, Lcom/facebook/ads/internal/e/d;->h()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move-object v0, v10

    goto :goto_a

    :catch_82
    move-exception v0

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-static {v1}, Lcom/facebook/ads/internal/e/d;->c(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    goto :goto_79

    :catchall_8d
    move-exception v0

    move-object v11, v10

    :goto_8f
    if-eqz v11, :cond_9a

    :try_start_91
    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v1

    if-eqz v1, :cond_9a

    invoke-virtual {v11}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_9a} :catch_a2

    :cond_9a
    :goto_9a
    invoke-static {}, Lcom/facebook/ads/internal/e/d;->h()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :catch_a2
    move-exception v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$2;->h:Lcom/facebook/ads/internal/e/d;

    invoke-static {v2}, Lcom/facebook/ads/internal/e/d;->c(Lcom/facebook/ads/internal/e/d;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/ads/internal/q/d/a;->a(Ljava/lang/Exception;Landroid/content/Context;)V

    goto :goto_9a

    :catchall_ad
    move-exception v0

    goto :goto_8f

    :catchall_af
    move-exception v0

    move-object v11, v1

    goto :goto_8f

    :catch_b2
    move-exception v0

    move-object v1, v11

    goto :goto_60
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/facebook/ads/internal/e/d$2;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.ads.internal.e.d.a (com.facebook.ads.internal.e.d$a)
.class Lcom/facebook/ads/internal/e/d$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/e/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/ads/internal/e/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/e/f",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/ads/internal/e/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/internal/e/a",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Lcom/facebook/ads/internal/e/f$a;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/e/f;Lcom/facebook/ads/internal/e/a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/internal/e/f",
            "<TT;>;",
            "Lcom/facebook/ads/internal/e/a",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/e/d$a;->a:Lcom/facebook/ads/internal/e/f;

    iput-object p2, p0, Lcom/facebook/ads/internal/e/d$a;->b:Lcom/facebook/ads/internal/e/a;

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$a;->a:Lcom/facebook/ads/internal/e/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e/f;->b()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$a;->a:Lcom/facebook/ads/internal/e/f;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e/f;->c()Lcom/facebook/ads/internal/e/f$a;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/ads/internal/e/d$a;->c:Lcom/facebook/ads/internal/e/f$a;
    :try_end_f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-object v0

    :catch_10
    move-exception v1

    sget-object v1, Lcom/facebook/ads/internal/e/f$a;->a:Lcom/facebook/ads/internal/e/f$a;

    iput-object v1, p0, Lcom/facebook/ads/internal/e/d$a;->c:Lcom/facebook/ads/internal/e/f$a;

    goto :goto_f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/facebook/ads/internal/e/d$a;->a([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$a;->c:Lcom/facebook/ads/internal/e/f$a;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$a;->b:Lcom/facebook/ads/internal/e/a;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/internal/e/a;->a(Ljava/lang/Object;)V

    :goto_9
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$a;->b:Lcom/facebook/ads/internal/e/a;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/e/a;->a()V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/internal/e/d$a;->b:Lcom/facebook/ads/internal/e/a;

    iget-object v1, p0, Lcom/facebook/ads/internal/e/d$a;->c:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {v1}, Lcom/facebook/ads/internal/e/f$a;->a()I

    move-result v1

    iget-object v2, p0, Lcom/facebook/ads/internal/e/d$a;->c:Lcom/facebook/ads/internal/e/f$a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/e/f$a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/ads/internal/e/a;->a(ILjava/lang/String;)V

    goto :goto_9
.end method
