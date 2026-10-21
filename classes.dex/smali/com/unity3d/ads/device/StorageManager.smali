###### Class com.unity3d.ads.device.StorageManager (com.unity3d.ads.device.StorageManager)
.class public Lcom/unity3d/ads/device/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/device/StorageManager$StorageType;
    }
.end annotation


# static fields
.field protected static final _storageFileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/unity3d/ads/device/StorageManager$StorageType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static final _storages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/ads/device/Storage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public static declared-synchronized addStorageLocation(Lcom/unity3d/ads/device/StorageManager$StorageType;Ljava/lang/String;)V
    .registers 4
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 89
    const-class v1, Lcom/unity3d/ads/device/StorageManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 90
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    .line 92
    :cond_10
    monitor-exit v1

    return-void

    .line 89
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;
    .registers 4
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 69
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    if-eqz v1, :cond_21

    .line 70
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/Storage;

    .line 71
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->getType()Lcom/unity3d/ads/device/StorageManager$StorageType;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/ads/device/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 75
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :goto_20
    return-object v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public static hasStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z
    .registers 4
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 79
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    if-eqz v1, :cond_22

    .line 80
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/Storage;

    .line 81
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->getType()Lcom/unity3d/ads/device/StorageManager$StorageType;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/ads/device/StorageManager$StorageType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v1, 0x1

    .line 85
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method public static init(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 20
    if-nez p0, :cond_4

    .line 36
    :cond_3
    :goto_3
    return v1

    .line 22
    :cond_4
    invoke-static {p0}, Lcom/unity3d/ads/properties/SdkProperties;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 24
    .local v0, "cacheDir":Ljava/io/File;
    if-eqz v0, :cond_3

    .line 26
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalStorageFilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "public-data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/ads/device/StorageManager;->addStorageLocation(Lcom/unity3d/ads/device/StorageManager$StorageType;Ljava/lang/String;)V

    .line 27
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v2}, Lcom/unity3d/ads/device/StorageManager;->setupStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/unity3d/ads/properties/SdkProperties;->getLocalStorageFilePrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "private-data.json"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unity3d/ads/device/StorageManager;->addStorageLocation(Lcom/unity3d/ads/device/StorageManager$StorageType;Ljava/lang/String;)V

    .line 32
    sget-object v2, Lcom/unity3d/ads/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v2}, Lcom/unity3d/ads/device/StorageManager;->setupStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 36
    const/4 v1, 0x1

    goto :goto_3
.end method

.method public static initStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .registers 3
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->hasStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 41
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 42
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_f

    .line 43
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->initStorage()Z

    .line 51
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :cond_f
    :goto_f
    return-void

    .line 46
    :cond_10
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 47
    new-instance v0, Lcom/unity3d/ads/device/Storage;

    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/unity3d/ads/device/Storage;-><init>(Ljava/lang/String;Lcom/unity3d/ads/device/StorageManager$StorageType;)V

    .line 48
    .restart local v0    # "s":Lcom/unity3d/ads/device/Storage;
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->initStorage()Z

    .line 49
    sget-object v1, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f
.end method

.method public static declared-synchronized removeStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .registers 4
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 95
    const-class v1, Lcom/unity3d/ads/device/StorageManager;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 96
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storages:Ljava/util/List;

    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    :cond_12
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    if-eqz v0, :cond_1b

    .line 100
    sget-object v0, Lcom/unity3d/ads/device/StorageManager;->_storageFileMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1d

    .line 102
    :cond_1b
    monitor-exit v1

    return-void

    .line 95
    :catchall_1d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static setupStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z
    .registers 3
    .param p0, "type"    # Lcom/unity3d/ads/device/StorageManager$StorageType;

    .prologue
    .line 54
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->hasStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 55
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->initStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)V

    .line 56
    invoke-static {p0}, Lcom/unity3d/ads/device/StorageManager;->getStorage(Lcom/unity3d/ads/device/StorageManager$StorageType;)Lcom/unity3d/ads/device/Storage;

    move-result-object v0

    .line 57
    .local v0, "s":Lcom/unity3d/ads/device/Storage;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->storageFileExists()Z

    move-result v1

    if-nez v1, :cond_18

    .line 58
    invoke-virtual {v0}, Lcom/unity3d/ads/device/Storage;->writeStorage()Z

    .line 60
    :cond_18
    if-nez v0, :cond_1c

    .line 61
    const/4 v1, 0x0

    .line 65
    .end local v0    # "s":Lcom/unity3d/ads/device/Storage;
    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x1

    goto :goto_1b
.end method

###### Class com.unity3d.ads.device.StorageManager.StorageType (com.unity3d.ads.device.StorageManager$StorageType)
.class public final enum Lcom/unity3d/ads/device/StorageManager$StorageType;
.super Ljava/lang/Enum;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/device/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StorageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unity3d/ads/device/StorageManager$StorageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unity3d/ads/device/StorageManager$StorageType;

.field public static final enum PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

.field public static final enum PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-instance v0, Lcom/unity3d/ads/device/StorageManager$StorageType;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2}, Lcom/unity3d/ads/device/StorageManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

    new-instance v0, Lcom/unity3d/ads/device/StorageManager$StorageType;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3}, Lcom/unity3d/ads/device/StorageManager$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/unity3d/ads/device/StorageManager$StorageType;

    sget-object v1, Lcom/unity3d/ads/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/ads/device/StorageManager$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/unity3d/ads/device/StorageManager$StorageType;->PUBLIC:Lcom/unity3d/ads/device/StorageManager$StorageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/unity3d/ads/device/StorageManager$StorageType;->$VALUES:[Lcom/unity3d/ads/device/StorageManager$StorageType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unity3d/ads/device/StorageManager$StorageType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/device/StorageManager$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/unity3d/ads/device/StorageManager$StorageType;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/unity3d/ads/device/StorageManager$StorageType;->$VALUES:[Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-virtual {v0}, [Lcom/unity3d/ads/device/StorageManager$StorageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/unity3d/ads/device/StorageManager$StorageType;

    return-object v0
.end method
