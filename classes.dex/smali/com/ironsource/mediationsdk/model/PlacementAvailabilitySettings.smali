###### Class com.ironsource.mediationsdk.model.PlacementAvailabilitySettings (com.ironsource.mediationsdk.model.PlacementAvailabilitySettings)
.class public Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
.super Ljava/lang/Object;
.source "PlacementAvailabilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    }
.end annotation


# instance fields
.field private cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

.field private cappingValue:I

.field private isCappingEnabled:Z

.field private isDeliveryEnabled:Z

.field private isPacingEnabled:Z

.field private pacingValue:I


# direct methods
.method private constructor <init>(ZZZLcom/ironsource/mediationsdk/model/PlacementCappingType;II)V
    .registers 7
    .param p1, "isDeliveryEnabled"    # Z
    .param p2, "isCappingEnabled"    # Z
    .param p3, "isPacingEnabled"    # Z
    .param p4, "cappingType"    # Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .param p5, "cappingValue"    # I
    .param p6, "pacingValue"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled:Z

    .line 18
    iput-boolean p2, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled:Z

    .line 19
    iput-boolean p3, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled:Z

    .line 20
    iput-object p4, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .line 21
    iput p5, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->cappingValue:I

    .line 22
    iput p6, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->pacingValue:I

    .line 23
    return-void
.end method

.method synthetic constructor <init>(ZZZLcom/ironsource/mediationsdk/model/PlacementCappingType;IILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$1;)V
    .registers 8
    .param p1, "x0"    # Z
    .param p2, "x1"    # Z
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$1;

    .prologue
    .line 6
    invoke-direct/range {p0 .. p6}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;-><init>(ZZZLcom/ironsource/mediationsdk/model/PlacementCappingType;II)V

    return-void
.end method


# virtual methods
.method public getCappingType()Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    return-object v0
.end method

.method public getCappingValue()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->cappingValue:I

    return v0
.end method

.method public getPacingValue()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->pacingValue:I

    return v0
.end method

.method public isCappingEnabled()Z
    .registers 2

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isCappingEnabled:Z

    return v0
.end method

.method public isDeliveryEnabled()Z
    .registers 2

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isDeliveryEnabled:Z

    return v0
.end method

.method public isPacingEnabled()Z
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;->isPacingEnabled:Z

    return v0
.end method

###### Class com.ironsource.mediationsdk.model.PlacementAvailabilitySettings.AnonymousClass1 (com.ironsource.mediationsdk.model.PlacementAvailabilitySettings$1)
.class synthetic Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$1;
.super Ljava/lang/Object;
.source "PlacementAvailabilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.ironsource.mediationsdk.model.PlacementAvailabilitySettings.PlacementAvailabilitySettingsBuilder (com.ironsource.mediationsdk.model.PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder)
.class public Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
.super Ljava/lang/Object;
.source "PlacementAvailabilitySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlacementAvailabilitySettingsBuilder"
.end annotation


# instance fields
.field private cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

.field private cappingValue:I

.field private isCappingEnabled:Z

.field private isDeliveryEnabled:Z

.field private isPacingEnabled:Z

.field private pacingValue:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isDeliveryEnabled:Z

    .line 51
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isCappingEnabled:Z

    .line 52
    iput-boolean v1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isPacingEnabled:Z

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .line 54
    iput v1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingValue:I

    .line 55
    iput v1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacingValue:I

    .line 59
    return-void
.end method


# virtual methods
.method public build()Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;
    .registers 9

    .prologue
    .line 80
    new-instance v0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;

    iget-boolean v1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isDeliveryEnabled:Z

    iget-boolean v2, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isCappingEnabled:Z

    iget-boolean v3, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isPacingEnabled:Z

    iget-object v4, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    iget v5, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingValue:I

    iget v6, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacingValue:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings;-><init>(ZZZLcom/ironsource/mediationsdk/model/PlacementCappingType;IILcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$1;)V

    return-object v0
.end method

.method public capping(ZLcom/ironsource/mediationsdk/model/PlacementCappingType;I)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    .registers 4
    .param p1, "isCappingEnabled"    # Z
    .param p2, "cappingType"    # Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    .param p3, "cappingValue"    # I

    .prologue
    .line 67
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isCappingEnabled:Z

    .line 68
    if-nez p2, :cond_6

    sget-object p2, Lcom/ironsource/mediationsdk/model/PlacementCappingType;->PER_DAY:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .end local p2    # "cappingType":Lcom/ironsource/mediationsdk/model/PlacementCappingType;
    :cond_6
    iput-object p2, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingType:Lcom/ironsource/mediationsdk/model/PlacementCappingType;

    .line 69
    iput p3, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->cappingValue:I

    .line 70
    return-object p0
.end method

.method public delivery(Z)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    .registers 2
    .param p1, "isDeliveryEnabled"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isDeliveryEnabled:Z

    .line 63
    return-object p0
.end method

.method public pacing(ZI)Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;
    .registers 3
    .param p1, "isPacingEnabled"    # Z
    .param p2, "pacingValue"    # I

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->isPacingEnabled:Z

    .line 75
    iput p2, p0, Lcom/ironsource/mediationsdk/model/PlacementAvailabilitySettings$PlacementAvailabilitySettingsBuilder;->pacingValue:I

    .line 76
    return-object p0
.end method
