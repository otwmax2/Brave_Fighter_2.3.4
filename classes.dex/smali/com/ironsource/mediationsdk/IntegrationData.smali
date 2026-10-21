###### Class com.ironsource.mediationsdk.IntegrationData (com.ironsource.mediationsdk.IntegrationData)
.class public Lcom/ironsource/mediationsdk/IntegrationData;
.super Ljava/lang/Object;
.source "IntegrationData.java"


# instance fields
.field public activities:[Ljava/lang/String;

.field public broadcastReceivers:[Ljava/lang/String;

.field public externalLibs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public name:Ljava/lang/String;

.field public sdkName:Ljava/lang/String;

.field public services:[Ljava/lang/String;

.field public validateWriteExternalStorage:Z

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/ironsource/mediationsdk/IntegrationData;->name:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/ironsource/mediationsdk/IntegrationData;->version:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->activities:[Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->sdkName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->externalLibs:Ljava/util/ArrayList;

    .line 26
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->broadcastReceivers:[Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->services:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/mediationsdk/IntegrationData;->validateWriteExternalStorage:Z

    .line 29
    return-void
.end method
