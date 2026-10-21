###### Class com.google.android.gms.internal.zzmd (com.google.android.gms.internal.zzmd)
.class public final Lcom/google/android/gms/internal/zzmd;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/internal/zzmd;",
        ">;"
    }
.end annotation


# instance fields
.field public zzbrj:I

.field public zzbrk:I

.field private zzcvb:Ljava/lang/String;

.field public zzcvc:I

.field public zzcvd:I

.field public zzcve:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvb:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmd;->zzcvb:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzmd;->zzcvb:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzmd;->zzcvc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzmd;->zzbrj:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzmd;->zzbrk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzmd;->zzcvd:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzmd;->zzcve:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzmd;->zzk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzmd;)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvc:I

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvc:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzmd;->zzbp(I)V

    :cond_9
    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzbrj:I

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzbrj:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzmd;->zzbq(I)V

    :cond_12
    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzbrk:I

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzbrk:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzmd;->zzbr(I)V

    :cond_1b
    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvd:I

    if-eqz v0, :cond_24

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvd:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzmd;->zzbs(I)V

    :cond_24
    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcve:I

    if-eqz v0, :cond_2d

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcve:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzmd;->zzbt(I)V

    :cond_2d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvb:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzmd;->setLanguage(Ljava/lang/String;)V

    :cond_3a
    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzg;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/internal/zzmd;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmd;->zza(Lcom/google/android/gms/internal/zzmd;)V

    return-void
.end method

.method public zzbp(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmd;->zzcvc:I

    return-void
.end method

.method public zzbq(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmd;->zzbrj:I

    return-void
.end method

.method public zzbr(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmd;->zzbrk:I

    return-void
.end method

.method public zzbs(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmd;->zzcvd:I

    return-void
.end method

.method public zzbt(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/internal/zzmd;->zzcve:I

    return-void
.end method

.method public zzxn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvc:I

    return v0
.end method

.method public zzxo()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzbrj:I

    return v0
.end method

.method public zzxp()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzbrk:I

    return v0
.end method

.method public zzxq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcvd:I

    return v0
.end method

.method public zzxr()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/internal/zzmd;->zzcve:I

    return v0
.end method
