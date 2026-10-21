###### Class com.google.android.gms.tagmanager.zzcf (com.google.android.gms.tagmanager.zzcf)
.class Lcom/google/android/gms/tagmanager/zzcf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzav;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzcf$zzb;,
        Lcom/google/android/gms/tagmanager/zzcf$zza;
    }
.end annotation


# static fields
.field private static final zzcxz:Ljava/lang/String;


# instance fields
.field private final awX:Lcom/google/android/gms/tagmanager/zzcf$zzb;

.field private volatile awY:Lcom/google/android/gms/tagmanager/zzac;

.field private final awZ:Lcom/google/android/gms/tagmanager/zzaw;

.field private final axa:Ljava/lang/String;

.field private axb:J

.field private final axc:I

.field private final mContext:Landroid/content/Context;

.field private zzaoa:Lcom/google/android/gms/common/util/zze;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "CREATE TABLE IF NOT EXISTS %s ( \'%s\' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, \'%s\' INTEGER NOT NULL, \'%s\' TEXT NOT NULL,\'%s\' INTEGER NOT NULL);"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "gtm_hits"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "hit_id"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "hit_time"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "hit_url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "hit_first_send_time"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/zzcf;->zzcxz:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzaw;Landroid/content/Context;)V
    .registers 5

    const-string v0, "gtm_urls.db"

    const/16 v1, 0x7d0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/tagmanager/zzcf;-><init>(Lcom/google/android/gms/tagmanager/zzaw;Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzaw;Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcf;->axa:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcf;->awZ:Lcom/google/android/gms/tagmanager/zzaw;

    invoke-static {}, Lcom/google/android/gms/common/util/zzh;->zzavi()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->zzaoa:Lcom/google/android/gms/common/util/zze;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzcf$zzb;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcf;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcf;->axa:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/tagmanager/zzcf$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzcf;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->awX:Lcom/google/android/gms/tagmanager/zzcf$zzb;

    new-instance v0, Lcom/google/android/gms/tagmanager/zzde;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcf;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/google/android/gms/tagmanager/zzcf$zza;

    invoke-direct {v2, p0}, Lcom/google/android/gms/tagmanager/zzcf$zza;-><init>(Lcom/google/android/gms/tagmanager/zzcf;)V

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzde;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzde$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->awY:Lcom/google/android/gms/tagmanager/zzac;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->axb:J

    iput p4, p0, Lcom/google/android/gms/tagmanager/zzcf;->axc:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/common/util/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->zzaoa:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcf;J)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcf;->zzs(J)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzcf;JJ)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/tagmanager/zzcf;->zzh(JJ)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzcf;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->axa:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/tagmanager/zzcf;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private zzcca()V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcf;->zzccb()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/tagmanager/zzcf;->axc:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_3d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzyd(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x33

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Store full, deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hits to make room."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzg([Ljava/lang/String;)V

    :cond_3d
    return-void
.end method

.method static synthetic zzccd()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/tagmanager/zzcf;->zzcxz:Ljava/lang/String;

    return-object v0
.end method

.method private zzh(JJ)V
    .registers 12

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_first_send_time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :try_start_17
    const-string v2, "gtm_hits"

    const-string v3, "hit_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_28
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_17 .. :try_end_28} :catch_29

    goto :goto_8

    :catch_29
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x45

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Error setting HIT_FIRST_DISPATCH_TIME for hitId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/tagmanager/zzcf;->zzs(J)V

    goto :goto_8
.end method

.method private zzh(JLjava/lang/String;)V
    .registers 9

    const/4 v4, 0x0

    const-string v0, "Error opening database for putHit"

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "hit_time"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "hit_url"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "hit_first_send_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :try_start_26
    const-string v2, "gtm_hits"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->awZ:Lcom/google/android/gms/tagmanager/zzaw;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzaw;->zzcg(Z)V
    :try_end_32
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_26 .. :try_end_32} :catch_33

    goto :goto_9

    :catch_33
    move-exception v0

    const-string v0, "Error storing hit"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    goto :goto_9
.end method

.method private zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->awX:Lcom/google/android/gms/tagmanager/zzcf$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzcf$zzb;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
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

.method private zzs(J)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzg([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dispatch()V
    .registers 3

    const-string v0, "GTM Dispatch running..."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->awY:Lcom/google/android/gms/tagmanager/zzac;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzac;->zzcbc()Z

    move-result v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzye(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_26

    const-string v0, "...nothing to dispatch"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf;->awZ:Lcom/google/android/gms/tagmanager/zzaw;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzaw;->zzcg(Z)V

    goto :goto_d

    :cond_26
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcf;->awY:Lcom/google/android/gms/tagmanager/zzac;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzac;->zzai(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcf;->zzccc()I

    move-result v0

    if-lez v0, :cond_d

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdb;->zzccy()Lcom/google/android/gms/tagmanager/zzdb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdb;->dispatch()V

    goto :goto_d
.end method

.method zzccb()I
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    :goto_a
    return v0

    :cond_b
    :try_start_b
    const-string v3, "SELECT COUNT(*) from gtm_hits"

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
    const-string v2, "Error getting numStoredHits"

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

.method zzccc()I
    .registers 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v0, "Error opening database for getNumStoredHits."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_b

    :goto_a
    return v8

    :cond_b
    :try_start_b
    const-string v1, "gtm_hits"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "hit_first_send_time"

    aput-object v4, v2, v3

    const-string v3, "hit_first_send_time=0"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_23
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b .. :try_end_23} :catch_2f
    .catchall {:try_start_b .. :try_end_23} :catchall_3d

    move-result-object v1

    :try_start_24
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_24 .. :try_end_27} :catch_4b
    .catchall {:try_start_24 .. :try_end_27} :catchall_44

    move-result v0

    if-eqz v1, :cond_2d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2d
    :goto_2d
    move v8, v0

    goto :goto_a

    :catch_2f
    move-exception v0

    move-object v0, v9

    :goto_31
    :try_start_31
    const-string v1, "Error getting num untried hits"

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_36
    .catchall {:try_start_31 .. :try_end_36} :catchall_47

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v8

    goto :goto_2d

    :catchall_3d
    move-exception v0

    :goto_3e
    if-eqz v9, :cond_43

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_43
    throw v0

    :catchall_44
    move-exception v0

    move-object v9, v1

    goto :goto_3e

    :catchall_47
    move-exception v1

    move-object v9, v0

    move-object v0, v1

    goto :goto_3e

    :catch_4b
    move-exception v0

    move-object v0, v1

    goto :goto_31

    :cond_4e
    move v0, v8

    goto :goto_2d
.end method

.method public zzg(JLjava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcf;->zzzy()I

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcf;->zzcca()V

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/tagmanager/zzcf;->zzh(JLjava/lang/String;)V

    return-void
.end method

.method zzg([Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_7

    array-length v2, p1

    if-nez v2, :cond_8

    :cond_7
    :goto_7
    return-void

    :cond_8
    const-string v2, "Error opening database for deleteHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_7

    const-string v3, "HIT_ID in (%s)"

    new-array v4, v0, [Ljava/lang/Object;

    const-string v5, ","

    array-length v6, p1

    const-string v7, "?"

    invoke-static {v6, v7}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_start_27
    const-string v4, "gtm_hits"

    invoke-virtual {v2, v4, v3, p1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcf;->awZ:Lcom/google/android/gms/tagmanager/zzaw;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcf;->zzccb()I

    move-result v3

    if-nez v3, :cond_3f

    :goto_34
    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzaw;->zzcg(Z)V
    :try_end_37
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_27 .. :try_end_37} :catch_38

    goto :goto_7

    :catch_38
    move-exception v0

    const-string v0, "Error deleting hits"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    goto :goto_7

    :cond_3f
    move v0, v1

    goto :goto_34
.end method

.method zzyd(I)Ljava/util/List;
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

    const-string v0, "Invalid maxHits specified. Skipping"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    move-object v0, v9

    :goto_e
    return-object v0

    :cond_f
    const-string v0, "Error opening database for peekHitIds."

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_19

    move-object v0, v9

    goto :goto_e

    :cond_19
    :try_start_19
    const-string v1, "gtm_hits"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "hit_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "%s ASC"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string v12, "hit_id"

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
    const-string v2, "Error in peekHits fetching hitIds: "

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

.method public zzye(I)Ljava/util/List;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzar;",
            ">;"
        }
    .end annotation

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "Error opening database for peekHits"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_11

    move-object v2, v11

    :cond_10
    :goto_10
    return-object v2

    :cond_11
    const/4 v12, 0x0

    :try_start_12
    const-string v3, "gtm_hits"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_time"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "hit_first_send_time"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "hit_id"

    aput-object v14, v10, v13

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_3f} :catch_ca
    .catchall {:try_start_12 .. :try_end_3f} :catchall_172

    move-result-object v13

    :try_start_40
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_45
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_40 .. :try_end_45} :catch_178
    .catchall {:try_start_40 .. :try_end_45} :catchall_174

    :try_start_45
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_68

    :cond_4b
    new-instance v3, Lcom/google/android/gms/tagmanager/zzar;

    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    const/4 v8, 0x2

    invoke-interface {v13, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/tagmanager/zzar;-><init>(JJJ)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_65
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_45 .. :try_end_65} :catch_17e
    .catchall {:try_start_45 .. :try_end_65} :catchall_174

    move-result v3

    if-nez v3, :cond_4b

    :cond_68
    if-eqz v13, :cond_6d

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_6d
    const/4 v11, 0x0

    :try_start_6e
    const-string v3, "gtm_hits"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "hit_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "hit_url"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "%s ASC"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "hit_id"

    aput-object v15, v10, v14

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_96
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6e .. :try_end_96} :catch_170
    .catchall {:try_start_6e .. :try_end_96} :catchall_161

    move-result-object v3

    :try_start_97
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_c2

    move v4, v11

    :goto_9e
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteCursor;->getWindow()Landroid/database/CursorWindow;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v2

    if-lez v2, :cond_fa

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tagmanager/zzar;

    const/4 v5, 0x1

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/android/gms/tagmanager/zzar;->zzoe(Ljava/lang/String;)V

    :goto_ba
    add-int/lit8 v2, v4, 0x1

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_bf
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_97 .. :try_end_bf} :catch_118
    .catchall {:try_start_97 .. :try_end_bf} :catchall_16d

    move-result v4

    if-nez v4, :cond_184

    :cond_c2
    if-eqz v3, :cond_c7

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_c7
    move-object v2, v12

    goto/16 :goto_10

    :catch_ca
    move-exception v2

    move-object v3, v2

    move-object v4, v12

    move-object v2, v11

    :goto_ce
    :try_start_ce
    const-string v5, "Error in peekHits fetching hitIds: "

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_ec

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_e2
    invoke-static {v3}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_e5
    .catchall {:try_start_ce .. :try_end_e5} :catchall_f2

    if-eqz v4, :cond_10

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto/16 :goto_10

    :cond_ec
    :try_start_ec
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_f1
    .catchall {:try_start_ec .. :try_end_f1} :catchall_f2

    goto :goto_e2

    :catchall_f2
    move-exception v2

    move-object v12, v4

    :goto_f4
    if-eqz v12, :cond_f9

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_f9
    throw v2

    :cond_fa
    :try_start_fa
    const-string v5, "HitString for hitId %d too large.  Hit will be deleted."

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tagmanager/zzar;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V
    :try_end_117
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_fa .. :try_end_117} :catch_118
    .catchall {:try_start_fa .. :try_end_117} :catchall_16d

    goto :goto_ba

    :catch_118
    move-exception v2

    move-object v13, v3

    :goto_11a
    :try_start_11a
    const-string v3, "Error in peekHits fetching hit url: "

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_15b

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_12e
    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_13b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_153

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/tagmanager/zzar;

    invoke-virtual {v2}, Lcom/google/android/gms/tagmanager/zzar;->zzcbp()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_14e
    .catchall {:try_start_11a .. :try_end_14e} :catchall_161

    move-result v6

    if-eqz v6, :cond_169

    if-eqz v4, :cond_168

    :cond_153
    if-eqz v13, :cond_158

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_158
    move-object v2, v3

    goto/16 :goto_10

    :cond_15b
    :try_start_15b
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_160
    .catchall {:try_start_15b .. :try_end_160} :catchall_161

    goto :goto_12e

    :catchall_161
    move-exception v2

    :goto_162
    if-eqz v13, :cond_167

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_167
    throw v2

    :cond_168
    const/4 v4, 0x1

    :cond_169
    :try_start_169
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16c
    .catchall {:try_start_169 .. :try_end_16c} :catchall_161

    goto :goto_13b

    :catchall_16d
    move-exception v2

    move-object v13, v3

    goto :goto_162

    :catch_170
    move-exception v2

    goto :goto_11a

    :catchall_172
    move-exception v2

    goto :goto_f4

    :catchall_174
    move-exception v2

    move-object v12, v13

    goto/16 :goto_f4

    :catch_178
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v11

    goto/16 :goto_ce

    :catch_17e
    move-exception v2

    move-object v3, v2

    move-object v4, v13

    move-object v2, v12

    goto/16 :goto_ce

    :cond_184
    move v4, v2

    goto/16 :goto_9e
.end method

.method zzzy()I
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcf;->zzaoa:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/tagmanager/zzcf;->axb:J

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gtz v4, :cond_13

    :cond_12
    :goto_12
    return v1

    :cond_13
    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcf;->axb:J

    const-string v2, "Error opening database for deleteStaleHits."

    invoke-direct {p0, v2}, Lcom/google/android/gms/tagmanager/zzcf;->zzoa(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-eqz v2, :cond_12

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzcf;->zzaoa:Lcom/google/android/gms/common/util/zze;

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    const-wide v6, 0x9a7ec800L

    sub-long/2addr v4, v6

    const-string v3, "gtm_hits"

    const-string v6, "HIT_TIME < ?"

    new-array v7, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v1

    invoke-virtual {v2, v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/tagmanager/zzcf;->awZ:Lcom/google/android/gms/tagmanager/zzaw;

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcf;->zzccb()I

    move-result v4

    if-nez v4, :cond_46

    :goto_41
    invoke-interface {v3, v0}, Lcom/google/android/gms/tagmanager/zzaw;->zzcg(Z)V

    move v1, v2

    goto :goto_12

    :cond_46
    move v0, v1

    goto :goto_41
.end method

###### Class com.google.android.gms.tagmanager.zzcf.zza (com.google.android.gms.tagmanager.zzcf$zza)
.class Lcom/google/android/gms/tagmanager/zzcf$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzde$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic axd:Lcom/google/android/gms/tagmanager/zzcf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcf;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/tagmanager/zzar;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;J)V

    return-void
.end method

.method public zzb(Lcom/google/android/gms/tagmanager/zzar;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x39

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Permanent failure dispatching hitId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    return-void
.end method

.method public zzc(Lcom/google/android/gms/tagmanager/zzar;)V
    .registers 8

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbo()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v2

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v2, v3, v4, v5}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;JJ)V

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const-wide/32 v2, 0xdbba00

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zza;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;J)V

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbn()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Giving up on failed hitId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    goto :goto_1d
.end method

###### Class com.google.android.gms.tagmanager.zzcf.zzb (com.google.android.gms.tagmanager.zzcf$zzb)
.class Lcom/google/android/gms/tagmanager/zzcf$zzb;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzcf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zzb"
.end annotation


# instance fields
.field final synthetic axd:Lcom/google/android/gms/tagmanager/zzcf;

.field private axe:Z

.field private axf:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcf;Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, p3, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axf:J

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

    const-string v0, "SELECT * FROM gtm_hits WHERE 0"

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

    const-string v0, "hit_id"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "hit_url"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "hit_time"

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    const-string v0, "hit_first_send_time"

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
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axe:Z

    if-eqz v0, :cond_20

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axf:J

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_20

    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Database creation failed"

    invoke-direct {v0, v1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    const/4 v0, 0x0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axe:Z

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcf;->zza(Lcom/google/android/gms/tagmanager/zzcf;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axf:J

    :try_start_30
    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_33
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_30 .. :try_end_33} :catch_3e

    move-result-object v0

    :goto_34
    if-nez v0, :cond_3a

    invoke-super {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :cond_3a
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axe:Z

    return-object v0

    :catch_3e
    move-exception v1

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzcf;->zzc(Lcom/google/android/gms/tagmanager/zzcf;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcf$zzb;->axd:Lcom/google/android/gms/tagmanager/zzcf;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzcf;->zzb(Lcom/google/android/gms/tagmanager/zzcf;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_34
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
    const-string v0, "gtm_hits"

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/tagmanager/zzcf$zzb;->zza(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Z

    move-result v0

    if-nez v0, :cond_28

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzcf;->zzccd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_22
    return-void

    :catchall_23
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_28
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzcf$zzb;->zzc(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_22
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method
