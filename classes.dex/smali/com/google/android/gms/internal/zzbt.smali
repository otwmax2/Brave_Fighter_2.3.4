###### Class com.google.android.gms.internal.zzbt (com.google.android.gms.internal.zzbt)
.class public abstract Lcom/google/android/gms/internal/zzbt;
.super Lcom/google/android/gms/common/api/PendingResult;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T1::",
        "Lcom/google/android/gms/common/api/Result;",
        "T2::",
        "Lcom/google/android/gms/common/api/Result;",
        ">",
        "Lcom/google/android/gms/common/api/PendingResult",
        "<TT1;>;"
    }
.end annotation


# instance fields
.field private zzahr:Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TT2;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/common/api/PendingResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<TT2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/api/PendingResult;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    return-void
.end method


# virtual methods
.method public await()Lcom/google/android/gms/common/api/Result;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->await()Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbt;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;
    .registers 5
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT1;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/PendingResult;->await(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbt;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->cancel()V

    return-void
.end method

.method public isCanceled()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/PendingResult;->isCanceled()Z

    move-result v0

    return v0
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TT1;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lcom/google/android/gms/internal/zzbt$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbt$1;-><init>(Lcom/google/android/gms/internal/zzbt;Lcom/google/android/gms/common/api/ResultCallback;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V

    return-void
.end method

.method public setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
    .registers 7
    .param p1    # Lcom/google/android/gms/common/api/ResultCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/ResultCallback",
            "<-TT1;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt;->zzahr:Lcom/google/android/gms/common/api/PendingResult;

    new-instance v1, Lcom/google/android/gms/internal/zzbt$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzbt$2;-><init>(Lcom/google/android/gms/internal/zzbt;Lcom/google/android/gms/common/api/ResultCallback;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method protected abstract zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)TT1;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.internal.zzbt.AnonymousClass1 (com.google.android.gms.internal.zzbt$1)
.class Lcom/google/android/gms/internal/zzbt$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbt;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic zzahs:Lcom/google/android/gms/common/api/ResultCallback;

.field final synthetic zzaht:Lcom/google/android/gms/internal/zzbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbt;Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbt$1;->zzaht:Lcom/google/android/gms/internal/zzbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbt$1;->zzahs:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt$1;->zzahs:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbt$1;->zzaht:Lcom/google/android/gms/internal/zzbt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbt;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzbt.AnonymousClass2 (com.google.android.gms.internal.zzbt$2)
.class Lcom/google/android/gms/internal/zzbt$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbt;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/ResultCallback",
        "<TT2;>;"
    }
.end annotation


# instance fields
.field final synthetic zzahs:Lcom/google/android/gms/common/api/ResultCallback;

.field final synthetic zzaht:Lcom/google/android/gms/internal/zzbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbt;Lcom/google/android/gms/common/api/ResultCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbt$2;->zzaht:Lcom/google/android/gms/internal/zzbt;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbt$2;->zzahs:Lcom/google/android/gms/common/api/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/android/gms/common/api/Result;)V
    .registers 4
    .param p1    # Lcom/google/android/gms/common/api/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT2;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbt$2;->zzahs:Lcom/google/android/gms/common/api/ResultCallback;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbt$2;->zzaht:Lcom/google/android/gms/internal/zzbt;

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/zzbt;->zza(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/ResultCallback;->onResult(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method
