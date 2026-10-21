###### Class com.google.android.gms.internal.zzqk (com.google.android.gms.internal.zzqk)
.class public final Lcom/google/android/gms/internal/zzqk;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static uR:Lcom/google/android/gms/internal/zzqk;

.field private static zzamp:Ljava/lang/Object;


# instance fields
.field private final uS:Ljava/lang/String;

.field private final uT:Lcom/google/android/gms/common/api/Status;

.field private final uU:Ljava/lang/String;

.field private final uV:Ljava/lang/String;

.field private final uW:Ljava/lang/String;

.field private final uX:Z

.field private final uY:Z

.field private final zzcjj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzqk;->zzamp:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/android/gms/R$string;->common_google_play_services_unknown_issue:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "google_app_measurement_enable"

    const-string v5, "integer"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_71

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_6d

    move v2, v0

    :goto_20
    if-nez v2, :cond_6f

    :goto_22
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqk;->uY:Z

    move v0, v2

    :goto_25
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqk;->uX:Z

    new-instance v1, Lcom/google/android/gms/common/internal/zzai;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/internal/zzai;-><init>(Landroid/content/Context;)V

    const-string v0, "firebase_database_url"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzai;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uU:Ljava/lang/String;

    const-string v0, "google_storage_bucket"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzai;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uW:Ljava/lang/String;

    const-string v0, "gcm_defaultSenderId"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzai;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uV:Ljava/lang/String;

    const-string v0, "google_api_key"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzai;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uS:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzz;->zzcf(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_58

    const-string v0, "google_app_id"

    invoke-virtual {v1, v0}, Lcom/google/android/gms/common/internal/zzai;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_58
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    const-string v2, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uT:Lcom/google/android/gms/common/api/Status;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    :goto_6c
    return-void

    :cond_6d
    move v2, v1

    goto :goto_20

    :cond_6f
    move v0, v1

    goto :goto_22

    :cond_71
    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzqk;->uY:Z

    goto :goto_25

    :cond_74
    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uT:Lcom/google/android/gms/common/api/Status;

    goto :goto_6c
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 9

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uS:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzqk;->uT:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzqk;->uX:Z

    if-nez p2, :cond_1a

    const/4 v0, 0x1

    :goto_11
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzqk;->uY:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzqk;->uU:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzqk;->uV:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzqk;->uW:Ljava/lang/String;

    return-void

    :cond_1a
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static zzaqk()Ljava/lang/String;
    .registers 1

    const-string v0, "getGoogleAppId"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqk;->zzgy(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqk;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    return-object v0
.end method

.method public static zzaql()Z
    .registers 1

    const-string v0, "isMeasurementExplicitlyDisabled"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzqk;->zzgy(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqk;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzqk;->uY:Z

    return v0
.end method

.method public static zzc(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .registers 5

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "App ID must be nonempty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    sget-object v1, Lcom/google/android/gms/internal/zzqk;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_d
    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    if-eqz v0, :cond_19

    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzqk;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    monitor-exit v1

    :goto_18
    return-object v0

    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzqk;-><init>(Ljava/lang/String;Z)V

    sput-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqk;->uT:Lcom/google/android/gms/common/api/Status;

    monitor-exit v1

    goto :goto_18

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_d .. :try_end_28} :catchall_26

    throw v0
.end method

.method public static zzcb(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .registers 3

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/internal/zzqk;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_8
    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    if-nez v0, :cond_13

    new-instance v0, Lcom/google/android/gms/internal/zzqk;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzqk;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    :cond_13
    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqk;->uT:Lcom/google/android/gms/common/api/Status;

    monitor-exit v1

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private static zzgy(Ljava/lang/String;)Lcom/google/android/gms/internal/zzqk;
    .registers 5

    sget-object v1, Lcom/google/android/gms/internal/zzqk;->zzamp:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    if-nez v0, :cond_33

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Initialize must be called before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_30
    move-exception v0

    monitor-exit v1
    :try_end_32
    .catchall {:try_start_3 .. :try_end_32} :catchall_30

    throw v0

    :cond_33
    :try_start_33
    sget-object v0, Lcom/google/android/gms/internal/zzqk;->uR:Lcom/google/android/gms/internal/zzqk;

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_30

    return-object v0
.end method


# virtual methods
.method zzgx(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzqk;->zzcjj:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x61

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_38
    return-object v0

    :cond_39
    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    goto :goto_38
.end method
