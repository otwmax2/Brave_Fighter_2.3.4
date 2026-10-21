###### Class com.google.android.gms.internal.zzhh (com.google.android.gms.internal.zzhh)
.class public Lcom/google/android/gms/internal/zzhh;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzhh$zza;
    }
.end annotation


# instance fields
.field private final zzbrb:Z

.field private final zzbrc:Z

.field private final zzbrd:Z

.field private final zzbre:Z

.field private final zzbrf:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzhh$zza;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhh$zza;->zza(Lcom/google/android/gms/internal/zzhh$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->zzbrb:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhh$zza;->zzb(Lcom/google/android/gms/internal/zzhh$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->zzbrc:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhh$zza;->zzc(Lcom/google/android/gms/internal/zzhh$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->zzbrd:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhh$zza;->zzd(Lcom/google/android/gms/internal/zzhh$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->zzbre:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzhh$zza;->zze(Lcom/google/android/gms/internal/zzhh$zza;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhh;->zzbrf:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzhh$zza;Lcom/google/android/gms/internal/zzhh$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhh;-><init>(Lcom/google/android/gms/internal/zzhh$zza;)V

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhh;->zzbrb:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhh;->zzbrc:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhh;->zzbrd:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhh;->zzbre:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzhh;->zzbrf:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2c} :catch_2e

    move-result-object v0

    :goto_2d
    return-object v0

    :catch_2e
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_2d
.end method

###### Class com.google.android.gms.internal.zzhh.AnonymousClass1 (com.google.android.gms.internal.zzhh$1)
.class synthetic Lcom/google/android/gms/internal/zzhh$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzhh.zza (com.google.android.gms.internal.zzhh$zza)
.class public final Lcom/google/android/gms/internal/zzhh$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# instance fields
.field private zzbrb:Z

.field private zzbrc:Z

.field private zzbrd:Z

.field private zzbre:Z

.field private zzbrf:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhh$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrb:Z

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhh$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrc:Z

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzhh$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrd:Z

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzhh$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbre:Z

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzhh$zza;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrf:Z

    return v0
.end method


# virtual methods
.method public zzna()Lcom/google/android/gms/internal/zzhh;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzhh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzhh;-><init>(Lcom/google/android/gms/internal/zzhh$zza;Lcom/google/android/gms/internal/zzhh$1;)V

    return-object v0
.end method

.method public zzt(Z)Lcom/google/android/gms/internal/zzhh$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrb:Z

    return-object p0
.end method

.method public zzu(Z)Lcom/google/android/gms/internal/zzhh$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrc:Z

    return-object p0
.end method

.method public zzv(Z)Lcom/google/android/gms/internal/zzhh$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrd:Z

    return-object p0
.end method

.method public zzw(Z)Lcom/google/android/gms/internal/zzhh$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbre:Z

    return-object p0
.end method

.method public zzx(Z)Lcom/google/android/gms/internal/zzhh$zza;
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzhh$zza;->zzbrf:Z

    return-object p0
.end method
