###### Class com.ironsource.sdk.utils.DeviceProperties (com.ironsource.sdk.utils.DeviceProperties)
.class public Lcom/ironsource/sdk/utils/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# static fields
.field private static mInstance:Lcom/ironsource/sdk/utils/DeviceProperties;


# instance fields
.field private mDeviceApiLevel:I

.field private mDeviceCarrier:Ljava/lang/String;

.field private mDeviceModel:Ljava/lang/String;

.field private mDeviceOem:Ljava/lang/String;

.field private mDeviceOsType:Ljava/lang/String;

.field private mDeviceOsVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/ironsource/sdk/utils/DeviceProperties;->mInstance:Lcom/ironsource/sdk/utils/DeviceProperties;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOEM()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceOem:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceModel:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getDeviceOs()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceOsType:Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidOsVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceOsVersion:Ljava/lang/String;

    .line 27
    invoke-static {}, Lcom/ironsource/environment/DeviceStatus;->getAndroidAPIVersion()I

    move-result v0

    iput v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceApiLevel:I

    .line 28
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getMobileCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceCarrier:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/ironsource/sdk/utils/DeviceProperties;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    sget-object v0, Lcom/ironsource/sdk/utils/DeviceProperties;->mInstance:Lcom/ironsource/sdk/utils/DeviceProperties;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/ironsource/sdk/utils/DeviceProperties;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/utils/DeviceProperties;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ironsource/sdk/utils/DeviceProperties;->mInstance:Lcom/ironsource/sdk/utils/DeviceProperties;

    .line 35
    :cond_b
    sget-object v0, Lcom/ironsource/sdk/utils/DeviceProperties;->mInstance:Lcom/ironsource/sdk/utils/DeviceProperties;

    return-object v0
.end method

.method public static getSupersonicSdkVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 71
    const-string v0, "5.53"

    return-object v0
.end method

.method public static release()V
    .registers 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/ironsource/sdk/utils/DeviceProperties;->mInstance:Lcom/ironsource/sdk/utils/DeviceProperties;

    .line 76
    return-void
.end method


# virtual methods
.method public getDeviceApiLevel()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceApiLevel:I

    return v0
.end method

.method public getDeviceCarrier()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceCarrier:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOem()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceOem:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceOsType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceOsVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/ironsource/sdk/utils/DeviceProperties;->mDeviceOsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceVolume(Landroid/content/Context;)F
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p1}, Lcom/ironsource/environment/DeviceStatus;->getSystemVolumePercent(Landroid/content/Context;)F

    move-result v0

    return v0
.end method
