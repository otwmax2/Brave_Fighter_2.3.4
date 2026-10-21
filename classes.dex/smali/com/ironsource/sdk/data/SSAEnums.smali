###### Class com.ironsource.sdk.data.SSAEnums (com.ironsource.sdk.data.SSAEnums)
.class public Lcom/ironsource/sdk/data/SSAEnums;
.super Ljava/lang/Object;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/data/SSAEnums$ControllerState;,
        Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;,
        Lcom/ironsource/sdk/data/SSAEnums$ProductType;,
        Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.data.SSAEnums.BackButtonState (com.ironsource.sdk.data.SSAEnums$BackButtonState)
.class public final enum Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BackButtonState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

.field public static final enum Controller:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

.field public static final enum Device:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

.field public static final enum None:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    const-string v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    .line 38
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    const-string v1, "Device"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    .line 39
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    const-string v1, "Controller"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    .line 36
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->None:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Device:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->Controller:Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

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
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 36
    const-class v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;
    .registers 1

    .prologue
    .line 36
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSAEnums$BackButtonState;

    return-object v0
.end method

###### Class com.ironsource.sdk.data.SSAEnums.ControllerState (com.ironsource.sdk.data.SSAEnums$ControllerState)
.class public final enum Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControllerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/data/SSAEnums$ControllerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field public static final enum Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field public static final enum FailedToDownload:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field public static final enum FailedToLoad:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field public static final enum Loaded:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field public static final enum None:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

.field public static final enum Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const-string v1, "None"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->None:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 45
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const-string v1, "FailedToDownload"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->FailedToDownload:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 46
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const-string v1, "FailedToLoad"

    invoke-direct {v0, v1, v5}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->FailedToLoad:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 48
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const-string v1, "Loaded"

    invoke-direct {v0, v1, v6}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 49
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const-string v1, "Ready"

    invoke-direct {v0, v1, v7}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 50
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    const-string v1, "Failed"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->None:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->FailedToDownload:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->FailedToLoad:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Loaded:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Ready:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->Failed:Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSAEnums$ControllerState;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSAEnums$ControllerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSAEnums$ControllerState;

    return-object v0
.end method

###### Class com.ironsource.sdk.data.SSAEnums.DebugMode (com.ironsource.sdk.data.SSAEnums$DebugMode)
.class public final enum Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DebugMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/data/SSAEnums$DebugMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

.field public static final enum MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_0"

    invoke-direct {v0, v1, v2, v2}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 8
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_1"

    invoke-direct {v0, v1, v3, v3}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 9
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_2"

    invoke-direct {v0, v1, v4, v4}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 10
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    const-string v1, "MODE_3"

    invoke-direct {v0, v1, v5, v5}, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    .line 5
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_0:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_1:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_2:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->MODE_3:Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSAEnums$DebugMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/ironsource/sdk/data/SSAEnums$DebugMode;->value:I

    return v0
.end method

###### Class com.ironsource.sdk.data.SSAEnums.ProductType (com.ironsource.sdk.data.SSAEnums$ProductType)
.class public final enum Lcom/ironsource/sdk/data/SSAEnums$ProductType;
.super Ljava/lang/Enum;
.source "SSAEnums.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSAEnums;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/data/SSAEnums$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSAEnums$ProductType;

.field public static final enum Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

.field public static final enum OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

.field public static final enum OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

.field public static final enum RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v1, "OfferWall"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 26
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v1, "Interstitial"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 27
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v1, "OfferWallCredits"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 28
    new-instance v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    const-string v1, "RewardedVideo"

    invoke-direct {v0, v1, v5}, Lcom/ironsource/sdk/data/SSAEnums$ProductType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWall:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->Interstitial:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->OfferWallCredits:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->RewardedVideo:Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$ProductType;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSAEnums$ProductType;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/ironsource/sdk/data/SSAEnums$ProductType;->$VALUES:[Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSAEnums$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSAEnums$ProductType;

    return-object v0
.end method
