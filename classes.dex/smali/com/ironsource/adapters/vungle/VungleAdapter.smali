###### Class com.ironsource.adapters.vungle.VungleAdapter (com.ironsource.adapters.vungle.VungleAdapter)
.class Lcom/ironsource/adapters/vungle/VungleAdapter;
.super Lcom/ironsource/mediationsdk/AbstractAdapter;
.source "VungleAdapter.java"

# interfaces
.implements Lcom/vungle/publisher/VungleInitListener;
.implements Lcom/vungle/publisher/VungleAdEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    }
.end annotation


# static fields
.field private static final CORE_SDK_VERSION:Ljava/lang/String; = "5.3.2"

.field private static final VERSION:Ljava/lang/String; = "4.1.1"


# instance fields
.field private final APP_ID:Ljava/lang/String;

.field private final PLACEMENT_ID:Ljava/lang/String;

.field private mCurrentUserId:Ljava/lang/String;

.field private mDidCallLoad:Z

.field private mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field private mInitiatedAdUnits:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVunglePub:Lcom/vungle/publisher/VunglePub;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/ironsource/mediationsdk/AbstractAdapter;-><init>(Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    iput-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mDidCallLoad:Z

    .line 51
    const-string v0, "AppID"

    iput-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->APP_ID:Ljava/lang/String;

    .line 52
    const-string v0, "PlacementId"

    iput-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->PLACEMENT_ID:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;)Lcom/vungle/publisher/VunglePub;
    .registers 2
    .param p0, "x0"    # Lcom/ironsource/adapters/vungle/VungleAdapter;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    return-object v0
.end method

.method private addInitiatedAdUnit(Ljava/lang/String;)V
    .registers 3
    .param p1, "adUnit"    # Ljava/lang/String;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 177
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    .line 179
    :cond_b
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method private declared-synchronized getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    .registers 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getIntegrationData(Landroid/app/Activity;)Lcom/ironsource/mediationsdk/IntegrationData;
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 63
    new-instance v0, Lcom/ironsource/mediationsdk/IntegrationData;

    const-string v1, "Vungle"

    const-string v2, "4.1.1"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/IntegrationData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .local v0, "ret":Lcom/ironsource/mediationsdk/IntegrationData;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.vungle.publisher.VideoFullScreenAdActivity"

    aput-object v3, v1, v2

    const-string v2, "com.vungle.publisher.MraidFullScreenAdActivity"

    aput-object v2, v1, v5

    const/4 v2, 0x2

    const-string v3, "com.vungle.publisher.FlexViewAdActivity"

    aput-object v3, v1, v2

    iput-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    .line 68
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "javax.inject.Inject"

    const-string v4, "javax.inject-1.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "dagger.Module"

    const-string v4, "dagger-2.7.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "retrofit2.adapter.rxjava.RxJavaCallAdapterFactory"

    const-string v4, "adapter-rxjava-2.2.0.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "retrofit2.converter.gson.GsonConverterFactory"

    const-string v4, "converter-gson-2.2.0.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "de.greenrobot.event.EventBus"

    const-string v4, "eventbus-2.2.1.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "okhttp3.OkHttpClient$Builder"

    const-string v4, "okhttp-3.6.0.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "okio.Buffer"

    const-string v4, "okio-1.11.0.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "com.google.gson.Gson"

    const-string v4, "gson-2.7.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "retrofit2.Retrofit$Builder"

    const-string v4, "retrofit-2.2.0.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, v0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    const-string v3, "rx.subjects.PublishSubject"

    const-string v4, "rxjava-1.2.0.jar"

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iput-boolean v5, v0, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    .line 79
    return-object v0
.end method

.method private initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)V
    .registers 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appId"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p4, "allPlacements":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-direct {p0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 162
    invoke-virtual {p4}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 164
    .local v0, "placementList":[Ljava/lang/String;
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    iput-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    .line 165
    iput-object p3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mCurrentUserId:Ljava/lang/String;

    .line 166
    new-instance v1, Lcom/ironsource/adapters/vungle/VungleAdapter$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter$1;-><init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method private declared-synchronized setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V
    .registers 5
    .param p1, "state"    # Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_1
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getProviderName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":init state changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 85
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitState:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    .line 86
    monitor-exit p0

    return-void

    .line 83
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static startAdapter(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter;
    .registers 2
    .param p0, "providerName"    # Ljava/lang/String;

    .prologue
    .line 55
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-direct {v0, p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public fetchRewardedVideo(Lorg/json/JSONObject;)V
    .registers 2
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 185
    return-void
.end method

.method public getCoreSDKVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    const-string v0, "5.3.2"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    const-string v0, "4.1.1"

    return-object v0
.end method

.method public initInterstitial(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 215
    const-string v1, "AppID"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "PlacementId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 216
    :cond_18
    if-eqz p5, :cond_25

    .line 217
    const-string v1, "Missing params"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {p5, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 248
    .end local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_25
    :goto_25
    :pswitch_25
    return-void

    .line 221
    .restart local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :cond_26
    const-string v1, "PlacementId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3f

    if-eqz p5, :cond_3f

    .line 222
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "PlacementId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    :cond_3f
    const-string v1, "Interstitial"

    invoke-direct {p0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 227
    .local v0, "allPlacements":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_82

    goto :goto_25

    .line 229
    :pswitch_59
    if-eqz p5, :cond_63

    .line 230
    check-cast p5, Lcom/ironsource/mediationsdk/InterstitialSmash;

    .end local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    const-string v1, "PlacementId"

    invoke-virtual {p5, v1}, Lcom/ironsource/mediationsdk/InterstitialSmash;->getAllSettingsForProvider(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 232
    :cond_63
    const-string v1, "AppID"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_25

    .line 238
    .restart local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;
    :pswitch_6d
    if-eqz p5, :cond_25

    .line 239
    invoke-interface {p5}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_25

    .line 243
    :pswitch_73
    if-eqz p5, :cond_25

    .line 244
    const-string v1, "Init Failed"

    const-string v2, "Interstitial"

    invoke-static {v1, v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {p5, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_25

    .line 227
    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_59
        :pswitch_25
        :pswitch_6d
        :pswitch_73
    .end packed-switch
.end method

.method public initRewardedVideo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "appKey"    # Ljava/lang/String;
    .param p3, "userId"    # Ljava/lang/String;
    .param p4, "config"    # Lorg/json/JSONObject;
    .param p5, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    const/4 v3, 0x0

    .line 120
    const-string v1, "AppID"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "PlacementId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 121
    :cond_19
    if-eqz p5, :cond_1e

    .line 122
    invoke-interface {p5, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 157
    .end local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :cond_1e
    :goto_1e
    :pswitch_1e
    return-void

    .line 126
    .restart local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :cond_1f
    const-string v1, "PlacementId"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    if-eqz p5, :cond_38

    .line 127
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "PlacementId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_38
    const-string v1, "Rewarded Video"

    invoke-direct {p0, v1}, Lcom/ironsource/adapters/vungle/VungleAdapter;->addInitiatedAdUnit(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 132
    .local v0, "allPlacements":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    invoke-direct {p0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->getCurrentInitState()Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_8e

    goto :goto_1e

    .line 134
    :pswitch_52
    if-eqz p5, :cond_5c

    .line 135
    check-cast p5, Lcom/ironsource/mediationsdk/RewardedVideoSmash;

    .end local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    const-string v1, "PlacementId"

    invoke-virtual {p5, v1}, Lcom/ironsource/mediationsdk/RewardedVideoSmash;->getAllSettingsForProvider(Ljava/lang/String;)Ljava/util/HashSet;

    move-result-object v0

    .line 137
    :cond_5c
    const-string v1, "AppID"

    invoke-virtual {p4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)V

    goto :goto_1e

    .line 143
    .restart local p5    # "listener":Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;
    :pswitch_66
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v2, "PlacementId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 144
    if-eqz p5, :cond_1e

    .line 145
    const/4 v1, 0x1

    invoke-interface {p5, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1e

    .line 147
    :cond_7b
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v2, "PlacementId"

    invoke-virtual {p4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/VunglePub;->loadAd(Ljava/lang/String;)V

    goto :goto_1e

    .line 152
    :pswitch_87
    if-eqz p5, :cond_1e

    .line 153
    invoke-interface {p5, v3}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_1e

    .line 132
    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_52
        :pswitch_1e
        :pswitch_66
        :pswitch_87
    .end packed-switch
.end method

.method public isInterstitialReady(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 273
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v1, "PlacementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public isRewardedVideoAvailable(Lorg/json/JSONObject;)Z
    .registers 4
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v1, "PlacementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public loadInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 5
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v1, "PlacementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 253
    if-eqz p2, :cond_13

    .line 254
    invoke-interface {p2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    .line 259
    :cond_13
    :goto_13
    return-void

    .line 256
    :cond_14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mDidCallLoad:Z

    .line 257
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v1, "PlacementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->loadAd(Ljava/lang/String;)V

    goto :goto_13
.end method

.method public onAdAvailabilityUpdate(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "isAdAvailable"    # Z

    .prologue
    .line 380
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdAvailabilityUpdate, placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAdAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 382
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 383
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0, p2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 394
    :cond_3a
    :goto_3a
    return-void

    .line 384
    :cond_3b
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 385
    iget-boolean v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mDidCallLoad:Z

    if-eqz v0, :cond_3a

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mDidCallLoad:Z

    .line 388
    if-eqz p2, :cond_58

    .line 389
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdReady()V

    goto :goto_3a

    .line 391
    :cond_58
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v1, "No Ads"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildLoadFailedError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdLoadFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_3a
.end method

.method public onAdEnd(Ljava/lang/String;ZZ)V
    .registers 9
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "wasSuccessfulView"    # Z
    .param p3, "wasCallToActionClicked"    # Z

    .prologue
    .line 328
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v1

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onAdEnd(wasSuccessfulView: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", wasCallToActionClicked:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 330
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7e

    .line 332
    if-eqz p3, :cond_42

    .line 333
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClicked()V

    .line 335
    :cond_42
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdEnded()V

    .line 336
    if-eqz p2, :cond_5a

    .line 337
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdRewarded()V

    .line 339
    :cond_5a
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdClosed()V

    .line 340
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    .line 341
    .local v0, "anotherAdAvailable":Z
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v1, v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 343
    if-nez v0, :cond_7d

    .line 344
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/VunglePub;->loadAd(Ljava/lang/String;)V

    .line 351
    .end local v0    # "anotherAdAvailable":Z
    :cond_7d
    :goto_7d
    return-void

    .line 345
    :cond_7e
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7d

    .line 346
    if-eqz p3, :cond_93

    .line 347
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClicked()V

    .line 349
    :cond_93
    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdClosed()V

    goto :goto_7d
.end method

.method public onAdStart(Ljava/lang/String;)V
    .registers 6
    .param p1, "placementReferenceId"    # Ljava/lang/String;

    .prologue
    .line 355
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdStart, placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 357
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 358
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdOpened()V

    .line 359
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdStarted()V

    .line 364
    :cond_3b
    :goto_3b
    return-void

    .line 360
    :cond_3c
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3b

    .line 361
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdOpened()V

    .line 362
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowSucceeded()V

    goto :goto_3b
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 305
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "onFailure()"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 307
    sget-object v2, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-direct {p0, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 309
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-eqz v2, :cond_7e

    .line 310
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v3, "Rewarded Video"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_46

    .line 311
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 312
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 313
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_29

    .line 316
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;>;"
    :cond_46
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v3, "Interstitial"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 317
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5a
    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 318
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_5a

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v4, "Init Failed"

    const-string v5, "Interstitial"

    invoke-static {v4, v5}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildInitFailedError(Ljava/lang/String;Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_5a

    .line 323
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;>;"
    :cond_7e
    return-void
.end method

.method public onPause(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_9

    .line 113
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onPause()V

    .line 114
    :cond_9
    return-void
.end method

.method public onResume(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 108
    :cond_9
    return-void
.end method

.method public onSuccess()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 280
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v2

    sget-object v3, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v4, "onSuccess()"

    invoke-virtual {v2, v3, v4, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 282
    sget-object v2, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-direct {p0, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter;->setInitState(Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;)V

    .line 284
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    if-eqz v2, :cond_8f

    .line 285
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v3, "Rewarded Video"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5f

    .line 286
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_29
    :goto_29
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 287
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;>;"
    iget-object v4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 288
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_29

    .line 289
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    invoke-interface {v2, v5}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_29

    .line 291
    :cond_53
    iget-object v4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Lcom/vungle/publisher/VunglePub;->loadAd(Ljava/lang/String;)V

    goto :goto_29

    .line 294
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;>;"
    :cond_5f
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInitiatedAdUnits:Ljava/util/Set;

    const-string v3, "Interstitial"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 295
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_73
    :goto_73
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 296
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 297
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    invoke-interface {v2}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialInitSuccess()V

    goto :goto_73

    .line 301
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;>;"
    :cond_8f
    return-void
.end method

.method public onUnableToPlayAd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "placementReferenceId"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 368
    invoke-static {}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->getLogger()Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnableToPlayAd, placementReferenceId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLoggerManager;->log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V

    .line 370
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 371
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    .line 372
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mRewardedVideoPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    const-string v1, "Rewarded Video"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 376
    :cond_42
    :goto_42
    return-void

    .line 373
    :cond_43
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 374
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mInterstitialPlacementToListenerMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    const-string v1, "Interstitial"

    invoke-static {v1}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_42
.end method

.method public showInterstitial(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;)V
    .registers 6
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;

    .prologue
    .line 263
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v1, "PlacementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 264
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v1, "PlacementId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    invoke-virtual {v2}, Lcom/vungle/publisher/VunglePub;->getGlobalAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/VunglePub;->playAd(Ljava/lang/String;Lcom/vungle/publisher/AdConfig;)V

    .line 269
    :cond_23
    :goto_23
    return-void

    .line 266
    :cond_24
    if-eqz p2, :cond_23

    .line 267
    const-string v0, "Interstitial"

    invoke-static {v0}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/ironsource/mediationsdk/sdk/InterstitialSmashListener;->onInterstitialAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    goto :goto_23
.end method

.method public showRewardedVideo(Lorg/json/JSONObject;Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;)V
    .registers 7
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "listener"    # Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;

    .prologue
    .line 189
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    if-eqz v2, :cond_27

    .line 190
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v3, "PlacementId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/VunglePub;->isAdPlayable(Ljava/lang/String;)Z

    move-result v0

    .line 192
    .local v0, "isAdAvailable":Z
    if-eqz v0, :cond_28

    .line 193
    new-instance v1, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v1}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 194
    .local v1, "overrideConfig":Lcom/vungle/publisher/AdConfig;
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mCurrentUserId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 196
    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter;->mVunglePub:Lcom/vungle/publisher/VunglePub;

    const-string v3, "PlacementId"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/vungle/publisher/VunglePub;->playAd(Ljava/lang/String;Lcom/vungle/publisher/AdConfig;)V

    .line 204
    .end local v0    # "isAdAvailable":Z
    .end local v1    # "overrideConfig":Lcom/vungle/publisher/AdConfig;
    :cond_27
    :goto_27
    return-void

    .line 198
    .restart local v0    # "isAdAvailable":Z
    :cond_28
    if-eqz p2, :cond_27

    .line 199
    const-string v2, "Rewarded Video"

    invoke-static {v2}, Lcom/ironsource/mediationsdk/utils/ErrorBuilder;->buildNoAdsToShowError(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceError;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    .line 200
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Lcom/ironsource/mediationsdk/sdk/RewardedVideoSmashListener;->onRewardedVideoAvailabilityChanged(Z)V

    goto :goto_27
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter.AnonymousClass1 (com.ironsource.adapters.vungle.VungleAdapter$1)
.class Lcom/ironsource/adapters/vungle/VungleAdapter$1;
.super Ljava/lang/Object;
.source "VungleAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;->initSdk(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$placementList:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/adapters/vungle/VungleAdapter;Landroid/app/Activity;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Lcom/ironsource/adapters/vungle/VungleAdapter;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    iput-object p2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$placementList:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 169
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;)Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->val$placementList:[Ljava/lang/String;

    iget-object v4, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/vungle/publisher/VungleInitListener;)V

    .line 170
    iget-object v0, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    invoke-static {v0}, Lcom/ironsource/adapters/vungle/VungleAdapter;->access$000(Lcom/ironsource/adapters/vungle/VungleAdapter;)Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/vungle/publisher/VungleAdEventListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ironsource/adapters/vungle/VungleAdapter$1;->this$0:Lcom/ironsource/adapters/vungle/VungleAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->clearAndSetEventListeners([Lcom/vungle/publisher/VungleAdEventListener;)V

    .line 171
    return-void
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter.AnonymousClass2 (com.ironsource.adapters.vungle.VungleAdapter$2)
.class synthetic Lcom/ironsource/adapters/vungle/VungleAdapter$2;
.super Ljava/lang/Object;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 132
    invoke-static {}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->values()[Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    :try_start_9
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$2;->$SwitchMap$com$ironsource$adapters$vungle$VungleAdapter$EInitState:[I

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v1}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method

###### Class com.ironsource.adapters.vungle.VungleAdapter.EInitState (com.ironsource.adapters.vungle.VungleAdapter$EInitState)
.class final enum Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
.super Ljava/lang/Enum;
.source "VungleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/adapters/vungle/VungleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EInitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field public static final enum INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field public static final enum INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field public static final enum INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

.field public static final enum NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    const-string v1, "NOT_INIT"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    const-string v1, "INIT_IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    const-string v1, "INIT_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    new-instance v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    const-string v1, "INIT_FAIL"

    invoke-direct {v0, v1, v5}, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    .line 39
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->NOT_INIT:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_IN_PROGRESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_SUCCESS:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->INIT_FAIL:Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->$VALUES:[Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    invoke-virtual {v0}, [Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/adapters/vungle/VungleAdapter$EInitState;

    return-object v0
.end method
