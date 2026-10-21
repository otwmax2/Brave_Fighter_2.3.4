###### Class com.google.android.gms.internal.zzaer (com.google.android.gms.internal.zzaer)
.class public Lcom/google/android/gms/internal/zzaer;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final aLW:Landroid/net/Uri;

.field public static final aLX:Ljava/util/regex/Pattern;

.field public static final aLY:Ljava/util/regex/Pattern;

.field private static aLZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static aMa:Ljava/lang/Object;

.field private static aMb:[Ljava/lang/String;

.field private static aMc:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x2

    const-string v0, "content://com.google.android.gsf.gservices"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/prefix"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aLW:Landroid/net/Uri;

    const-string v0, "^(1|true|t|on|yes|y)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aLX:Ljava/util/regex/Pattern;

    const-string v0, "^(0|false|f|off|no|n)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aLY:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aMb:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aMc:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaer;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    :try_start_6
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_9} :catch_b

    move-result-wide p2

    :cond_a
    :goto_a
    return-wide p2

    :catch_b
    move-exception v0

    goto :goto_a
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzaer;->zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static zza(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const-class v1, Lcom/google/android/gms/internal/zzaer;

    monitor-enter v1

    :try_start_6
    invoke-static {p0}, Lcom/google/android/gms/internal/zzaer;->zza(Landroid/content/ContentResolver;)V

    sget-object v6, Lcom/google/android/gms/internal/zzaer;->aMa:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    move-object p2, v0

    :cond_1e
    monitor-exit v1

    :cond_1f
    :goto_1f
    return-object p2

    :cond_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_6 .. :try_end_21} :catchall_32

    sget-object v1, Lcom/google/android/gms/internal/zzaer;->aMb:[Ljava/lang/String;

    array-length v4, v1

    move v0, v3

    :goto_25
    if-ge v0, v4, :cond_35

    aget-object v5, v1, v0

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1f

    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    :catchall_32
    move-exception v0

    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    sget-object v1, Lcom/google/android/gms/internal/zzaer;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v7, [Ljava/lang/String;

    aput-object p1, v4, v3

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4a

    :try_start_44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_56

    :cond_4a
    sget-object v0, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_44 .. :try_end_50} :catchall_74

    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :cond_56
    const/4 v0, 0x1

    :try_start_57
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/zzaer;

    monitor-enter v2
    :try_end_5e
    .catchall {:try_start_57 .. :try_end_5e} :catchall_74

    :try_start_5e
    sget-object v3, Lcom/google/android/gms/internal/zzaer;->aMa:Ljava/lang/Object;

    if-ne v6, v3, :cond_67

    sget-object v3, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_67
    monitor-exit v2
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_71

    if-eqz v0, :cond_6b

    move-object p2, v0

    :cond_6b
    if-eqz v1, :cond_1f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1f

    :catchall_71
    move-exception v0

    :try_start_72
    monitor-exit v2
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    if-eqz v1, :cond_7a

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7a
    throw v0
.end method

.method public static varargs zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v1, Lcom/google/android/gms/internal/zzaer;->aLW:Landroid/net/Uri;

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-nez v1, :cond_13

    :goto_12
    return-object v0

    :cond_13
    :goto_13
    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_13 .. :try_end_26} :catchall_27

    goto :goto_13

    :catchall_27
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2c
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12
.end method

.method private static zza(Landroid/content/ContentResolver;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->aMa:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzaer$1;

    const-string v1, "Gservices"

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/zzaer$1;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaer$1;->start()V

    :cond_1c
    return-void
.end method

.method public static varargs zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V
    .registers 7

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzaer;->zza(Landroid/content/ContentResolver;[Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    const-class v2, Lcom/google/android/gms/internal/zzaer;

    monitor-enter v2

    :try_start_7
    invoke-static {p0}, Lcom/google/android/gms/internal/zzaer;->zza(Landroid/content/ContentResolver;)V

    sput-object p1, Lcom/google/android/gms/internal/zzaer;->aMb:[Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    sget-object v4, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :catchall_32
    move-exception v0

    monitor-exit v2
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw v0

    :cond_35
    :try_start_35
    monitor-exit v2
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    return-void
.end method

.method static synthetic zzbb(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    sput-object p0, Lcom/google/android/gms/internal/zzaer;->aMa:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zzcjl()Ljava/util/HashMap;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzaer;->aLZ:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic zzcjm()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/zzaer;->aMb:[Ljava/lang/String;

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzaer.AnonymousClass1 (com.google.android.gms.internal.zzaer$1)
.class final Lcom/google/android/gms/internal/zzaer$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaer;->zza(Landroid/content/ContentResolver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMd:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .registers 3

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaer$1;->aMd:Landroid/content/ContentResolver;

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaer$1;->aMd:Landroid/content/ContentResolver;

    sget-object v1, Lcom/google/android/gms/internal/zzaer;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcom/google/android/gms/internal/zzaer$1$1;

    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4}, Lcom/google/android/gms/internal/zzaer$1$1;-><init>(Lcom/google/android/gms/internal/zzaer$1;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class com.google.android.gms.internal.zzaer.AnonymousClass1.C00981 (com.google.android.gms.internal.zzaer$1$1)
.class Lcom/google/android/gms/internal/zzaer$1$1;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaer$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aMe:Lcom/google/android/gms/internal/zzaer$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaer$1;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaer$1$1;->aMe:Lcom/google/android/gms/internal/zzaer$1;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    const-class v1, Lcom/google/android/gms/internal/zzaer;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/internal/zzaer;->zzcjl()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaer;->zzbb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/zzaer;->zzcjm()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaer$1$1;->aMe:Lcom/google/android/gms/internal/zzaer$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaer$1;->aMd:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/google/android/gms/internal/zzaer;->zzcjm()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/zzaer;->zzb(Landroid/content/ContentResolver;[Ljava/lang/String;)V

    :cond_24
    monitor-exit v1

    return-void

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0
.end method
