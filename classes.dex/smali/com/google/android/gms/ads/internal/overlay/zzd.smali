###### Class com.google.android.gms.ads.internal.overlay.zzd (com.google.android.gms.ads.internal.overlay.zzd)
.class public Lcom/google/android/gms/ads/internal/overlay/zzd;
.super Lcom/google/android/gms/internal/zzhm$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzu;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;,
        Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;,
        Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;,
        Lcom/google/android/gms/ads/internal/overlay/zzd$zza;
    }
.end annotation


# static fields
.field static final zzbsr:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field zzbgj:Lcom/google/android/gms/internal/zzll;

.field zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

.field zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

.field zzbsv:Z

.field zzbsw:Landroid/widget/FrameLayout;

.field zzbsx:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field zzbsy:Z

.field zzbsz:Z

.field zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

.field zzbtb:Z

.field zzbtc:I

.field zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

.field private zzbte:Z

.field private zzbtf:Z

.field private zzbtg:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzhm$zza;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtf:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtg:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public close()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3}, Landroid/app/Activity;->requestWindowFeature(I)Z

    if-eqz p1, :cond_10

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_10
    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:Z

    :try_start_12
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-nez v0, :cond_3a

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string v1, "Could not get info for ad overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2a
    .catch Lcom/google/android/gms/ads/internal/overlay/zzd$zza; {:try_start_12 .. :try_end_2a} :catch_2a

    :catch_2a
    move-exception v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    iput v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_39
    :goto_39
    return-void

    :cond_3a
    :try_start_3a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcnp:I

    const v1, 0x7270e0

    if-le v0, v1, :cond_48

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    :cond_48
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shouldCallOnOverlayOpened"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtg:Z

    :cond_5f
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v0, :cond_dd

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamc:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    :goto_6d
    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbby:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamh:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_94

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzd$1;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkg;->zzpz()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :cond_94
    if-nez p1, :cond_ba

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_a7

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtg:Z

    if-eqz v0, :cond_a7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzdz()V

    :cond_a7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtw:I

    if-eq v0, v3, :cond_ba

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbto:Lcom/google/android/gms/ads/internal/client/zza;

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbto:Lcom/google/android/gms/ads/internal/client/zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/client/zza;->onAdClicked()V

    :cond_ba
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbty:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->setId(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtw:I

    packed-switch v0, :pswitch_data_12a

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string v1, "Could not determine ad overlay type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_dd
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    goto :goto_6d

    :pswitch_e1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V

    goto/16 :goto_39

    :pswitch_e7
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;-><init>(Lcom/google/android/gms/internal/zzll;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V

    goto/16 :goto_39

    :pswitch_f8
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V

    goto/16 :goto_39

    :pswitch_fe
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:Z

    if-eqz v0, :cond_10c

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_39

    :cond_10c
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfn()Lcom/google/android/gms/ads/internal/overlay/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtn:Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/overlay/zzp;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/ads/internal/overlay/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdLauncherIntentInfoParcel;Lcom/google/android/gms/ads/internal/overlay/zzp;)Z

    move-result v0

    if-nez v0, :cond_39

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_128
    .catch Lcom/google/android/gms/ads/internal/overlay/zzd$zza; {:try_start_3a .. :try_end_128} :catch_2a

    goto/16 :goto_39

    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_e1
        :pswitch_e7
        :pswitch_f8
        :pswitch_fe
    .end packed-switch
.end method

.method public onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->removeView(Landroid/view/View;)V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoa()V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->pause()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zznw()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->onPause()V

    :cond_15
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    if-nez v0, :cond_2e

    :cond_25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkm;->zzj(Lcom/google/android/gms/internal/zzll;)Z

    :cond_2e
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoa()V

    return-void
.end method

.method public onRestart()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtw:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->onResume()V

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_43

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkm;->zzk(Lcom/google/android/gms/internal/zzll;)Z

    :goto_39
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->resume()V

    return-void

    :cond_3f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:Z

    goto :goto_17

    :cond_43
    const-string v0, "The webview does not exit. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_39
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "com.google.android.gms.ads.internal.overlay.hasResumed"

    iget-boolean v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsy:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStop()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoa()V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public zza(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .registers 6

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdc()V

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Landroid/webkit/WebChromeClient$CustomViewCallback;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    return-void
.end method

.method public zza(ZZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(ZZ)V

    :cond_9
    return-void
.end method

.method protected zzaa(Z)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzd$zza;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbte:Z

    if-nez v1, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-nez v2, :cond_20

    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_20
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    if-eqz v1, :cond_38

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    if-eqz v1, :cond_3f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamd:Z

    if-eqz v1, :cond_3f

    :cond_38
    const/16 v1, 0x400

    const/16 v3, 0x400

    invoke-virtual {v2, v1, v3}, Landroid/view/Window;->setFlags(II)V

    :cond_3f
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlm;->zzho()Z

    move-result v5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    if-eqz v5, :cond_7a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzkm;->zztk()I

    move-result v3

    if-ne v1, v3, :cond_1f3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1f0

    const/4 v1, 0x1

    :goto_76
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    :cond_7a
    :goto_7a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x2e

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Delay onShow to next orientation change: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzkm;->zza(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_b0

    const-string v1, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    :cond_b0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    if-nez v1, :cond_21d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->setBackgroundColor(I)V

    :goto_bf
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdc()V

    if-eqz p1, :cond_252

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfr()Lcom/google/android/gms/internal/zzln;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v3}, Lcom/google/android/gms/internal/zzll;->zzdo()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v10, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v10}, Lcom/google/android/gms/internal/zzll;->zzuh()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v10

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/zzln;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzll;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtr:Lcom/google/android/gms/internal/zzeo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtv:Lcom/google/android/gms/ads/internal/overlay/zzp;

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtx:Lcom/google/android/gms/internal/zzev;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlm;->zzuy()Lcom/google/android/gms/ads/internal/zze;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v6 .. v16}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzg;Lcom/google/android/gms/internal/zzeo;Lcom/google/android/gms/ads/internal/overlay/zzp;ZLcom/google/android/gms/internal/zzev;Lcom/google/android/gms/internal/zzex;Lcom/google/android/gms/ads/internal/zze;Lcom/google/android/gms/internal/zzhk;Lcom/google/android/gms/internal/zzjs;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zza;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    if-eqz v1, :cond_228

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzll;->loadUrl(Ljava/lang/String;)V

    :goto_156
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    if-eqz v1, :cond_169

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzll;->zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    :cond_169
    :goto_169
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzll;->zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_18d

    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_18d

    check-cast v1, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsz:Z

    if-eqz v1, :cond_19c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    sget v2, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:I

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzll;->setBackgroundColor(I)V

    :cond_19c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_1b8

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    if-nez v1, :cond_1b8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoc()V

    :cond_1b8
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzz(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzul()Z

    move-result v1

    if-eqz v1, :cond_1cd

    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :cond_1cd
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->zzuh()Lcom/google/android/gms/ads/internal/zzd;

    move-result-object v1

    if-eqz v1, :cond_269

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/zzd;->zzakl:Lcom/google/android/gms/ads/internal/overlay/zzm;

    :goto_1d9
    if-eqz v1, :cond_26c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzll;Landroid/widget/RelativeLayout;)Lcom/google/android/gms/ads/internal/overlay/zzl;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    :goto_1ef
    return-void

    :cond_1f0
    const/4 v1, 0x0

    goto/16 :goto_76

    :cond_1f3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzkm;->zztl()I

    move-result v3

    if-ne v1, v3, :cond_7a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_21b

    const/4 v1, 0x1

    :goto_215
    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    goto/16 :goto_7a

    :cond_21b
    const/4 v1, 0x0

    goto :goto_215

    :cond_21d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    sget v2, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsr:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->setBackgroundColor(I)V

    goto/16 :goto_bf

    :cond_228
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtu:Ljava/lang/String;

    if-eqz v1, :cond_24a

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbts:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v8, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtu:Ljava/lang/String;

    const-string v9, "text/html"

    const-string v10, "UTF-8"

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/google/android/gms/internal/zzll;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_156

    :cond_24a
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_252
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtq:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/zzll;->setContext(Landroid/content/Context;)V

    goto/16 :goto_169

    :cond_269
    const/4 v1, 0x0

    goto/16 :goto_1d9

    :cond_26c
    const-string v1, "Appstreaming controller is null."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto/16 :goto_1ef
.end method

.method protected zzaf(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzll;->zzaf(I)V

    return-void
.end method

.method public zzdc()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbte:Z

    return-void
.end method

.method public zzf(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 4
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

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzf(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V

    return-void
.end method

.method public zznw()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzdc()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsw:Landroid/widget/FrameLayout;

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsx:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsv:Z

    return-void
.end method

.method public zznx()V
    .registers 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public zzny()Z
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    if-nez v2, :cond_9

    :cond_8
    :goto_8
    return v0

    :cond_9
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzll;->zzow()Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/overlay/zzl;->zzow()Z

    move-result v2

    if-eqz v2, :cond_27

    :goto_19
    if-nez v0, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    const-string v2, "onbackblocked"

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/zzll;->zza(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_8

    :cond_27
    move v0, v1

    goto :goto_19
.end method

.method public zznz()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzz(Z)V

    return-void
.end method

.method protected zzoa()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtf:Z

    if-eqz v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtf:Z

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_51

    iget v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtc:I

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaf(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzagf:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzll;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzll;->zzah(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtk:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget v2, v2, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->index:I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtj:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbst:Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;

    :cond_4f
    :goto_4f
    iput-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    :cond_51
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtp:Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zzdy()V

    :cond_62
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtd:Lcom/google/android/gms/ads/internal/overlay/zzl;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/zzl;->destroy()V

    goto :goto_d

    :cond_68
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzll;->setContext(Landroid/content/Context;)V

    goto :goto_4f
.end method

.method public zzob()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbtb:Z

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzoc()V

    :cond_a
    return-void
.end method

.method protected zzoc()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->zzoc()V

    return-void
.end method

.method public zzod()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->disable()V

    return-void
.end method

.method public zzz(Z)V
    .registers 6

    const/4 v3, -0x2

    if-eqz p1, :cond_30

    const/16 v0, 0x32

    :goto_5
    new-instance v1, Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v2, v0, p0}, Lcom/google/android/gms/ads/internal/overlay/zzo;-><init>(Landroid/content/Context;ILcom/google/android/gms/ads/internal/overlay/zzu;)V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_33

    const/16 v0, 0xb

    :goto_1c
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v2, v2, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtt:Z

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzo;->zza(ZZ)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbta:Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbsu:Lcom/google/android/gms/ads/internal/overlay/zzo;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_30
    const/16 v0, 0x20

    goto :goto_5

    :cond_33
    const/16 v0, 0x9

    goto :goto_1c
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzd.AnonymousClass1 (com.google.android.gms.ads.internal.overlay.zzd$1)
.class Lcom/google/android/gms/ads/internal/overlay/zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;->zzaa(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$1;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Z)V
    .registers 3

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzoc()V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzd.zza (com.google.android.gms.ads.internal.overlay.zzd$zza)
.class final Lcom/google/android/gms/ads/internal/overlay/zzd$zza;
.super Ljava/lang/Exception;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzd.zzb (com.google.android.gms.ads.internal.overlay.zzd$zzb)
.class Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zzb"
.end annotation


# instance fields
.field zzaqd:Lcom/google/android/gms/internal/zzko;

.field zzbti:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzko;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzko;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->zzaqd:Lcom/google/android/gms/internal/zzko;

    return-void
.end method


# virtual methods
.method disable()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->zzbti:Z

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->zzbti:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzb;->zzaqd:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzko;->zze(Landroid/view/MotionEvent;)V

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzd.zzc (com.google.android.gms.ads.internal.overlay.zzd$zzc)
.class public Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field public final index:I

.field public final zzagf:Landroid/content/Context;

.field public final zzbtj:Landroid/view/ViewGroup$LayoutParams;

.field public final zzbtk:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzll;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/ads/internal/overlay/zzd$zza;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtj:Landroid/view/ViewGroup$LayoutParams;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzug()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzagf:Landroid/content/Context;

    if-eqz v0, :cond_37

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_37

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtk:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtk:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->index:I

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzc;->zzbtk:Landroid/view/ViewGroup;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/zzll;->zzah(Z)V

    return-void

    :cond_37
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;

    const-string v1, "Could not get the parent of the WebView for an overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zza;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzd.C0043zzd (com.google.android.gms.ads.internal.overlay.zzd$zzd)
.class Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;
.super Lcom/google/android/gms/internal/zzkg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzd"
.end annotation


# instance fields
.field final synthetic zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkg;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd;Lcom/google/android/gms/ads/internal/overlay/zzd$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 1

    return-void
.end method

.method public zzew()V
    .registers 6

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgh()Lcom/google/android/gms/internal/zzkt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamh:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkt;->zza(Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget-boolean v3, v3, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamf:Z

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzbss:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbtz:Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;

    iget v4, v4, Lcom/google/android/gms/ads/internal/InterstitialAdParameterParcel;->zzamg:F

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/google/android/gms/internal/zzkm;->zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;-><init>(Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3e
    return-void
.end method

###### Class com.google.android.gms.ads.internal.overlay.zzd.C0043zzd.AnonymousClass1 (com.google.android.gms.ads.internal.overlay.zzd$zzd$1)
.class Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbtl:Landroid/graphics/drawable/Drawable;

.field final synthetic zzbtm:Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;->zzbtm:Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;->zzbtl:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;->zzbtm:Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd;->zzbth:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(Lcom/google/android/gms/ads/internal/overlay/zzd;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzd$zzd$1;->zzbtl:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
