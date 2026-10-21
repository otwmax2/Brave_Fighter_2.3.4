###### Class com.moat.analytics.mobile.iro.MoatAdEventType (com.moat.analytics.mobile.iro.MoatAdEventType)
.class public final enum Lcom/moat/analytics/mobile/iro/MoatAdEventType;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moat/analytics/mobile/iro/MoatAdEventType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_PAUSED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_PLAYING:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_START:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_STOPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field public static final enum AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

.field private static final synthetic ॱ:[Lcom/moat/analytics/mobile/iro/MoatAdEventType;


# instance fields
.field private final ˋ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_FIRST_QUARTILE"

    const-string v2, "AdVideoFirstQuartile"

    invoke-direct {v0, v1, v4, v2}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 10
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_MID_POINT"

    const-string v2, "AdVideoMidpoint"

    invoke-direct {v0, v1, v5, v2}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 11
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_THIRD_QUARTILE"

    const-string v2, "AdVideoThirdQuartile"

    invoke-direct {v0, v1, v6, v2}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 12
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_COMPLETE"

    const-string v2, "AdVideoComplete"

    invoke-direct {v0, v1, v7, v2}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 13
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_PAUSED"

    const-string v2, "AdPaused"

    invoke-direct {v0, v1, v8, v2}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 14
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_PLAYING"

    const/4 v2, 0x5

    const-string v3, "AdPlaying"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 15
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_START"

    const/4 v2, 0x6

    const-string v3, "AdVideoStart"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 16
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_STOPPED"

    const/4 v2, 0x7

    const-string v3, "AdStopped"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 17
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_SKIPPED"

    const/16 v2, 0x8

    const-string v3, "AdSkipped"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 18
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_VOLUME_CHANGE"

    const/16 v2, 0x9

    const-string v3, "AdVolumeChange"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 19
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_ENTER_FULLSCREEN"

    const/16 v2, 0xa

    const-string v3, "fullScreen"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 20
    new-instance v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    const-string v1, "AD_EVT_EXIT_FULLSCREEN"

    const/16 v2, 0xb

    const-string v3, "exitFullscreen"

    invoke-direct {v0, v1, v2, v3}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    .line 7
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_FIRST_QUARTILE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_MID_POINT:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_THIRD_QUARTILE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_SKIPPED:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->ॱ:[Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->ˋ:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/MoatAdEventType;
    .registers 6

    .prologue
    .line 34
    if-eqz p0, :cond_1c

    .line 35
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->values()[Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_9
    if-ge v1, v3, :cond_1c

    aget-object v0, v2, v1

    .line 36
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 41
    :goto_17
    return-object v0

    .line 35
    :cond_18
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    .line 41
    :cond_1c
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/MoatAdEventType;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    return-object v0
.end method

.method public static values()[Lcom/moat/analytics/mobile/iro/MoatAdEventType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->ॱ:[Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/iro/MoatAdEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/iro/MoatAdEventType;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/MoatAdEventType;->ˋ:Ljava/lang/String;

    return-object v0
.end method
