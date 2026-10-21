###### Class com.google.android.gms.ads.internal.zzt (com.google.android.gms.ads.internal.zzt)
.class public Lcom/google/android/gms/ads/internal/zzt;
.super Lcom/google/android/gms/ads/internal/client/zzu$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzt$zzb;,
        Lcom/google/android/gms/ads/internal/zzt$zza;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private zzald:Lcom/google/android/gms/ads/internal/client/zzq;

.field private final zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private final zzanh:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzbw;",
            ">;"
        }
    .end annotation
.end field

.field private final zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

.field private zzanj:Landroid/webkit/WebView;

.field private zzank:Lcom/google/android/gms/internal/zzbw;

.field private zzanl:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzu$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzt;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzt;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzt;->zzfg()Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanh:Ljava/util/concurrent/Future;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-direct {v0, p3}, Lcom/google/android/gms/ads/internal/zzt$zzb;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzt;->zzfd()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzald:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/internal/zzbw;)Lcom/google/android/gms/internal/zzbw;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/internal/zzbw;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzt;->zzx(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/internal/zzbw;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/internal/zzbw;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzt;->zzy(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/internal/zzt;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/internal/zzt;)Ljava/util/concurrent/Future;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanh:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/internal/zzt;)Landroid/webkit/WebView;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    return-object v0
.end method

.method private zzfd()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzt$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzt$1;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzt$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/zzt$2;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private zzfg()Ljava/util/concurrent/Future;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzbw;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzt$3;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkk;->zza(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/zzlc;

    move-result-object v0

    return-object v0
.end method

.method private zzx(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/internal/zzbw;

    if-nez v0, :cond_5

    :goto_4
    return-object p1

    :cond_5
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_9
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/internal/zzbw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbw;->zzd(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_10} :catch_16
    .catch Lcom/google/android/gms/internal/zzbx; {:try_start_9 .. :try_end_10} :catch_1d

    move-result-object v0

    :goto_11
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :catch_16
    move-exception v1

    const-string v2, "Unable to process ad data"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catch_1d
    move-exception v1

    const-string v2, "Unable to parse ad click url"

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

.method private zzy(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v1, 0x1

    const-string v0, "destroy must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanh:Ljava/util/concurrent/Future;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    return-void
.end method

.method public getMediationAdapterClassName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isReady()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "pause must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    return-void
.end method

.method public resume()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "resume must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    return-void
.end method

.method public setManualImpressionsEnabled(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public showInterstitial()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopLoading()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AdSize must be set before initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;)V
    .registers 4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzp;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzald:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzw;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/zzy;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/reward/client/zzd;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzdo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzhw;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    const-string v1, "This Search Ad has already been torn down"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V

    new-instance v0, Lcom/google/android/gms/ads/internal/zzt$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/zzt$zza;-><init>(Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzt$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt$zza;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanl:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    return v0
.end method

.method public zzdn()Lcom/google/android/gms/dynamic/zzd;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "getAdFrame must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzdo()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    return-object v0
.end method

.method public zzdq()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unused method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zzdr()Lcom/google/android/gms/ads/internal/client/zzab;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method zzfe()Ljava/lang/String;
    .registers 6

    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v0, "https://"

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcz:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "query"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzt$zzb;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v0, "pubId"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzfj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzfk()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_3a

    :cond_50
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/internal/zzbw;

    if-eqz v0, :cond_a1

    :try_start_58
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzank:Lcom/google/android/gms/internal/zzbw;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbw;->zzc(Landroid/net/Uri;Landroid/content/Context;)Landroid/net/Uri;
    :try_end_5f
    .catch Lcom/google/android/gms/internal/zzbx; {:try_start_58 .. :try_end_5f} :catch_a3
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_5f} :catch_9b

    move-result-object v0

    :goto_60
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzt;->zzff()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_9b
    move-exception v0

    :goto_9c
    const-string v2, "Unable to process ad data"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a1
    move-object v0, v1

    goto :goto_60

    :catch_a3
    move-exception v0

    goto :goto_9c
.end method

.method zzff()Ljava/lang/String;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzani:Lcom/google/android/gms/ads/internal/zzt$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzfi()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    const-string v0, "www.google.com"

    move-object v1, v0

    :goto_f
    const-string v0, "https://"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcz:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4f
    move-object v1, v0

    goto :goto_f
.end method

.method zzj(I)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt;->zzanj:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4
.end method

.method zzw(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    :goto_11
    return v0

    :cond_12
    :try_start_12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zza(Landroid/content/Context;I)I
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_21

    move-result v0

    goto :goto_11

    :catch_21
    move-exception v1

    goto :goto_11
.end method

###### Class com.google.android.gms.ads.internal.zzt.AnonymousClass1 (com.google.android.gms.ads.internal.zzt$1)
.class Lcom/google/android/gms/ads/internal/zzt$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzt;->zzfd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzanm:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_12

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    :cond_12
    :goto_12
    return-void

    :catch_13
    move-exception v0

    const-string v1, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_12
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .registers 7

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzff()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_f
    return v0

    :cond_10
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcw:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_30

    :try_start_26
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v3, 0x3

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_30} :catch_37

    :cond_30
    :goto_30
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto :goto_f

    :catch_37
    move-exception v0

    const-string v3, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_30

    :cond_3e
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcx:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_5e

    :try_start_54
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdFailedToLoad(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_5e} :catch_65

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto :goto_f

    :catch_65
    move-exception v0

    const-string v3, "Could not call AdListener.onAdFailedToLoad()."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_6c
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcy:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_8b

    :try_start_82
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLoaded()V
    :try_end_8b
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_8b} :catch_99

    :cond_8b
    :goto_8b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/ads/internal/zzt;->zzw(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zzj(I)V

    move v0, v2

    goto/16 :goto_f

    :catch_99
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLoaded()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8b

    :cond_a0
    const-string v0, "gmsg://"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab

    move v0, v2

    goto/16 :goto_f

    :cond_ab
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    if-eqz v0, :cond_bc

    :try_start_b3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/client/zzq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zzq;->onAdLeftApplication()V
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_b3 .. :try_end_bc} :catch_ca

    :cond_bc
    :goto_bc
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0, p2}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$1;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zzb(Lcom/google/android/gms/ads/internal/zzt;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_f

    :catch_ca
    move-exception v0

    const-string v1, "Could not call AdListener.onAdLeftApplication()."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_bc
.end method

###### Class com.google.android.gms.ads.internal.zzt.AnonymousClass2 (com.google.android.gms.ads.internal.zzt$2)
.class Lcom/google/android/gms/ads/internal/zzt$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzt;->zzfd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzanm:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$2;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$2;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzb(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/internal/zzbw;

    move-result-object v0

    if-eqz v0, :cond_11

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$2;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzb(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/internal/zzbw;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbw;->zza(Landroid/view/MotionEvent;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_11} :catch_13

    :cond_11
    :goto_11
    const/4 v0, 0x0

    return v0

    :catch_13
    move-exception v0

    const-string v1, "Unable to process ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11
.end method

###### Class com.google.android.gms.ads.internal.zzt.AnonymousClass3 (com.google.android.gms.ads.internal.zzt$3)
.class Lcom/google/android/gms/ads/internal/zzt$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/zzt;->zzfg()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/google/android/gms/internal/zzbw;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzanm:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$3;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzt$3;->zzfh()Lcom/google/android/gms/internal/zzbw;

    move-result-object v0

    return-object v0
.end method

.method public zzfh()Lcom/google/android/gms/internal/zzbw;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbw;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$3;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzt;->zzc(Lcom/google/android/gms/ads/internal/zzt;)Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzt$3;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/zzt;->zzd(Lcom/google/android/gms/ads/internal/zzt;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzbw;-><init>(Ljava/lang/String;Landroid/content/Context;Z)V

    return-object v0
.end method

###### Class com.google.android.gms.ads.internal.zzt.zza (com.google.android.gms.ads.internal.zzt$zza)
.class Lcom/google/android/gms/ads/internal/zzt$zza;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzanm:Lcom/google/android/gms/ads/internal/zzt;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/zzt;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/ads/internal/zzt$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/zzt$zza;-><init>(Lcom/google/android/gms/ads/internal/zzt;)V

    return-void
.end method


# virtual methods
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzt$zza;->zza([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/internal/zzt$zza;->zza(Ljava/lang/Void;)V

    return-void
.end method

.method protected varargs zza([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 8

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/zzt;->zze(Lcom/google/android/gms/ads/internal/zzt;)Ljava/util/concurrent/Future;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbdb:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v4, v5, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbw;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/zzt;->zza(Lcom/google/android/gms/ads/internal/zzt;Lcom/google/android/gms/internal/zzbw;)Lcom/google/android/gms/internal/zzbw;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_1f} :catch_21
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_1f} :catch_2f
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_1f} :catch_28

    :goto_1f
    const/4 v0, 0x0

    return-object v0

    :catch_21
    move-exception v0

    :goto_22
    const-string v1, "Failed to load ad data"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f

    :catch_28
    move-exception v0

    const-string v0, "Timed out waiting for ad data"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_22
.end method

.method protected zza(Ljava/lang/Void;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzt;->zzfe()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzt;->zzf(Lcom/google/android/gms/ads/internal/zzt;)Landroid/webkit/WebView;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zza;->zzanm:Lcom/google/android/gms/ads/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/zzt;->zzf(Lcom/google/android/gms/ads/internal/zzt;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzt.zzb (com.google.android.gms.ads.internal.zzt$zzb)
.class Lcom/google/android/gms/ads/internal/zzt$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzann:Ljava/lang/String;

.field private final zzano:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzanp:Ljava/lang/String;

.field private zzanq:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzann:Ljava/lang/String;

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzano:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanp:Ljava/lang/String;

    return-object v0
.end method

.method public zzfi()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanq:Ljava/lang/String;

    return-object v0
.end method

.method public zzfj()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzann:Ljava/lang/String;

    return-object v0
.end method

.method public zzfk()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzano:Ljava/util/Map;

    return-object v0
.end method

.method public zzh(Lcom/google/android/gms/ads/internal/client/AdRequestParcel;)V
    .registers 8

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatr:Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/SearchAdRequestParcel;->zzaxj:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanp:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/os/Bundle;

    if-eqz v1, :cond_60

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/AdRequestParcel;->zzatu:Landroid/os/Bundle;

    const-class v1, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    move-object v2, v0

    :goto_18
    if-nez v2, :cond_1b

    :cond_1a
    return-void

    :cond_1b
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbda:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzanq:Ljava/lang/String;

    goto :goto_2b

    :cond_44
    const-string v4, "csa_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzt$zzb;->zzano:Ljava/util/Map;

    const-string v5, "csa_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_60
    move-object v2, v0

    goto :goto_18
.end method
