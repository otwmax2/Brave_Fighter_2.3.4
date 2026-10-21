###### Class com.google.android.gms.common.zzf (com.google.android.gms.common.zzf)
.class public Lcom/google/android/gms/common/zzf;
.super Ljava/lang/Object;


# static fields
.field private static rn:Lcom/google/android/gms/common/zzf;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/zzf;->mContext:Landroid/content/Context;

    return-void
.end method

.method private zzb(Landroid/content/pm/PackageInfo;Z)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v0, v0

    if-eq v0, v2, :cond_10

    const-string v0, "GoogleSignatureVerifier"

    const-string v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    :goto_f
    return v0

    :cond_10
    new-instance v3, Lcom/google/android/gms/common/zzd$zzb;

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/common/zzd$zzb;-><init>([B)V

    if-eqz p2, :cond_3b

    invoke-static {}, Lcom/google/android/gms/common/zzd;->zzanf()Ljava/util/Set;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_27
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_40

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzs;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/zzd$zza;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_f

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/common/zzd;->zzang()Ljava/util/Set;

    move-result-object v0

    goto :goto_23

    :cond_40
    move v0, v1

    goto :goto_f
.end method

.method public static zzbz(Landroid/content/Context;)Lcom/google/android/gms/common/zzf;
    .registers 3

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Lcom/google/android/gms/common/zzf;

    monitor-enter v1

    :try_start_6
    sget-object v0, Lcom/google/android/gms/common/zzf;->rn:Lcom/google/android/gms/common/zzf;

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/google/android/gms/common/zzd;->zzbq(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/common/zzf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/zzf;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/common/zzf;->rn:Lcom/google/android/gms/common/zzf;

    :cond_14
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_18

    sget-object v0, Lcom/google/android/gms/common/zzf;->rn:Lcom/google/android/gms/common/zzf;

    return-object v0

    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method


# virtual methods
.method varargs zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-nez v2, :cond_8

    move-object v0, v1

    :goto_7
    return-object v0

    :cond_8
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_17

    const-string v0, "GoogleSignatureVerifier"

    const-string v2, "Package has more than one signature."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_7

    :cond_17
    new-instance v2, Lcom/google/android/gms/common/zzd$zzb;

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/zzd$zzb;-><init>([B)V

    :goto_24
    array-length v3, p2

    if-ge v0, v3, :cond_35

    aget-object v3, p2, v0

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/zzd$zza;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    aget-object v0, p2, v0

    goto :goto_7

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    :cond_35
    move-object v0, v1

    goto :goto_7
.end method

.method public zza(Landroid/content/pm/PackageInfo;Z)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_20

    if-eqz p2, :cond_13

    sget-object v2, Lcom/google/android/gms/common/zzd$zzd;->re:[Lcom/google/android/gms/common/zzd$zza;

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v2

    :goto_10
    if-eqz v2, :cond_20

    :goto_12
    return v0

    :cond_13
    new-array v2, v0, [Lcom/google/android/gms/common/zzd$zza;

    sget-object v3, Lcom/google/android/gms/common/zzd$zzd;->re:[Lcom/google/android/gms/common/zzd$zza;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    invoke-virtual {p0, p1, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;[Lcom/google/android/gms/common/zzd$zza;)Lcom/google/android/gms/common/zzd$zza;

    move-result-object v2

    goto :goto_10

    :cond_20
    move v0, v1

    goto :goto_12
.end method

.method public zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/common/zzf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/zze;->zzbu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-direct {p0, p2, v2}, Lcom/google/android/gms/common/zzf;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    goto :goto_4

    :cond_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/zzf;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-direct {p0, p2, v2}, Lcom/google/android/gms/common/zzf;->zzb(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public zzb(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/common/zzf;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/common/zze;->zzbu(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    goto :goto_4

    :cond_12
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p2, v2}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GoogleSignatureVerifier"

    const-string v2, "Test-keys aren\'t accepted on this build."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public zzb(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 4

    const/16 v0, 0x40

    :try_start_2
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_5} :catch_b

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/zzf;->zza(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    :goto_a
    return v0

    :catch_b
    move-exception v0

    const/4 v0, 0x0

    goto :goto_a
.end method
