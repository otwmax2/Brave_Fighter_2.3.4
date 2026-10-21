###### Class com.google.android.gms.internal.zzapc (com.google.android.gms.internal.zzapc)
.class public abstract Lcom/google/android/gms/internal/zzapc;
.super Ljava/lang/Object;


# instance fields
.field protected volatile bik:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzapc;->bik:I

    return-void
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzapc;[B)Lcom/google/android/gms/internal/zzapc;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzapc;",
            ">(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapb;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/google/android/gms/internal/zzapc;->zzb(Lcom/google/android/gms/internal/zzapc;[BII)Lcom/google/android/gms/internal/zzapc;

    move-result-object v0

    return-object v0
.end method

.method public static final zza(Lcom/google/android/gms/internal/zzapc;[BII)V
    .registers 7

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzaov;->zzc([BII)Lcom/google/android/gms/internal/zzaov;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaov;->ab()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzapc;[BII)Lcom/google/android/gms/internal/zzapc;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/android/gms/internal/zzapc;",
            ">(TT;[BII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzapb;
        }
    .end annotation

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/zzaou;->zzb([BII)Lcom/google/android/gms/internal/zzaou;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzapc;->zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaou;->zzaef(I)V
    :try_end_b
    .catch Lcom/google/android/gms/internal/zzapb; {:try_start_0 .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_e

    return-object p0

    :catch_c
    move-exception v0

    throw v0

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final zzf(Lcom/google/android/gms/internal/zzapc;)[B
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->ao()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzapc;[BII)V

    return-object v0
.end method


# virtual methods
.method public ad()Lcom/google/android/gms/internal/zzapc;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzapc;

    return-object v0
.end method

.method public an()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzapc;->bik:I

    if-gez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->ao()I

    :cond_7
    iget v0, p0, Lcom/google/android/gms/internal/zzapc;->bik:I

    return v0
.end method

.method public ao()I
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzapc;->bik:I

    return v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzapc;->ad()Lcom/google/android/gms/internal/zzapc;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/internal/zzapd;->zzg(Lcom/google/android/gms/internal/zzapc;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public abstract zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected zzy()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
