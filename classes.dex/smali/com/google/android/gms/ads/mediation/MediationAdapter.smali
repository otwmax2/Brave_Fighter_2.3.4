###### Class com.google.android.gms.ads.mediation.MediationAdapter (com.google.android.gms.ads.mediation.MediationAdapter)
.class public interface abstract Lcom/google/android/gms/ads/mediation/MediationAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
    }
.end annotation


# virtual methods
.method public abstract onDestroy()V
.end method

.method public abstract onPause()V
.end method

.method public abstract onResume()V
.end method

###### Class com.google.android.gms.ads.mediation.MediationAdapter.zza (com.google.android.gms.ads.mediation.MediationAdapter$zza)
.class public Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/mediation/MediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzcqr:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzbb(I)Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzcqr:I

    return-object p0
.end method

.method public zzvp()Landroid/os/Bundle;
    .registers 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "capabilities"

    iget v2, p0, Lcom/google/android/gms/ads/mediation/MediationAdapter$zza;->zzcqr:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
