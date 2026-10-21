###### Class com.google.android.gms.internal.zzlp (com.google.android.gms.internal.zzlp)
.class Lcom/google/android/gms/internal/zzlp;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lcom/google/android/gms/internal/zzll;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlp$zza;
    }
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private final zzajv:Lcom/google/android/gms/ads/internal/zzd;

.field private final zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field private zzaqe:Lcom/google/android/gms/internal/zzky;

.field private final zzaqk:Landroid/view/WindowManager;

.field private final zzbgh:Lcom/google/android/gms/internal/zzas;

.field private zzbrj:I

.field private zzbrk:I

.field private zzbrm:I

.field private zzbrn:I

.field private zzbvu:Ljava/lang/String;

.field private zzcka:Ljava/lang/Boolean;

.field private final zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

.field private final zzcpg:Lcom/google/android/gms/ads/internal/zzs;

.field private zzcph:Lcom/google/android/gms/internal/zzlm;

.field private zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzcpj:Z

.field private zzcpk:Z

.field private zzcpl:Z

.field private zzcpm:Z

.field private zzcpn:I

.field private zzcpo:Z

.field zzcpp:Z

.field private zzcpq:Lcom/google/android/gms/internal/zzlq;

.field private zzcpr:Z

.field private zzcps:Lcom/google/android/gms/internal/zzdi;

.field private zzcpt:Lcom/google/android/gms/internal/zzdi;

.field private zzcpu:Lcom/google/android/gms/internal/zzdi;

.field private zzcpv:Lcom/google/android/gms/internal/zzdj;

.field private zzcpw:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private zzcpx:Lcom/google/android/gms/ads/internal/overlay/zzd;

.field private zzcpy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzlp$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)V
    .registers 14

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzlp;->zzcpo:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcpp:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzbvu:Ljava/lang/String;

    iput v1, p0, Lcom/google/android/gms/internal/zzlp;->zzbrk:I

    iput v1, p0, Lcom/google/android/gms/internal/zzlp;->zzbrj:I

    iput v1, p0, Lcom/google/android/gms/internal/zzlp;->zzbrm:I

    iput v1, p0, Lcom/google/android/gms/internal/zzlp;->zzbrn:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zzlp;->zzcpl:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpn:I

    iput-object p5, p0, Lcom/google/android/gms/internal/zzlp;->zzbgh:Lcom/google/android/gms/internal/zzas;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzlp;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzlp;->zzcpg:Lcom/google/android/gms/ads/internal/zzs;

    iput-object p9, p0, Lcom/google/android/gms/internal/zzlp;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqk:Landroid/view/WindowManager;

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzlp;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5b

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_5b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v1

    iget-object v2, p6, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v1, p1, v2, v0}, Lcom/google/android/gms/internal/zzkl;->zza(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzkm;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lcom/google/android/gms/internal/zzlp;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvj()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavo()Z

    move-result v0

    if-eqz v0, :cond_85

    new-instance v0, Lcom/google/android/gms/internal/zzlr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlr;-><init>(Lcom/google/android/gms/internal/zzll;)V

    const-string v1, "googleAdsJsInterface"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlp;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_85
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavj()Z

    move-result v0

    if-eqz v0, :cond_95

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_95
    new-instance v0, Lcom/google/android/gms/internal/zzky;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlp$zza;->zzuf()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, p0, v2}, Lcom/google/android/gms/internal/zzky;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-direct {p0, p7}, Lcom/google/android/gms/internal/zzlp;->zzd(Lcom/google/android/gms/internal/zzdk;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlp;)V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method private zzal(Z)V
    .registers 5

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "isVisible"

    if-eqz p1, :cond_14

    const-string v0, "1"

    :goto_b
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "onAdVisibilityChanged"

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_14
    const-string v0, "0"

    goto :goto_b
.end method

.method static zzb(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)Lcom/google/android/gms/internal/zzlp;
    .registers 19

    new-instance v1, Lcom/google/android/gms/internal/zzlp$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzlp$zza;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzlp;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/zzlp;-><init>(Lcom/google/android/gms/internal/zzlp$zza;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/ads/internal/zzs;Lcom/google/android/gms/ads/internal/zzd;)V

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/internal/zzdk;)V
    .registers 8

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvn()V

    new-instance v0, Lcom/google/android/gms/internal/zzdj;

    new-instance v1, Lcom/google/android/gms/internal/zzdk;

    const/4 v2, 0x1

    const-string v3, "make_wv"

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaup:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzdk;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzdj;-><init>(Lcom/google/android/gms/internal/zzdk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzdk;->zzc(Lcom/google/android/gms/internal/zzdk;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpt:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    const-string v1, "native:view_create"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcpt:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzlp;->zzcpu:Lcom/google/android/gms/internal/zzdi;

    iput-object v5, p0, Lcom/google/android/gms/internal/zzlp;->zzcps:Lcom/google/android/gms/internal/zzdi;

    return-void
.end method

.method private zzvh()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsr()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcka:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcka:Ljava/lang/Boolean;
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_2b

    if-nez v0, :cond_1f

    :try_start_11
    const-string v0, "(function(){})()"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzlp;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Ljava/lang/Boolean;)V
    :try_end_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_1f} :catch_21
    .catchall {:try_start_11 .. :try_end_1f} :catchall_2b

    :cond_1f
    :goto_1f
    :try_start_1f
    monitor-exit v1

    return-void

    :catch_21
    move-exception v0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Ljava/lang/Boolean;)V

    goto :goto_1f

    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method private zzvi()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpt:Lcom/google/android/gms/internal/zzdi;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aeh2"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    return-void
.end method

.method private zzvj()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpl:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    if-eqz v0, :cond_29

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1d

    const-string v0, "Disabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvk()V

    :goto_1b
    monitor-exit v1

    return-void

    :cond_1d
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvl()V

    goto :goto_1b

    :catchall_26
    move-exception v0

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v0

    :cond_29
    :try_start_29
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_38

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvk()V

    goto :goto_1b

    :cond_38
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvl()V
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    goto :goto_1b
.end method

.method private zzvk()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpm:Z

    if-nez v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkm;->zzp(Landroid/view/View;)Z

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpm:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private zzvl()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpm:Z

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkm;->zzo(Landroid/view/View;)Z

    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpm:Z

    monitor-exit v1

    return-void

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private zzvm()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpy:Ljava/util/Map;

    monitor-exit v1

    return-void

    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_8

    throw v0
.end method

.method private zzvn()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    if-nez v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkb;->zzsm()Lcom/google/android/gms/internal/zzde;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkb;->zzsm()Lcom/google/android/gms/internal/zzde;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzde;->zza(Lcom/google/android/gms/internal/zzdk;)Z

    goto :goto_4
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->zztu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->close()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlm;->reset()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpk:Z

    if-eqz v0, :cond_27

    monitor-exit v1

    :goto_26
    return-void

    :cond_27
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfg;->zze(Lcom/google/android/gms/internal/zzll;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvm()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpk:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlm;->zzva()V

    monitor-exit v1

    goto :goto_26

    :catchall_40
    move-exception v0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_3 .. :try_end_42} :catchall_40

    throw v0
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    if-eqz p2, :cond_14

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_14
    monitor-exit v1

    :goto_15
    return-void

    :cond_16
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    monitor-exit v1

    goto :goto_15

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpk:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlm;->reset()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfg;->zze(Lcom/google/android/gms/internal/zzll;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvm()V

    :cond_16
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_1b
    move-exception v0

    :try_start_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public getRequestId()Ljava/lang/String;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzbvu:Ljava/lang/String;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getRequestedOrientation()I
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpn:I

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public getView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getWebView()Landroid/webkit/WebView;
    .registers 1

    return-object p0
.end method

.method public isDestroyed()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpk:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_34

    move-result v0

    if-nez v0, :cond_37

    :try_start_9
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_e
    .catchall {:try_start_9 .. :try_end_c} :catchall_34

    :goto_c
    :try_start_c
    monitor-exit v1

    return-void

    :catch_e
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_c

    :catchall_34
    move-exception v0

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :try_start_37
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    goto :goto_c
.end method

.method protected onAttachedToWindow()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->onAttachedToWindow()V

    :cond_11
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpr:Z

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzal(Z)V

    monitor-exit v1

    return-void

    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->onDetachedFromWindow()V

    :cond_e
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_17

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzal(Z)V

    return-void

    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 10

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzkl;->zzb(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_19
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_19} :catch_1a

    :goto_19
    return-void

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    goto :goto_19
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_19

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_19
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_6
.end method

.method public onGlobalLayout()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->zzvg()Z

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->zzui()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v1

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    invoke-virtual {v1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzob()V

    :cond_f
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12

    const v0, 0x7fffffff

    const/high16 v8, 0x40000000    # 2.0f

    const/16 v7, 0x8

    const/high16 v6, -0x80000000

    iget-object v4, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v4

    :try_start_c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlp;->setMeasuredDimension(II)V

    monitor-exit v4

    :goto_18
    return-void

    :cond_19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isInEditMode()Z

    move-result v1

    if-nez v1, :cond_2f

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpl:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaut:Z

    if-eqz v1, :cond_37

    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    monitor-exit v4

    goto :goto_18

    :catchall_34
    move-exception v0

    monitor-exit v4
    :try_end_36
    .catchall {:try_start_c .. :try_end_36} :catchall_34

    throw v0

    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    if-eqz v1, :cond_54

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzaqk:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzlp;->setMeasuredDimension(II)V

    monitor-exit v4

    goto :goto_18

    :cond_54
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-eq v2, v6, :cond_68

    if-ne v2, v8, :cond_ff

    :cond_68
    move v2, v3

    :goto_69
    if-eq v5, v6, :cond_6d

    if-ne v5, v8, :cond_6e

    :cond_6d
    move v0, v1

    :cond_6e
    iget-object v5, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    if-gt v5, v2, :cond_7a

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    if-le v2, v0, :cond_e9

    :cond_7a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp$zza;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v2, v2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v5, v0

    float-to-int v5, v5

    int-to-float v3, v3

    div-float/2addr v3, v0

    float-to-int v3, v3

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x67

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Not enough space to show ad. Needs "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dp, but only has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_e1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->setVisibility(I)V

    :cond_e1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlp;->setMeasuredDimension(II)V

    :goto_e6
    monitor-exit v4

    goto/16 :goto_18

    :cond_e9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getVisibility()I

    move-result v0

    if-eq v0, v7, :cond_f3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->setVisibility(I)V

    :cond_f3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzlp;->setMeasuredDimension(II)V
    :try_end_fe
    .catchall {:try_start_37 .. :try_end_fe} :catchall_34

    goto :goto_e6

    :cond_ff
    move v2, v0

    goto/16 :goto_69
.end method

.method public onPause()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavj()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    :catch_11
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public onResume()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavj()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_11

    goto :goto_6

    :catch_11
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzbgh:Lcom/google/android/gms/internal/zzas;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzbgh:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/view/MotionEvent;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_10
    return v0

    :cond_11
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_10
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzlp$zza;->setBaseContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlp$zza;->zzuf()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzky;->zzl(Landroid/app/Activity;)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpw:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRequestedOrientation(I)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpn:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcpn:I

    invoke-virtual {v0, v2}, Lcom/google/android/gms/ads/internal/overlay/zzd;->setRequestedOrientation(I)V

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/google/android/gms/internal/zzlm;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    :cond_b
    return-void
.end method

.method public stopLoading()V
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_6

    :catch_b
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6
.end method

.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzdk;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->zztu()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlp;->setContext(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpl:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpj:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzbvu:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpn:I

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzkm;->zzk(Lcom/google/android/gms/internal/zzll;)Z

    const-string v0, "about:blank"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlm;->reset()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpo:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpp:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpq:Lcom/google/android/gms/internal/zzlq;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzlp;->zzd(Lcom/google/android/gms/internal/zzdk;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpr:Z

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfg;->zze(Lcom/google/android/gms/internal/zzll;)Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvm()V

    monitor-exit v1

    return-void

    :catchall_51
    move-exception v0

    monitor-exit v1
    :try_end_53
    .catchall {:try_start_3 .. :try_end_53} :catchall_51

    throw v0
.end method

.method public zza(Lcom/google/android/gms/ads/internal/client/AdSizeParcel;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->requestLayout()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzcd;Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzlp;->zzcpr:Z

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_a

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzlp;->zzal(Z)V

    return-void

    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzlq;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpq:Lcom/google/android/gms/internal/zzlq;

    if-eqz v0, :cond_e

    const-string v0, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpq:Lcom/google/android/gms/internal/zzlq;

    monitor-exit v1

    goto :goto_d

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method protected zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzlp;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_c
    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    if-eqz p2, :cond_c

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_c

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    :cond_9
    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzkl;->zzam(Ljava/util/Map;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_7} :catch_c

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzlp;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string v0, "Could not convert parameters to JSON."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 4

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzlp;->zzj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zzaf(I)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvi()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "closetype"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzah(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpl:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvj()V

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public zzai(Z)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlm;->zzho()Z

    move-result v2

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zza(ZZ)V

    :goto_12
    monitor-exit v1

    return-void

    :cond_14
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpj:Z

    goto :goto_12

    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public zzaj(Z)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpo:Z

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method zzb(Ljava/lang/Boolean;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcka:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Boolean;)V

    return-void

    :catchall_e
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v0
.end method

.method public zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzlm;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    :cond_9
    return-void
.end method

.method public zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 7

    if-nez p2, :cond_7

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AFMA_ReceiveMessage(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ");"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Dispatching AFMA event: "

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_49

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3e
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzdd(Ljava/lang/String;)V

    return-void

    :cond_49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3e
.end method

.method public zzc(Lcom/google/android/gms/ads/internal/overlay/zzd;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpx:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzcz(Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_8
    .catchall {:try_start_3 .. :try_end_6} :catchall_2e

    :goto_6
    :try_start_6
    monitor-exit v1

    return-void

    :catch_8
    move-exception v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x18

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Could not call loadUrl. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_6

    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_6 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public zzda(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-nez p1, :cond_7

    :try_start_5
    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp;->zzbvu:Ljava/lang/String;

    monitor-exit v1

    return-void

    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw v0
.end method

.method protected zzdc(Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlp;->loadUrl(Ljava/lang/String;)V

    :goto_c
    monitor-exit v1

    return-void

    :cond_e
    const-string v0, "The webview is destroyed. Ignoring action."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_c

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method protected zzdd(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavq()Z

    move-result v0

    if-eqz v0, :cond_38

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->zzsr()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvh()V

    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->zzsr()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_1d
    return-void

    :cond_1e
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_32

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzdc(Ljava/lang/String;)V

    goto :goto_1d

    :cond_32
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2e

    :cond_38
    const-string v1, "javascript:"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzdc(Ljava/lang/String;)V

    goto :goto_1d

    :cond_4c
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_48
.end method

.method public zzdo()Lcom/google/android/gms/ads/internal/client/AdSizeParcel;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzang:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzeg()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpg:Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpg:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzeg()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzeh()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpg:Lcom/google/android/gms/ads/internal/zzs;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpg:Lcom/google/android/gms/ads/internal/zzs;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/zzs;->zzeh()V

    :cond_f
    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v0
.end method

.method public zzj(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzlp;->zzdd(Ljava/lang/String;)V

    return-void
.end method

.method public zzoc()V
    .registers 7

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcps:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzcpu:Lcom/google/android/gms/internal/zzdi;

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "aes"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcps:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    const-string v1, "native:view_show"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcps:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    :cond_2c
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzow()Z
    .registers 7

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcpt:Lcom/google/android/gms/internal/zzdi;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "aebb2"

    aput-object v5, v3, v4

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/zzdg;->zza(Lcom/google/android/gms/internal/zzdk;Lcom/google/android/gms/internal/zzdi;[Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpo:Z

    monitor-exit v1

    return v0

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method zzsr()Ljava/lang/Boolean;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcka:Ljava/lang/Boolean;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzud()V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzlp;->zzvi()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "version"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcs:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzue()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "app_muted"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkl;->zzfa()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "app_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkl;->zzey()F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "device_volume"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzkl;->zzal(Landroid/content/Context;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/internal/zzlp;->zza(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public zzuf()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp$zza;->zzuf()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public zzug()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpf:Lcom/google/android/gms/internal/zzlp$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlp$zza;->zzug()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public zzuh()Lcom/google/android/gms/ads/internal/zzd;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzajv:Lcom/google/android/gms/ads/internal/zzd;

    return-object v0
.end method

.method public zzui()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpi:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzuj()Lcom/google/android/gms/ads/internal/overlay/zzd;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpx:Lcom/google/android/gms/ads/internal/overlay/zzd;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzuk()Lcom/google/android/gms/internal/zzlm;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcph:Lcom/google/android/gms/internal/zzlm;

    return-object v0
.end method

.method public zzul()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpj:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzum()Lcom/google/android/gms/internal/zzas;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzbgh:Lcom/google/android/gms/internal/zzas;

    return-object v0
.end method

.method public zzun()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    return-object v0
.end method

.method public zzuo()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpl:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzup()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzlp$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzlp$1;-><init>(Lcom/google/android/gms/internal/zzlp;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v1

    return-void

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public zzuq()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpp:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzur()Lcom/google/android/gms/internal/zzlk;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzus()Lcom/google/android/gms/internal/zzdi;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpu:Lcom/google/android/gms/internal/zzdi;

    return-object v0
.end method

.method public zzut()Lcom/google/android/gms/internal/zzdj;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    return-object v0
.end method

.method public zzuu()Lcom/google/android/gms/internal/zzlq;
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzlp;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpq:Lcom/google/android/gms/internal/zzlq;

    monitor-exit v1

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public zzuv()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->zztt()V

    return-void
.end method

.method public zzuw()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpu:Lcom/google/android/gms/internal/zzdi;

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzdj;->zzkf()Lcom/google/android/gms/internal/zzdk;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzdg;->zzb(Lcom/google/android/gms/internal/zzdk;)Lcom/google/android/gms/internal/zzdi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpu:Lcom/google/android/gms/internal/zzdi;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpv:Lcom/google/android/gms/internal/zzdj;

    const-string v1, "native:view_load"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzcpu:Lcom/google/android/gms/internal/zzdi;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzdj;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzdi;)V

    :cond_19
    return-void
.end method

.method public zzux()Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp;->zzcpw:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public zzvg()Z
    .registers 9

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzlm;->zzho()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return v0

    :cond_d
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzlp;->zzaqk:Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzkl;->zza(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v1

    iget v2, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v6, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v1

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v2

    iget v3, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v2, v6, v3}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzlp;->zzuf()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    if-nez v4, :cond_70

    :cond_37
    move v4, v2

    move v3, v1

    :goto_39
    iget v7, p0, Lcom/google/android/gms/internal/zzlp;->zzbrj:I

    if-ne v7, v1, :cond_49

    iget v7, p0, Lcom/google/android/gms/internal/zzlp;->zzbrk:I

    if-ne v7, v2, :cond_49

    iget v7, p0, Lcom/google/android/gms/internal/zzlp;->zzbrm:I

    if-ne v7, v3, :cond_49

    iget v7, p0, Lcom/google/android/gms/internal/zzlp;->zzbrn:I

    if-eq v7, v4, :cond_c

    :cond_49
    iget v7, p0, Lcom/google/android/gms/internal/zzlp;->zzbrj:I

    if-ne v7, v1, :cond_51

    iget v7, p0, Lcom/google/android/gms/internal/zzlp;->zzbrk:I

    if-eq v7, v2, :cond_8d

    :cond_51
    move v7, v5

    :goto_52
    iput v1, p0, Lcom/google/android/gms/internal/zzlp;->zzbrj:I

    iput v2, p0, Lcom/google/android/gms/internal/zzlp;->zzbrk:I

    iput v3, p0, Lcom/google/android/gms/internal/zzlp;->zzbrm:I

    iput v4, p0, Lcom/google/android/gms/internal/zzlp;->zzbrn:I

    new-instance v0, Lcom/google/android/gms/internal/zzhj;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhj;-><init>(Lcom/google/android/gms/internal/zzll;)V

    iget v5, v6, Landroid/util/DisplayMetrics;->density:F

    iget-object v6, p0, Lcom/google/android/gms/internal/zzlp;->zzaqk:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzhj;->zza(IIIIFI)V

    move v0, v7

    goto :goto_c

    :cond_70
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/zzkl;->zzh(Landroid/app/Activity;)[I

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    aget v7, v4, v0

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v7

    aget v4, v4, v5

    invoke-virtual {v7, v6, v4}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/util/DisplayMetrics;I)I

    move-result v4

    goto :goto_39

    :cond_8d
    move v7, v0

    goto :goto_52
.end method

###### Class com.google.android.gms.internal.zzlp.AnonymousClass1 (com.google.android.gms.internal.zzlp$1)
.class Lcom/google/android/gms/internal/zzlp$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzlp;->zzup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcpz:Lcom/google/android/gms/internal/zzlp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzlp;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$1;->zzcpz:Lcom/google/android/gms/internal/zzlp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$1;->zzcpz:Lcom/google/android/gms/internal/zzlp;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzlp;->zza(Lcom/google/android/gms/internal/zzlp;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzlp.zza (com.google.android.gms.internal.zzlp$zza)
.class public Lcom/google/android/gms/internal/zzlp$zza;
.super Landroid/content/MutableContextWrapper;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzlp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzaqj:Landroid/content/Context;

.field private zzcmz:Landroid/app/Activity;

.field private zzcqa:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzlp$zza;->setBaseContext(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcqa:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzaqj:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_17

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    :goto_d
    iput-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcmz:Landroid/app/Activity;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcqa:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzaqj:Landroid/content/Context;

    invoke-super {p0, v0}, Landroid/content/MutableContextWrapper;->setBaseContext(Landroid/content/Context;)V

    return-void

    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcmz:Landroid/app/Activity;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcmz:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_9
    return-void

    :cond_a
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzaqj:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_9
.end method

.method public zzuf()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcmz:Landroid/app/Activity;

    return-object v0
.end method

.method public zzug()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlp$zza;->zzcqa:Landroid/content/Context;

    return-object v0
.end method
