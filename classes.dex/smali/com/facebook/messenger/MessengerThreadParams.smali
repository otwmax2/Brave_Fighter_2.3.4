###### Class com.facebook.messenger.MessengerThreadParams (com.facebook.messenger.MessengerThreadParams)
.class public Lcom/facebook/messenger/MessengerThreadParams;
.super Ljava/lang/Object;
.source "MessengerThreadParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/messenger/MessengerThreadParams$Origin;
    }
.end annotation


# instance fields
.field public final metadata:Ljava/lang/String;

.field public final origin:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public final participants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final threadToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/messenger/MessengerThreadParams$Origin;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .registers 5
    .param p1, "origin"    # Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .param p2, "threadToken"    # Ljava/lang/String;
    .param p3, "metadata"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/messenger/MessengerThreadParams$Origin;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p4, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/facebook/messenger/MessengerThreadParams;->threadToken:Ljava/lang/String;

    .line 82
    iput-object p3, p0, Lcom/facebook/messenger/MessengerThreadParams;->metadata:Ljava/lang/String;

    .line 83
    iput-object p4, p0, Lcom/facebook/messenger/MessengerThreadParams;->participants:Ljava/util/List;

    .line 84
    iput-object p1, p0, Lcom/facebook/messenger/MessengerThreadParams;->origin:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 85
    return-void
.end method

###### Class com.facebook.messenger.MessengerThreadParams.Origin (com.facebook.messenger.MessengerThreadParams$Origin)
.class public final enum Lcom/facebook/messenger/MessengerThreadParams$Origin;
.super Ljava/lang/Enum;
.source "MessengerThreadParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/messenger/MessengerThreadParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Origin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/messenger/MessengerThreadParams$Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

.field public static final enum UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "REPLY_FLOW"

    invoke-direct {v0, v1, v2}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 43
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "COMPOSE_FLOW"

    invoke-direct {v0, v1, v3}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 48
    new-instance v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/facebook/messenger/MessengerThreadParams$Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/messenger/MessengerThreadParams$Origin;

    sget-object v1, Lcom/facebook/messenger/MessengerThreadParams$Origin;->REPLY_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/messenger/MessengerThreadParams$Origin;->COMPOSE_FLOW:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/messenger/MessengerThreadParams$Origin;->UNKNOWN:Lcom/facebook/messenger/MessengerThreadParams$Origin;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-object v0
.end method

.method public static values()[Lcom/facebook/messenger/MessengerThreadParams$Origin;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/messenger/MessengerThreadParams$Origin;->$VALUES:[Lcom/facebook/messenger/MessengerThreadParams$Origin;

    invoke-virtual {v0}, [Lcom/facebook/messenger/MessengerThreadParams$Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/messenger/MessengerThreadParams$Origin;

    return-object v0
.end method
