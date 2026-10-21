###### Class com.facebook.ads.AdSettings (com.facebook.ads.AdSettings)
.class public Lcom/facebook/ads/AdSettings;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/AdSettings$TestAdType;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static a:Z

.field private static b:Lcom/facebook/ads/AdSettings$TestAdType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    sput-object v0, Lcom/facebook/ads/AdSettings;->b:Lcom/facebook/ads/AdSettings$TestAdType;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addTestDevice(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->addTestDevice(Ljava/lang/String;)V

    return-void
.end method

.method public static addTestDevices(Ljava/util/Collection;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->addTestDevices(Ljava/util/Collection;)V

    return-void
.end method

.method public static clearTestDevices()V
    .registers 0

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->clearTestDevices()V

    return-void
.end method

.method public static getMediationService()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getMediationService()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTestAdType()Lcom/facebook/ads/AdSettings$TestAdType;
    .registers 1

    sget-object v0, Lcom/facebook/ads/AdSettings;->b:Lcom/facebook/ads/AdSettings$TestAdType;

    return-object v0
.end method

.method public static getUrlPrefix()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isChildDirected()Z
    .registers 1

    sget-boolean v0, Lcom/facebook/ads/AdSettings;->a:Z

    return v0
.end method

.method public static isTestMode(Landroid/content/Context;)Z
    .registers 2

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isVideoAutoplay()Z
    .registers 1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVideoAutoplay()Z

    move-result v0

    return v0
.end method

.method public static isVideoAutoplayOnMobile()Z
    .registers 1

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->isVideoAutoplayOnMobile()Z

    move-result v0

    return v0
.end method

.method public static setIsChildDirected(Z)V
    .registers 1

    sput-boolean p0, Lcom/facebook/ads/AdSettings;->a:Z

    return-void
.end method

.method public static setMediationService(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->setMediationService(Ljava/lang/String;)V

    return-void
.end method

.method public static setTestAdType(Lcom/facebook/ads/AdSettings$TestAdType;)V
    .registers 1

    sput-object p0, Lcom/facebook/ads/AdSettings;->b:Lcom/facebook/ads/AdSettings$TestAdType;

    return-void
.end method

.method public static setUrlPrefix(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->setUrlPrefix(Ljava/lang/String;)V

    return-void
.end method

.method public static setVideoAutoplay(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->setVideoAutoplay(Z)V

    return-void
.end method

.method public static setVideoAutoplayOnMobile(Z)V
    .registers 1

    invoke-static {p0}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->setVideoAutoplayOnMobile(Z)V

    return-void
.end method


# virtual methods
.method public setDebugBuild(Z)V
    .registers 2

    invoke-static {p1}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->setDebugBuild(Z)V

    return-void
.end method

###### Class com.facebook.ads.AdSettings.TestAdType (com.facebook.ads.AdSettings$TestAdType)
.class public final enum Lcom/facebook/ads/AdSettings$TestAdType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/AdSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestAdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/AdSettings$TestAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CAROUSEL_IMG_SQUARE_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum CAROUSEL_IMG_SQUARE_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum IMG_16_9_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum IMG_16_9_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_HD_16_9_15S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_HD_16_9_15S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_HD_16_9_46S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_HD_16_9_46S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_HD_9_16_39S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

.field public static final enum VIDEO_HD_9_16_39S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

.field private static final synthetic c:[Lcom/facebook/ads/AdSettings$TestAdType;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "DEFAULT"

    const-string v2, "DEFAULT"

    const-string v3, "Default"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "IMG_16_9_APP_INSTALL"

    const-string v2, "IMG_16_9_APP_INSTALL"

    const-string v3, "Image App install"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "IMG_16_9_LINK"

    const-string v2, "IMG_16_9_LINK"

    const-string v3, "Image link"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_HD_16_9_46S_APP_INSTALL"

    const-string v2, "VID_HD_16_9_46S_APP_INSTALL"

    const-string v3, "Video 46 sec App install"

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_46S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_HD_16_9_46S_LINK"

    const-string v2, "VID_HD_16_9_46S_LINK"

    const-string v3, "Video 46 sec link"

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_46S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_HD_16_9_15S_APP_INSTALL"

    const/4 v2, 0x5

    const-string v3, "VID_HD_16_9_15S_APP_INSTALL"

    const-string v4, "Video 15 sec App install"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_15S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_HD_16_9_15S_LINK"

    const/4 v2, 0x6

    const-string v3, "VID_HD_16_9_15S_LINK"

    const-string v4, "Video 15 sec link"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_15S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_HD_9_16_39S_APP_INSTALL"

    const/4 v2, 0x7

    const-string v3, "VID_HD_9_16_39S_APP_INSTALL"

    const-string v4, "Video 39 sec App install"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_9_16_39S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "VIDEO_HD_9_16_39S_LINK"

    const/16 v2, 0x8

    const-string v3, "VID_HD_9_16_39S_LINK"

    const-string v4, "Video 39 sec link"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_9_16_39S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "CAROUSEL_IMG_SQUARE_APP_INSTALL"

    const/16 v2, 0x9

    const-string v3, "CAROUSEL_IMG_SQUARE_APP_INSTALL"

    const-string v4, "Carousel App install"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    new-instance v0, Lcom/facebook/ads/AdSettings$TestAdType;

    const-string v1, "CAROUSEL_IMG_SQUARE_LINK"

    const/16 v2, 0xa

    const-string v3, "CAROUSEL_IMG_SQUARE_LINK"

    const-string v4, "Carousel link"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/ads/AdSettings$TestAdType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/facebook/ads/AdSettings$TestAdType;

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->DEFAULT:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->IMG_16_9_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_46S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_46S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_15S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_16_9_15S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_9_16_39S_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->VIDEO_HD_9_16_39S_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_APP_INSTALL:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/facebook/ads/AdSettings$TestAdType;->CAROUSEL_IMG_SQUARE_LINK:Lcom/facebook/ads/AdSettings$TestAdType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->c:[Lcom/facebook/ads/AdSettings$TestAdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/facebook/ads/AdSettings$TestAdType;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/ads/AdSettings$TestAdType;->b:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/AdSettings$TestAdType;
    .registers 2

    const-class v0, Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/AdSettings$TestAdType;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/AdSettings$TestAdType;
    .registers 1

    sget-object v0, Lcom/facebook/ads/AdSettings$TestAdType;->c:[Lcom/facebook/ads/AdSettings$TestAdType;

    invoke-virtual {v0}, [Lcom/facebook/ads/AdSettings$TestAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/AdSettings$TestAdType;

    return-object v0
.end method


# virtual methods
.method public getAdTypeString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdSettings$TestAdType;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getHumanReadable()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/AdSettings$TestAdType;->b:Ljava/lang/String;

    return-object v0
.end method
