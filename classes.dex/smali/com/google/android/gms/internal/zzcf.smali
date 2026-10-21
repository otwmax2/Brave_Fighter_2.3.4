###### Class com.google.android.gms.internal.zzcf (com.google.android.gms.internal.zzcf)
.class public final Lcom/google/android/gms/internal/zzcf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzare:Ljava/lang/String;

.field private final zzarf:Lorg/json/JSONObject;

.field private final zzarg:Ljava/lang/String;

.field private final zzarh:Ljava/lang/String;

.field private final zzari:Z

.field private final zzarj:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzarh:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzcf;->zzarf:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcf;->zzarg:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzcf;->zzare:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzcf;->zzari:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzcf;->zzarj:Z

    return-void
.end method


# virtual methods
.method public zzhk()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzare:Ljava/lang/String;

    return-object v0
.end method

.method public zzhl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzarh:Ljava/lang/String;

    return-object v0
.end method

.method public zzhm()Lorg/json/JSONObject;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzarf:Lorg/json/JSONObject;

    return-object v0
.end method

.method public zzhn()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcf;->zzarg:Ljava/lang/String;

    return-object v0
.end method

.method public zzho()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcf;->zzari:Z

    return v0
.end method

.method public zzhp()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcf;->zzarj:Z

    return v0
.end method
