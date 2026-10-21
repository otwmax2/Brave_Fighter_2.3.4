###### Class com.ironsource.mediationsdk.logger.IronSourceLogger (com.ironsource.mediationsdk.logger.IronSourceLogger)
.class public abstract Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.super Ljava/lang/Object;
.source "IronSourceLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;,
        Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceLogLevel;
    }
.end annotation


# instance fields
.field mDebugLevel:I

.field private mLoggerName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "loggerName"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mLoggerName:Ljava/lang/String;

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mDebugLevel:I

    .line 18
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .param p1, "loggerName"    # Ljava/lang/String;
    .param p2, "debugLevel"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mLoggerName:Ljava/lang/String;

    .line 22
    iput p2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mDebugLevel:I

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 51
    if-eqz p1, :cond_19

    instance-of v2, p1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    if-eqz v2, :cond_19

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .line 55
    .local v0, "otherLogger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    iget-object v2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mLoggerName:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mLoggerName:Ljava/lang/String;

    iget-object v3, v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mLoggerName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v1, 0x1

    .line 58
    .end local v0    # "otherLogger":Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
    :cond_19
    return v1
.end method

.method getDebugLevel()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mDebugLevel:I

    return v0
.end method

.method getLoggerName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mLoggerName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract log(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;I)V
.end method

.method public abstract logException(Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public setDebugLevel(I)V
    .registers 2
    .param p1, "debugLevel"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger;->mDebugLevel:I

    .line 46
    return-void
.end method

###### Class com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceLogLevel (com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceLogLevel)
.class public Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceLogLevel;
.super Ljava/lang/Object;
.source "IronSourceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IronSourceLogLevel"
.end annotation


# static fields
.field public static final ERROR:I = 0x3

.field public static final INFO:I = 0x1

.field public static final VERBOSE:I = 0x0

.field public static final WARNING:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/ironsource/mediationsdk/logger/IronSourceLogger;


# direct methods
.method public constructor <init>(Lcom/ironsource/mediationsdk/logger/IronSourceLogger;)V
    .registers 2
    .param p1, "this$0"    # Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceLogLevel;->this$0:Lcom/ironsource/mediationsdk/logger/IronSourceLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.mediationsdk.logger.IronSourceLogger.IronSourceTag (com.ironsource.mediationsdk.logger.IronSourceLogger$IronSourceTag)
.class public final enum Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
.super Ljava/lang/Enum;
.source "IronSourceLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/logger/IronSourceLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IronSourceTag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

.field public static final enum NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "API"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 102
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "ADAPTER_API"

    invoke-direct {v0, v1, v4}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 103
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "CALLBACK"

    invoke-direct {v0, v1, v5}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 104
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "ADAPTER_CALLBACK"

    invoke-direct {v0, v1, v6}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 105
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v7}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 106
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "INTERNAL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 107
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "NATIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 108
    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    const-string v1, "EVENT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    .line 100
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_API:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->ADAPTER_CALLBACK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NETWORK:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->NATIVE:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->EVENT:Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->$VALUES:[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->$VALUES:[Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    invoke-virtual {v0}, [Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/mediationsdk/logger/IronSourceLogger$IronSourceTag;

    return-object v0
.end method
