###### Class com.ironsource.sdk.data.SSASession (com.ironsource.sdk.data.SSASession)
.class public Lcom/ironsource/sdk/data/SSASession;
.super Ljava/lang/Object;
.source "SSASession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/data/SSASession$SessionType;
    }
.end annotation


# instance fields
.field public final CONNECTIVITY:Ljava/lang/String;

.field public final SESSION_END_TIME:Ljava/lang/String;

.field public final SESSION_START_TIME:Ljava/lang/String;

.field public final SESSION_TYPE:Ljava/lang/String;

.field private connectivity:Ljava/lang/String;

.field private sessionEndTime:J

.field private sessionStartTime:J

.field private sessionType:Lcom/ironsource/sdk/data/SSASession$SessionType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/sdk/data/SSASession$SessionType;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # Lcom/ironsource/sdk/data/SSASession$SessionType;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "sessionStartTime"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->SESSION_START_TIME:Ljava/lang/String;

    .line 14
    const-string v0, "sessionEndTime"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->SESSION_END_TIME:Ljava/lang/String;

    .line 15
    const-string v0, "sessionType"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->SESSION_TYPE:Ljava/lang/String;

    .line 16
    const-string v0, "connectivity"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->CONNECTIVITY:Ljava/lang/String;

    .line 25
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getCurrentTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/data/SSASession;->setSessionStartTime(J)V

    .line 26
    invoke-virtual {p0, p2}, Lcom/ironsource/sdk/data/SSASession;->setSessionType(Lcom/ironsource/sdk/data/SSASession$SessionType;)V

    .line 27
    invoke-static {p1}, Lcom/ironsource/environment/ConnectivityService;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSASession;->setConnectivity(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 3
    .param p1, "jsonObj"    # Lorg/json/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "sessionStartTime"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->SESSION_START_TIME:Ljava/lang/String;

    .line 14
    const-string v0, "sessionEndTime"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->SESSION_END_TIME:Ljava/lang/String;

    .line 15
    const-string v0, "sessionType"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->SESSION_TYPE:Ljava/lang/String;

    .line 16
    const-string v0, "connectivity"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->CONNECTIVITY:Ljava/lang/String;

    .line 34
    :try_start_13
    const-string v0, "sessionStartTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    const-string v0, "sessionEndTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    const-string v0, "sessionType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_27
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_27} :catch_28

    .line 41
    :goto_27
    return-void

    .line 39
    :catch_28
    move-exception v0

    goto :goto_27
.end method


# virtual methods
.method public endSession()V
    .registers 3

    .prologue
    .line 44
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getCurrentTimeMillis()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/data/SSASession;->setSessionEndTime(J)V

    .line 45
    return-void
.end method

.method public getConnectivity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->connectivity:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionEndTime()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/ironsource/sdk/data/SSASession;->sessionEndTime:J

    return-wide v0
.end method

.method public getSessionStartTime()J
    .registers 3

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/ironsource/sdk/data/SSASession;->sessionStartTime:J

    return-wide v0
.end method

.method public getSessionType()Lcom/ironsource/sdk/data/SSASession$SessionType;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSASession;->sessionType:Lcom/ironsource/sdk/data/SSASession$SessionType;

    return-object v0
.end method

.method public setConnectivity(Ljava/lang/String;)V
    .registers 2
    .param p1, "connectivity"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSASession;->connectivity:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setSessionEndTime(J)V
    .registers 4
    .param p1, "sessionEndTime"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/ironsource/sdk/data/SSASession;->sessionEndTime:J

    .line 65
    return-void
.end method

.method public setSessionStartTime(J)V
    .registers 4
    .param p1, "sessionStartTime"    # J

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/ironsource/sdk/data/SSASession;->sessionStartTime:J

    .line 57
    return-void
.end method

.method public setSessionType(Lcom/ironsource/sdk/data/SSASession$SessionType;)V
    .registers 2
    .param p1, "sessionType"    # Lcom/ironsource/sdk/data/SSASession$SessionType;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSASession;->sessionType:Lcom/ironsource/sdk/data/SSASession$SessionType;

    .line 73
    return-void
.end method

###### Class com.ironsource.sdk.data.SSASession.SessionType (com.ironsource.sdk.data.SSASession$SessionType)
.class public final enum Lcom/ironsource/sdk/data/SSASession$SessionType;
.super Ljava/lang/Enum;
.source "SSASession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/data/SSASession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ironsource/sdk/data/SSASession$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ironsource/sdk/data/SSASession$SessionType;

.field public static final enum backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

.field public static final enum launched:Lcom/ironsource/sdk/data/SSASession$SessionType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    new-instance v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    const-string v1, "launched"

    invoke-direct {v0, v1, v2}, Lcom/ironsource/sdk/data/SSASession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->launched:Lcom/ironsource/sdk/data/SSASession$SessionType;

    new-instance v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    const-string v1, "backFromBG"

    invoke-direct {v0, v1, v3}, Lcom/ironsource/sdk/data/SSASession$SessionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

    .line 47
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/ironsource/sdk/data/SSASession$SessionType;

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->launched:Lcom/ironsource/sdk/data/SSASession$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ironsource/sdk/data/SSASession$SessionType;->backFromBG:Lcom/ironsource/sdk/data/SSASession$SessionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->$VALUES:[Lcom/ironsource/sdk/data/SSASession$SessionType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ironsource/sdk/data/SSASession$SessionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ironsource/sdk/data/SSASession$SessionType;

    return-object v0
.end method

.method public static values()[Lcom/ironsource/sdk/data/SSASession$SessionType;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/ironsource/sdk/data/SSASession$SessionType;->$VALUES:[Lcom/ironsource/sdk/data/SSASession$SessionType;

    invoke-virtual {v0}, [Lcom/ironsource/sdk/data/SSASession$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ironsource/sdk/data/SSASession$SessionType;

    return-object v0
.end method
