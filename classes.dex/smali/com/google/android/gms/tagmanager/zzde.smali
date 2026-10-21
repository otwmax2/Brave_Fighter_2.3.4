###### Class com.google.android.gms.tagmanager.zzde (com.google.android.gms.tagmanager.zzde)
.class Lcom/google/android/gms/tagmanager/zzde;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzac;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzde$zzb;,
        Lcom/google/android/gms/tagmanager/zzde$zza;
    }
.end annotation


# instance fields
.field private final ayB:Lcom/google/android/gms/tagmanager/zzde$zzb;

.field private final ayC:Lcom/google/android/gms/tagmanager/zzde$zza;

.field private final mContext:Landroid/content/Context;

.field private final zzbjj:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzde$zza;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/tagmanager/zzde$1;

    invoke-direct {v0}, Lcom/google/android/gms/tagmanager/zzde$1;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzde;-><init>(Lcom/google/android/gms/tagmanager/zzde$zzb;Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzde$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzde$zzb;Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzde$zza;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzde;->ayB:Lcom/google/android/gms/tagmanager/zzde$zzb;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzde;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/zzde;->ayC:Lcom/google/android/gms/tagmanager/zzde$zza;

    const-string v1, "GoogleTagManager"

    const-string v2, "4.00"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzde;->zzc(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/tagmanager/zzde;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzde;->zzbjj:Ljava/lang/String;

    return-void
.end method

.method static zzc(Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :cond_3
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_45

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method


# virtual methods
.method zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s Build/%s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    const/4 v2, 0x3

    aput-object p4, v1, v2

    const/4 v2, 0x4

    aput-object p5, v1, v2

    const/4 v2, 0x5

    aput-object p6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzai(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/tagmanager/zzar;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x28

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v1, 0x1

    move v5, v4

    :goto_d
    if-ge v5, v6, :cond_bb

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/tagmanager/zzar;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tagmanager/zzde;->zzd(Lcom/google/android/gms/tagmanager/zzar;)Ljava/net/URL;

    move-result-object v2

    if-nez v2, :cond_2b

    const-string v2, "No destination: discarding hit."

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzde;->ayC:Lcom/google/android/gms/tagmanager/zzde$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzde$zza;->zzb(Lcom/google/android/gms/tagmanager/zzar;)V

    move v0, v1

    :goto_26
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    move v1, v0

    goto :goto_d

    :cond_2b
    const/4 v3, 0x0

    :try_start_2c
    iget-object v7, p0, Lcom/google/android/gms/tagmanager/zzde;->ayB:Lcom/google/android/gms/tagmanager/zzde$zzb;

    invoke-interface {v7, v2}, Lcom/google/android/gms/tagmanager/zzde$zzb;->zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_31} :catch_bc

    move-result-object v7

    if-eqz v1, :cond_3a

    :try_start_34
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzde;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbs;->zzeb(Landroid/content/Context;)V

    move v1, v4

    :cond_3a
    const-string v2, "User-Agent"

    iget-object v8, p0, Lcom/google/android/gms/tagmanager/zzde;->zzbjj:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_48
    .catchall {:try_start_34 .. :try_end_48} :catchall_c0

    move-result-object v3

    const/16 v8, 0xc8

    if-eq v2, v8, :cond_74

    :try_start_4d
    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x19

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Bad response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzde;->ayC:Lcom/google/android/gms/tagmanager/zzde$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzde$zza;->zzc(Lcom/google/android/gms/tagmanager/zzar;)V
    :try_end_6a
    .catchall {:try_start_4d .. :try_end_6a} :catchall_7a

    :goto_6a
    if-eqz v3, :cond_6f

    :try_start_6c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    :cond_6f
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_72} :catch_bc

    move v0, v1

    goto :goto_26

    :cond_74
    :try_start_74
    iget-object v2, p0, Lcom/google/android/gms/tagmanager/zzde;->ayC:Lcom/google/android/gms/tagmanager/zzde$zza;

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/zzde$zza;->zza(Lcom/google/android/gms/tagmanager/zzar;)V
    :try_end_79
    .catchall {:try_start_74 .. :try_end_79} :catchall_7a

    goto :goto_6a

    :catchall_7a
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v10

    :goto_7f
    if-eqz v2, :cond_84

    :try_start_81
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_84
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_88} :catch_88

    :catch_88
    move-exception v1

    move v2, v3

    move-object v3, v1

    :goto_8b
    const-string v7, "Exception sending hit: "

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_b5

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_a3
    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzde;->ayC:Lcom/google/android/gms/tagmanager/zzde$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/tagmanager/zzde$zza;->zzc(Lcom/google/android/gms/tagmanager/zzar;)V

    move v0, v2

    goto/16 :goto_26

    :cond_b5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_a3

    :cond_bb
    return-void

    :catch_bc
    move-exception v2

    move-object v3, v2

    move v2, v1

    goto :goto_8b

    :catchall_c0
    move-exception v2

    move-object v10, v2

    move-object v2, v3

    move v3, v1

    move-object v1, v10

    goto :goto_7f
.end method

.method public zzcbc()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzde;->mContext:Landroid/content/Context;

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

.method zzd(Lcom/google/android/gms/tagmanager/zzar;)Ljava/net/URL;
    .registers 4

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/zzar;->zzcbp()Ljava/lang/String;

    move-result-object v1

    :try_start_4
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_9} :catch_a

    :goto_9
    return-object v0

    :catch_a
    move-exception v0

    const-string v0, "Error trying to parse the GTM url."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_9
.end method

###### Class com.google.android.gms.tagmanager.zzde.AnonymousClass1 (com.google.android.gms.tagmanager.zzde$1)
.class Lcom/google/android/gms/tagmanager/zzde$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzde$zzb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzde;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzde$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    return-object v0
.end method

###### Class com.google.android.gms.tagmanager.zzde.zza (com.google.android.gms.tagmanager.zzde$zza)
.class public interface abstract Lcom/google/android/gms/tagmanager/zzde$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract zza(Lcom/google/android/gms/tagmanager/zzar;)V
.end method

.method public abstract zzb(Lcom/google/android/gms/tagmanager/zzar;)V
.end method

.method public abstract zzc(Lcom/google/android/gms/tagmanager/zzar;)V
.end method

###### Class com.google.android.gms.tagmanager.zzde.zzb (com.google.android.gms.tagmanager.zzde$zzb)
.class interface abstract Lcom/google/android/gms/tagmanager/zzde$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzde;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "zzb"
.end annotation


# virtual methods
.method public abstract zzd(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
