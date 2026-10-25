###### Class com.yunva.monsterhunter.MonsterHunter (com.yunva.monsterhunter.MonsterHunter)
.class public Lcom/yunva/monsterhunter/MonsterHunter;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;
    }
.end annotation


# static fields
.field private static final AUTH_PUBLISH_ACTIONS_SCORES_ACTIVITY_CODE:I = 0x45d

.field private static final FACEBOOK_PUBLISHDIALOG_REQUEST:I = 0x45e

.field private static final ID_CHEACK_PG:I = 0x457

.field private static final ID_DISMISS_ACTIVECODE:I = 0x45b

.field private static final ID_DISMISS_EXITGAME:I = 0x45a

.field private static final ID_DISMISS_PROGRESS:I = 0x459

.field private static final ID_REQUEST_BANNERPOS1:I = 0x468

.field private static final ID_REQUEST_BANNERPOS2:I = 0x469

.field private static final ID_REQUEST_BANNERVISIABLE:I = 0x467

.field private static final ID_REQUEST_MOREGAME:I = 0x465

.field private static final ID_REQUEST_REQUESTFBVIEW:I = 0x46a

.field private static final ID_REQUEST_REQUESTUPLOADSCORE:I = 0x462

.field private static final ID_REQUEST_SHAREGOOGLEPLAY:I = 0x45f

.field private static final ID_REQUEST_SHARFACEBOOK:I = 0x460

.field private static final ID_REQUEST_SHOWADS:I = 0x463

.field private static final ID_REQUEST_SHOWERROR:I = 0x466

.field private static final ID_REQUEST_SHOWGOOGLELEADERBOARD:I = 0x461

.field private static final ID_REQUEST_SHOWVEDIOADS:I = 0x464

.field private static final ID_SHOW_PROGRESS:I = 0x458

.field private static final ID_START_PAY:I = 0x456

.field private static final LANGUAGE_CHINESE:I = 0x0

.field private static final LANGUAGE_ENGLISH:I = 0x1

.field private static PayId2:[Ljava/lang/String; = null

.field private static final REQUEST_CODE_INTERACTIVE_POST:I = 0x45c

.field private static account:Lcom/tendcloud/tenddata/TDGAAccount;

.field private static eventId2:[Ljava/lang/String;

.field static mConsumeFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

.field private static mCurBuySku:Ljava/lang/String;

.field public static mCurLevel:I

.field public static mCurPayIndex:I

.field private static mCurQurySku:Ljava/lang/String;

.field static mCurlanguage:I

.field static mDoBuy:Z

.field private static mFacebookMsg:Ljava/lang/String;

.field private static mHelper:Lcom/yunva/monsterhunter/IabHelper;

.field private static mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

.field private static mIsLoginFacebook:Z

.field private static mNeedUpLoadScore:Z

.field private static mProgress:Landroid/app/ProgressDialog;

.field static mPurchaseFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

.field static mRequestFacebook:Z

.field private static mScore:I

.field private static mShowLeaderBoard:Z

.field private static mSku:[Ljava/lang/String;

.field private static mStrTrade:Ljava/lang/String;

.field private static m_isRequestVedioAds:Z

.field private static m_startTime:J

.field private static sHandler:Landroid/os/Handler;


# instance fields
.field private callbackManager:Lcom/facebook/CallbackManager;

.field private gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

.field private mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

.field mGotInventoryListener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

.field mTrackers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;",
            "Lcom/google/android/gms/analytics/Tracker;",
            ">;"
        }
    .end annotation
.end field

.field offwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

.field videolistener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 192
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5468\u5361"

    aput-object v1, v0, v3

    const-string v1, "20\u4e2a\u6c34\u6676"

    aput-object v1, v0, v5

    const-string v1, "55\u4e2a\u6c34\u6676"

    aput-object v1, v0, v6

    const-string v1, "120\u4e2a\u6c34\u6676"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "270\u4e2a\u6c34\u6676"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "840\u4e2a\u6c34\u6676"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2000\u4e2a\u6c34\u6676"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "2500\u4e2a\u6c34\u6676"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6697\u9ed1\u5957\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u65b0\u624b\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u9635\u5f62\u6269\u5145"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u5927\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "3\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "6\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u5927\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u83b1\u6602\u54c8\u7279"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u8fbe\u53e4\u8fbe"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u65af\u5c14\u592b"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u65b0\u624b\u793c\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u6b7b\u4ea1\u590d\u6d3b"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u4f20\u5947\u4f63\u5175"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "64\u683c\u5b50"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u4e00\u952e\u6ee1\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u53f2\u8bd7\u5957\u88c5"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u6280\u80fd\u89e3\u9501"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u8840\u74f6"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5377\u8f74"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->PayId2:[Ljava/lang/String;

    .line 196
    const/16 v0, 0x22

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4f63\u5175\u5c4b\u6253\u5f00"

    aput-object v1, v0, v3

    const-string v1, "\u5546\u5e97\u754c\u9762\u6253\u5f00"

    aput-object v1, v0, v5

    const-string v1, "\u6210\u5c31\u754c\u9762\u6253\u5f00"

    aput-object v1, v0, v6

    const-string v1, "\u5e03\u9635\u754c\u9762\u6253\u5f00"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u82f1\u96c4\u6bbf\u5802\u6253\u5f00"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u57ce\u9547\u754c\u9762\u7684\u793c\u5305\u6253\u5f00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u7a00\u4e16\u5957\u88c5\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u9635\u578b\u6269\u5145\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5f3a\u529b\u6355\u6349\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u6025\u901f\u51b7\u5374\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u751f\u547d\u6062\u590d\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u53cc\u500d\u7ecf\u9a8c\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u53cc\u500d\u6389\u7387\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "16\u683c\u5305\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u8fde\u53475\u7ea7\u8d2d\u4e70"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u843d\u9b44\u5251\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6444\u9b42\u65a9\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5200\u950b\u4e4b\u821e\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u51a5\u6cb3\u7834\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u6b66\u5668\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u76d4\u7532\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u540a\u5760\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u7b26\u77f3\u7b49\u7ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u8fdb\u5165\u5173\u5361"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u5173\u5361\u7684\u6b7b\u4ea1"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u5f00\u59cb\u6b21\u6570"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "1\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "3\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "6\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "12\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "18\u4e07\u91d1\u5e01"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u8840\u74f6"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u5377\u8f74"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "\u590d\u6d3b"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->eventId2:[Ljava/lang/String;

    .line 202
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "week_card_01"

    aput-object v1, v0, v3

    const-string v1, "diamonds_20.00"

    aput-object v1, v0, v5

    const-string v1, "diamonds_60.00"

    aput-object v1, v0, v6

    const-string v1, "diamonds_130.00"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "crystals_270.00"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "crystals_840.00"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "crystals_2000.00"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "diamonds_2500.00"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "package_01"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "hot_sale_01"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mSku:[Ljava/lang/String;

    .line 209
    sput-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    .line 210
    sput v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurLevel:I

    .line 211
    const/4 v0, -0x1

    sput v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 212
    sput-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    .line 213
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    .line 214
    sput v3, Lcom/yunva/monsterhunter/MonsterHunter;->mScore:I

    .line 215
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->mNeedUpLoadScore:Z

    .line 216
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->mShowLeaderBoard:Z

    .line 217
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->mIsLoginFacebook:Z

    .line 218
    sput-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mFacebookMsg:Ljava/lang/String;

    .line 219
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->mRequestFacebook:Z

    .line 222
    sput-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurQurySku:Ljava/lang/String;

    .line 223
    sput-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurBuySku:Ljava/lang/String;

    .line 224
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->m_isRequestVedioAds:Z

    .line 234
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$1;

    invoke-direct {v0}, Lcom/yunva/monsterhunter/MonsterHunter$1;-><init>()V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    .line 637
    const-string v0, "cocos2dcpp"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 926
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$5;

    invoke-direct {v0}, Lcom/yunva/monsterhunter/MonsterHunter$5;-><init>()V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mPurchaseFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    .line 971
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$6;

    invoke-direct {v0}, Lcom/yunva/monsterhunter/MonsterHunter$6;-><init>()V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mConsumeFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mTrackers:Ljava/util/HashMap;

    .line 221
    iput-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 227
    iput-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter;->callbackManager:Lcom/facebook/CallbackManager;

    .line 228
    iput-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter;->gameRequestDialog:Lcom/facebook/share/widget/GameRequestDialog;

    .line 985
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$7;

    invoke-direct {v0, p0}, Lcom/yunva/monsterhunter/MonsterHunter$7;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    iput-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGotInventoryListener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

    .line 1683
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$16;

    invoke-direct {v0, p0}, Lcom/yunva/monsterhunter/MonsterHunter$16;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    iput-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->videolistener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    .line 1795
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$17;

    invoke-direct {v0, p0}, Lcom/yunva/monsterhunter/MonsterHunter$17;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    iput-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->offwallListener:Lcom/ironsource/mediationsdk/sdk/OfferwallListener;

    return-void
.end method

.method private static Buy(I)V
    .registers 3
    .param p0, "index"    # I

    .prologue
    .line 641
    sput p0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 643
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    .line 644
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x456

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 645
    return-void
.end method

.method private static ExtraLevel(I)V
    .registers 5
    .param p0, "level"    # I

    .prologue
    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/TDGAMission;->onCompleted(Ljava/lang/String;)V

    .line 737
    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v1, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 738
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "\u5b8c\u6210\u5173\u5361"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 739
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u5361id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 740
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 738
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 742
    return-void
.end method

.method private LoginGooglePlayGameCenter()V
    .registers 3

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-nez v0, :cond_19

    .line 1059
    new-instance v0, Lcom/google/example/games/basegameutils/GameHelper;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/google/example/games/basegameutils/GameHelper;-><init>(Landroid/app/Activity;I)V

    iput-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 1061
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-virtual {v0, v1}, Lcom/google/example/games/basegameutils/GameHelper;->setup(Lcom/google/example/games/basegameutils/GameHelper$GameHelperListener;)V

    .line 1062
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->beginUserInitiatedSignIn()V

    .line 1066
    :cond_18
    :goto_18
    return-void

    .line 1063
    :cond_19
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_18

    .line 1064
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->reconnectClient()V

    goto :goto_18
.end method

.method private static LoseLevel(I)V
    .registers 5
    .param p0, "level"    # I

    .prologue
    .line 758
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "level:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u8fc7\u5173\u5931\u8d25\u6216\u8005\u81ea\u884c\u9000\u51fa\u6e38\u620f"

    invoke-static {v1, v2}, Lcom/tendcloud/tenddata/TDGAMission;->onFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v1, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v0

    .line 760
    .local v0, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v1, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v2, "\u5173\u5361\u5931\u8d25"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 761
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5173\u5361id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v1

    .line 762
    invoke-virtual {v1}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 760
    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 763
    return-void
.end method

.method static synthetic access$000()Lcom/yunva/monsterhunter/MonsterHunter;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    return-object v0
.end method

.method static synthetic access$100()V
    .registers 0

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->exitGame()V

    return-void
.end method

.method static synthetic access$1000(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->showProgress(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100()V
    .registers 0

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->dissmissProgress()V

    return-void
.end method

.method static synthetic access$1200()V
    .registers 0

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->showActiveCode()V

    return-void
.end method

.method static synthetic access$1300(Lcom/yunva/monsterhunter/MonsterHunter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/yunva/monsterhunter/MonsterHunter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/yunva/monsterhunter/MonsterHunter;->shareGooglePlusMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 1
    .param p0, "x0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->shareWithFaceBook()V

    return-void
.end method

.method static synthetic access$1500(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 1
    .param p0, "x0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->showLeaderboard()V

    return-void
.end method

.method static synthetic access$1600(Lcom/yunva/monsterhunter/MonsterHunter;I)V
    .registers 2
    .param p0, "x0"    # Lcom/yunva/monsterhunter/MonsterHunter;
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/yunva/monsterhunter/MonsterHunter;->upLoadScoreToPlus(I)V

    return-void
.end method

.method static synthetic access$1702(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 122
    sput-boolean p0, Lcom/yunva/monsterhunter/MonsterHunter;->m_isRequestVedioAds:Z

    return p0
.end method

.method static synthetic access$1800(Ljava/lang/String;)I
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->excuteDuihuan(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900()Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurQurySku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    sput-object p0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurQurySku:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->PayId2:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 122
    sput-boolean p0, Lcom/yunva/monsterhunter/MonsterHunter;->mIsLoginFacebook:Z

    return p0
.end method

.method static synthetic access$2100(Ljava/lang/String;)V
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->setPlayerName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200()V
    .registers 0

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->keyBack()V

    return-void
.end method

.method static synthetic access$2300()I
    .registers 1

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->vedioAdsOver()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(I)V
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 122
    invoke-static {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->jfqReward(I)V

    return-void
.end method

.method static synthetic access$300()Lcom/yunva/monsterhunter/IabHelper;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    return-object v0
.end method

.method static synthetic access$302(Lcom/yunva/monsterhunter/IabHelper;)Lcom/yunva/monsterhunter/IabHelper;
    .registers 1
    .param p0, "x0"    # Lcom/yunva/monsterhunter/IabHelper;

    .prologue
    .line 122
    sput-object p0, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    return-object p0
.end method

.method static synthetic access$400(II)V
    .registers 2
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 122
    invoke-static {p0, p1}, Lcom/yunva/monsterhunter/MonsterHunter;->payCallBack(II)V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mStrTrade:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    sput-object p0, Lcom/yunva/monsterhunter/MonsterHunter;->mStrTrade:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getGoogleKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700()I
    .registers 1

    .prologue
    .line 122
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getAnHeiState()I

    move-result v0

    return v0
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurBuySku:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 122
    sput-object p0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurBuySku:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mSku:[Ljava/lang/String;

    return-object v0
.end method

.method private static bannervisiable(I)V
    .registers 3
    .param p0, "visable"    # I

    .prologue
    .line 1328
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x467

    invoke-virtual {v0, v1, p0, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1329
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1330
    return-void
.end method

.method private static buyEquipEvent(I)V
    .registers 5
    .param p0, "level"    # I

    .prologue
    .line 745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 746
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8d2d\u4e70\u5173\u5361:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 747
    const-string v1, "buyEquipEvent"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 748
    return-void
.end method

.method public static cheackOtherAds()V
    .registers 7

    .prologue
    const/4 v6, 0x1

    .line 1622
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/yunva/monsterhunter/MonsterHunter;->m_startTime:J

    sub-long/2addr v2, v4

    long-to-float v0, v2

    .line 1623
    .local v0, "timedelta":F
    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 1624
    const/high16 v1, 0x42200000    # 40.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_13

    .line 1642
    :cond_12
    :goto_12
    return-void

    .line 1628
    :cond_13
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/VunglePub;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1629
    :cond_23
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v1, v6, :cond_33

    .line 1630
    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    const-string v2, "no available ads"

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_12

    .line 1632
    :cond_33
    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    const-string v2, "\u6c92\u6709\u53ef\u7528\u7684\u5ee3\u544a..."

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method private static cheackProgram()V
    .registers 2

    .prologue
    .line 648
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 649
    return-void
.end method

.method static compareTime()V
    .registers 4

    .prologue
    .line 796
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 797
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v3

    add-int/lit16 v3, v3, 0x76c

    invoke-static {v3}, Lcom/yunva/monsterhunter/MonsterHunter;->setYear(I)V

    .line 798
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v2

    .line 799
    .local v2, "month":I
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    .line 800
    .local v1, "day":I
    invoke-static {v2, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->getGiftTime(II)V

    .line 803
    return-void
.end method

.method private static dismissMsg()V
    .registers 2

    .prologue
    .line 656
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x459

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 657
    return-void
.end method

.method private static dissmissProgress()V
    .registers 1

    .prologue
    .line 789
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_c

    .line 790
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 791
    const/4 v0, 0x0

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    .line 793
    :cond_c
    return-void
.end method

.method private static event(II)V
    .registers 7
    .param p0, "id"    # I
    .param p1, "param"    # I

    .prologue
    .line 675
    const/16 v2, 0x8

    if-ne p0, v2, :cond_1b

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/TDGAMission;->onBegin(Ljava/lang/String;)V

    .line 688
    :goto_1a
    return-void

    .line 679
    :cond_1b
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 680
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "level"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    const-string v2, "param"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "param:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->eventId2:[Ljava/lang/String;

    aget-object v2, v2, p0

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 684
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v3, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v2, v3}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 685
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    sget-object v3, Lcom/yunva/monsterhunter/MonsterHunter;->eventId2:[Ljava/lang/String;

    aget-object v3, v3, p0

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 686
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u53c2\u6570:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 685
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    goto/16 :goto_1a
.end method

.method private static event2(II)V
    .registers 2
    .param p0, "id"    # I
    .param p1, "param"    # I

    .prologue
    .line 672
    return-void
.end method

.method private static eventAchive(I)V
    .registers 5
    .param p0, "achiveid"    # I

    .prologue
    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 701
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "achiveid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "achiveid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    const-string v1, "1"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 703
    return-void
.end method

.method private static eventBuyPhy()V
    .registers 5

    .prologue
    .line 1387
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1388
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "buy"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    const-string v2, "\u4e70\u4f53\u529b"

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1390
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v3, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v2, v3}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 1391
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "\u4e70\u4f53\u529b"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1392
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 1391
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1393
    return-void
.end method

.method private static eventDuizhan()V
    .registers 5

    .prologue
    .line 1409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1410
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "\u5bf9\u6218\u6a21\u5f0f"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    const-string v2, "\u5bf9\u6218"

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1413
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v3, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v2, v3}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 1414
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "\u5bf9\u6218\u6a21\u5f0f"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1415
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 1414
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1416
    return-void
.end method

.method private static eventDuizhan2(I)V
    .registers 1
    .param p0, "param"    # I

    .prologue
    .line 1421
    return-void
.end method

.method private static eventTask(I)V
    .registers 6
    .param p0, "id"    # I

    .prologue
    .line 1370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1371
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "taskId"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    const-string v2, "TaskEvent"

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1374
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v3, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v2, v3}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 1375
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "\u9886\u53d6\u6bcf\u65e5\u4efb\u52a1"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1376
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4efb\u52a1id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 1375
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1378
    return-void
.end method

.method private static eventUnLockMonster(I)V
    .registers 5
    .param p0, "monsterId"    # I

    .prologue
    .line 1381
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1382
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "monsterId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monsterId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string v1, "UnLockMonster"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1384
    return-void
.end method

.method private static eventWiujin(II)V
    .registers 6
    .param p0, "time"    # I
    .param p1, "herolevel"    # I

    .prologue
    .line 751
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 752
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u65f6\u95f4(\u79d2):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string v1, "level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "herolevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    const-string v1, "wujinmoshi"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 755
    return-void
.end method

.method private static eventWiujin2()V
    .registers 0

    .prologue
    .line 1404
    return-void
.end method

.method private static eventshop(I)V
    .registers 5
    .param p0, "index"    # I

    .prologue
    .line 1396
    const/4 v2, 0x3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u7279\u6b8a\u5546\u54c1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\u91d1\u5e01"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\u6c34\u6676"

    aput-object v3, v1, v2

    .line 1397
    .local v1, "temp":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1398
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "\u5f53\u524d\u70b9\u51fb\u7684\u6309\u94ae"

    aget-object v3, v1, p0

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    const-string v2, "\u5546\u5e97\u6309\u94ae"

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1400
    return-void
.end method

.method private static eventteach(Ljava/lang/String;)V
    .registers 6
    .param p0, "param"    # Ljava/lang/String;

    .prologue
    .line 691
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 692
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "param"

    invoke-interface {v0, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v2, "teach"

    invoke-static {v2, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 694
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v3, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v2, v3}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 695
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v2, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v3, "teach"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 696
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setLabel(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 695
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 697
    return-void
.end method

.method private static native excuteDuihuan(Ljava/lang/String;)I
.end method

.method private static native exitGame()V
.end method

.method private static native getAnHeiState()I
.end method

.method private static getDate()I
    .registers 2

    .prologue
    .line 1597
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1598
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    return v1
.end method

.method private static native getGiftTime(II)V
.end method

.method private static native getGoodPrice(I)I
.end method

.method private static native getGoogleKey()Ljava/lang/String;
.end method

.method private static native getHeroLevel()I
.end method

.method private static getHour()I
    .registers 2

    .prologue
    .line 1607
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1608
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    return v1
.end method

.method private static getLevel(I)V
    .registers 1
    .param p0, "level"    # I

    .prologue
    .line 721
    sput p0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurLevel:I

    .line 722
    return-void
.end method

.method private getLinkContent()Lcom/facebook/share/model/ShareContent;
    .registers 4

    .prologue
    .line 1200
    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-virtual {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b005d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    .local v0, "url":Ljava/lang/String;
    new-instance v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;-><init>()V

    const-string v2, "HelloFriends"

    .line 1203
    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    .line 1204
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/model/ShareLinkContent$Builder;

    const-string v2, "https://scontent-a.xx.fbcdn.net/hphotos-xap1/v/t1.0-9/10847865_320736284789513_2990512908835743183_n.png?oh=181cecc54fe0fcd8248a85b44ab30bae&oe=5546B490"

    .line 1206
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1205
    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setImageUrl(Landroid/net/Uri;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mFacebookMsg:Ljava/lang/String;

    .line 1207
    invoke-virtual {v1, v2}, Lcom/facebook/share/model/ShareLinkContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareLinkContent$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareLinkContent$Builder;->build()Lcom/facebook/share/model/ShareLinkContent;

    move-result-object v1

    .line 1202
    return-object v1
.end method

.method private static getMinutes()I
    .registers 2

    .prologue
    .line 1612
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1613
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    return v1
.end method

.method private static getMonth()I
    .registers 2

    .prologue
    .line 1592
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1593
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    return v1
.end method

.method private static native getOpenLevel()I
.end method

.method static getOutTradeNo()Ljava/lang/String;
    .registers 7

    .prologue
    .line 811
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "MMddHHmmss"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 812
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 813
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 814
    .local v3, "strKey":Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 815
    .local v2, "r":Ljava/util/Random;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 816
    const/4 v4, 0x0

    const/16 v5, 0xf

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 817
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "strKey:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    return-object v3
.end method

.method private static getSecond()I
    .registers 2

    .prologue
    .line 1617
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1618
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    return v1
.end method

.method private static getWeekDay()I
    .registers 2

    .prologue
    .line 1602
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1603
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getDay()I

    move-result v1

    return v1
.end method

.method private static getYear()I
    .registers 2

    .prologue
    .line 1587
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1588
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    return v1
.end method

.method private static giftEvent(I)V
    .registers 5
    .param p0, "times"    # I

    .prologue
    .line 727
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 728
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "times"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9886\u5956\u6b21\u6570:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v1, "deilybonus"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 730
    return-void
.end method

.method private static heroLvelEvent(I)V
    .registers 2
    .param p0, "level"    # I

    .prologue
    .line 706
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->account:Lcom/tendcloud/tenddata/TDGAAccount;

    invoke-virtual {v0, p0}, Lcom/tendcloud/tenddata/TDGAAccount;->setLevel(I)V

    .line 707
    return-void
.end method

.method private static isInstallGame(Ljava/lang/String;)I
    .registers 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1475
    const/4 v0, 0x1

    return v0
.end method

.method private static native jfqReward(I)V
.end method

.method private static native keyBack()V
.end method

.method private loginFb()V
    .registers 5

    .prologue
    .line 1212
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yunva/monsterhunter/MonsterHunter;->callbackManager:Lcom/facebook/CallbackManager;

    new-instance v3, Lcom/yunva/monsterhunter/MonsterHunter$9;

    invoke-direct {v3, p0}, Lcom/yunva/monsterhunter/MonsterHunter$9;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1262
    new-instance v0, Lcom/facebook/login/widget/LoginButton;

    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {v0, v1}, Lcom/facebook/login/widget/LoginButton;-><init>(Landroid/content/Context;)V

    .line 1263
    .local v0, "lgtn":Lcom/facebook/login/widget/LoginButton;
    invoke-virtual {v0}, Lcom/facebook/login/widget/LoginButton;->callOnClick()Z

    .line 1264
    return-void
.end method

.method private static monsterEvent(II)V
    .registers 7
    .param p0, "monsterid"    # I
    .param p1, "level"    # I

    .prologue
    .line 710
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "38"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "39"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "40"

    aput-object v3, v0, v2

    const/4 v2, 0x3

    const-string v3, "41"

    aput-object v3, v0, v2

    const/4 v2, 0x4

    const-string v3, "42"

    aput-object v3, v0, v2

    const/4 v2, 0x5

    const-string v3, "43"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "44"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "45"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "46"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "47"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "48"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "49"

    aput-object v3, v0, v2

    .line 714
    .local v0, "ID":[Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 715
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "monsterid"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "monsterid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v2, "level"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    aget-object v2, v0, p0

    invoke-static {v2, v1}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 718
    return-void
.end method

.method private static moreGame()V
    .registers 2

    .prologue
    .line 1539
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x465

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1547
    return-void
.end method

.method private static openFbView()V
    .registers 2

    .prologue
    .line 1554
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    new-instance v1, Lcom/yunva/monsterhunter/MonsterHunter$13;

    invoke-direct {v1}, Lcom/yunva/monsterhunter/MonsterHunter$13;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1568
    return-void
.end method

.method private static openTweeterView()V
    .registers 2

    .prologue
    .line 1571
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    new-instance v1, Lcom/yunva/monsterhunter/MonsterHunter$14;

    invoke-direct {v1}, Lcom/yunva/monsterhunter/MonsterHunter$14;-><init>()V

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1584
    return-void
.end method

.method private static native payCallBack(II)V
.end method

.method private postStatusUpdate()V
    .registers 9

    .prologue
    .line 1167
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$8;

    invoke-direct {v0, p0}, Lcom/yunva/monsterhunter/MonsterHunter$8;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    .line 1183
    .local v0, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    new-instance v3, Lcom/facebook/share/widget/ShareDialog;

    invoke-direct {v3, p0}, Lcom/facebook/share/widget/ShareDialog;-><init>(Landroid/app/Activity;)V

    .line 1184
    .local v3, "shareDialog":Lcom/facebook/share/widget/ShareDialog;
    iget-object v5, p0, Lcom/yunva/monsterhunter/MonsterHunter;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-virtual {v3, v5, v0}, Lcom/facebook/share/widget/ShareDialog;->registerCallback(Lcom/facebook/CallbackManager;Lcom/facebook/FacebookCallback;)V

    .line 1185
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->getLinkContent()Lcom/facebook/share/model/ShareContent;

    move-result-object v1

    .line 1187
    .local v1, "content":Lcom/facebook/share/model/ShareContent;
    sget-object v5, Lcom/facebook/share/widget/ShareDialog$Mode;->NATIVE:Lcom/facebook/share/widget/ShareDialog$Mode;

    invoke-virtual {v3, v1, v5}, Lcom/facebook/share/widget/ShareDialog;->show(Lcom/facebook/share/model/ShareContent;Lcom/facebook/share/widget/ShareDialog$Mode;)V

    .line 1189
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1190
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "Platform"

    const-string v6, "FaceBook"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v5, "Share"

    invoke-static {v5, v2}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1193
    sget-object v5, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v6, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v5, v6}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    .line 1194
    .local v4, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v6, "facebook\u5206\u4eab"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1195
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 1194
    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1196
    return-void
.end method

.method private static requestFBView()V
    .registers 2

    .prologue
    .line 1550
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x46a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1551
    return-void
.end method

.method private static requestShareFaceBook(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1281
    sput-object p0, Lcom/yunva/monsterhunter/MonsterHunter;->mFacebookMsg:Ljava/lang/String;

    .line 1282
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x460

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1283
    return-void
.end method

.method private static requestShareGooglePlues(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1272
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x45f

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1273
    return-void
.end method

.method private static requestShowLeaderBoard()V
    .registers 2

    .prologue
    .line 1291
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1292
    return-void
.end method

.method private static requestUploadScore(I)V
    .registers 3
    .param p0, "score"    # I

    .prologue
    .line 1298
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x462

    invoke-virtual {v0, v1, p0, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1300
    return-void
.end method

.method private static native setLanguage(I)V
.end method

.method private static native setOperator(I)V
.end method

.method private static native setPlayerName(Ljava/lang/String;)V
.end method

.method private static native setYear(I)V
.end method

.method private static setbannerPos(FF)V
    .registers 6
    .param p0, "lp"    # F
    .param p1, "tp"    # F

    .prologue
    .line 1334
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1335
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "lp"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1336
    const-string v2, "tp"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1337
    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v3, 0x469

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1338
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1339
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 1340
    return-void
.end method

.method private static setbannerPos(I)V
    .registers 3
    .param p0, "ptype"    # I

    .prologue
    .line 1344
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x468

    invoke-virtual {v0, v1, p0, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1345
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1346
    return-void
.end method

.method private shareGooglePlusMsg(Ljava/lang/String;)V
    .registers 9
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1130
    new-instance v0, Lcom/google/android/gms/plus/PlusShare$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/gms/plus/PlusShare$Builder;-><init>(Landroid/app/Activity;)V

    .line 1131
    .local v0, "builder":Lcom/google/android/gms/plus/PlusShare$Builder;
    const v4, 0x7f0b005d

    .line 1132
    invoke-virtual {p0, v4}, Lcom/yunva/monsterhunter/MonsterHunter;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1131
    invoke-virtual {v0, v4}, Lcom/google/android/gms/plus/PlusShare$Builder;->setContentUrl(Landroid/net/Uri;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 1133
    const-string v4, "text/plain"

    invoke-virtual {v0, v4}, Lcom/google/android/gms/plus/PlusShare$Builder;->setType(Ljava/lang/String;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 1134
    invoke-virtual {v0, p1}, Lcom/google/android/gms/plus/PlusShare$Builder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/gms/plus/PlusShare$Builder;

    .line 1136
    :try_start_1b
    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusShare$Builder;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x45c

    invoke-virtual {v4, v5, v6}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_26} :catch_6d

    .line 1142
    :goto_26
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1143
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "Platform"

    const-string v5, "GooglePlus"

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    const-string v4, "Share"

    invoke-static {v4, v2}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1145
    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v5, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v4, v5}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v3

    .line 1146
    .local v3, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v4, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v5, "g+\u5206\u4eab"

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1147
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 1146
    invoke-virtual {v3, v4}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1148
    return-void

    .line 1138
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "t":Lcom/google/android/gms/analytics/Tracker;
    :catch_6d
    move-exception v1

    .line 1139
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    const-string v5, "connect g+ failed "

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_26
.end method

.method private shareWithFaceBook()V
    .registers 2

    .prologue
    .line 1154
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mRequestFacebook:Z

    .line 1155
    sget-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mIsLoginFacebook:Z

    if-nez v0, :cond_b

    .line 1156
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->loginFb()V

    .line 1160
    :goto_a
    return-void

    .line 1158
    :cond_b
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->postStatusUpdate()V

    goto :goto_a
.end method

.method private static showActiveCode()V
    .registers 6

    .prologue
    .line 837
    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 838
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f090020

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 839
    .local v2, "myView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 840
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 841
    sget v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_50

    .line 842
    const-string v4, "Get Gift"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 843
    const v4, 0x7f0700b2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 844
    .local v3, "textview":Landroid/widget/TextView;
    const-string v4, "Please enter your present code to get your gift"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 849
    .end local v3    # "textview":Landroid/widget/TextView;
    :goto_30
    const-string v4, "Ok"

    new-instance v5, Lcom/yunva/monsterhunter/MonsterHunter$3;

    invoke-direct {v5, v2}, Lcom/yunva/monsterhunter/MonsterHunter$3;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 913
    const-string v4, "Cancel"

    new-instance v5, Lcom/yunva/monsterhunter/MonsterHunter$4;

    invoke-direct {v5}, Lcom/yunva/monsterhunter/MonsterHunter$4;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 921
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 922
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 923
    return-void

    .line 846
    :cond_50
    const-string v4, "\u734e\u54c1\u514c\u63db"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_30
.end method

.method private static showAds(I)V
    .registers 1
    return-void
.end method

.method private static showAdsList()V
    .registers 1
    return-void
.end method

.method private static showCCError(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1646
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x466

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1647
    return-void
.end method

.method private static showExitDialog()V
    .registers 2

    .prologue
    .line 833
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x45a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 834
    return-void
.end method

.method private static showInsertName(Ljava/lang/String;)V
    .registers 7
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1445
    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1446
    .local v2, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f090021

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1448
    .local v3, "myView":Landroid/view/View;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1449
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1450
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1451
    const v4, 0x7f070041

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1452
    .local v1, "edit":Landroid/widget/EditText;
    invoke-virtual {v1, p0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1453
    const-string v4, "\u786e\u5b9a"

    new-instance v5, Lcom/yunva/monsterhunter/MonsterHunter$10;

    invoke-direct {v5, v1}, Lcom/yunva/monsterhunter/MonsterHunter$10;-><init>(Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1461
    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/yunva/monsterhunter/MonsterHunter$11;

    invoke-direct {v5}, Lcom/yunva/monsterhunter/MonsterHunter$11;-><init>()V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1469
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1470
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 1471
    return-void
.end method

.method public static showJfq(Ljava/lang/String;)V
    .registers 1
    .param p0, "v"    # Ljava/lang/String;

    .prologue
    .line 1442
    return-void
.end method

.method private showLeaderboard()V
    .registers 3

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1115
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    .line 1117
    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    .line 1116
    invoke-interface {v0, v1}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->getAllLeaderboardsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    .line 1115
    invoke-virtual {p0, v0, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1122
    :goto_1c
    return-void

    .line 1119
    :cond_1d
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->LoginGooglePlayGameCenter()V

    .line 1120
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mShowLeaderBoard:Z

    goto :goto_1c
.end method

.method private static showMsg(Ljava/lang/String;)V
    .registers 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 652
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x458

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 653
    return-void
.end method

.method private static showProgress(Ljava/lang/String;)V
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 660
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    if-nez v0, :cond_20

    .line 661
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    .line 662
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 663
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 664
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 666
    :cond_20
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 667
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 669
    :cond_2d
    return-void
.end method

.method private static showRate()V
    .registers 8

    .prologue
    .line 1303
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1304
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1305
    const-string v5, "https://play.google.com/store/apps/details?id=com.joynow.monster.gp"

    .line 1306
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1307
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1308
    const-string v5, "com.android.vending"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1311
    :try_start_18
    sget-object v5, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-virtual {v5, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivity(Landroid/content/Intent;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1d} :catch_64

    .line 1317
    :goto_1d
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1318
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "xx"

    const-string v6, "1"

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    const-string v5, "Rate"

    invoke-static {v5, v3}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1321
    sget-object v5, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    sget-object v6, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v5, v6}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v4

    .line 1322
    .local v4, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v5, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    invoke-direct {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;-><init>()V

    const-string v6, "\u8bc4\u4ef7\u6e38\u620f"

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setCategory(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1323
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOpenLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->setAction(Ljava/lang/String;)Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/analytics/HitBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 1322
    invoke-virtual {v4, v5}, Lcom/google/android/gms/analytics/Tracker;->send(Ljava/util/Map;)V

    .line 1325
    return-void

    .line 1312
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "t":Lcom/google/android/gms/analytics/Tracker;
    :catch_64
    move-exception v1

    .line 1314
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method

.method private static showVedioAds()V
    .registers 2

    .prologue
    .line 1650
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x464

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1651
    return-void
.end method

.method private static showduihuan()V
    .registers 2

    .prologue
    .line 829
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->sHandler:Landroid/os/Handler;

    const/16 v1, 0x45b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 830
    return-void
.end method

.method public static tdEvent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "eventid"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    .line 1524
    const-string v4, "tag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "eventid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":param:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    const-string v4, ";"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1526
    .local v3, "params":[Ljava/lang/String;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1527
    .local v2, "p":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2e
    array-length v4, v3

    if-ge v0, v4, :cond_4a

    .line 1528
    aget-object v4, v3, v0

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1529
    .local v1, "mp":[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_3e

    .line 1536
    .end local v1    # "mp":[Ljava/lang/String;
    :goto_3d
    return-void

    .line 1532
    .restart local v1    # "mp":[Ljava/lang/String;
    :cond_3e
    const/4 v4, 0x0

    aget-object v4, v1, v4

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    add-int/lit8 v0, v0, 0x1

    goto :goto_2e

    .line 1535
    .end local v1    # "mp":[Ljava/lang/String;
    :cond_4a
    invoke-static {p0, v2}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3d
.end method

.method private static toPlayStore(Ljava/lang/String;)V
    .registers 3
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1500
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    new-instance v1, Lcom/yunva/monsterhunter/MonsterHunter$12;

    invoke-direct {v1, p0}, Lcom/yunva/monsterhunter/MonsterHunter$12;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1521
    return-void
.end method

.method private upLoadScoreToPlus(I)V
    .registers 8
    .param p1, "score"    # I

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/GameHelper;->isSignedIn()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1099
    :cond_c
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->LoginGooglePlayGameCenter()V

    .line 1100
    sput p1, Lcom/yunva/monsterhunter/MonsterHunter;->mScore:I

    .line 1101
    const/4 v0, 0x1

    sput-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mNeedUpLoadScore:Z

    .line 1107
    :goto_14
    return-void

    .line 1104
    :cond_15
    sget-object v0, Lcom/google/android/gms/games/Games;->Leaderboards:Lcom/google/android/gms/games/leaderboard/Leaderboards;

    iget-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v1}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    const v2, 0x7f0b0059

    .line 1105
    invoke-virtual {p0, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->getString(I)Ljava/lang/String;

    move-result-object v2

    mul-int/lit8 v3, p1, 0xa

    int-to-long v4, v3

    .line 1104
    invoke-interface {v0, v1, v2, v4, v5}, Lcom/google/android/gms/games/leaderboard/Leaderboards;->submitScore(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;J)V

    .line 1106
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->showLeaderboard()V

    goto :goto_14
.end method

.method private static native vedioAdsOver()I
.end method


# virtual methods
.method public getFromRaw(I)Ljava/lang/String;
    .registers 9
    .param p1, "id"    # I

    .prologue
    .line 620
    const-string v4, ""

    .line 622
    .local v4, "result":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 624
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 626
    .local v3, "lenght":I
    new-array v0, v3, [B

    .line 628
    .local v0, "buffer":[B
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 629
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v0, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1c

    .end local v4    # "result":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    move-object v4, v5

    .line 633
    .end local v0    # "buffer":[B
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "lenght":I
    .end local v5    # "result":Ljava/lang/String;
    .restart local v4    # "result":Ljava/lang/String;
    :goto_1b
    return-object v4

    .line 630
    :catch_1c
    move-exception v1

    .line 631
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method declared-synchronized getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;
    .registers 6
    .param p1, "trackerId"    # Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    .prologue
    .line 1672
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1673
    invoke-static {p0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    .line 1674
    .local v0, "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getLogger()Lcom/google/android/gms/analytics/Logger;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/google/android/gms/analytics/Logger;->setLogLevel(I)V

    .line 1676
    const-string v2, "UA-63388727-1"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->newTracker(Ljava/lang/String;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v1

    .line 1677
    .local v1, "t":Lcom/google/android/gms/analytics/Tracker;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/Tracker;->enableAdvertisingIdCollection(Z)V

    .line 1678
    iget-object v2, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1680
    .end local v0    # "analytics":Lcom/google/android/gms/analytics/GoogleAnalytics;
    .end local v1    # "t":Lcom/google/android/gms/analytics/Tracker;
    :cond_24
    iget-object v2, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mTrackers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/analytics/Tracker;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2e

    monitor-exit p0

    return-object v2

    .line 1672
    :catchall_2e
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1024
    invoke-super {p0, p1, p2, p3}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1046
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->callbackManager:Lcom/facebook/CallbackManager;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/CallbackManager;->onActivityResult(IILandroid/content/Intent;)Z

    .line 1047
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    if-eqz v0, :cond_16

    .line 1048
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/yunva/monsterhunter/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    .line 1052
    :cond_15
    :goto_15
    return-void

    .line 1049
    :cond_16
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    if-eqz v0, :cond_15

    sget-boolean v0, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    if-nez v0, :cond_15

    .line 1050
    iget-object v0, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/GameHelper;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_15
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x80

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 490
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 493
    sput-object p0, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    .line 495
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/facebook/FacebookSdk;->sdkInitialize(Landroid/content/Context;)V

    .line 496
    const-string v9, "5E5853774218FC6736ABEE2DF8403871"

    const-string v10, "GooglePlay4.0"

    invoke-static {p0, v9, v10}, Lcom/tendcloud/tenddata/TalkingDataGA;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccount(Ljava/lang/String;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v9

    sput-object v9, Lcom/yunva/monsterhunter/MonsterHunter;->account:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 499
    sget-object v9, Lcom/yunva/monsterhunter/MonsterHunter;->account:Lcom/tendcloud/tenddata/TDGAAccount;

    sget-object v10, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->ANONYMOUS:Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    invoke-virtual {v9, v10}, Lcom/tendcloud/tenddata/TDGAAccount;->setAccountType(Lcom/tendcloud/tenddata/TDGAAccount$AccountType;)V

    .line 505
    invoke-static {}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->getConfigObj()Lcom/ironsource/adapters/supersonicads/SupersonicConfig;

    move-result-object v9

    invoke-virtual {v9, v12}, Lcom/ironsource/adapters/supersonicads/SupersonicConfig;->setClientSideCallbacks(Z)V

    .line 506
    const-string v9, "6e87efb5"

    invoke-static {p0, v9}, Lcom/ironsource/mediationsdk/IronSource;->init(Landroid/app/Activity;Ljava/lang/String;)V

    .line 507
    iget-object v9, p0, Lcom/yunva/monsterhunter/MonsterHunter;->videolistener:Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;

    invoke-static {v9}, Lcom/ironsource/mediationsdk/IronSource;->setRewardedVideoListener(Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;)V

    .line 509
    invoke-static {}, Lcom/facebook/CallbackManager$Factory;->create()Lcom/facebook/CallbackManager;

    move-result-object v9

    iput-object v9, p0, Lcom/yunva/monsterhunter/MonsterHunter;->callbackManager:Lcom/facebook/CallbackManager;

    .line 511
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 513
    .local v7, "pkm":Landroid/content/pm/PackageManager;
    :try_start_4a
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/MonsterHunter;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 514
    .local v3, "info":Landroid/content/pm/PackageInfo;
    sget-object v9, Lcom/yunva/monsterhunter/MonsterHunter;->account:Lcom/tendcloud/tenddata/TDGAAccount;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/tendcloud/tenddata/TDGAAccount;->setGameServer(Ljava/lang/String;)V
    :try_end_5a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4a .. :try_end_5a} :catch_db

    .line 520
    .end local v3    # "info":Landroid/content/pm/PackageInfo;
    :goto_5a
    const-string v9, "odex"

    invoke-virtual {p0, v9, v11}, Lcom/yunva/monsterhunter/MonsterHunter;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 521
    .local v5, "odex":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    .line 522
    .local v6, "odexPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/monster.apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, "flib":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 524
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/monster.dex"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .local v2, "flib2":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 526
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 527
    .local v4, "language":Ljava/lang/String;
    const-string v9, "zh_TW"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b2

    const-string v9, "zh"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e1

    .line 528
    :cond_b2
    invoke-static {v11}, Lcom/yunva/monsterhunter/MonsterHunter;->setLanguage(I)V

    .line 529
    sput v11, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    .line 535
    :goto_b7
    sget-object v9, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {p0, v9}, Lcom/yunva/monsterhunter/MonsterHunter;->getTracker(Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;)Lcom/google/android/gms/analytics/Tracker;

    move-result-object v8

    .line 536
    .local v8, "t":Lcom/google/android/gms/analytics/Tracker;
    new-instance v9, Lcom/yunva/monsterhunter/IabHelper;

    sget-object v10, Lcom/yunva/monsterhunter/MonsterHunter;->mInstance:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getGoogleKey()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/yunva/monsterhunter/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v9, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    .line 537
    sget-object v9, Lcom/yunva/monsterhunter/MonsterHunter;->mHelper:Lcom/yunva/monsterhunter/IabHelper;

    new-instance v10, Lcom/yunva/monsterhunter/MonsterHunter$2;

    invoke-direct {v10, p0}, Lcom/yunva/monsterhunter/MonsterHunter$2;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    invoke-virtual {v9, v10}, Lcom/yunva/monsterhunter/IabHelper;->startSetup(Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;)V

    .line 587
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lcom/yunva/monsterhunter/MonsterHunter;->m_startTime:J

    .line 588
    return-void

    .line 515
    .end local v1    # "flib":Ljava/io/File;
    .end local v2    # "flib2":Ljava/io/File;
    .end local v4    # "language":Ljava/lang/String;
    .end local v5    # "odex":Ljava/io/File;
    .end local v6    # "odexPath":Ljava/lang/String;
    .end local v8    # "t":Lcom/google/android/gms/analytics/Tracker;
    :catch_db
    move-exception v0

    .line 517
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_5a

    .line 531
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v1    # "flib":Ljava/io/File;
    .restart local v2    # "flib2":Ljava/io/File;
    .restart local v4    # "language":Ljava/lang/String;
    .restart local v5    # "odex":Ljava/io/File;
    .restart local v6    # "odexPath":Ljava/lang/String;
    :cond_e1
    invoke-static {v12}, Lcom/yunva/monsterhunter/MonsterHunter;->setLanguage(I)V

    .line 532
    sput v12, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    goto :goto_b7
.end method

.method public onCreateView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    .registers 8

    .prologue
    const/4 v1, 0x5

    .line 611
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 613
    .local v0, "glSurfaceView":Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;
    const/4 v2, 0x6

    const/4 v4, 0x0

    const/16 v5, 0x10

    const/16 v6, 0x8

    move v3, v1

    invoke-virtual/range {v0 .. v6}, Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 615
    return-object v0
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 824
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 826
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1656
    const/4 v0, 0x4

    if-ne p1, v0, :cond_d

    .line 1658
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$15;

    invoke-direct {v0, p0}, Lcom/yunva/monsterhunter/MonsterHunter$15;-><init>(Lcom/yunva/monsterhunter/MonsterHunter;)V

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/MonsterHunter;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 1666
    const/4 v0, 0x1

    .line 1668
    :goto_c
    return v0

    :cond_d
    invoke-super {p0, p1, p2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 782
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onPause()V

    .line 783
    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onPause(Landroid/app/Activity;)V

    .line 785
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->onPause(Landroid/app/Activity;)V

    .line 786
    return-void
.end method

.method protected onResume()V
    .registers 1

    .prologue
    .line 768
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onResume()V

    .line 769
    invoke-static {p0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onResume(Landroid/app/Activity;)V

    .line 776
    invoke-static {p0}, Lcom/ironsource/mediationsdk/IronSource;->onResume(Landroid/app/Activity;)V

    .line 777
    return-void
.end method

.method public onSignInFailed()V
    .registers 3

    .prologue
    .line 1071
    const-string v0, "TAG"

    const-string v1, "GooglePlay GameCenter Login Falid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    return-void
.end method

.method public onSignInSucceeded()V
    .registers 4

    .prologue
    .line 1077
    const-string v1, "TAG"

    const-string v2, "GooglePlay GameCenter Login Succeeded"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    sget-object v1, Lcom/google/android/gms/games/Games;->Players:Lcom/google/android/gms/games/Players;

    iget-object v2, p0, Lcom/yunva/monsterhunter/MonsterHunter;->mGameHelper:Lcom/google/example/games/basegameutils/GameHelper;

    invoke-virtual {v2}, Lcom/google/example/games/basegameutils/GameHelper;->getApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/android/gms/games/Players;->getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;

    move-result-object v0

    .line 1090
    .local v0, "p":Lcom/google/android/gms/games/Player;
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 1356
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStart()V

    .line 1359
    return-void
.end method

.method protected onStop()V
    .registers 1

    .prologue
    .line 1364
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onStop()V

    .line 1367
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass1 (com.yunva.monsterhunter.MonsterHunter$1)
.class final Lcom/yunva/monsterhunter/MonsterHunter$1;
.super Landroid/os/Handler;
.source "MonsterHunter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 234
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 238
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 239
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_264

    .line 485
    :cond_a
    :goto_a
    :pswitch_a
    return-void

    .line 255
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    .line 256
    .local v9, "b":Landroid/os/Bundle;
    const-string v1, "lp"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v14

    .line 257
    .local v14, "lp":F
    const-string v1, "tp"

    invoke-virtual {v9, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    goto :goto_a

    .line 262
    .end local v9    # "b":Landroid/os/Bundle;
    .end local v14    # "lp":F
    :pswitch_1b
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    invoke-direct {v10, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 263
    .local v10, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "exit the game?"

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 264
    const-string v1, "title"

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 265
    const-string v19, "yes"

    .line 266
    .local v19, "yes":Ljava/lang/String;
    const-string v16, "no"

    .line 267
    .local v16, "no":Ljava/lang/String;
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-nez v1, :cond_44

    .line 268
    const-string v1, "\u78ba\u5b9a\u9000\u51fa\u904a\u6232?"

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 269
    const-string v1, "\u63d0\u793a"

    invoke-virtual {v10, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 270
    const-string v19, "\u78ba\u5b9a"

    .line 271
    const-string v16, "\u53d6\u6d88"

    .line 274
    :cond_44
    new-instance v1, Lcom/yunva/monsterhunter/MonsterHunter$1$1;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/yunva/monsterhunter/MonsterHunter$1$1;-><init>(Lcom/yunva/monsterhunter/MonsterHunter$1;)V

    move-object/from16 v0, v19

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    new-instance v1, Lcom/yunva/monsterhunter/MonsterHunter$1$2;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Lcom/yunva/monsterhunter/MonsterHunter$1$2;-><init>(Lcom/yunva/monsterhunter/MonsterHunter$1;)V

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 291
    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    goto :goto_a

    .line 295
    .end local v10    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v16    # "no":Ljava/lang/String;
    .end local v19    # "yes":Ljava/lang/String;
    :pswitch_64
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 296
    .local v15, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "\u8bf7\u6c42\u8d2d\u4e70id"

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$200()[Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v2, v2, v3

    invoke-interface {v15, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v1, "\u8bf7\u6c42\u8d2d\u4e70"

    invoke-static {v1, v15}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 299
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    if-eqz v1, :cond_a7

    .line 301
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yunva/monsterhunter/IabHelper;->canExcuteBuy()Z

    move-result v1

    if-nez v1, :cond_a7

    .line 302
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->access$400(II)V

    .line 303
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    const-string v2, "please try later"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 304
    const/4 v1, -0x1

    sput v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 305
    const/4 v1, 0x0

    sput-boolean v1, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    goto/16 :goto_a

    .line 309
    :cond_a7
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->getOutTradeNo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 310
    const/16 v1, 0xa

    new-array v0, v1, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_290

    .line 312
    .local v18, "prices":[I
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget v17, v18, v1

    .line 313
    .local v17, "price":I
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$500()Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$200()[Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v2, v2, v3

    div-int/lit8 v3, v17, 0x64

    int-to-double v3, v3

    const-string v5, ""

    const-wide/16 v6, 0x0

    const-string v8, "default"

    .line 313
    invoke-static/range {v1 .. v8}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeRequest(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;DLjava/lang/String;)V

    .line 315
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    if-nez v1, :cond_f9

    .line 316
    new-instance v1, Lcom/yunva/monsterhunter/IabHelper;

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yunva/monsterhunter/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$302(Lcom/yunva/monsterhunter/IabHelper;)Lcom/yunva/monsterhunter/IabHelper;

    .line 317
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    new-instance v2, Lcom/yunva/monsterhunter/MonsterHunter$1$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/yunva/monsterhunter/MonsterHunter$1$3;-><init>(Lcom/yunva/monsterhunter/MonsterHunter$1;)V

    invoke-virtual {v1, v2}, Lcom/yunva/monsterhunter/IabHelper;->startSetup(Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;)V

    goto/16 :goto_a

    .line 355
    :cond_f9
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 357
    :try_start_ff
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$700()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14b

    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_14b

    .line 358
    const-string v1, "package_02"

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 359
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    const-string v3, "package_02"

    sget v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    sget-object v5, Lcom/yunva/monsterhunter/MonsterHunter;->mPurchaseFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_137
    .catch Ljava/lang/Exception; {:try_start_ff .. :try_end_137} :catch_139

    goto/16 :goto_a

    .line 369
    :catch_139
    move-exception v12

    .line 370
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    .line 371
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->access$400(II)V

    .line 372
    const/4 v1, -0x1

    sput v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 373
    const/4 v1, 0x0

    sput-boolean v1, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    goto/16 :goto_a

    .line 363
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_14b
    :try_start_14b
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$900()[Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    .line 365
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$900()[Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v3, v3, v4

    sget v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    sget-object v5, Lcom/yunva/monsterhunter/MonsterHunter;->mPurchaseFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 364
    invoke-virtual/range {v1 .. v6}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_182
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_182} :catch_139

    goto/16 :goto_a

    .line 383
    .end local v15    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v17    # "price":I
    .end local v18    # "prices":[I
    :pswitch_184
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1000(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 387
    :pswitch_18f
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1100()V

    goto/16 :goto_a

    .line 391
    :pswitch_194
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    const-string v3, "\u63d0\u793a"

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 395
    :pswitch_1a5
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1200()V

    goto/16 :goto_a

    .line 398
    :pswitch_1aa
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1300(Lcom/yunva/monsterhunter/MonsterHunter;Ljava/lang/String;)V

    goto/16 :goto_a

    .line 403
    :pswitch_1b9
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1400(Lcom/yunva/monsterhunter/MonsterHunter;)V

    goto/16 :goto_a

    .line 407
    :pswitch_1c2
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1500(Lcom/yunva/monsterhunter/MonsterHunter;)V

    goto/16 :goto_a

    .line 411
    :pswitch_1cb
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1600(Lcom/yunva/monsterhunter/MonsterHunter;I)V

    goto/16 :goto_a

    .line 415
    :pswitch_1d8
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1702(Z)Z

    .line 416
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isRewardedVideoAvailable()Z

    move-result v1

    if-eqz v1, :cond_1e7

    .line 417
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->vedioAdsOver()I

    goto/16 :goto_a

    .line 421
    :cond_1e7
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1fc

    .line 423
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    const-string v2, "no available ads"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 426
    :cond_1fc
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    const-string v2, "\u6c92\u6709\u53ef\u7528\u7684\u5ee3\u544a..."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_a

    .line 438
    :pswitch_20c
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v13, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    const-string v1, "https://play.google.com/store/apps/developer?id=JOYNOWSTUDIO"

    .line 441
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 442
    .local v11, "content_url":Landroid/net/Uri;
    invoke-virtual {v13, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 443
    const-string v1, "com.android.vending"

    invoke-virtual {v13, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    :try_start_224
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivity(Landroid/content/Intent;)V
    :try_end_22b
    .catch Ljava/lang/Exception; {:try_start_224 .. :try_end_22b} :catch_22d

    goto/16 :goto_a

    .line 447
    :catch_22d
    move-exception v12

    .line 449
    .restart local v12    # "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_a

    .line 454
    .end local v11    # "content_url":Landroid/net/Uri;
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v13    # "intent":Landroid/content/Intent;
    :pswitch_233
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_25f

    .line 455
    const-string v1, "TAG"

    const-string v2, "showInterstitial"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->isInterstitialReady()Z

    move-result v1

    if-eqz v1, :cond_253

    .line 459
    nop

    .line 460
    const-string v1, "tag"

    const-string v2, "isInterstitialReady"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 463
    :cond_253
    const-string v1, "tag"

    const-string v2, "isInterstitialReady is false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    goto/16 :goto_a

    .line 474
    :cond_25f
    invoke-static {}, Lcom/ironsource/mediationsdk/IronSource;->loadInterstitial()V

    goto/16 :goto_a

    .line 239
    :pswitch_data_264
    .packed-switch 0x456
        :pswitch_64
        :pswitch_a
        :pswitch_184
        :pswitch_18f
        :pswitch_1b
        :pswitch_1a5
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1aa
        :pswitch_1b9
        :pswitch_1c2
        :pswitch_1cb
        :pswitch_233
        :pswitch_1d8
        :pswitch_20c
        :pswitch_194
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 310
    :array_290
    .array-data 4
        0xc7
        0x1f3
        0x3e7
        0x7cf
        0x1387
        0x270f
        0x4b63
        0xbb7
        0x5db
        0x1f3
    .end array-data
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass1.DialogInterfaceOnClickListenerC01731 (com.yunva.monsterhunter.MonsterHunter$1$1)
.class Lcom/yunva/monsterhunter/MonsterHunter$1$1;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter$1;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter$1;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$1$1;->this$0:Lcom/yunva/monsterhunter/MonsterHunter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 279
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$100()V

    .line 280
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass1.AnonymousClass2 (com.yunva.monsterhunter.MonsterHunter$1$2)
.class Lcom/yunva/monsterhunter/MonsterHunter$1$2;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter$1;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter$1;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$1$2;->this$0:Lcom/yunva/monsterhunter/MonsterHunter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 288
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass1.AnonymousClass3 (com.yunva.monsterhunter.MonsterHunter$1$3)
.class Lcom/yunva/monsterhunter/MonsterHunter$1$3;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter$1;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter$1;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter$1;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$1$3;->this$0:Lcom/yunva/monsterhunter/MonsterHunter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V
    .registers 12
    .param p1, "result"    # Lcom/yunva/monsterhunter/IabResult;

    .prologue
    const/4 v2, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 319
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/IabResult;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_24

    .line 320
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v0

    const-string v1, "can not connect google play"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 322
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 323
    sget v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-static {v0, v8}, Lcom/yunva/monsterhunter/MonsterHunter;->access$400(II)V

    .line 324
    sput v9, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 325
    sput-boolean v8, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    .line 326
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/yunva/monsterhunter/MonsterHunter;->access$302(Lcom/yunva/monsterhunter/IabHelper;)Lcom/yunva/monsterhunter/IabHelper;

    .line 353
    :goto_23
    return-void

    .line 330
    :cond_24
    :try_start_24
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$700()I

    move-result v0

    if-ne v0, v2, :cond_6a

    sget v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6a

    .line 332
    const-string v0, "package_02"

    invoke-static {v0}, Lcom/yunva/monsterhunter/MonsterHunter;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 333
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v0

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    const-string v2, "package_02"

    sget v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mPurchaseFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_5b} :catch_5c

    goto :goto_23

    .line 346
    :catch_5c
    move-exception v6

    .line 347
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 348
    sget v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-static {v0, v8}, Lcom/yunva/monsterhunter/MonsterHunter;->access$400(II)V

    .line 349
    sput v9, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 350
    sput-boolean v8, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    goto :goto_23

    .line 338
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6a
    :try_start_6a
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$900()[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/yunva/monsterhunter/MonsterHunter;->access$802(Ljava/lang/String;)Ljava/lang/String;

    .line 339
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v0

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    .line 340
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$900()[Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v2, v2, v3

    sget v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mPurchaseFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v7, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-virtual/range {v0 .. v5}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_a1} :catch_5c

    goto :goto_23
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass10 (com.yunva.monsterhunter.MonsterHunter$10)
.class final Lcom/yunva/monsterhunter/MonsterHunter$10;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->showInsertName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    .prologue
    .line 1453
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$10;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1457
    iget-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter$10;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "names":Ljava/lang/String;
    invoke-static {v0}, Lcom/yunva/monsterhunter/MonsterHunter;->access$2100(Ljava/lang/String;)V

    .line 1459
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass11 (com.yunva.monsterhunter.MonsterHunter$11)
.class final Lcom/yunva/monsterhunter/MonsterHunter$11;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->showInsertName(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1467
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass12 (com.yunva.monsterhunter.MonsterHunter$12)
.class final Lcom/yunva/monsterhunter/MonsterHunter$12;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->toPlayStore(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$12;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1504
    const-string v2, "&referrer=utm_source%3Dcustom_hutui_mh1%26utm_medium%3Dbanner%26utm_term%3Dhutui_mh1%26utm_content%3Dhutui_mh1%26utm_campaign%3Dhutui_mh1"

    .line 1505
    .local v2, "ref":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1506
    .local v1, "in":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/yunva/monsterhunter/MonsterHunter$12;->val$packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1508
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1510
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1511
    const-string v4, "com.android.vending"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1514
    :try_start_31
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivity(Landroid/content/Intent;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_39

    .line 1519
    :goto_38
    return-void

    .line 1515
    :catch_39
    move-exception v0

    .line 1517
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_38
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass13 (com.yunva.monsterhunter.MonsterHunter$13)
.class final Lcom/yunva/monsterhunter/MonsterHunter$13;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->openFbView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1559
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1560
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1561
    const-string v2, "https://www.facebook.com/bravefightermonsterhunter"

    .line 1562
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1563
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1564
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivity(Landroid/content/Intent;)V

    .line 1565
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass14 (com.yunva.monsterhunter.MonsterHunter$14)
.class final Lcom/yunva/monsterhunter/MonsterHunter$14;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->openTweeterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1571
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1576
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1577
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1578
    const-string v2, "https://twitter.com/JoynowStudio"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1579
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1580
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/yunva/monsterhunter/MonsterHunter;->startActivity(Landroid/content/Intent;)V

    .line 1581
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass15 (com.yunva.monsterhunter.MonsterHunter$15)
.class Lcom/yunva/monsterhunter/MonsterHunter$15;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->onKeyDown(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 1658
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$15;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .prologue
    .line 1663
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$2200()V

    .line 1664
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass16 (com.yunva.monsterhunter.MonsterHunter$16)
.class Lcom/yunva/monsterhunter/MonsterHunter$16;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/RewardedVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 1683
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$16;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRewardedVideoAdClicked(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 2
    .param p1, "arg0"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    .line 1743
    return-void
.end method

.method public onRewardedVideoAdClosed()V
    .registers 1

    .prologue
    .line 1737
    return-void
.end method

.method public onRewardedVideoAdEnded()V
    .registers 1

    .prologue
    .line 1731
    return-void
.end method

.method public onRewardedVideoAdOpened()V
    .registers 1

    .prologue
    .line 1725
    return-void
.end method

.method public onRewardedVideoAdRewarded(Lcom/ironsource/mediationsdk/model/Placement;)V
    .registers 5
    .param p1, "arg0"    # Lcom/ironsource/mediationsdk/model/Placement;

    .prologue
    const/4 v2, 0x1

    .line 1711
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$2300()I

    move-result v0

    if-ne v0, v2, :cond_18

    .line 1712
    sget v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v0, v2, :cond_19

    .line 1713
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v0

    const-string v1, "Diamonds X2"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1719
    :cond_18
    :goto_18
    return-void

    .line 1715
    :cond_19
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v0

    const-string v1, "\u947d\u77f3 X2"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_18
.end method

.method public onRewardedVideoAdShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 5
    .param p1, "arg0"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    const/4 v2, 0x1

    .line 1700
    sget v0, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v0, v2, :cond_13

    .line 1701
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v0

    const-string v1, "reward failed"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1705
    :goto_12
    return-void

    .line 1703
    :cond_13
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v0

    const-string v1, "\u5ee3\u544a\u734e\u52f5\u7372\u53d6\u5931\u6557..."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_12
.end method

.method public onRewardedVideoAdStarted()V
    .registers 1

    .prologue
    .line 1695
    return-void
.end method

.method public onRewardedVideoAvailabilityChanged(Z)V
    .registers 2
    .param p1, "arg0"    # Z

    .prologue
    .line 1689
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass17 (com.yunva.monsterhunter.MonsterHunter$17)
.class Lcom/yunva/monsterhunter/MonsterHunter$17;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/ironsource/mediationsdk/sdk/OfferwallListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 1795
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$17;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetOfferwallCreditsFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 2
    .param p1, "arg0"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 1844
    return-void
.end method

.method public onOfferwallAdCredited(IIZ)Z
    .registers 9
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1828
    invoke-static {p2}, Lcom/yunva/monsterhunter/MonsterHunter;->access$2400(I)V

    .line 1829
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v1, v4, :cond_38

    .line 1830
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Diamonds X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1834
    :goto_26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1835
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "param"

    const-string v2, "ironsource"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1836
    const-string v1, "Jfq_Reward"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1837
    return v4

    .line 1832
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_38
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u947d\u77f3 X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_26
.end method

.method public onOfferwallAvailable(Z)V
    .registers 2
    .param p1, "arg0"    # Z

    .prologue
    .line 1823
    return-void
.end method

.method public onOfferwallClosed()V
    .registers 1

    .prologue
    .line 1817
    return-void
.end method

.method public onOfferwallOpened()V
    .registers 4

    .prologue
    .line 1808
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1809
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "param"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1810
    const-string v1, "OfferwallOpened"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1811
    return-void
.end method

.method public onOfferwallShowFailed(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .registers 5
    .param p1, "arg0"    # Lcom/ironsource/mediationsdk/logger/IronSourceError;

    .prologue
    .line 1800
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1801
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "param"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1802
    const-string v1, "OfferwallShowFailed"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/TalkingDataGA;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1803
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass2 (com.yunva.monsterhunter.MonsterHunter$2)
.class Lcom/yunva/monsterhunter/MonsterHunter$2;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$2;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V
    .registers 6
    .param p1, "result"    # Lcom/yunva/monsterhunter/IabResult;

    .prologue
    .line 539
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/IabResult;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_35

    .line 540
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/IabResult;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 541
    .local v0, "gpmsg":Ljava/lang/String;
    const-string v1, "tag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "gpms:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    const-string v2, "can not connect google play"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 543
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 544
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$302(Lcom/yunva/monsterhunter/IabHelper;)Lcom/yunva/monsterhunter/IabHelper;

    .line 549
    .end local v0    # "gpmsg":Ljava/lang/String;
    :cond_34
    :goto_34
    return-void

    .line 547
    :cond_35
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_34
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass3 (com.yunva.monsterhunter.MonsterHunter$3)
.class final Lcom/yunva/monsterhunter/MonsterHunter$3;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->showActiveCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$myView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 849
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$3;->val$myView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 16
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 853
    iget-object v8, p0, Lcom/yunva/monsterhunter/MonsterHunter$3;->val$myView:Landroid/view/View;

    const v9, 0x7f07003f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 854
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 856
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 857
    .local v4, "keycode":Ljava/lang/String;
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "PREFS_KEYCODE"

    invoke-virtual {v8, v9, v12}, Lcom/yunva/monsterhunter/MonsterHunter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 859
    .local v5, "psettings":Landroid/content/SharedPreferences;
    invoke-interface {v5, v4, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 860
    .local v3, "hasused":I
    if-ne v3, v11, :cond_3a

    .line 861
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "Error code!!!"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 911
    :cond_39
    :goto_39
    return-void

    .line 864
    :cond_3a
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1800(Ljava/lang/String;)I

    move-result v6

    .line 865
    .local v6, "result":I
    const-string v8, "tag"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "coderesult:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v2, 0x0

    .line 867
    .local v2, "hasreward":Z
    const/4 v8, 0x3

    if-ne v6, v8, :cond_99

    .line 868
    sget v8, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v8, v11, :cond_8b

    .line 869
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "You have got 1500 Gold"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 870
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 874
    :goto_73
    const/4 v2, 0x1

    .line 903
    :goto_74
    if-eqz v2, :cond_39

    .line 904
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "PREFS_KEYCODE"

    .line 905
    invoke-virtual {v8, v9, v12}, Lcom/yunva/monsterhunter/MonsterHunter;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 906
    .local v7, "settings":Landroid/content/SharedPreferences;
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 907
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v4, v11}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 908
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_39

    .line 872
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v7    # "settings":Landroid/content/SharedPreferences;
    :cond_8b
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "\u606d\u559c\u60a8\u7372\u5f97\u91d1\u5e631500"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_73

    .line 875
    :cond_99
    const/4 v8, 0x4

    if-ne v6, v8, :cond_bd

    .line 876
    sget v8, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v8, v11, :cond_af

    .line 877
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "You have got 5000 Gold"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 878
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 882
    :goto_ad
    const/4 v2, 0x1

    goto :goto_74

    .line 880
    :cond_af
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "\u606d\u559c\u60a8\u7372\u5f97\u91d1\u5e635000"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_ad

    .line 883
    :cond_bd
    const/4 v8, 0x6

    if-ne v6, v8, :cond_e1

    .line 884
    sget v8, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v8, v11, :cond_d3

    .line 885
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "You have got 200 crystals"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    .line 886
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 890
    :goto_d1
    const/4 v2, 0x1

    goto :goto_74

    .line 888
    :cond_d3
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "\u606d\u559c\u60a8\u7372\u5f97\u6c34\u6676200"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_d1

    .line 891
    :cond_e1
    const/4 v8, 0x5

    if-eq v6, v8, :cond_e7

    const/4 v8, 0x7

    if-ne v6, v8, :cond_109

    .line 892
    :cond_e7
    sget v8, Lcom/yunva/monsterhunter/MonsterHunter;->mCurlanguage:I

    if-ne v8, v11, :cond_fb

    .line 893
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "success"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 897
    :goto_f8
    const/4 v2, 0x1

    goto/16 :goto_74

    .line 895
    :cond_fb
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "\u606d\u559c\u60a8\u514c\u63db\u6210\u529f"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_f8

    .line 899
    :cond_109
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1100()V

    .line 900
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v8

    const-string v9, "Error Code!!!"

    invoke-static {v8, v9, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_74
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass4 (com.yunva.monsterhunter.MonsterHunter$4)
.class final Lcom/yunva/monsterhunter/MonsterHunter$4;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->showActiveCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 913
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 919
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass5 (com.yunva.monsterhunter.MonsterHunter$5)
.class final Lcom/yunva/monsterhunter/MonsterHunter$5;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V
    .registers 9
    .param p1, "result"    # Lcom/yunva/monsterhunter/IabResult;
    .param p2, "purchase"    # Lcom/yunva/monsterhunter/Purchase;

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 929
    sput-boolean v3, Lcom/yunva/monsterhunter/MonsterHunter;->mDoBuy:Z

    .line 930
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    if-nez v1, :cond_c

    .line 968
    :cond_b
    :goto_b
    return-void

    .line 933
    :cond_c
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/IabResult;->isFailure()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 934
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v1

    const-string v2, "sorry faile to buy"

    invoke-static {v1, v2, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 935
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-static {v1, v3}, Lcom/yunva/monsterhunter/MonsterHunter;->access$400(II)V

    .line 936
    sput v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    .line 937
    iget v1, p1, Lcom/yunva/monsterhunter/IabResult;->mResponse:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_b

    .line 938
    if-nez p2, :cond_47

    .line 939
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$800()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    .line 945
    :goto_34
    :try_start_34
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    iget-object v2, v2, Lcom/yunva/monsterhunter/MonsterHunter;->mGotInventoryListener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2}, Lcom/yunva/monsterhunter/IabHelper;->queryInventoryAsync(Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_41
    .catch Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException; {:try_start_34 .. :try_end_41} :catch_42

    goto :goto_b

    .line 946
    :catch_42
    move-exception v0

    .line 948
    .local v0, "e":Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
    invoke-virtual {v0}, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    goto :goto_b

    .line 941
    .end local v0    # "e":Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
    :cond_47
    iget-object v1, p2, Lcom/yunva/monsterhunter/Purchase;->mSku:Ljava/lang/String;

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1902(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_34

    .line 953
    :cond_4d
    const-string v1, "TAG"

    const-string v2, "Purchase successful."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p2}, Lcom/yunva/monsterhunter/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$900()[Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_78

    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    const/16 v2, 0x8

    if-ne v1, v2, :cond_b

    .line 956
    invoke-virtual {p2}, Lcom/yunva/monsterhunter/Purchase;->getSku()Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_02"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 958
    :cond_78
    sget v1, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    invoke-static {v1, v5}, Lcom/yunva/monsterhunter/MonsterHunter;->access$400(II)V

    .line 960
    :try_start_7d
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v1

    sget-object v2, Lcom/yunva/monsterhunter/MonsterHunter;->mConsumeFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v1, p2, v2}, Lcom/yunva/monsterhunter/IabHelper;->consumeAsync(Lcom/yunva/monsterhunter/Purchase;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;)V
    :try_end_86
    .catch Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException; {:try_start_7d .. :try_end_86} :catch_91

    .line 965
    :goto_86
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/TDGAVirtualCurrency;->onChargeSuccess(Ljava/lang/String;)V

    .line 966
    sput v4, Lcom/yunva/monsterhunter/MonsterHunter;->mCurPayIndex:I

    goto/16 :goto_b

    .line 961
    :catch_91
    move-exception v0

    .line 963
    .restart local v0    # "e":Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
    invoke-virtual {v0}, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    goto :goto_86
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass6 (com.yunva.monsterhunter.MonsterHunter$6)
.class final Lcom/yunva/monsterhunter/MonsterHunter$6;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/yunva/monsterhunter/Purchase;Lcom/yunva/monsterhunter/IabResult;)V
    .registers 4
    .param p1, "purchase"    # Lcom/yunva/monsterhunter/Purchase;
    .param p2, "result"    # Lcom/yunva/monsterhunter/IabResult;

    .prologue
    .line 975
    invoke-virtual {p2}, Lcom/yunva/monsterhunter/IabResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 980
    :cond_6
    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass7 (com.yunva.monsterhunter.MonsterHunter$7)
.class Lcom/yunva/monsterhunter/MonsterHunter$7;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$7;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Inventory;)V
    .registers 8
    .param p1, "result"    # Lcom/yunva/monsterhunter/IabResult;
    .param p2, "inventory"    # Lcom/yunva/monsterhunter/Inventory;

    .prologue
    .line 990
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1018
    :cond_6
    :goto_6
    return-void

    .line 993
    :cond_7
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/IabResult;->isFailure()Z

    move-result v2

    if-nez v2, :cond_6

    .line 1006
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1900()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/yunva/monsterhunter/Inventory;->getPurchase(Ljava/lang/String;)Lcom/yunva/monsterhunter/Purchase;

    move-result-object v1

    .line 1007
    .local v1, "gasPurchase":Lcom/yunva/monsterhunter/Purchase;
    if-eqz v1, :cond_6

    .line 1010
    :try_start_17
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$300()Lcom/yunva/monsterhunter/IabHelper;

    move-result-object v2

    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/yunva/monsterhunter/Inventory;->getPurchase(Ljava/lang/String;)Lcom/yunva/monsterhunter/Purchase;

    move-result-object v3

    sget-object v4, Lcom/yunva/monsterhunter/MonsterHunter;->mConsumeFinishedListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

    invoke-virtual {v2, v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->consumeAsync(Lcom/yunva/monsterhunter/Purchase;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;)V
    :try_end_28
    .catch Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException; {:try_start_17 .. :try_end_28} :catch_29

    goto :goto_6

    .line 1012
    :catch_29
    move-exception v0

    .line 1014
    .local v0, "e":Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
    invoke-virtual {v0}, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;->printStackTrace()V

    goto :goto_6
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass8 (com.yunva.monsterhunter.MonsterHunter$8)
.class Lcom/yunva/monsterhunter/MonsterHunter$8;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->postStatusUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/share/Sharer$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 1167
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$8;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 1170
    const-string v0, "tag"

    const-string v1, "Canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 7
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 1175
    const-string v0, "tag"

    const-string v1, "Error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void
.end method

.method public onSuccess(Lcom/facebook/share/Sharer$Result;)V
    .registers 4
    .param p1, "result"    # Lcom/facebook/share/Sharer$Result;

    .prologue
    .line 1180
    const-string v0, "tag"

    const-string v1, "Success!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1167
    check-cast p1, Lcom/facebook/share/Sharer$Result;

    invoke-virtual {p0, p1}, Lcom/yunva/monsterhunter/MonsterHunter$8;->onSuccess(Lcom/facebook/share/Sharer$Result;)V

    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.AnonymousClass9 (com.yunva.monsterhunter.MonsterHunter$9)
.class Lcom/yunva/monsterhunter/MonsterHunter$9;
.super Ljava/lang/Object;
.source "MonsterHunter.java"

# interfaces
.implements Lcom/facebook/FacebookCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/MonsterHunter;->loginFb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/FacebookCallback",
        "<",
        "Lcom/facebook/login/LoginResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/MonsterHunter;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/MonsterHunter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/MonsterHunter;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/yunva/monsterhunter/MonsterHunter$9;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleError()V
    .registers 1

    .prologue
    .line 1260
    return-void
.end method


# virtual methods
.method public onCancel()V
    .registers 3

    .prologue
    .line 1245
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter$9;->handleError()V

    .line 1246
    const-string v0, "tag"

    const-string v1, "onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    return-void
.end method

.method public onError(Lcom/facebook/FacebookException;)V
    .registers 5
    .param p1, "exception"    # Lcom/facebook/FacebookException;

    .prologue
    .line 1251
    invoke-direct {p0}, Lcom/yunva/monsterhunter/MonsterHunter$9;->handleError()V

    .line 1252
    const-string v0, "tag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    return-void
.end method

.method public onSuccess(Lcom/facebook/login/LoginResult;)V
    .registers 9
    .param p1, "loginResult"    # Lcom/facebook/login/LoginResult;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1217
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1218
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1230
    :goto_12
    invoke-static {v6}, Lcom/yunva/monsterhunter/MonsterHunter;->access$2002(Z)Z

    .line 1232
    sget-boolean v1, Lcom/yunva/monsterhunter/MonsterHunter;->mRequestFacebook:Z

    if-eqz v1, :cond_20

    .line 1233
    iget-object v1, p0, Lcom/yunva/monsterhunter/MonsterHunter$9;->this$0:Lcom/yunva/monsterhunter/MonsterHunter;

    invoke-static {v1}, Lcom/yunva/monsterhunter/MonsterHunter;->access$1400(Lcom/yunva/monsterhunter/MonsterHunter;)V

    .line 1234
    sput-boolean v5, Lcom/yunva/monsterhunter/MonsterHunter;->mRequestFacebook:Z

    .line 1241
    :cond_20
    return-void

    .line 1224
    :cond_21
    invoke-static {}, Lcom/facebook/login/LoginManager;->getInstance()Lcom/facebook/login/LoginManager;

    move-result-object v1

    sget-object v2, Lcom/facebook/login/DefaultAudience;->FRIENDS:Lcom/facebook/login/DefaultAudience;

    .line 1225
    invoke-virtual {v1, v2}, Lcom/facebook/login/LoginManager;->setDefaultAudience(Lcom/facebook/login/DefaultAudience;)Lcom/facebook/login/LoginManager;

    move-result-object v1

    .line 1226
    invoke-static {}, Lcom/yunva/monsterhunter/MonsterHunter;->access$000()Lcom/yunva/monsterhunter/MonsterHunter;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "publish_actions"

    aput-object v4, v3, v5

    .line 1227
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 1226
    invoke-virtual {v1, v2, v3}, Lcom/facebook/login/LoginManager;->logInWithPublishPermissions(Landroid/app/Activity;Ljava/util/Collection;)V

    goto :goto_12
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 1213
    check-cast p1, Lcom/facebook/login/LoginResult;

    invoke-virtual {p0, p1}, Lcom/yunva/monsterhunter/MonsterHunter$9;->onSuccess(Lcom/facebook/login/LoginResult;)V

    return-void
.end method

###### Class com.yunva.monsterhunter.MonsterHunter.TrackerName (com.yunva.monsterhunter.MonsterHunter$TrackerName)
.class public final enum Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;
.super Ljava/lang/Enum;
.source "MonsterHunter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/MonsterHunter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrackerName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

.field public static final enum APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

.field public static final enum ECOMMERCE_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

.field public static final enum GLOBAL_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 125
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    const-string v1, "APP_TRACKER"

    invoke-direct {v0, v1, v2}, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    .line 126
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    const-string v1, "GLOBAL_TRACKER"

    invoke-direct {v0, v1, v3}, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->GLOBAL_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    .line 128
    new-instance v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    const-string v1, "ECOMMERCE_TRACKER"

    invoke-direct {v0, v1, v4}, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->ECOMMERCE_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    .line 124
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->APP_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->GLOBAL_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->ECOMMERCE_TRACKER:Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->$VALUES:[Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

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
    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 124
    const-class v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    return-object v0
.end method

.method public static values()[Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;
    .registers 1

    .prologue
    .line 124
    sget-object v0, Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->$VALUES:[Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    invoke-virtual {v0}, [Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yunva/monsterhunter/MonsterHunter$TrackerName;

    return-object v0
.end method
