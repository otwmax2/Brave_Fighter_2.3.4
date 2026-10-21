###### Class com.google.android.gms.tagmanager.zzw (com.google.android.gms.tagmanager.zzw)
.class Lcom/google/android/gms/tagmanager/zzw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/DataLayer$zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzw$zzb;,
        Lcom/google/android/gms/tagmanager/zzw$zza;
    }
.end annotation


# static fields
.field private static final avO:Ljava/lang/String;


# instance fields
.field private final avP:Ljava/util/concurrent/Executor;

.field private avQ:Lcom/google/android/gms/tagmanager/zzw$zza;

.field private avR:I

.field private final mContext:Landroid/content/Context;

.field private zzaoa:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' STRING NOT NULL, \'%s\' BLOB NOT NULL, \'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "datalayer"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ID"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "key"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "value"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "expires"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzw;->avO:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzavi()Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    const-string v3, "google_tagmanager.db"

    const/16 v4, 0x7d0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzw;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;ILjava/util/concurrent/Executor;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/util/zze;Ljava/lang/String;ILjava/util/concurrent/Executor;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzw;->zzaoa:Lcom/google/android/gms/common/util/zze;

    iput p4, p0, Lcom/google/android/gms/tagmanager/zzw;->avR:I

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzw;->avP:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzw$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, p3}, Lcom/google/android/gms/tagmanager/zzw$zza;-><init>(Lcom/google/android/gms/tagmanager/zzw;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->avQ:Lcom/google/android/gms/tagmanager/zzw$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzw;)Ljava/util/List;
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcax()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzw;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzw;->zznz(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzw;Ljava/util/List;J)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzw;->zzb(Ljava/util/List;J)V

    return-void
.end method

.method private zzag(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzw$zzb;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$zza;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzw$zzb;

    new-instance v3, Lcom/google/android/gms/tagmanager/DataLayer$zza;

    iget-object v4, v0, Lcom/google/android/gms/tagmanager/zzw$zzb;->zzaxn:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzw$zzb;->avX:[B

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzak([B)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tagmanager/DataLayer$zza;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_26
    return-object v1
.end method

.method private zzah(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$zza;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzw$zzb;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/DataLayer$zza;

    new-instance v3, Lcom/google/android/gms/tagmanager/zzw$zzb;

    iget-object v4, v0, Lcom/google/android/gms/tagmanager/DataLayer$zza;->zzaxn:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/DataLayer$zza;->zzcnr:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzaj(Ljava/lang/Object;)[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google/android/gms/tagmanager/zzw$zzb;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_26
    return-object v1
.end method

.method private zzaj(Ljava/lang/Object;)[B
    .registers 7

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_6
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_1b
    .catchall {:try_start_6 .. :try_end_b} :catchall_28

    :try_start_b
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_11} :catch_39
    .catchall {:try_start_b .. :try_end_11} :catchall_37

    move-result-object v0

    if-eqz v1, :cond_17

    :try_start_14
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_17
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_1a} :catch_3b

    :goto_1a
    return-object v0

    :catch_1b
    move-exception v1

    move-object v1, v0

    :goto_1d
    if-eqz v1, :cond_22

    :try_start_1f
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_22
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    goto :goto_1a

    :catch_26
    move-exception v1

    goto :goto_1a

    :catchall_28
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2c
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    :cond_31
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_34} :catch_35

    :goto_34
    throw v0

    :catch_35
    move-exception v1

    goto :goto_34

    :catchall_37
    move-exception v0

    goto :goto_2c

    :catch_39
    move-exception v3

    goto :goto_1d

    :catch_3b
    move-exception v1

    goto :goto_1a
.end method

.method private zzak([B)Ljava/lang/Object;
    .registers 7

    const/4 v0, 0x0

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_6
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_18
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_b} :catch_25
    .catchall {:try_start_6 .. :try_end_b} :catchall_32

    :try_start_b
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_e} :catch_45
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_e} :catch_43
    .catchall {:try_start_b .. :try_end_e} :catchall_41

    move-result-object v0

    if-eqz v1, :cond_14

    :try_start_11
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_14
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_17} :catch_47

    :goto_17
    return-object v0

    :catch_18
    move-exception v1

    move-object v1, v0

    :goto_1a
    if-eqz v1, :cond_1f

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_1f
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_23

    goto :goto_17

    :catch_23
    move-exception v1

    goto :goto_17

    :catch_25
    move-exception v1

    move-object v1, v0

    :goto_27
    if-eqz v1, :cond_2c

    :try_start_29
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_2c
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2f} :catch_30

    goto :goto_17

    :catch_30
    move-exception v1

    goto :goto_17

    :catchall_32
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_36
    if-eqz v1, :cond_3b

    :try_start_38
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->close()V

    :cond_3b
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_3e} :catch_3f

    :goto_3e
    throw v0

    :catch_3f
    move-exception v1

    goto :goto_3e

    :catchall_41
    move-exception v0

    goto :goto_36

    :catch_43
    move-exception v3

    goto :goto_27

    :catch_45
    move-exception v3

    goto :goto_1a

    :catch_47
    move-exception v1

    goto :goto_17
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzw;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized zzb(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzw$zzb;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->zzaoa:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzw;->zzbr(J)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzw;->zzxx(I)V

    add-long/2addr v0, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzw;->zzc(Ljava/util/List;J)V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_1a

    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_1f

    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    :try_start_1b
    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V

    throw v0
    :try_end_1f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_1f

    :catchall_1f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private zzbr(J)V
    .registers 10

    const-string v0, "Error opening database for deleteOlderThan."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    :try_start_9
    const-string v1, "datalayer"

    const-string v2, "expires <= ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " expired items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_39} :catch_3a

    goto :goto_8

    :catch_3a
    move-exception v0

    const-string v0, "Error deleting old entries."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    goto :goto_8
.end method

.method private zzc(Ljava/util/List;J)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzw$zzb;",
            ">;J)V"
        }
    .end annotation

    const-string v0, "Error opening database for writeEntryToDatabase."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzw$zzb;

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "expires"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "key"

    iget-object v5, v0, Lcom/google/android/gms/tagmanager/zzw$zzb;->zzaxn:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "value"

    iget-object v0, v0, Lcom/google/android/gms/tagmanager/zzw$zzb;->avX:[B

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "datalayer"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_d
.end method

.method private zzcax()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$zza;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->zzaoa:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzw;->zzbr(J)V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcay()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzag(Ljava/util/List;)Ljava/util/List;
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_15

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V

    return-object v0

    :catchall_15
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V

    throw v0
.end method

.method private zzcay()Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzw$zzb;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "Error opening database for loadSerialized."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_12

    move-object v0, v9

    :goto_11
    return-object v0

    :cond_12
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v1, "key"

    aput-object v1, v2, v4

    const-string v1, "value"

    aput-object v1, v2, v5

    const-string v1, "datalayer"

    const-string v7, "ID"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_29
    :try_start_29
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    new-instance v0, Lcom/google/android/gms/tagmanager/zzw$zzb;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzw$zzb;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_41
    .catchall {:try_start_29 .. :try_end_41} :catchall_42

    goto :goto_29

    :catchall_42
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_47
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v9

    goto :goto_11
.end method

.method private zzcaz()I
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "Error opening database for getNumStoredEntries."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    :try_start_b
    const-string v3, "SELECT COUNT(*) from datalayer"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_1c} :catch_24
    .catchall {:try_start_b .. :try_end_1c} :catchall_30

    move-result-wide v2

    long-to-int v0, v2

    :cond_1e
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catch_24
    move-exception v2

    :try_start_25
    const-string v2, "Error getting numStoredEntries"

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_30

    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_a

    :catchall_30
    move-exception v0

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v0
.end method

.method private zzcba()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->avQ:Lcom/google/android/gms/tagmanager/zzw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzw$zza;->close()V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method static synthetic zzcbb()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzw;->avO:Ljava/lang/String;

    return-object v0
.end method

.method private zzf([Ljava/lang/String;)V
    .registers 9

    if-eqz p1, :cond_5

    array-length v0, p1

    if-nez v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const-string v0, "Error opening database for deleteEntries."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "%s in (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, ","

    array-length v5, p1

    const-string v6, "?"

    invoke-static {v5, v6}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :try_start_2c
    const-string v2, "datalayer"

    invoke-virtual {v0, v2, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_31
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2c .. :try_end_31} :catch_32

    goto :goto_5

    :catch_32
    move-exception v0

    const-string v1, "Error deleting entries "

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4b

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_47
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    goto :goto_5

    :cond_4b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_47
.end method

.method private zznz(Ljava/lang/String;)V
    .registers 9

    const-string v0, "Error opening database for clearKeysWithPrefix."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    :try_start_9
    const-string v1, "datalayer"

    const-string v2, "key = ? OR key LIKE ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ".%"

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Cleared "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " items"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V
    :try_end_42
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9 .. :try_end_42} :catch_46
    .catchall {:try_start_9 .. :try_end_42} :catchall_88

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V

    goto :goto_8

    :catch_46
    move-exception v0

    :try_start_47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2c

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Error deleting entries with key prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_47 .. :try_end_84} :catchall_88

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V

    goto :goto_8

    :catchall_88
    move-exception v0

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcba()V

    throw v0
.end method

.method private zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->avQ:Lcom/google/android/gms/tagmanager/zzw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzw$zza;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_6
.end method

.method private zzxx(I)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzw;->zzcaz()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzw;->avR:I

    sub-int/2addr v0, v1

    add-int/2addr v0, p1

    if-lez v0, :cond_3c

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzxy(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "DataLayer store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " entries to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcx(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzf([Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private zzxy(I)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v10, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    if-gtz p1, :cond_f

    const-string v0, "Invalid maxEntries specified. Skipping."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    move-object v0, v9

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "Error opening database for peekEntryIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzw;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_19

    move-object v0, v9

    goto :goto_e

    :cond_19
    :try_start_19
    const-string v1, "datalayer"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ID"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "ID"

    aput-object v12, v8, v11

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3c
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_19 .. :try_end_3c} :catch_5c
    .catchall {:try_start_19 .. :try_end_3c} :catchall_88

    move-result-object v1

    :try_start_3d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    :cond_43
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_52
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3d .. :try_end_52} :catch_8b
    .catchall {:try_start_3d .. :try_end_52} :catchall_81

    move-result v0

    if-nez v0, :cond_43

    :cond_55
    if-eqz v1, :cond_5a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5a
    :goto_5a
    move-object v0, v9

    goto :goto_e

    :catch_5c
    move-exception v0

    move-object v1, v10

    :goto_5e
    :try_start_5e
    const-string v2, "Error in peekEntries fetching entryIds: "

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_72
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_75
    .catchall {:try_start_5e .. :try_end_75} :catchall_81

    if-eqz v1, :cond_5a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_5a

    :cond_7b
    :try_start_7b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_7b .. :try_end_80} :catchall_81

    goto :goto_72

    :catchall_81
    move-exception v0

    :goto_82
    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    throw v0

    :catchall_88
    move-exception v0

    move-object v1, v10

    goto :goto_82

    :catch_8b
    move-exception v0

    goto :goto_5e
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->avP:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzw$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzw$2;-><init>(Lcom/google/android/gms/tagmanager/zzw;Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/util/List;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/DataLayer$zza;",
            ">;J)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzw;->zzah(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw;->avP:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/tagmanager/zzw$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/google/android/gms/tagmanager/zzw$1;-><init>(Lcom/google/android/gms/tagmanager/zzw;Ljava/util/List;J)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzny(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw;->avP:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/google/android/gms/tagmanager/zzw$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/tagmanager/zzw$3;-><init>(Lcom/google/android/gms/tagmanager/zzw;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

###### Class com.google.android.gms.tagmanager.zzw.AnonymousClass1 (com.google.android.gms.tagmanager.zzw$1)
.class Lcom/google/android/gms/tagmanager/zzw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzw;->zza(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avS:Ljava/util/List;

.field final synthetic avT:J

.field final synthetic avU:Lcom/google/android/gms/tagmanager/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzw;Ljava/util/List;J)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw$1;->avU:Lcom/google/android/gms/tagmanager/zzw;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzw$1;->avS:Ljava/util/List;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzw$1;->avT:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw$1;->avU:Lcom/google/android/gms/tagmanager/zzw;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw$1;->avS:Ljava/util/List;

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzw$1;->avT:J

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/tagmanager/zzw;->zza(Lcom/google/android/gms/tagmanager/zzw;Ljava/util/List;J)V

    return-void
.end method

###### Class com.google.android.gms.tagmanager.zzw.AnonymousClass2 (com.google.android.gms.tagmanager.zzw$2)
.class Lcom/google/android/gms/tagmanager/zzw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzw;->zza(Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avU:Lcom/google/android/gms/tagmanager/zzw;

.field final synthetic avV:Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzw;Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw$2;->avU:Lcom/google/android/gms/tagmanager/zzw;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzw$2;->avV:Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw$2;->avV:Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw$2;->avU:Lcom/google/android/gms/tagmanager/zzw;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzw;->zza(Lcom/google/android/gms/tagmanager/zzw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/DataLayer$zzc$zza;->zzaf(Ljava/util/List;)V

    return-void
.end method

###### Class com.google.android.gms.tagmanager.zzw.AnonymousClass3 (com.google.android.gms.tagmanager.zzw$3)
.class Lcom/google/android/gms/tagmanager/zzw$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzw;->zzny(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic avU:Lcom/google/android/gms/tagmanager/zzw;

.field final synthetic avW:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzw;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw$3;->avU:Lcom/google/android/gms/tagmanager/zzw;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzw$3;->avW:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw$3;->avU:Lcom/google/android/gms/tagmanager/zzw;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw$3;->avW:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzw;->zza(Lcom/google/android/gms/tagmanager/zzw;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.tagmanager.zzw.zza (com.google.android.gms.tagmanager.zzw$zza)
.class Lcom/google/android/gms/tagmanager/zzw$zza;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic avU:Lcom/google/android/gms/tagmanager/zzw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzw;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw$zza;->avU:Lcom/google/android/gms/tagmanager/zzw;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z
    .registers 13

    const/4 v8, 0x0

    const/4 v9, 0x0

    :try_start_2
    const-string v1, "SQLITE_MASTER"

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "name"

    aput-object v3, v2, v0

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1b
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_1b} :catch_26
    .catchall {:try_start_2 .. :try_end_1b} :catchall_51

    move-result-object v1

    :try_start_1c
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1c .. :try_end_1f} :catch_56
    .catchall {:try_start_1c .. :try_end_1f} :catchall_53

    move-result v0

    if-eqz v1, :cond_25

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_25
    :goto_25
    return v0

    :catch_26
    move-exception v0

    move-object v0, v9

    :goto_28
    :try_start_28
    const-string v2, "Error querying for table "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_42

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_38
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_28 .. :try_end_3b} :catchall_48

    if-eqz v0, :cond_40

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_40
    move v0, v8

    goto :goto_25

    :cond_42
    :try_start_42
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_48

    goto :goto_38

    :catchall_48
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    :goto_4b
    if-eqz v9, :cond_50

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_50
    throw v0

    :catchall_51
    move-exception v0

    goto :goto_4b

    :catchall_53
    move-exception v0

    move-object v9, v1

    goto :goto_4b

    :catch_56
    move-exception v0

    move-object v0, v1

    goto :goto_28
.end method

.method private zzc(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 7

    const-string v0, "SELECT * FROM datalayer WHERE 0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :try_start_c
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x0

    :goto_11
    array-length v4, v3

    if-ge v0, v4, :cond_1c

    aget-object v4, v3, v0

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_47

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_1c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    const-string v0, "key"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "value"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "ID"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "expires"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_3f
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database column missing"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_47
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4c
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5a

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database has extra columns"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    return-void
.end method


# virtual methods
.method public getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_4} :catch_c

    move-result-object v0

    :goto_5
    if-nez v0, :cond_b

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_b
    return-object v0

    :catch_c
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw$zza;->avU:Lcom/google/android/gms/tagmanager/zzw;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzw;->zzb(Lcom/google/android/gms/tagmanager/zzw;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "google_tagmanager.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_5
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzam;->zzet(Ljava/lang/String;)Z

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_13

    const-string v0, "PRAGMA journal_mode=memory"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_23

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_13
    const-string v0, "datalayer"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzw$zza;->zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzw;->zzcbb()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_22
    return-void

    :catchall_23
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_28
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzw$zza;->zzc(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_22
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

###### Class com.google.android.gms.tagmanager.zzw.zzb (com.google.android.gms.tagmanager.zzw$zzb)
.class Lcom/google/android/gms/tagmanager/zzw$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field final avX:[B

.field final zzaxn:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzw$zzb;->zzaxn:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzw$zzb;->avX:[B

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzw$zzb;->zzaxn:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzw$zzb;->avX:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x36

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "KeyAndSerialized: key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " serialized hash = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
