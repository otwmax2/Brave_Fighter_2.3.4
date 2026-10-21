###### Class com.google.android.gms.internal.zzkg (com.google.android.gms.internal.zzkg)
.class public abstract Lcom/google/android/gms/internal/zzkg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzkn;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzkn",
        "<",
        "Ljava/util/concurrent/Future;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile zzcko:Ljava/lang/Thread;

.field private zzckp:Z

.field private final zzw:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzkg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkg$1;-><init>(Lcom/google/android/gms/internal/zzkg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzw:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzckp:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzkg$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzkg$1;-><init>(Lcom/google/android/gms/internal/zzkg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzw:Ljava/lang/Runnable;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzkg;->zzckp:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzkg;Ljava/lang/Thread;)Ljava/lang/Thread;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzcko:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcko:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcko:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_c
    return-void
.end method

.method public abstract onStop()V
.end method

.method public abstract zzew()V
.end method

.method public synthetic zzpz()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkg;->zzta()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public final zzta()Ljava/util/concurrent/Future;
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzckp:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkg;->zzw:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkk;->zza(ILjava/lang/Runnable;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzw:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkk;->zza(Ljava/lang/Runnable;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    goto :goto_b
.end method

###### Class com.google.android.gms.internal.zzkg.AnonymousClass1 (com.google.android.gms.internal.zzkg$1)
.class Lcom/google/android/gms/internal/zzkg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzckq:Lcom/google/android/gms/internal/zzkg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg$1;->zzckq:Lcom/google/android/gms/internal/zzkg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg$1;->zzckq:Lcom/google/android/gms/internal/zzkg;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzkg;->zza(Lcom/google/android/gms/internal/zzkg;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg$1;->zzckq:Lcom/google/android/gms/internal/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkg;->zzew()V

    return-void
.end method
