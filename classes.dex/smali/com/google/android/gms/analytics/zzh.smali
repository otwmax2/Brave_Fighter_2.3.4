###### Class com.google.android.gms.analytics.zzh (com.google.android.gms.analytics.zzh)
.class public abstract Lcom/google/android/gms/analytics/zzh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/zzh;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzcti:Lcom/google/android/gms/analytics/zzi;

.field protected final zzctj:Lcom/google/android/gms/analytics/zze;

.field private final zzctk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/zzf;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/zzi;Lcom/google/android/gms/common/util/zze;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzh;->zzcti:Lcom/google/android/gms/analytics/zzi;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzctk:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/zze;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/analytics/zze;-><init>(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/common/util/zze;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzwp()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzctj:Lcom/google/android/gms/analytics/zze;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/analytics/zze;)V
    .registers 2

    return-void
.end method

.method protected zzd(Lcom/google/android/gms/analytics/zze;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzctk:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzf;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/analytics/zzf;->zza(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/analytics/zze;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public zzvr()Lcom/google/android/gms/analytics/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzctj:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzwf()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzh;->zzd(Lcom/google/android/gms/analytics/zze;)V

    return-object v0
.end method

.method protected zzwn()Lcom/google/android/gms/analytics/zzi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzcti:Lcom/google/android/gms/analytics/zzi;

    return-object v0
.end method

.method public zzwq()Lcom/google/android/gms/analytics/zze;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzctj:Lcom/google/android/gms/analytics/zze;

    return-object v0
.end method

.method public zzwr()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/zzk;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzh;->zzctj:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzwh()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
