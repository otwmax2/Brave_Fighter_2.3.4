###### Class com.google.android.gms.internal.zzaod (com.google.android.gms.internal.zzaod)
.class public final Lcom/google/android/gms/internal/zzaod;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final bfE:Lcom/google/android/gms/internal/zzanl;


# instance fields
.field private final bdO:Ljava/text/DateFormat;

.field private final bdP:Ljava/text/DateFormat;

.field private final bdQ:Ljava/text/DateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaod$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaod$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaod;->bfE:Lcom/google/android/gms/internal/zzanl;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v1, v1, v0}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdO:Ljava/text/DateFormat;

    invoke-static {v1, v1}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdP:Ljava/text/DateFormat;

    invoke-static {}, Lcom/google/android/gms/internal/zzaod;->g()Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdQ:Ljava/text/DateFormat;

    return-void
.end method

.method private static g()Ljava/text/DateFormat;
    .registers 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private declared-synchronized zzsz(Ljava/lang/String;)Ljava/util/Date;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdP:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_6
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_20

    move-result-object v0

    :goto_7
    monitor-exit p0

    return-object v0

    :catch_9
    move-exception v0

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdO:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_a .. :try_end_f} :catch_11
    .catchall {:try_start_a .. :try_end_f} :catchall_20

    move-result-object v0

    goto :goto_7

    :catch_11
    move-exception v0

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdQ:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_17
    .catch Ljava/text/ParseException; {:try_start_12 .. :try_end_17} :catch_19
    .catchall {:try_start_12 .. :try_end_17} :catchall_20

    move-result-object v0

    goto :goto_7

    :catch_19
    move-exception v0

    :try_start_1a
    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzaod;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/util/Date;)V

    return-void
.end method

.method public declared-synchronized zza(Lcom/google/android/gms/internal/zzaor;Ljava/util/Date;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-nez p2, :cond_8

    :try_start_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->r()Lcom/google/android/gms/internal/zzaor;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_12

    :goto_6
    monitor-exit p0

    return-void

    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaod;->bdO:Ljava/text/DateFormat;

    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaor;->zztb(Ljava/lang/String;)Lcom/google/android/gms/internal/zzaor;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_12

    goto :goto_6

    :catchall_12
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaod;->zzk(Lcom/google/android/gms/internal/zzaop;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public zzk(Lcom/google/android/gms/internal/zzaop;)Ljava/util/Date;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    if-ne v0, v1, :cond_d

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V

    const/4 v0, 0x0

    :goto_c
    return-object v0

    :cond_d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaod;->zzsz(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    goto :goto_c
.end method

###### Class com.google.android.gms.internal.zzaod.AnonymousClass1 (com.google.android.gms.internal.zzaod$1)
.class final Lcom/google/android/gms/internal/zzaod$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaod;
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

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/zzaod;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaod;-><init>()V

    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
