###### Class com.facebook.ads.internal.adapters.e (com.facebook.ads.internal.adapters.e)
.class public Lcom/facebook/ads/internal/adapters/e;
.super Lcom/facebook/ads/internal/adapters/ab;

# interfaces
.implements Lcom/facebook/ads/internal/adapters/x;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/view/View;

.field private c:Lcom/google/android/gms/ads/formats/NativeAd;

.field private d:Lcom/facebook/ads/internal/adapters/ac;

.field private e:Lcom/google/android/gms/ads/formats/NativeAdView;

.field private f:Landroid/view/View;

.field private g:Z

.field private h:Landroid/net/Uri;

.field private i:Landroid/net/Uri;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/adapters/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/facebook/ads/internal/adapters/ab;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    return-object v0
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Lcom/google/android/gms/ads/formats/NativeAd;)Lcom/google/android/gms/ads/formats/NativeAd;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->j:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/view/View;)V
    .registers 3

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/facebook/ads/internal/adapters/e;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->k:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->m:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->l:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public B()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/ads/internal/n/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public C()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public D()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public E()Lcom/facebook/ads/internal/n/c;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/n/c;->b:Lcom/facebook/ads/internal/n/c;

    return-object v0
.end method

.method public F()Lcom/facebook/ads/internal/adapters/g;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/adapters/g;->c:Lcom/facebook/ads/internal/adapters/g;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/internal/adapters/ac;",
            "Lcom/facebook/ads/internal/m/c;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/facebook/ads/internal/n/e$d;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Loading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "ad_unit_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "creative_types"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v5, :cond_96

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    const/4 v2, 0x0

    move v3, v2

    :goto_3c
    if-ge v3, v6, :cond_96

    :try_start_3e
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4f

    const/4 v2, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_112

    :cond_4c
    :goto_4c
    packed-switch v2, :pswitch_data_11c

    :cond_4f
    :goto_4f
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3c

    :sswitch_53
    const-string v8, "app_install"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    const/4 v2, 0x0

    goto :goto_4c

    :sswitch_5d
    const-string v8, "page_post"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_3e .. :try_end_62} :catch_6b

    move-result v7

    if-eqz v7, :cond_4c

    const/4 v2, 0x1

    goto :goto_4c

    :pswitch_67
    const/4 v1, 0x1

    goto :goto_4f

    :pswitch_69
    const/4 v0, 0x1

    goto :goto_4f

    :catch_6b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AN server error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v1, "Server Error"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    :goto_95
    return-void

    :cond_96
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a0

    if-nez v1, :cond_ca

    if-nez v0, :cond_ca

    :cond_a0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AN server error"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdErrorType;->SERVER_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const-string v1, "Server Error"

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/protocol/a;->a(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/internal/protocol/a;

    move-result-object v0

    invoke-interface {p2, p0, v0}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    goto :goto_95

    :cond_ca
    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    new-instance v2, Lcom/google/android/gms/ads/AdLoader$Builder;

    invoke-direct {v2, p1, v4}, Lcom/google/android/gms/ads/AdLoader$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v1, :cond_db

    new-instance v1, Lcom/facebook/ads/internal/adapters/e$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/internal/adapters/e$1;-><init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->forAppInstallAd(Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_db
    if-eqz v0, :cond_e5

    new-instance v0, Lcom/facebook/ads/internal/adapters/e$2;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/e$2;-><init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->forContentAd(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    :cond_e5
    new-instance v0, Lcom/facebook/ads/internal/adapters/e$3;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/internal/adapters/e$3;-><init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->withAdListener(Lcom/google/android/gms/ads/AdListener;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader$Builder;->withNativeAdOptions(Lcom/google/android/gms/ads/formats/NativeAdOptions;)Lcom/google/android/gms/ads/AdLoader$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdLoader$Builder;->build()Lcom/google/android/gms/ads/AdLoader;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/AdLoader;->loadAd(Lcom/google/android/gms/ads/AdRequest;)V

    goto :goto_95

    nop

    :sswitch_data_112
    .sparse-switch
        0x29f7957d -> :sswitch_53
        0x34ad3050 -> :sswitch_5d
    .end sparse-switch

    :pswitch_data_11c
    .packed-switch 0x0
        :pswitch_67
        :pswitch_69
    .end packed-switch
.end method

.method public a(Landroid/view/View;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_a

    if-nez p1, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    const/4 v1, 0x0

    const/4 v0, -0x1

    move v2, v0

    move-object v3, v1

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_1f

    sget-object v0, Lcom/facebook/ads/internal/adapters/e;->a:Ljava/lang/String;

    const-string v1, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_1f
    instance-of v1, v0, Lcom/google/android/gms/ads/formats/NativeAdView;

    if-eqz v1, :cond_b4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_33

    sget-object v0, Lcom/facebook/ads/internal/adapters/e;->a:Ljava/lang/String;

    const-string v1, "View must have valid parent for AdMob registration, skipping registration. Impressions and clicks will not be logged."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_33
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    move v0, v2

    move-object v1, v3

    :goto_42
    if-eqz v1, :cond_d5

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    instance-of v2, v2, Lcom/google/android/gms/ads/formats/NativeContentAd;

    if-eqz v2, :cond_bb

    new-instance v2, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/formats/NativeContentAdView;-><init>(Landroid/content/Context;)V

    :goto_53
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5e

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/ads/formats/NativeAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5e
    invoke-direct {p0, p1}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    invoke-virtual {v2, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->setNativeAd(Lcom/google/android/gms/ads/formats/NativeAd;)V

    new-instance v0, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdView;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-eqz v0, :cond_c5

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeContentAdView;->setCallToActionView(Landroid/view/View;)V

    :cond_9b
    :goto_9b
    new-instance v1, Lcom/facebook/ads/internal/adapters/e$4;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/adapters/e$4;-><init>(Lcom/facebook/ads/internal/adapters/e;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a4

    :cond_b4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    move-object v1, v0

    move v0, v2

    goto :goto_42

    :cond_bb
    new-instance v2, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;-><init>(Landroid/content/Context;)V

    goto :goto_53

    :cond_c5
    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    instance-of v0, v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;->setCallToActionView(Landroid/view/View;)V

    goto :goto_9b

    :cond_d5
    move v2, v0

    move-object v3, v1

    goto/16 :goto_f
.end method

.method public a(Lcom/facebook/ads/internal/adapters/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    return-void
.end method

.method public a(Ljava/util/Map;)V
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

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    invoke-interface {v0, p0}, Lcom/facebook/ads/internal/adapters/ac;->b(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_f
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .registers 2
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

    return-void
.end method

.method public b_()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    iput-object v4, p0, Lcom/facebook/ads/internal/adapters/e;->f:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/google/android/gms/ads/formats/NativeContentAdView;

    if-nez v1, :cond_1c

    instance-of v1, v0, Lcom/google/android/gms/ads/formats/NativeAppInstallAdView;

    if-eqz v1, :cond_35

    :cond_1c
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_35

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iget-object v3, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_35
    iput-object v4, p0, Lcom/facebook/ads/internal/adapters/e;->b:Landroid/view/View;

    :cond_37
    iput-object v4, p0, Lcom/facebook/ads/internal/adapters/e;->e:Lcom/google/android/gms/ads/formats/NativeAdView;

    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public c_()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public d()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public f()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public l()Lcom/facebook/ads/internal/n/f;
    .registers 4

    const/16 v2, 0x32

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/facebook/ads/internal/n/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public m()Lcom/facebook/ads/internal/n/f;
    .registers 5

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->c_()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    if-eqz v0, :cond_1a

    new-instance v0, Lcom/facebook/ads/internal/n/f;

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4b0

    const/16 v3, 0x258

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/n/f;-><init>(Ljava/lang/String;II)V

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public n()Lcom/facebook/ads/internal/n/h;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->j:Ljava/lang/String;

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/facebook/ads/internal/adapters/e;->b_()V

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->d:Lcom/facebook/ads/internal/adapters/ac;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->c:Lcom/google/android/gms/ads/formats/NativeAd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/internal/adapters/e;->g:Z

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->h:Landroid/net/Uri;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->i:Landroid/net/Uri;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->j:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/ads/internal/adapters/e;->m:Ljava/lang/String;

    return-void
.end method

.method public p()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->l:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public t()Lcom/facebook/ads/internal/n/g;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public u()Lcom/facebook/ads/internal/n/f;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public z()Lcom/facebook/ads/internal/n/j;
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/n/j;->a:Lcom/facebook/ads/internal/n/j;

    return-object v0
.end method

###### Class com.facebook.ads.internal.adapters.e.AnonymousClass1 (com.facebook.ads.internal.adapters.e$1)
.class Lcom/facebook/ads/internal/adapters/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeAppInstallAd$OnAppInstallAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInstallAdLoaded(Lcom/google/android/gms/ads/formats/NativeAppInstallAd;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Lcom/google/android/gms/ads/formats/NativeAd;)Lcom/google/android/gms/ads/formats/NativeAd;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Z)Z

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_bd

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->b(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStore()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getStore()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->c(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->d(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getImages()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c8

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_71
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeAppInstallAd;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v1

    :cond_84
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/e;->b(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$1;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_bc
    return-void

    :cond_bd
    move-object v0, v1

    goto/16 :goto_1c

    :cond_c0
    move-object v0, v1

    goto/16 :goto_2f

    :cond_c3
    move-object v0, v1

    goto/16 :goto_42

    :cond_c6
    move-object v0, v1

    goto :goto_55

    :cond_c8
    move-object v0, v1

    goto :goto_71
.end method

###### Class com.facebook.ads.internal.adapters.e.AnonymousClass2 (com.facebook.ads.internal.adapters.e$2)
.class Lcom/facebook/ads/internal/adapters/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0, p1}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Lcom/google/android/gms/ads/formats/NativeAd;)Lcom/google/android/gms/ads/formats/NativeAd;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Z)Z

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_bd

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getHeadline()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1c
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c0

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getBody()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->b(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getAdvertiser()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c3

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getAdvertiser()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->c(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_c6

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getCallToAction()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_55
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->d(Lcom/facebook/ads/internal/adapters/e;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getImages()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c8

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_71
    invoke-static {v2, v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v2

    if-eqz v2, :cond_84

    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/NativeContentAd;->getLogo()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v1

    :cond_84
    invoke-static {v0, v1}, Lcom/facebook/ads/internal/adapters/e;->b(Lcom/facebook/ads/internal/adapters/e;Landroid/net/Uri;)Landroid/net/Uri;

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_bc

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$2;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_bc
    return-void

    :cond_bd
    move-object v0, v1

    goto/16 :goto_1c

    :cond_c0
    move-object v0, v1

    goto/16 :goto_2f

    :cond_c3
    move-object v0, v1

    goto/16 :goto_42

    :cond_c6
    move-object v0, v1

    goto :goto_55

    :cond_c8
    move-object v0, v1

    goto :goto_71
.end method

###### Class com.facebook.ads.internal.adapters.e.AnonymousClass3 (com.facebook.ads.internal.adapters.e$3)
.class Lcom/facebook/ads/internal/adapters/e$3;
.super Lcom/google/android/gms/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/e;->a(Landroid/content/Context;Lcom/facebook/ads/internal/adapters/ac;Lcom/facebook/ads/internal/m/c;Ljava/util/Map;Lcom/facebook/ads/internal/n/e$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/e;Landroid/content/Context;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    iput-object p2, p0, Lcom/facebook/ads/internal/adapters/e$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/google/android/gms/ads/AdListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(I)V
    .registers 8

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$3;->a:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/adapters/e;->F()Lcom/facebook/ads/internal/adapters/g;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/ads/internal/adapters/y;->a(Lcom/facebook/ads/internal/adapters/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Failed with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/ads/internal/q/a/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_57

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    new-instance v2, Lcom/facebook/ads/internal/protocol/a;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->MEDIATION_ERROR:Lcom/facebook/ads/internal/protocol/AdErrorType;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AdMob error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/ads/internal/protocol/a;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/internal/adapters/ac;->a(Lcom/facebook/ads/internal/adapters/ab;Lcom/facebook/ads/internal/protocol/a;)V

    :cond_57
    return-void
.end method

.method public onAdOpened()V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->a(Lcom/facebook/ads/internal/adapters/e;)Lcom/facebook/ads/internal/adapters/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/ads/internal/adapters/e$3;->b:Lcom/facebook/ads/internal/adapters/e;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/adapters/ac;->c(Lcom/facebook/ads/internal/adapters/ab;)V

    :cond_13
    return-void
.end method

###### Class com.facebook.ads.internal.adapters.e.AnonymousClass4 (com.facebook.ads.internal.adapters.e$4)
.class Lcom/facebook/ads/internal/adapters/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/adapters/e;->a(Landroid/view/View;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/ads/internal/adapters/e;


# direct methods
.method constructor <init>(Lcom/facebook/ads/internal/adapters/e;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/adapters/e$4;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/ads/internal/adapters/e$4;->a:Lcom/facebook/ads/internal/adapters/e;

    invoke-static {v0}, Lcom/facebook/ads/internal/adapters/e;->b(Lcom/facebook/ads/internal/adapters/e;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method
