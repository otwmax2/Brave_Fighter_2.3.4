###### Class com.google.android.gms.internal.zzfc (com.google.android.gms.internal.zzfc)
.class public Lcom/google/android/gms/internal/zzfc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzfc$zza;
    }
.end annotation


# instance fields
.field private final zzbjc:Lcom/google/android/gms/internal/zzfc$zza;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzfc$zza;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfc;->zzbjc:Lcom/google/android/gms/internal/zzfc$zza;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/internal/zzfc$zza;)V
    .registers 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    const-string v1, "/reward"

    new-instance v2, Lcom/google/android/gms/internal/zzfc;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/zzfc;-><init>(Lcom/google/android/gms/internal/zzfc$zza;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method

.method private zze(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_1
    const-string v0, "amount"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    invoke-direct {v1, v0, v3}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;-><init>(Ljava/lang/String;I)V
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_20} :catch_27

    move-object v0, v1

    :goto_21
    iget-object v1, p0, Lcom/google/android/gms/internal/zzfc;->zzbjc:Lcom/google/android/gms/internal/zzfc$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzfc$zza;->zzb(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    return-void

    :catch_27
    move-exception v0

    const-string v1, "Unable to parse reward amount."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2d
    move-object v0, v2

    goto :goto_21
.end method

.method private zzf(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfc;->zzbjc:Lcom/google/android/gms/internal/zzfc$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzfc$zza;->zzev()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "grant"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzfc;->zze(Ljava/util/Map;)V

    :cond_13
    :goto_13
    return-void

    :cond_14
    const-string v1, "video_start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzfc;->zzf(Ljava/util/Map;)V

    goto :goto_13
.end method

###### Class com.google.android.gms.internal.zzfc.zza (com.google.android.gms.internal.zzfc$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzfc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzfc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract zzb(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
.end method

.method public abstract zzev()V
.end method
