###### Class com.ironsource.sdk.precache.DownloadManager (com.ironsource.sdk.precache.DownloadManager)
.class public Lcom/ironsource/sdk/precache/DownloadManager;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/precache/DownloadManager$Result;,
        Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;,
        Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;,
        Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;,
        Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
    }
.end annotation


# static fields
.field public static final CAMPAIGNS:Ljava/lang/String; = "campaigns"

.field public static final FILE_ALREADY_EXIST:Ljava/lang/String; = "file_already_exist"

.field protected static final FILE_NOT_FOUND_EXCEPTION:Ljava/lang/String; = "file not found exception"

.field public static final GLOBAL_ASSETS:Ljava/lang/String; = "globalAssets"

.field protected static final HTTP_EMPTY_RESPONSE:Ljava/lang/String; = "http empty response"

.field protected static final HTTP_ERROR_CODE:Ljava/lang/String; = "http error code"

.field protected static final HTTP_NOT_FOUND:Ljava/lang/String; = "http not found"

.field protected static final HTTP_OK:Ljava/lang/String; = "http ok"

.field protected static final IO_EXCEPTION:Ljava/lang/String; = "io exception"

.field protected static final MALFORMED_URL_EXCEPTION:Ljava/lang/String; = "malformed url exception"

.field static final MESSAGE_EMPTY_URL:I = 0x3ef

.field static final MESSAGE_FILE_DOWNLOAD_FAIL:I = 0x3f9

.field static final MESSAGE_FILE_DOWNLOAD_SUCCESS:I = 0x3f8

.field static final MESSAGE_FILE_NOT_FOUND_EXCEPTION:I = 0x3fa

.field static final MESSAGE_GENERAL_HTTP_ERROR_CODE:I = 0x3f3

.field static final MESSAGE_HTTP_EMPTY_RESPONSE:I = 0x3ee

.field static final MESSAGE_HTTP_NOT_FOUND:I = 0x3ed

.field static final MESSAGE_INIT_BC_FAIL:I = 0x3f6

.field static final MESSAGE_IO_EXCEPTION:I = 0x3f1

.field static final MESSAGE_MALFORMED_URL_EXCEPTION:I = 0x3ec

.field static final MESSAGE_NUM_OF_BANNERS_TO_CACHE:I = 0x3f5

.field static final MESSAGE_NUM_OF_BANNERS_TO_INIT_SUCCESS:I = 0x3f4

.field static final MESSAGE_OUT_OF_MEMORY_EXCEPTION:I = 0x3fb

.field static final MESSAGE_SOCKET_TIMEOUT_EXCEPTION:I = 0x3f0

.field static final MESSAGE_TMP_FILE_RENAME_FAILED:I = 0x3fc

.field static final MESSAGE_URI_SYNTAX_EXCEPTION:I = 0x3f2

.field static final MESSAGE_ZERO_CAMPAIGNS_TO_INIT_SUCCESS:I = 0x3f7

.field public static final NO_DISK_SPACE:Ljava/lang/String; = "no_disk_space"

.field public static final NO_NETWORK_CONNECTION:Ljava/lang/String; = "no_network_connection"

.field public static final OPERATION_TIMEOUT:I = 0x1388

.field protected static final OUT_OF_MEMORY_EXCEPTION:Ljava/lang/String; = "out of memory exception"

.field public static final SETTINGS:Ljava/lang/String; = "settings"

.field protected static final SOCKET_TIMEOUT_EXCEPTION:Ljava/lang/String; = "socket timeout exception"

.field public static final STORAGE_UNAVAILABLE:Ljava/lang/String; = "sotrage_unavailable"

.field private static final TAG:Ljava/lang/String; = "DownloadManager"

.field private static final TEMP_DIR_FOR_FILES:Ljava/lang/String; = "temp"

.field private static final TEMP_PREFIX_FOR_FILES:Ljava/lang/String; = "tmp_"

.field private static final UNABLE_TO_CREATE_FOLDER:Ljava/lang/String; = "unable_to_create_folder"

.field protected static final URI_SYNTAX_EXCEPTION:Ljava/lang/String; = "uri syntax exception"

.field public static final UTF8_CHARSET:Ljava/lang/String; = "UTF-8"

.field private static mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

.field private mMobileControllerThread:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getDownloadHandler()Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    .line 93
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->deleteFolder(Ljava/lang/String;Ljava/lang/String;)Z

    .line 94
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    const-string v1, "temp"

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 95
    return-void
.end method

.method static getBytes(Ljava/io/InputStream;)[B
    .registers 6
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 499
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 501
    .local v0, "buffer":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x2000

    new-array v2, v3, [B

    .line 502
    .local v2, "data":[B
    :goto_a
    array-length v3, v2

    invoke-virtual {p0, v2, v4, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .local v1, "bytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_16

    .line 503
    invoke-virtual {v0, v2, v4, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_a

    .line 505
    :cond_16
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 506
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3
.end method

.method public static declared-synchronized getInstance(Ljava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager;
    .registers 3
    .param p0, "cacheRootDirectory"    # Ljava/lang/String;

    .prologue
    .line 98
    const-class v1, Lcom/ironsource/sdk/precache/DownloadManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    if-nez v0, :cond_e

    .line 99
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/precache/DownloadManager;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 101
    :cond_e
    sget-object v0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 98
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downloadFile(Lcom/ironsource/sdk/data/SSAFile;)V
    .registers 6
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    .line 159
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/ironsource/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .local v0, "worker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 161
    return-void
.end method

.method public downloadMobileControllerFile(Lcom/ironsource/sdk/data/SSAFile;)V
    .registers 6
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;

    .prologue
    .line 164
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    iget-object v2, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager;->getTempFilesDirectory()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;-><init>(Lcom/ironsource/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .local v0, "mobileControllerWorker":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    .line 166
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 167
    return-void
.end method

.method getDownloadHandler()Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
    .registers 2

    .prologue
    .line 136
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    invoke-direct {v0}, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;-><init>()V

    return-object v0
.end method

.method getTempFilesDirectory()Ljava/lang/String;
    .registers 3

    .prologue
    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mCacheRootDirectory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMobileControllerThreadLive()Z
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mMobileControllerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 153
    sput-object v1, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadManager:Lcom/ironsource/sdk/precache/DownloadManager;

    .line 154
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    invoke-virtual {v0}, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->release()V

    .line 155
    iput-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    .line 156
    return-void
.end method

.method public setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager;->mDownloadHandler:Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;

    invoke-virtual {v0, p1}, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V

    .line 150
    return-void
.end method

###### Class com.ironsource.sdk.precache.DownloadManager.DownloadHandler (com.ironsource.sdk.precache.DownloadManager$DownloadHandler)
.class Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;
.super Landroid/os/Handler;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DownloadHandler"
.end annotation


# instance fields
.field mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1a

    .line 129
    :goto_5
    return-void

    .line 117
    :pswitch_6
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_5

    .line 120
    :pswitch_10
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/ironsource/sdk/data/SSAFile;

    invoke-interface {v1, v0}, Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;->onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V

    goto :goto_5

    .line 114
    :pswitch_data_1a
    .packed-switch 0x3f8
        :pswitch_6
        :pswitch_10
    .end packed-switch
.end method

.method public release()V
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 132
    return-void
.end method

.method setOnPreCacheCompletion(Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;)V
    .registers 3
    .param p1, "listener"    # Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .prologue
    .line 108
    if-nez p1, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 109
    :cond_8
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$DownloadHandler;->mListener:Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;

    .line 110
    return-void
.end method

###### Class com.ironsource.sdk.precache.DownloadManager.FileWorkerThread (com.ironsource.sdk.precache.DownloadManager$FileWorkerThread)
.class Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileWorkerThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Lcom/ironsource/sdk/precache/DownloadManager$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private mConnectionRetries:J

.field private mDirectory:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFileUrl:Ljava/lang/String;

.field private mTmpFilesDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .registers 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "connectionRetries"    # J
    .param p6, "tmpFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 339
    iput-object p1, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    .line 340
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    .line 341
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    .line 342
    iput-wide p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 343
    iput-object p6, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    .line 344
    return-void
.end method


# virtual methods
.method public call()Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .registers 14

    .prologue
    const/16 v12, 0x3f1

    .line 361
    const/4 v4, 0x0

    .line 363
    .local v4, "results":Lcom/ironsource/sdk/precache/DownloadManager$Result;
    iget-wide v8, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_f

    .line 365
    const-wide/16 v8, 0x1

    iput-wide v8, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    .line 369
    :cond_f
    const/4 v7, 0x0

    .local v7, "tryIndex":I
    :goto_10
    int-to-long v8, v7

    iget-wide v10, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mConnectionRetries:J

    cmp-long v8, v8, v10

    if-gez v8, :cond_25

    .line 371
    iget-object v8, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileUrl:Ljava/lang/String;

    invoke-virtual {p0, v8, v7}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v4

    .line 372
    iget v3, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 374
    .local v3, "responseCode":I
    const/16 v8, 0x3f0

    if-eq v3, v8, :cond_74

    if-eq v3, v12, :cond_74

    .line 380
    .end local v3    # "responseCode":I
    :cond_25
    if-eqz v4, :cond_73

    iget-object v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    if-eqz v8, :cond_73

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 382
    .local v2, "origFileName":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mTmpFilesDirectory:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "tmp_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->mFileName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 385
    .local v5, "tmpFileName":Ljava/lang/String;
    :try_start_67
    iget-object v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B

    invoke-virtual {p0, v8, v5}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->saveFile([BLjava/lang/String;)I

    move-result v6

    .line 386
    .local v6, "totalBytesRead":I
    if-nez v6, :cond_77

    .line 387
    const/16 v8, 0x3ee

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 406
    .end local v2    # "origFileName":Ljava/lang/String;
    .end local v5    # "tmpFileName":Ljava/lang/String;
    .end local v6    # "totalBytesRead":I
    :cond_73
    :goto_73
    return-object v4

    .line 369
    .restart local v3    # "responseCode":I
    :cond_74
    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 388
    .end local v3    # "responseCode":I
    .restart local v2    # "origFileName":Ljava/lang/String;
    .restart local v5    # "tmpFileName":Ljava/lang/String;
    .restart local v6    # "totalBytesRead":I
    :cond_77
    invoke-virtual {p0, v5, v2}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_73

    .line 389
    const/16 v8, 0x3fc

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I
    :try_end_81
    .catch Ljava/io/FileNotFoundException; {:try_start_67 .. :try_end_81} :catch_82
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_81} :catch_88
    .catch Ljava/lang/Error; {:try_start_67 .. :try_end_81} :catch_9f

    goto :goto_73

    .line 391
    .end local v6    # "totalBytesRead":I
    :catch_82
    move-exception v0

    .line 392
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/16 v8, 0x3fa

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_73

    .line 393
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_88
    move-exception v0

    .line 394
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9c

    .line 395
    const-string v8, "DownloadManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :cond_9c
    iput v12, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_73

    .line 398
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_9f
    move-exception v1

    .line 399
    .local v1, "err":Ljava/lang/Error;
    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b3

    .line 400
    const-string v8, "DownloadManager"

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    :cond_b3
    const/16 v8, 0x3fb

    iput v8, v4, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_73
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v0

    return-object v0
.end method

.method downloadContent(Ljava/lang/String;I)Lcom/ironsource/sdk/precache/DownloadManager$Result;
    .registers 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "tryNumber"    # I

    .prologue
    const/16 v9, 0xc8

    .line 412
    new-instance v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;

    invoke-direct {v7}, Lcom/ironsource/sdk/precache/DownloadManager$Result;-><init>()V

    .line 414
    .local v7, "results":Lcom/ironsource/sdk/precache/DownloadManager$Result;
    const/4 v1, 0x0

    .line 416
    .local v1, "connection":Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 418
    .local v6, "responseCode":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 419
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 420
    const/16 v8, 0x3ef

    iput v8, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 490
    :goto_15
    return-object v7

    .line 423
    :cond_16
    const/4 v4, 0x0

    .line 426
    .local v4, "is":Ljava/io/InputStream;
    :try_start_17
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 430
    .local v5, "mUrl":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    .line 432
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 433
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 435
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 436
    const/16 v8, 0x1388

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 438
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 439
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    .line 440
    if-lt v6, v9, :cond_43

    const/16 v8, 0x190

    if-lt v6, v8, :cond_82

    .line 441
    :cond_43
    const/16 v6, 0x3f3

    .line 447
    :goto_45
    if-eq v6, v9, :cond_73

    .line 448
    const-string v8, "DownloadManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " RESPONSE CODE: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ATTEMPT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/net/MalformedURLException; {:try_start_17 .. :try_end_73} :catch_8d
    .catch Ljava/net/URISyntaxException; {:try_start_17 .. :try_end_73} :catch_aa
    .catch Ljava/net/SocketTimeoutException; {:try_start_17 .. :try_end_73} :catch_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_73} :catch_da
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_73} :catch_f2
    .catch Ljava/lang/Error; {:try_start_17 .. :try_end_73} :catch_11d
    .catchall {:try_start_17 .. :try_end_73} :catchall_148

    .line 475
    :cond_73
    if-eqz v4, :cond_78

    .line 476
    :try_start_75
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_78} :catch_a0

    .line 482
    :cond_78
    :goto_78
    if-eqz v1, :cond_7d

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_7d
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto :goto_15

    .line 443
    :cond_82
    :try_start_82
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 444
    invoke-virtual {p0, v4}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v8

    iput-object v8, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->body:[B
    :try_end_8c
    .catch Ljava/net/MalformedURLException; {:try_start_82 .. :try_end_8c} :catch_8d
    .catch Ljava/net/URISyntaxException; {:try_start_82 .. :try_end_8c} :catch_aa
    .catch Ljava/net/SocketTimeoutException; {:try_start_82 .. :try_end_8c} :catch_c2
    .catch Ljava/io/FileNotFoundException; {:try_start_82 .. :try_end_8c} :catch_da
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_8c} :catch_f2
    .catch Ljava/lang/Error; {:try_start_82 .. :try_end_8c} :catch_11d
    .catchall {:try_start_82 .. :try_end_8c} :catchall_148

    goto :goto_45

    .line 454
    .end local v5    # "mUrl":Ljava/net/URL;
    :catch_8d
    move-exception v2

    .line 455
    .local v2, "e":Ljava/net/MalformedURLException;
    const/16 v6, 0x3ec

    .line 475
    if-eqz v4, :cond_95

    .line 476
    :try_start_92
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_95} :catch_a5

    .line 482
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_95
    :goto_95
    if-eqz v1, :cond_9a

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_9a
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_15

    .line 478
    .restart local v5    # "mUrl":Ljava/net/URL;
    :catch_a0
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_78

    .line 478
    .end local v5    # "mUrl":Ljava/net/URL;
    .local v2, "e":Ljava/net/MalformedURLException;
    :catch_a5
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_95

    .line 456
    .end local v2    # "e":Ljava/io/IOException;
    :catch_aa
    move-exception v2

    .line 457
    .local v2, "e":Ljava/net/URISyntaxException;
    const/16 v6, 0x3f2

    .line 475
    if-eqz v4, :cond_b2

    .line 476
    :try_start_af
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_bd

    .line 482
    .end local v2    # "e":Ljava/net/URISyntaxException;
    :cond_b2
    :goto_b2
    if-eqz v1, :cond_b7

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_b7
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_15

    .line 478
    .restart local v2    # "e":Ljava/net/URISyntaxException;
    :catch_bd
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    .line 458
    .end local v2    # "e":Ljava/io/IOException;
    :catch_c2
    move-exception v2

    .line 459
    .local v2, "e":Ljava/net/SocketTimeoutException;
    const/16 v6, 0x3f0

    .line 475
    if-eqz v4, :cond_ca

    .line 476
    :try_start_c7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_d5

    .line 482
    .end local v2    # "e":Ljava/net/SocketTimeoutException;
    :cond_ca
    :goto_ca
    if-eqz v1, :cond_cf

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_cf
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_15

    .line 478
    .restart local v2    # "e":Ljava/net/SocketTimeoutException;
    :catch_d5
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_ca

    .line 460
    .end local v2    # "e":Ljava/io/IOException;
    :catch_da
    move-exception v2

    .line 461
    .local v2, "e":Ljava/io/FileNotFoundException;
    const/16 v6, 0x3fa

    .line 475
    if-eqz v4, :cond_e2

    .line 476
    :try_start_df
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_e2
    .catch Ljava/io/IOException; {:try_start_df .. :try_end_e2} :catch_ed

    .line 482
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_e2
    :goto_e2
    if-eqz v1, :cond_e7

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_e7
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_15

    .line 478
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_ed
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e2

    .line 462
    .end local v2    # "e":Ljava/io/IOException;
    :catch_f2
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/Exception;
    :try_start_f3
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_106

    .line 464
    const-string v8, "DownloadManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_106
    .catchall {:try_start_f3 .. :try_end_106} :catchall_148

    .line 466
    :cond_106
    const/16 v6, 0x3f1

    .line 475
    if-eqz v4, :cond_10d

    .line 476
    :try_start_10a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10d
    .catch Ljava/io/IOException; {:try_start_10a .. :try_end_10d} :catch_118

    .line 482
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_10d
    :goto_10d
    if-eqz v1, :cond_112

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_112
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_15

    .line 478
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_118
    move-exception v2

    .line 479
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10d

    .line 467
    .end local v2    # "e":Ljava/io/IOException;
    :catch_11d
    move-exception v3

    .line 468
    .local v3, "err":Ljava/lang/Error;
    const/16 v6, 0x3fb

    .line 469
    :try_start_120
    invoke-virtual {v3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_133

    .line 470
    const-string v8, "DownloadManager"

    invoke-virtual {v3}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catchall {:try_start_120 .. :try_end_133} :catchall_148

    .line 475
    :cond_133
    if-eqz v4, :cond_138

    .line 476
    :try_start_135
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_135 .. :try_end_138} :catch_143

    .line 482
    :cond_138
    :goto_138
    if-eqz v1, :cond_13d

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_13d
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    goto/16 :goto_15

    .line 478
    :catch_143
    move-exception v2

    .line 479
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_138

    .line 474
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "err":Ljava/lang/Error;
    :catchall_148
    move-exception v8

    .line 475
    if-eqz v4, :cond_14e

    .line 476
    :try_start_14b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_14e
    .catch Ljava/io/IOException; {:try_start_14b .. :try_end_14e} :catch_158

    .line 482
    :cond_14e
    :goto_14e
    if-eqz v1, :cond_153

    .line 483
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 486
    :cond_153
    iput-object p1, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->url:Ljava/lang/String;

    .line 487
    iput v6, v7, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    throw v8

    .line 478
    :catch_158
    move-exception v2

    .line 479
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14e
.end method

.method getBytes(Ljava/io/InputStream;)[B
    .registers 3
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {p1}, Lcom/ironsource/sdk/precache/DownloadManager;->getBytes(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method renameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p1, "fromName"    # Ljava/lang/String;
    .param p2, "toName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->renameFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method saveFile([BLjava/lang/String;)I
    .registers 4
    .param p1, "data"    # [B
    .param p2, "destFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 347
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->saveFile([BLjava/lang/String;)I

    move-result v0

    return v0
.end method

###### Class com.ironsource.sdk.precache.DownloadManager.OnPreCacheCompletion (com.ironsource.sdk.precache.DownloadManager$OnPreCacheCompletion)
.class public interface abstract Lcom/ironsource/sdk/precache/DownloadManager$OnPreCacheCompletion;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnPreCacheCompletion"
.end annotation


# virtual methods
.method public abstract onFileDownloadFail(Lcom/ironsource/sdk/data/SSAFile;)V
.end method

.method public abstract onFileDownloadSuccess(Lcom/ironsource/sdk/data/SSAFile;)V
.end method

###### Class com.ironsource.sdk.precache.DownloadManager.Result (com.ironsource.sdk.precache.DownloadManager$Result)
.class Lcom/ironsource/sdk/precache/DownloadManager$Result;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# instance fields
.field body:[B

.field responseCode:I

.field public url:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 515
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.ironsource.sdk.precache.DownloadManager.SingleFileWorkerThread (com.ironsource.sdk.precache.DownloadManager$SingleFileWorkerThread)
.class Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;
.super Ljava/lang/Object;
.source "DownloadManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/sdk/precache/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleFileWorkerThread"
.end annotation


# instance fields
.field private mCacheRootDirectory:Ljava/lang/String;

.field private mConnectionRetries:J

.field mDownloadHandler:Landroid/os/Handler;

.field private mFile:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field private final mTempFilesDirectory:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/data/SSAFile;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "file"    # Lcom/ironsource/sdk/data/SSAFile;
    .param p2, "downloadHandler"    # Landroid/os/Handler;
    .param p3, "cacheRootDir"    # Ljava/lang/String;
    .param p4, "tempFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Lcom/ironsource/sdk/data/SSAFile;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->guessFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    .line 190
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->getConnectionRetries()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    .line 191
    iput-object p3, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mCacheRootDirectory:Ljava/lang/String;

    .line 192
    iput-object p2, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    .line 193
    iput-object p4, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mTempFilesDirectory:Ljava/lang/String;

    .line 194
    return-void
.end method


# virtual methods
.method convertErrorCodeToMessage(I)Ljava/lang/String;
    .registers 5
    .param p1, "errorCode"    # I

    .prologue
    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not defined message for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, "errMsg":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_32

    .line 308
    :goto_16
    return-object v0

    .line 280
    :sswitch_17
    const-string v0, "malformed url exception"

    .line 281
    goto :goto_16

    .line 284
    :sswitch_1a
    const-string v0, "http not found"

    .line 285
    goto :goto_16

    .line 287
    :sswitch_1d
    const-string v0, "http empty response"

    .line 288
    goto :goto_16

    .line 290
    :sswitch_20
    const-string v0, "uri syntax exception"

    .line 291
    goto :goto_16

    .line 293
    :sswitch_23
    const-string v0, "http error code"

    .line 294
    goto :goto_16

    .line 296
    :sswitch_26
    const-string v0, "file not found exception"

    .line 297
    goto :goto_16

    .line 299
    :sswitch_29
    const-string v0, "socket timeout exception"

    .line 300
    goto :goto_16

    .line 302
    :sswitch_2c
    const-string v0, "io exception"

    .line 303
    goto :goto_16

    .line 305
    :sswitch_2f
    const-string v0, "out of memory exception"

    goto :goto_16

    .line 278
    :sswitch_data_32
    .sparse-switch
        0x194 -> :sswitch_1a
        0x3ec -> :sswitch_17
        0x3ed -> :sswitch_1a
        0x3ee -> :sswitch_1d
        0x3f0 -> :sswitch_29
        0x3f1 -> :sswitch_2c
        0x3f2 -> :sswitch_20
        0x3f3 -> :sswitch_23
        0x3fa -> :sswitch_26
        0x3fb -> :sswitch_2f
    .end sparse-switch
.end method

.method public getConnectionRetries()J
    .registers 3

    .prologue
    .line 311
    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getSupersonicPrefHelper()Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/sdk/utils/IronSourceSharedPrefHelper;->getConnectionRetries()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method getFileWorkerThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
    .registers 15
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "connectionRetries"    # J
    .param p6, "tmpFilesDirectory"    # Ljava/lang/String;

    .prologue
    .line 202
    new-instance v0, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    return-object v0
.end method

.method getMessage()Landroid/os/Message;
    .registers 2

    .prologue
    .line 211
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    return-object v0
.end method

.method guessFileName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->getFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "cacheRootDirectory"    # Ljava/lang/String;
    .param p2, "directory"    # Ljava/lang/String;

    .prologue
    .line 215
    invoke-static {p1, p2}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .registers 15

    .prologue
    const/16 v13, 0x3f9

    .line 221
    new-instance v12, Lcom/ironsource/sdk/data/SSAFile;

    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-direct {v12, v0, v1}, Lcom/ironsource/sdk/data/SSAFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .local v12, "ssaFile":Lcom/ironsource/sdk/data/SSAFile;
    invoke-virtual {p0}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->getMessage()Landroid/os/Message;

    move-result-object v10

    .line 224
    .local v10, "msg":Landroid/os/Message;
    iput-object v12, v10, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 225
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mCacheRootDirectory:Ljava/lang/String;

    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mPath:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->makeDir(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "folderName":Ljava/lang/String;
    if-nez v2, :cond_28

    .line 229
    iput v13, v10, Landroid/os/Message;->what:I

    .line 230
    const-string v0, "unable_to_create_folder"

    invoke-virtual {v12, v0}, Lcom/ironsource/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 275
    :goto_27
    return-void

    .line 235
    :cond_28
    iget-object v1, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mFile:Ljava/lang/String;

    .line 238
    invoke-virtual {v12}, Lcom/ironsource/sdk/data/SSAFile;->getFile()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mConnectionRetries:J

    iget-object v6, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mTempFilesDirectory:Ljava/lang/String;

    move-object v0, p0

    .line 235
    invoke-virtual/range {v0 .. v6}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->getFileWorkerThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;

    move-result-object v9

    .line 242
    .local v9, "fileWorkerThread":Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;
    invoke-virtual {v9}, Lcom/ironsource/sdk/precache/DownloadManager$FileWorkerThread;->call()Lcom/ironsource/sdk/precache/DownloadManager$Result;

    move-result-object v11

    .line 243
    .local v11, "results":Lcom/ironsource/sdk/precache/DownloadManager$Result;
    iget v7, v11, Lcom/ironsource/sdk/precache/DownloadManager$Result;->responseCode:I

    .line 247
    .local v7, "code":I
    sparse-switch v7, :sswitch_data_5a

    goto :goto_27

    .line 266
    :sswitch_41
    const/16 v0, 0x3f8

    iput v0, v10, Landroid/os/Message;->what:I

    .line 267
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_27

    .line 258
    :sswitch_4b
    invoke-virtual {p0, v7}, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->convertErrorCodeToMessage(I)Ljava/lang/String;

    move-result-object v8

    .line 260
    .local v8, "errMsg":Ljava/lang/String;
    iput v13, v10, Landroid/os/Message;->what:I

    .line 261
    invoke-virtual {v12, v8}, Lcom/ironsource/sdk/data/SSAFile;->setErrMsg(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/ironsource/sdk/precache/DownloadManager$SingleFileWorkerThread;->mDownloadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_27

    .line 247
    :sswitch_data_5a
    .sparse-switch
        0xc8 -> :sswitch_41
        0x194 -> :sswitch_4b
        0x3ec -> :sswitch_4b
        0x3ed -> :sswitch_4b
        0x3ee -> :sswitch_4b
        0x3f0 -> :sswitch_4b
        0x3f1 -> :sswitch_4b
        0x3f2 -> :sswitch_4b
        0x3f3 -> :sswitch_4b
        0x3fa -> :sswitch_4b
        0x3fb -> :sswitch_4b
    .end sparse-switch
.end method
