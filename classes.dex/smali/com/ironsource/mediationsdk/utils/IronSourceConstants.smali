###### Class com.ironsource.mediationsdk.utils.IronSourceConstants (com.ironsource.mediationsdk.utils.IronSourceConstants)
.class public Lcom/ironsource/mediationsdk/utils/IronSourceConstants;
.super Ljava/lang/Object;
.source "IronSourceConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/utils/IronSourceConstants$Gender;
    }
.end annotation


# static fields
.field public static final AVAILABILITY_CHANGED:I = 0x7

.field public static final BANNER_AD_CLICKED:I = 0x198

.field public static final BANNER_AD_OPENED:I = 0x195

.field public static final BANNER_AD_READY_RESULT:I = 0x197

.field public static final BANNER_AD_UNIT:Ljava/lang/String; = "Banner"

.field public static final BANNER_PLACEMENT_CAPPED:I = 0x19e

.field public static final BANNER_RELOADED_AD_FAIL:I = 0x1a2

.field public static final BANNER_RELOADED_AD_READY:I = 0x1a1

.field public static final CONSENT_FALSE_CODE:I = 0x29

.field public static final CONSENT_TRUE_CODE:I = 0x28

.field public static final DESTROY_BANNER_CODE:I = 0x196

.field public static final ERROR_CODE_KEY:Ljava/lang/String; = "errorCode"

.field public static final FALSE_AVAILABILITY_REASON_NO_INTERNET:Ljava/lang/String; = "noInternetConnection"

.field public static final FALSE_AVAILABILITY_REASON_NO_SERVER_RESPONSE:Ljava/lang/String; = "noServerResponse"

.field public static final FALSE_AVAILABILITY_REASON_SERVER_RESPONSE_IS_NOT_VALID:Ljava/lang/String; = "serverResponseIsNotValid"

.field public static final FALSE_INVALID_APPKEY:Ljava/lang/String; = "invalidAppKey"

.field public static final GENERAL_AD_UNIT:Ljava/lang/String; = "Mediation"

.field public static final GET_INSTANCE_CODE:I = 0xe

.field public static final INTERSTITIAL_AD_CLICKED:I = 0x1c

.field public static final INTERSTITIAL_AD_CLOSED:I = 0x1a

.field public static final INTERSTITIAL_AD_LOAD_FAILED:I = 0xe3

.field public static final INTERSTITIAL_AD_OPENED:I = 0x19

.field public static final INTERSTITIAL_AD_READY:I = 0x1b

.field public static final INTERSTITIAL_AD_REWARDED:I = 0x122

.field public static final INTERSTITIAL_AD_UNIT:Ljava/lang/String; = "Interstitial"

.field public static final INTERSTITIAL_AD_VISIBLE:I = 0x1f

.field public static final INTERSTITIAL_DAILY_CAPPED:I = 0xfa

.field public static final INTERSTITIAL_EVENT_TYPE:Ljava/lang/String; = "IS"

.field public static final INTERSTITIAL_PUBLISHER_CHECK_AVAILABILITY:I = 0x1e

.field public static final INTERSTITIAL_SHOW_CHANCE:I = 0xdb

.field public static final IRONSOURCE_CONFIG_NAME:Ljava/lang/String; = "SupersonicAds"

.field public static final IS_PLACEMENT_CAPPED:I = 0x22

.field public static final IS_REWARDED_VIDEO_AVAILABLE_CODE:I = 0x3

.field public static final LOAD_BANNER_CODE:I = 0x192

.field public static final LOAD_INTERSTITIAL_CODE:I = 0x16

.field public static final MEDIATION_PROVIDER_NAME:Ljava/lang/String; = "Mediation"

.field public static final OFFERWALL_AD_UNIT:Ljava/lang/String; = "Offerwall"

.field public static final OFFERWALL_AVAILABLE:I = 0x12e

.field public static final OFFERWALL_OPENED:I = 0x131

.field public static final RELOAD_BANNER_CODE:I = 0x19c

.field public static final RELOAD_IMPRESSION_REASON:I = 0x64

.field public static final REQUEST_URL:Ljava/lang/String; = "requestUrl"

.field public static final RETRY_AVAILABILITY_LIMIT:I = 0x5

.field public static final RETRY_COUNTER:I = 0x0

.field public static final RETRY_DELAY:I = 0x1

.field public static final RETRY_GROW_LIMIT:I = 0xc

.field public static final RETRY_LIMIT:I = 0x3e

.field public static final REVIVED_EVENT:I = 0x72

.field public static final REWARDED_VIDEO_AD_CLICKED:I = 0x80

.field public static final REWARDED_VIDEO_AD_CLOSED:I = 0x6

.field public static final REWARDED_VIDEO_AD_OPENED:I = 0x5

.field public static final REWARDED_VIDEO_AD_UNIT:Ljava/lang/String; = "Rewarded Video"

.field public static final REWARDED_VIDEO_DAILY_CAPPED:I = 0x96

.field public static final REWARDED_VIDEO_EVENT_TYPE:Ljava/lang/String; = "RV"

.field public static final REWARDED_VIDEO_PUBLISHER_CHECK_AVAILABILITY:I = 0x12

.field public static final REWARDED_VIDEO_SHOW_CHANCE:I = 0x77

.field public static final REWARDED_VIDEO_SHOW_CHECK_AVAILABILITY:I = 0x13

.field public static final RIS_CONFIG_NAME:Ljava/lang/String; = "RIS"

.field public static final RV_PLACEMENT_CAPPED:I = 0x14

.field public static final SHOW_INTERSTITIAL_CODE:I = 0x17

.field public static final SHOW_INTERSTITIAL_FAILED:I = 0x1d

.field public static final SHOW_REWARDED_VIDEO_CODE:I = 0x2

.field public static final SHOW_REWARDED_VIDEO_RESULT:I = 0x11

.field public static final START_ADAPTER:Ljava/lang/String; = "startAdapter"

.field public static final TYPE_GAID:Ljava/lang/String; = "GAID"

.field public static final TYPE_USER_GENERATED:Ljava/lang/String; = "userGenerated"

.field public static final TYPE_UUID:Ljava/lang/String; = "UUID"

.field public static final VIDEO_AD_REWARDED:I = 0xa

.field public static final VIDEO_AD_VISIBLE:I = 0xb

.field public static final VIDEO_END:I = 0x9

.field public static final VIDEO_START:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.mediationsdk.utils.IronSourceConstants.Gender (com.ironsource.mediationsdk.utils.IronSourceConstants$Gender)
.class public Lcom/ironsource/mediationsdk/utils/IronSourceConstants$Gender;
.super Ljava/lang/Object;
.source "IronSourceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/utils/IronSourceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Gender"
.end annotation


# static fields
.field public static final FEMALE:Ljava/lang/String; = "female"

.field public static final MALE:Ljava/lang/String; = "male"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/utils/IronSourceConstants;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/utils/IronSourceConstants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/utils/IronSourceConstants;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/ironsource/mediationsdk/utils/IronSourceConstants$Gender;->this$0:Lcom/ironsource/mediationsdk/utils/IronSourceConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
