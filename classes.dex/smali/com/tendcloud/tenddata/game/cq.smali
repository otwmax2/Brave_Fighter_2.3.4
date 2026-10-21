###### Class com.tendcloud.tenddata.game.cq (com.tendcloud.tenddata.game.cq)
.class public Lcom/tendcloud/tenddata/game/cq;
.super Ljava/lang/Object;


# static fields
.field public static l:Ljava/lang/String; = null

.field private static final m:Ljava/lang/String; = "sequenceNumber"

.field private static final n:Ljava/lang/String; = "appPackageName"

.field private static final o:Ljava/lang/String; = "appVersionName"

.field private static final p:Ljava/lang/String; = "sdkVersion"

.field private static final q:Ljava/lang/String; = "sdkType"

.field private static final r:Ljava/lang/String; = "partner"

.field private static final s:Ljava/lang/String; = "appDisplayName"

.field private static final t:Ljava/lang/String; = "isCracked"

.field private static final u:Ljava/lang/String; = "installationTime"

.field private static final v:Ljava/lang/String; = "purchaseTime"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:J

.field e:J

.field f:Z

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/cq;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->c:Ljava/lang/String;

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/cq;->d:J

    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/cq;->e:J

    iput-boolean v1, p0, Lcom/tendcloud/tenddata/game/cq;->f:Z

    iput v1, p0, Lcom/tendcloud/tenddata/game/cq;->g:I

    const-string v0, "3.2.7 gp"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->h:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getPartnerId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    const-string v0, "Android SDK"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getAppId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->k:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/c;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->b:Ljava/lang/String;

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->b(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cq;->d:J

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/c;->d(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/cq;->e:J

    invoke-static {}, Lcom/tendcloud/tenddata/game/c;->a()Lcom/tendcloud/tenddata/game/c;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/TalkingDataGA;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/c;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->c:Ljava/lang/String;

    sget v0, Lcom/tendcloud/tenddata/TalkingDataGA;->sPlatformType:I

    packed-switch v0, :pswitch_data_96

    const-string v0, "Android_Native_SDK"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    :goto_81
    return-void

    :pswitch_82
    const-string v0, "Android_cocos2d-x_SDK"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    goto :goto_81

    :pswitch_87
    const-string v0, "Android_Unity_SDK"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    goto :goto_81

    :pswitch_8c
    const-string v0, "Android_AIR_SDK"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    goto :goto_81

    :pswitch_91
    const-string v0, "Android_PhoneGap_SDK"

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    goto :goto_81

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_82
        :pswitch_87
        :pswitch_8c
        :pswitch_91
    .end packed-switch
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "sequenceNumber"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "partner"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->i:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appPackageName"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appVersionName"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appDisplayName"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "isCracked"

    iget-boolean v2, p0, Lcom/tendcloud/tenddata/game/cq;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "installationTime"

    iget-wide v2, p0, Lcom/tendcloud/tenddata/game/cq;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "purchaseTime"

    iget v2, p0, Lcom/tendcloud/tenddata/game/cq;->g:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkVersion"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->h:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkType"

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cq;->j:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
