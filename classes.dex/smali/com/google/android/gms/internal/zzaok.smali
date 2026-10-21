###### Class com.google.android.gms.internal.zzaok (com.google.android.gms.internal.zzaok)
.class public final Lcom/google/android/gms/internal/zzaok;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/sql/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final bfE:Lcom/google/android/gms/internal/zzanl;


# instance fields
.field private final bge:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaok$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaok$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaok;->bfE:Lcom/google/android/gms/internal/zzanl;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM d, yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaok;->bge:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/sql/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaok;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/sql/Date;)V

    return-void
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/internal/zzaor;Ljava/sql/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_9

    const/4 v0, 0x0

    :goto_4
    :try_start_4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaor;->zztb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_10

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->bge:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_10

    move-result-object v0

    goto :goto_4

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaok;->zzm(Lcom/google/android/gms/internal/zzaop;)Ljava/sql/Date;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized zzm(Lcom/google/android/gms/internal/zzaop;)Ljava/sql/Date;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_f

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_2a

    const/4 v0, 0x0

    :goto_d
    monitor-exit p0

    return-object v0

    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaok;->bge:Ljava/text/DateFormat;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V
    :try_end_22
    .catch Ljava/text/ParseException; {:try_start_f .. :try_end_22} :catch_23
    .catchall {:try_start_f .. :try_end_22} :catchall_2a

    goto :goto_d

    :catch_23
    move-exception v0

    :try_start_24
    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

###### Class com.google.android.gms.internal.zzaok.AnonymousClass1 (com.google.android.gms.internal.zzaok$1)
.class final Lcom/google/android/gms/internal/zzaok$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaok;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzaok;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaok;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
