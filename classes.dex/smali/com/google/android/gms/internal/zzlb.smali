###### Class com.google.android.gms.internal.zzlb (com.google.android.gms.internal.zzlb)
.class public Lcom/google/android/gms/internal/zzlb;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlb$zza;
    }
.end annotation


# direct methods
.method public static zza(Lcom/google/android/gms/internal/zzlc;Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "B:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzlc",
            "<TA;>;",
            "Lcom/google/android/gms/internal/zzlb$zza",
            "<TA;TB;>;)",
            "Lcom/google/android/gms/internal/zzlc",
            "<TB;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/zzlb$1;

    invoke-direct {v1, v0, p1, p0}, Lcom/google/android/gms/internal/zzlb$1;-><init>(Lcom/google/android/gms/internal/zzkz;Lcom/google/android/gms/internal/zzlb$zza;Lcom/google/android/gms/internal/zzlc;)V

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/zzlc;->zzb(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static zzn(Ljava/util/List;)Lcom/google/android/gms/internal/zzlc;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzlc",
            "<TV;>;>;)",
            "Lcom/google/android/gms/internal/zzlc",
            "<",
            "Ljava/util/List",
            "<TV;>;>;"
        }
    .end annotation

    new-instance v1, Lcom/google/android/gms/internal/zzkz;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzkz;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlc;

    new-instance v5, Lcom/google/android/gms/internal/zzlb$2;

    invoke-direct {v5, v3, v2, v1, p0}, Lcom/google/android/gms/internal/zzlb$2;-><init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzkz;Ljava/util/List;)V

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/zzlc;->zzb(Ljava/lang/Runnable;)V

    goto :goto_13

    :cond_28
    return-object v1
.end method

.method private static zzo(Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzlc",
            "<TV;>;>;)",
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzlc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzlc;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    return-object v1
.end method

.method static synthetic zzp(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlb;->zzo(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzlb.AnonymousClass1 (com.google.android.gms.internal.zzlb$1)
.class final Lcom/google/android/gms/internal/zzlb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlb;->zza(Lcom/google/android/gms/internal/zzlc;Lcom/google/android/gms/internal/zzlb$zza;)Lcom/google/android/gms/internal/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcnu:Lcom/google/android/gms/internal/zzkz;

.field final synthetic zzcnv:Lcom/google/android/gms/internal/zzlb$zza;

.field final synthetic zzcnw:Lcom/google/android/gms/internal/zzlc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkz;Lcom/google/android/gms/internal/zzlb$zza;Lcom/google/android/gms/internal/zzlc;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnu:Lcom/google/android/gms/internal/zzkz;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnv:Lcom/google/android/gms/internal/zzlb$zza;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnw:Lcom/google/android/gms/internal/zzlc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnu:Lcom/google/android/gms/internal/zzkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnv:Lcom/google/android/gms/internal/zzlb$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnw:Lcom/google/android/gms/internal/zzlc;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzlc;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzlb$zza;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_11} :catch_1c
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_11} :catch_1a
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_11} :catch_12

    :goto_11
    return-void

    :catch_12
    move-exception v0

    :goto_13
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$1;->zzcnu:Lcom/google/android/gms/internal/zzkz;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkz;->cancel(Z)Z

    goto :goto_11

    :catch_1a
    move-exception v0

    goto :goto_13

    :catch_1c
    move-exception v0

    goto :goto_13
.end method

###### Class com.google.android.gms.internal.zzlb.AnonymousClass2 (com.google.android.gms.internal.zzlb$2)
.class final Lcom/google/android/gms/internal/zzlb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlb;->zzn(Ljava/util/List;)Lcom/google/android/gms/internal/zzlc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcnx:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic zzcny:I

.field final synthetic zzcnz:Lcom/google/android/gms/internal/zzkz;

.field final synthetic zzcoa:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILcom/google/android/gms/internal/zzkz;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcnx:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcny:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcnz:Lcom/google/android/gms/internal/zzkz;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcoa:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcnx:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcny:I

    if-lt v0, v1, :cond_15

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcnz:Lcom/google/android/gms/internal/zzkz;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlb$2;->zzcoa:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzlb;->zzp(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkz;->zzi(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_a .. :try_end_15} :catch_1d
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    :goto_17
    const-string v1, "Unable to convert list of futures to a future of list"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15

    :catch_1d
    move-exception v0

    goto :goto_17
.end method

###### Class com.google.android.gms.internal.zzlb.zza (com.google.android.gms.internal.zzlb$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzlb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zzh(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TR;"
        }
    .end annotation
.end method
