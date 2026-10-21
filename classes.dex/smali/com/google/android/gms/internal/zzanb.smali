###### Class com.google.android.gms.internal.zzanb (com.google.android.gms.internal.zzanb)
.class public final Lcom/google/android/gms/internal/zzanb;
.super Lcom/google/android/gms/internal/zzamy;


# instance fields
.field private final bet:Lcom/google/android/gms/internal/zzanw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzanw",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzamy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzamy;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzanw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanw;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    return-void
.end method


# virtual methods
.method public entrySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzamy;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanw;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-eq p1, p0, :cond_12

    instance-of v0, p1, Lcom/google/android/gms/internal/zzanb;

    if-eqz v0, :cond_14

    check-cast p1, Lcom/google/android/gms/internal/zzanb;

    iget-object v0, p1, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzanw;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public has(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanw;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzanw;->hashCode()I

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzamy;)V
    .registers 4

    if-nez p2, :cond_4

    sget-object p2, Lcom/google/android/gms/internal/zzana;->bes:Lcom/google/android/gms/internal/zzana;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzanw;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public zzsx(Ljava/lang/String;)Lcom/google/android/gms/internal/zzamy;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanb;->bet:Lcom/google/android/gms/internal/zzanw;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzanw;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamy;

    return-object v0
.end method
