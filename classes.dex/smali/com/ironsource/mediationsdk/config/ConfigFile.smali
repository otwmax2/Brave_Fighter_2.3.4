###### Class com.ironsource.mediationsdk.config.ConfigFile (com.ironsource.mediationsdk.config.ConfigFile)
.class public Lcom/ironsource/mediationsdk/config/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# static fields
.field private static mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;


# instance fields
.field private mPluginFrameworkVersion:Ljava/lang/String;

.field private mPluginType:Ljava/lang/String;

.field private mPluginVersion:Ljava/lang/String;

.field private mSupportedPlugins:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Unity"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AdobeAir"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Xamarin"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Corona"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AdMob"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "MoPub"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mSupportedPlugins:[Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getConfigFile()Lcom/ironsource/mediationsdk/config/ConfigFile;
    .registers 2

    .prologue
    .line 14
    const-class v1, Lcom/ironsource/mediationsdk/config/ConfigFile;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;

    if-nez v0, :cond_e

    .line 15
    new-instance v0, Lcom/ironsource/mediationsdk/config/ConfigFile;

    invoke-direct {v0}, Lcom/ironsource/mediationsdk/config/ConfigFile;-><init>()V

    sput-object v0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;

    .line 17
    :cond_e
    sget-object v0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mInstance:Lcom/ironsource/mediationsdk/config/ConfigFile;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 14
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getPluginFrameworkVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginFrameworkVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    return-object v0
.end method

.method public getPluginVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setPluginData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "pluginType"    # Ljava/lang/String;
    .param p2, "pluginVersion"    # Ljava/lang/String;
    .param p3, "pluginFrameworkVersion"    # Ljava/lang/String;

    .prologue
    .line 27
    if-eqz p1, :cond_10

    .line 28
    iget-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mSupportedPlugins:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 29
    iput-object p1, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    .line 34
    :cond_10
    :goto_10
    if-eqz p2, :cond_14

    .line 35
    iput-object p2, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginVersion:Ljava/lang/String;

    .line 37
    :cond_14
    if-eqz p3, :cond_18

    .line 38
    iput-object p3, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginFrameworkVersion:Ljava/lang/String;

    .line 39
    :cond_18
    return-void

    .line 31
    :cond_19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/mediationsdk/config/ConfigFile;->mPluginType:Ljava/lang/String;

    goto :goto_10
.end method
