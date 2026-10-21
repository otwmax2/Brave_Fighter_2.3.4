###### Class com.google.android.gms.tagmanager.zzau (com.google.android.gms.tagmanager.zzau)
.class Lcom/google/android/gms/tagmanager/zzau;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzat;


# static fields
.field private static awu:Lcom/google/android/gms/tagmanager/zzau;


# instance fields
.field private final awt:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile awv:Lcom/google/android/gms/tagmanager/zzav;

.field private volatile mClosed:Z

.field private final mContext:Landroid/content/Context;

.field private volatile zzbti:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const-string v0, "GAThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->awt:Ljava/util/concurrent/LinkedBlockingQueue;

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzau;->zzbti:Z

    iput-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzau;->mClosed:Z

    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->mContext:Landroid/content/Context;

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzau;->start()V

    return-void

    :cond_1d
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzau;->mContext:Landroid/content/Context;

    goto :goto_19
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzau;)Lcom/google/android/gms/tagmanager/zzav;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->awv:Lcom/google/android/gms/tagmanager/zzav;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzav;)Lcom/google/android/gms/tagmanager/zzav;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzau;->awv:Lcom/google/android/gms/tagmanager/zzav;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/tagmanager/zzau;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static zzdz(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzau;
    .registers 2

    sget-object v0, Lcom/google/android/gms/tagmanager/zzau;->awu:Lcom/google/android/gms/tagmanager/zzau;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/android/gms/tagmanager/zzau;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzau;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzau;->awu:Lcom/google/android/gms/tagmanager/zzau;

    :cond_b
    sget-object v0, Lcom/google/android/gms/tagmanager/zzau;->awu:Lcom/google/android/gms/tagmanager/zzau;

    return-object v0
.end method

.method private zze(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/PrintStream;

    invoke-direct {v1, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method


# virtual methods
.method public run()V
    .registers 4

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzau;->mClosed:Z

    if-nez v0, :cond_44

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->awt:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    iget-boolean v1, p0, Lcom/google/android/gms/tagmanager/zzau;->zzbti:Z

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_13} :catch_14
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_13} :catch_1d

    goto :goto_0

    :catch_14
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcx(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_0

    :catch_1d
    move-exception v0

    const-string v1, "Error on Google TagManager Thread: "

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/zzau;->zze(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3e

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_32
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const-string v0, "Google TagManager is shutting down."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/tagmanager/zzau;->zzbti:Z

    goto :goto_0

    :cond_3e
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_32

    :cond_44
    return-void
.end method

.method zzl(Ljava/lang/String;J)V
    .registers 12

    new-instance v1, Lcom/google/android/gms/tagmanager/zzau$1;

    move-object v2, p0

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/tagmanager/zzau$1;-><init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzat;JLjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tagmanager/zzau;->zzo(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zzo(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau;->awt:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzof(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/tagmanager/zzau;->zzl(Ljava/lang/String;J)V

    return-void
.end method

###### Class com.google.android.gms.tagmanager.zzau.AnonymousClass1 (com.google.android.gms.tagmanager.zzau$1)
.class Lcom/google/android/gms/tagmanager/zzau$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzau;->zzl(Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aww:Lcom/google/android/gms/tagmanager/zzat;

.field final synthetic awx:J

.field final synthetic awy:Lcom/google/android/gms/tagmanager/zzau;

.field final synthetic zzbjl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzat;JLjava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzau$1;->aww:Lcom/google/android/gms/tagmanager/zzat;

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awx:J

    iput-object p5, p0, Lcom/google/android/gms/tagmanager/zzau$1;->zzbjl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzau;->zza(Lcom/google/android/gms/tagmanager/zzau;)Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    if-nez v0, :cond_20

    invoke-static {}, Lcom/google/android/gms/tagmanager/zzdb;->zzccy()Lcom/google/android/gms/tagmanager/zzdb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzau;->zzb(Lcom/google/android/gms/tagmanager/zzau;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzau$1;->aww:Lcom/google/android/gms/tagmanager/zzat;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/zzdb;->zza(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzat;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzdb;->zzcdb()Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzau;->zza(Lcom/google/android/gms/tagmanager/zzau;Lcom/google/android/gms/tagmanager/zzav;)Lcom/google/android/gms/tagmanager/zzav;

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awy:Lcom/google/android/gms/tagmanager/zzau;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzau;->zza(Lcom/google/android/gms/tagmanager/zzau;)Lcom/google/android/gms/tagmanager/zzav;

    move-result-object v0

    iget-wide v2, p0, Lcom/google/android/gms/tagmanager/zzau$1;->awx:J

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzau$1;->zzbjl:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v1}, Lcom/google/android/gms/tagmanager/zzav;->zzg(JLjava/lang/String;)V

    return-void
.end method
