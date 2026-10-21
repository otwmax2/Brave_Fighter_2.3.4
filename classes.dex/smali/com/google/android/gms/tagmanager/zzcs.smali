###### Class com.google.android.gms.tagmanager.zzcs (com.google.android.gms.tagmanager.zzcs)
.class Lcom/google/android/gms/tagmanager/zzcs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final auZ:Ljava/lang/String;

.field private volatile avw:Ljava/lang/String;

.field private volatile axA:Lcom/google/android/gms/tagmanager/zzs;

.field private volatile axB:Ljava/lang/String;

.field private final axx:Lcom/google/android/gms/internal/zzaed;

.field private final axy:Ljava/lang/String;

.field private axz:Lcom/google/android/gms/tagmanager/zzbm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzbm",
            "<",
            "Lcom/google/android/gms/internal/zzah$zzj;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzaed;Lcom/google/android/gms/tagmanager/zzs;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzcs;->axx:Lcom/google/android/gms/internal/zzaed;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcs;->auZ:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/tagmanager/zzcs;->axA:Lcom/google/android/gms/tagmanager/zzs;

    const-string v0, "/r?id="

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_29

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1f
    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axy:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->avw:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axB:Ljava/lang/String;

    return-void

    :cond_29
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/tagmanager/zzs;)V
    .registers 5

    new-instance v0, Lcom/google/android/gms/internal/zzaed;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaed;-><init>()V

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/android/gms/tagmanager/zzcs;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzaed;Lcom/google/android/gms/tagmanager/zzs;)V

    return-void
.end method

.method private zzcch()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1d

    :cond_16
    const-string v0, "...no network connectivity"

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x1

    goto :goto_1c
.end method

.method private zzcci()V
    .registers 8

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcs;->zzcch()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->awN:Lcom/google/android/gms/tagmanager/zzbm$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbm;->zza(Lcom/google/android/gms/tagmanager/zzbm$zza;)V

    :goto_d
    return-void

    :cond_e
    const-string v0, "Start loading resource from network ..."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzcs;->zzccj()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axx:Lcom/google/android/gms/internal/zzaed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaed;->zzchh()Lcom/google/android/gms/internal/zzaec;

    move-result-object v2

    :try_start_1d
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/zzaec;->zzpt(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_20} :catch_81
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_c9
    .catchall {:try_start_1d .. :try_end_20} :catchall_160

    move-result-object v0

    :try_start_21
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/zzadz;->zzc(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzah$zzj;->zzf([B)Lcom/google/android/gms/internal/zzah$zzj;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x2b

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Successfully loaded supplemented resource: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    iget-object v0, v3, Lcom/google/android/gms/internal/zzah$zzj;->zzwq:Lcom/google/android/gms/internal/zzah$zzf;

    if-nez v0, :cond_73

    iget-object v0, v3, Lcom/google/android/gms/internal/zzah$zzj;->zzwp:[Lcom/google/android/gms/internal/zzah$zzi;

    array-length v0, v0

    if-nez v0, :cond_73

    const-string v4, "No change for container: "

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->auZ:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_111

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_70
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    :cond_73
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    invoke-interface {v0, v3}, Lcom/google/android/gms/tagmanager/zzbm;->onSuccess(Ljava/lang/Object;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_78} :catch_118
    .catchall {:try_start_21 .. :try_end_78} :catchall_160

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaec;->close()V

    const-string v0, "Load resource from network finished."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->v(Ljava/lang/String;)V

    goto :goto_d

    :catch_81
    move-exception v0

    :try_start_82
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->auZ:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4f

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "No data is retrieved from the given url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ". Make sure container_id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is correct."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->awP:Lcom/google/android/gms/tagmanager/zzbm$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbm;->zza(Lcom/google/android/gms/tagmanager/zzbm$zza;)V
    :try_end_c4
    .catchall {:try_start_82 .. :try_end_c4} :catchall_160

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaec;->close()V

    goto/16 :goto_d

    :catch_c9
    move-exception v0

    :try_start_ca
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error when loading resources from url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->awO:Lcom/google/android/gms/tagmanager/zzbm$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbm;->zza(Lcom/google/android/gms/tagmanager/zzbm$zza;)V
    :try_end_10c
    .catchall {:try_start_ca .. :try_end_10c} :catchall_160

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaec;->close()V

    goto/16 :goto_d

    :cond_111
    :try_start_111
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/io/IOException; {:try_start_111 .. :try_end_116} :catch_118
    .catchall {:try_start_111 .. :try_end_116} :catchall_160

    goto/16 :goto_70

    :catch_118
    move-exception v0

    :try_start_119
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Error when parsing downloaded resources from url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    sget-object v1, Lcom/google/android/gms/tagmanager/zzbm$zza;->awP:Lcom/google/android/gms/tagmanager/zzbm$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/tagmanager/zzbm;->zza(Lcom/google/android/gms/tagmanager/zzbm$zza;)V
    :try_end_15b
    .catchall {:try_start_119 .. :try_end_15b} :catchall_160

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaec;->close()V

    goto/16 :goto_d

    :catchall_160
    move-exception v0

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzaec;->close()V

    throw v0
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "callback must be set before execute"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzbm;->zzcaq()V

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzcs;->zzcci()V

    return-void
.end method

.method zza(Lcom/google/android/gms/tagmanager/zzbm;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tagmanager/zzbm",
            "<",
            "Lcom/google/android/gms/internal/zzah$zzj;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->axz:Lcom/google/android/gms/tagmanager/zzbm;

    return-void
.end method

.method zzccj()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axA:Lcom/google/android/gms/tagmanager/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzs;->zzcas()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->avw:Ljava/lang/String;

    const-string v2, "&v=a65833898"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->axB:Ljava/lang/String;

    if-eqz v1, :cond_92

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcs;->axB:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "&pv="

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzcs;->axB:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_92
    invoke-static {}, Lcom/google/android/gms/tagmanager/zzci;->zzcce()Lcom/google/android/gms/tagmanager/zzci;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/zzci;->zzccf()Lcom/google/android/gms/tagmanager/zzci$zza;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/tagmanager/zzci$zza;->axp:Lcom/google/android/gms/tagmanager/zzci$zza;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/tagmanager/zzci$zza;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "&gtm_debug=x"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_b7

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_b6
    :goto_b6
    return-object v0

    :cond_b7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_b6
.end method

.method zznv(Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->axy:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzcs;->avw:Ljava/lang/String;

    :goto_6
    return-void

    :cond_7
    const-string v1, "Setting CTFE URL path: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_17
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcw(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->avw:Ljava/lang/String;

    goto :goto_6

    :cond_1d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_17
.end method

.method zzok(Ljava/lang/String;)V
    .registers 5

    const-string v1, "Setting previous container version: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_16

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_10
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcw(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcs;->axB:Ljava/lang/String;

    return-void

    :cond_16
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_10
.end method
