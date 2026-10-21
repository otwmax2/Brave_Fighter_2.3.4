###### Class com.facebook.share.internal.VideoUploader (com.facebook.share.internal.VideoUploader)
.class public Lcom/facebook/share/internal/VideoUploader;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;,
        Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;,
        Lcom/facebook/share/internal/VideoUploader$UploadContext;
    }
.end annotation


# static fields
.field private static final ERROR_BAD_SERVER_RESPONSE:Ljava/lang/String; = "Unexpected error in server response"

.field private static final ERROR_UPLOAD:Ljava/lang/String; = "Video upload failed"

.field private static final MAX_RETRIES_PER_PHASE:I = 0x2

.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field private static final PARAM_END_OFFSET:Ljava/lang/String; = "end_offset"

.field private static final PARAM_FILE_SIZE:Ljava/lang/String; = "file_size"

.field private static final PARAM_REF:Ljava/lang/String; = "ref"

.field private static final PARAM_SESSION_ID:Ljava/lang/String; = "upload_session_id"

.field private static final PARAM_START_OFFSET:Ljava/lang/String; = "start_offset"

.field private static final PARAM_TITLE:Ljava/lang/String; = "title"

.field private static final PARAM_UPLOAD_PHASE:Ljava/lang/String; = "upload_phase"

.field private static final PARAM_VALUE_UPLOAD_FINISH_PHASE:Ljava/lang/String; = "finish"

.field private static final PARAM_VALUE_UPLOAD_START_PHASE:Ljava/lang/String; = "start"

.field private static final PARAM_VALUE_UPLOAD_TRANSFER_PHASE:Ljava/lang/String; = "transfer"

.field private static final PARAM_VIDEO_FILE_CHUNK:Ljava/lang/String; = "video_file_chunk"

.field private static final PARAM_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final RETRY_DELAY_BACK_OFF_FACTOR:I = 0x3

.field private static final RETRY_DELAY_UNIT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "VideoUploader"

.field private static final UPLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static handler:Landroid/os/Handler;

.field private static initialized:Z

.field private static pendingUploads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/share/internal/VideoUploader$UploadContext;",
            ">;"
        }
    .end annotation
.end field

.field private static uploadQueue:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 95
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->cancelAllRequests()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 65
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/Exception;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/Object;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # I

    .prologue
    .line 65
    invoke-static {p0, p1}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    return-void
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 65
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "x1"    # Lcom/facebook/FacebookException;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader;->issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    return-void
.end method

.method private static declared-synchronized cancelAllRequests()V
    .registers 4

    .prologue
    .line 136
    const-class v2, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v2

    :try_start_3
    sget-object v1, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    check-cast v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .line 137
    .restart local v0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_19

    goto :goto_9

    .line 136
    :catchall_19
    move-exception v1

    monitor-exit v2

    throw v1

    .line 139
    :cond_1c
    monitor-exit v2

    return-void
.end method

.method private static declared-synchronized enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "workItem"    # Ljava/lang/Runnable;

    .prologue
    .line 207
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->uploadQueue:Lcom/facebook/internal/WorkQueue;

    invoke-virtual {v0, p1}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    .line 208
    monitor-exit v1

    return-void

    .line 207
    :catchall_d
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static enqueueUploadChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "chunkStart"    # Ljava/lang/String;
    .param p2, "chunkEnd"    # Ljava/lang/String;
    .param p3, "completedRetries"    # I

    .prologue
    .line 187
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method private static enqueueUploadFinish(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "completedRetries"    # I

    .prologue
    .line 197
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method private static enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "completedRetries"    # I

    .prologue
    .line 175
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    invoke-static {p0, v0}, Lcom/facebook/share/internal/VideoUploader;->enqueueRequest(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method private static getChunk(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 19
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "chunkStart"    # Ljava/lang/String;
    .param p2, "chunkEnd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_21

    .line 217
    const/4 v11, 0x0

    const-string v12, "Error reading video chunk. Expected chunk \'%s\'. Requested chunk \'%s\'."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    aput-object p1, v13, v14

    invoke-static {v11, v12, v13}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    const/4 v11, 0x0

    .line 254
    :goto_20
    return-object v11

    .line 225
    :cond_21
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 226
    .local v8, "chunkStartLong":J
    invoke-static/range {p2 .. p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 227
    .local v6, "chunkEndLong":J
    sub-long v12, v6, v8

    long-to-int v5, v12

    .line 229
    .local v5, "chunkSize":I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 230
    .local v4, "byteBufferStream":Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x2000

    invoke-static {v11, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 231
    .local v3, "bufferSize":I
    new-array v2, v3, [B

    .line 234
    .local v2, "buffer":[B
    :cond_39
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v10

    .local v10, "len":I
    const/4 v11, -0x1

    if-eq v10, v11, :cond_4b

    .line 235
    const/4 v11, 0x0

    invoke-virtual {v4, v2, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 237
    sub-int/2addr v5, v10

    .line 238
    if-nez v5, :cond_56

    .line 252
    :cond_4b
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 254
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    goto :goto_20

    .line 241
    :cond_56
    if-gez v5, :cond_39

    .line 243
    const/4 v11, 0x0

    const-string v12, "Error reading video chunk. Expected buffer length - \'%d\'. Actual - \'%d\'."

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    add-int v15, v5, v10

    .line 246
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    .line 247
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    .line 243
    invoke-static {v11, v12, v13}, Lcom/facebook/share/internal/VideoUploader;->logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    const/4 v11, 0x0

    goto :goto_20
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .registers 3

    .prologue
    .line 147
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    if-nez v0, :cond_12

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;

    .line 150
    :cond_12
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->handler:Landroid/os/Handler;
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_16

    monitor-exit v1

    return-object v0

    .line 147
    :catchall_16
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static issueResponse(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 4
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 159
    invoke-static {p0}, Lcom/facebook/share/internal/VideoUploader;->removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 161
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    if-eqz v0, :cond_13

    .line 164
    if-eqz p1, :cond_14

    .line 165
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnErrorCallback(Lcom/facebook/FacebookCallback;Lcom/facebook/FacebookException;)V

    .line 172
    :cond_13
    :goto_13
    return-void

    .line 166
    :cond_14
    iget-boolean v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-eqz v0, :cond_1e

    .line 167
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnCancelCallback(Lcom/facebook/FacebookCallback;)V

    goto :goto_13

    .line 169
    :cond_1e
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    invoke-static {v0, p2}, Lcom/facebook/share/internal/ShareInternalUtility;->invokeOnSuccessCallback(Lcom/facebook/FacebookCallback;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static varargs logError(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5
    .param p0, "e"    # Ljava/lang/Exception;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 283
    const-string v0, "VideoUploader"

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-static {v1, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 284
    return-void
.end method

.method private static registerAccessTokenTracker()V
    .registers 1

    .prologue
    .line 258
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 277
    return-void
.end method

.method private static declared-synchronized removePendingUpload(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V
    .registers 3
    .param p0, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .prologue
    .line 143
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 144
    monitor-exit v1

    return-void

    .line 143
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Lcom/facebook/FacebookCallback;)V
    .registers 4
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-class v1, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v1

    :try_start_3
    const-string v0, "me"

    invoke-static {p0, v0, p1}, Lcom/facebook/share/internal/VideoUploader;->uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    .line 106
    monitor-exit v1

    return-void

    .line 105
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized uploadAsync(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .registers 8
    .param p0, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p1, "graphNode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 113
    .local p2, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    const-class v4, Lcom/facebook/share/internal/VideoUploader;

    monitor-enter v4

    :try_start_3
    sget-boolean v3, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    if-nez v3, :cond_d

    .line 114
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V

    .line 115
    const/4 v3, 0x1

    sput-boolean v3, Lcom/facebook/share/internal/VideoUploader;->initialized:Z

    .line 118
    :cond_d
    const-string v3, "videoContent"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    const-string v3, "graphNode"

    invoke-static {p1, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    .line 121
    .local v1, "video":Lcom/facebook/share/model/ShareVideo;
    const-string v3, "videoContent.video"

    invoke-static {v1, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v2

    .line 123
    .local v2, "videoUri":Landroid/net/Uri;
    const-string v3, "videoContent.video.localUrl"

    invoke-static {v2, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v3, 0x0

    invoke-direct {v0, p0, p1, p2, v3}, Lcom/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;Lcom/facebook/share/internal/VideoUploader$1;)V

    .line 126
    .local v0, "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    invoke-static {v0}, Lcom/facebook/share/internal/VideoUploader$UploadContext;->access$100(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V

    .line 128
    sget-object v3, Lcom/facebook/share/internal/VideoUploader;->pendingUploads:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/facebook/share/internal/VideoUploader;->enqueueUploadStart(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_3d

    .line 133
    monitor-exit v4

    return-void

    .line 113
    .end local v0    # "uploadContext":Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .end local v1    # "video":Lcom/facebook/share/model/ShareVideo;
    .end local v2    # "videoUri":Landroid/net/Uri;
    :catchall_3d
    move-exception v3

    monitor-exit v4

    throw v3
.end method

###### Class com.facebook.share.internal.VideoUploader.AnonymousClass1 (com.facebook.share.internal.VideoUploader$1)
.class final Lcom/facebook/share/internal/VideoUploader$1;
.super Lcom/facebook/AccessTokenTracker;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .registers 5
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 263
    if-nez p1, :cond_3

    .line 275
    :cond_2
    :goto_2
    return-void

    .line 268
    :cond_3
    if-eqz p2, :cond_13

    .line 270
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 273
    :cond_13
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$200()V

    goto :goto_2
.end method

###### Class com.facebook.share.internal.VideoUploader.FinishUploadWorkItem (com.facebook.share.internal.VideoUploader$FinishUploadWorkItem)
.class Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;
.super Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishUploadWorkItem"
.end annotation


# static fields
.field static final transientErrorCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 488
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p1, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p2, "completedRetries"    # I

    .prologue
    .line 493
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 494
    return-void
.end method


# virtual methods
.method protected enqueueRetry(I)V
    .registers 3
    .param p1, "retriesCompleted"    # I

    .prologue
    .line 534
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/VideoUploader;->access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 535
    return-void
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 4

    .prologue
    .line 498
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 499
    .local v0, "parameters":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    if-eqz v1, :cond_12

    .line 500
    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 502
    :cond_12
    const-string v1, "upload_phase"

    const-string v2, "finish"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v1, "upload_session_id"

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v1, "title"

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->title:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    const-string v1, "description"

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->description:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    const-string v1, "ref"

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->ref:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/Utility;->putNonEmptyString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-object v0
.end method

.method protected getTransientErrorCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    sget-object v0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-object v0
.end method

.method protected handleError(Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 523
    const-string v0, "Video \'%s\' failed to finish uploading"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v3, v3, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/facebook/share/internal/VideoUploader;->access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .line 525
    return-void
.end method

.method protected handleSuccess(Lorg/json/JSONObject;)V
    .registers 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 514
    const-string v0, "success"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 515
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V

    .line 519
    :goto_10
    return-void

    .line 517
    :cond_11
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Unexpected error in server response"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;->handleError(Lcom/facebook/FacebookException;)V

    goto :goto_10
.end method

###### Class com.facebook.share.internal.VideoUploader.FinishUploadWorkItem.AnonymousClass1 (com.facebook.share.internal.VideoUploader$FinishUploadWorkItem$1)
.class final Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1;
.super Ljava/util/HashSet;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 489
    const v0, 0x14cc43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$FinishUploadWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 490
    return-void
.end method

###### Class com.facebook.share.internal.VideoUploader.StartUploadWorkItem (com.facebook.share.internal.VideoUploader$StartUploadWorkItem)
.class Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;
.super Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StartUploadWorkItem"
.end annotation


# static fields
.field static final transientErrorCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 362
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p1, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p2, "completedRetries"    # I

    .prologue
    .line 367
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 368
    return-void
.end method


# virtual methods
.method protected enqueueRetry(I)V
    .registers 3
    .param p1, "retriesCompleted"    # I

    .prologue
    .line 407
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v0, p1}, Lcom/facebook/share/internal/VideoUploader;->access$500(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 408
    return-void
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 5

    .prologue
    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v0, "parameters":Landroid/os/Bundle;
    const-string v1, "upload_phase"

    const-string v2, "start"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v1, "file_size"

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-wide v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 376
    return-object v0
.end method

.method protected getTransientErrorCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    sget-object v0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-object v0
.end method

.method protected handleError(Lcom/facebook/FacebookException;)V
    .registers 4
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 396
    const-string v0, "Error starting video upload"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/facebook/share/internal/VideoUploader;->access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .line 398
    return-void
.end method

.method protected handleSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 382
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const-string v3, "upload_session_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->sessionId:Ljava/lang/String;

    .line 383
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const-string v3, "video_id"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    .line 384
    const-string v2, "start_offset"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "startOffset":Ljava/lang/String;
    const-string v2, "end_offset"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "endOffset":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/facebook/share/internal/VideoUploader;->access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    return-void
.end method

###### Class com.facebook.share.internal.VideoUploader.StartUploadWorkItem.AnonymousClass1 (com.facebook.share.internal.VideoUploader$StartUploadWorkItem$1)
.class final Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;
.super Ljava/util/HashSet;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 362
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 363
    const/16 v0, 0x1770

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$StartUploadWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 364
    return-void
.end method

###### Class com.facebook.share.internal.VideoUploader.TransferChunkWorkItem (com.facebook.share.internal.VideoUploader$TransferChunkWorkItem)
.class Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;
.super Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransferChunkWorkItem"
.end annotation


# static fields
.field static final transientErrorCodes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chunkEnd:Ljava/lang/String;

.field private chunkStart:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 412
    new-instance v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;

    invoke-direct {v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .param p1, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p2, "chunkStart"    # Ljava/lang/String;
    .param p3, "chunkEnd"    # Ljava/lang/String;
    .param p4, "completedRetries"    # I

    .prologue
    .line 428
    invoke-direct {p0, p1, p4}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 429
    iput-object p2, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    .line 430
    iput-object p3, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkEnd:Ljava/lang/String;

    .line 431
    return-void
.end method


# virtual methods
.method protected enqueueRetry(I)V
    .registers 5
    .param p1, "retriesCompleted"    # I

    .prologue
    .line 483
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkEnd:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/share/internal/VideoUploader;->access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    .line 484
    return-void
.end method

.method public getParameters()Landroid/os/Bundle;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 436
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 437
    .local v1, "parameters":Landroid/os/Bundle;
    const-string v2, "upload_phase"

    const-string v3, "transfer"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v2, "upload_session_id"

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v3, v3, Lcom/facebook/share/internal/VideoUploader$UploadContext;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "start_offset"

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkStart:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->chunkEnd:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/facebook/share/internal/VideoUploader;->access$600(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 442
    .local v0, "chunk":[B
    if-eqz v0, :cond_2e

    .line 443
    const-string v2, "video_file_chunk"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 448
    return-object v1

    .line 445
    :cond_2e
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Error reading video"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected getTransientErrorCodes()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    sget-object v0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->transientErrorCodes:Ljava/util/Set;

    return-object v0
.end method

.method protected handleError(Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 472
    const-string v0, "Error uploading video \'%s\'"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v3, v3, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p1, v0, v1}, Lcom/facebook/share/internal/VideoUploader;->access$400(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    invoke-virtual {p0, p1}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    .line 474
    return-void
.end method

.method protected handleSuccess(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 454
    const-string v2, "start_offset"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 455
    .local v1, "startOffset":Ljava/lang/String;
    const-string v2, "end_offset"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 457
    .local v0, "endOffset":Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 458
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v2, v3}, Lcom/facebook/share/internal/VideoUploader;->access$700(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V

    .line 468
    :goto_18
    return-void

    .line 462
    :cond_19
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    invoke-static {v2, v1, v0, v3}, Lcom/facebook/share/internal/VideoUploader;->access$300(Lcom/facebook/share/internal/VideoUploader$UploadContext;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_18
.end method

###### Class com.facebook.share.internal.VideoUploader.TransferChunkWorkItem.AnonymousClass1 (com.facebook.share.internal.VideoUploader$TransferChunkWorkItem$1)
.class final Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;
.super Ljava/util/HashSet;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 413
    const v0, 0x14cc4b    # 1.909996E-39f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 414
    const v0, 0x14cc4d    # 1.909999E-39f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 415
    const v0, 0x14cc56

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 416
    const v0, 0x14cc59

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 417
    const v0, 0x14cc61

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/VideoUploader$TransferChunkWorkItem$1;->add(Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

###### Class com.facebook.share.internal.VideoUploader.UploadContext (com.facebook.share.internal.VideoUploader$UploadContext)
.class Lcom/facebook/share/internal/VideoUploader$UploadContext;
.super Ljava/lang/Object;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UploadContext"
.end annotation


# instance fields
.field public final accessToken:Lcom/facebook/AccessToken;

.field public final callback:Lcom/facebook/FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;"
        }
    .end annotation
.end field

.field public chunkStart:Ljava/lang/String;

.field public final description:Ljava/lang/String;

.field public final graphNode:Ljava/lang/String;

.field public isCanceled:Z

.field public params:Landroid/os/Bundle;

.field public final ref:Ljava/lang/String;

.field public sessionId:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public videoId:Ljava/lang/String;

.field public videoSize:J

.field public videoStream:Ljava/io/InputStream;

.field public final videoUri:Landroid/net/Uri;

.field public workItem:Lcom/facebook/internal/WorkQueue$WorkItem;


# direct methods
.method private constructor <init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
    .registers 8
    .param p1, "videoContent"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p2, "graphNode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareVideoContent;",
            "Ljava/lang/String;",
            "Lcom/facebook/FacebookCallback",
            "<",
            "Lcom/facebook/share/Sharer$Result;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p3, "callback":Lcom/facebook/FacebookCallback;, "Lcom/facebook/FacebookCallback<Lcom/facebook/share/Sharer$Result;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    const-string v0, "0"

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->chunkStart:Ljava/lang/String;

    .line 313
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->accessToken:Lcom/facebook/AccessToken;

    .line 314
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo;->getLocalUrl()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 315
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->title:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->description:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->ref:Ljava/lang/String;

    .line 318
    iput-object p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->graphNode:Ljava/lang/String;

    .line 319
    iput-object p3, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->callback:Lcom/facebook/FacebookCallback;

    .line 320
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo;->getParameters()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    .line 321
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 322
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    const-string v1, "tags"

    const-string v2, ", "

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPeopleIds()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :cond_52
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 326
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    const-string v1, "place"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPlaceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_67
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 330
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->params:Landroid/os/Bundle;

    const-string v1, "ref"

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_7c
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;Lcom/facebook/share/internal/VideoUploader$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/facebook/share/model/ShareVideoContent;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/facebook/FacebookCallback;
    .param p4, "x3"    # Lcom/facebook/share/internal/VideoUploader$1;

    .prologue
    .line 286
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/VideoUploader$UploadContext;-><init>(Lcom/facebook/share/model/ShareVideoContent;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/share/internal/VideoUploader$UploadContext;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/facebook/share/internal/VideoUploader$UploadContext;->initialize()V

    return-void
.end method

.method private initialize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isFileUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 339
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 340
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 339
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 342
    .local v1, "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    .line 343
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    .line 358
    .end local v1    # "fileDescriptor":Landroid/os/ParcelFileDescriptor;
    :goto_26
    return-void

    .line 344
    :cond_27
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isContentUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 345
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->getContentSize(Landroid/net/Uri;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoSize:J

    .line 347
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 348
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoUri:Landroid/net/Uri;

    .line 349
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;
    :try_end_47
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_26

    .line 353
    :catch_48
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/FileNotFoundException;
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadContext;->videoStream:Ljava/io/InputStream;

    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 356
    throw v0

    .line 351
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :cond_4f
    :try_start_4f
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Uri must be a content:// or file:// uri"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_57
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_57} :catch_48
.end method

###### Class com.facebook.share.internal.VideoUploader.UploadWorkItemBase (com.facebook.share.internal.VideoUploader$UploadWorkItemBase)
.class abstract Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/VideoUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "UploadWorkItemBase"
.end annotation


# instance fields
.field protected completedRetries:I

.field protected uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadContext;I)V
    .registers 3
    .param p1, "uploadContext"    # Lcom/facebook/share/internal/VideoUploader$UploadContext;
    .param p2, "completedRetries"    # I

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    iput-object p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    .line 546
    iput p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    .line 547
    return-void
.end method

.method private attemptRetry(I)Z
    .registers 8
    .param p1, "errorCode"    # I

    .prologue
    .line 596
    iget v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2e

    .line 597
    invoke-virtual {p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->getTransientErrorCodes()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 598
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iget v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v1, v2

    mul-int/lit16 v0, v1, 0x1388

    .line 603
    .local v0, "delay":I
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$800()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;

    invoke-direct {v2, p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;)V

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 610
    const/4 v1, 0x1

    .line 612
    .end local v0    # "delay":I
    :goto_2d
    return v1

    :cond_2e
    const/4 v1, 0x0

    goto :goto_2d
.end method


# virtual methods
.method protected endUploadWithFailure(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V

    .line 618
    return-void
.end method

.method protected abstract enqueueRetry(I)V
.end method

.method protected executeGraphRequestSynchronously(Landroid/os/Bundle;)V
    .registers 13
    .param p1, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 566
    new-instance v0, Lcom/facebook/GraphRequest;

    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadContext;->accessToken:Lcom/facebook/AccessToken;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s/videos"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v10, v10, Lcom/facebook/share/internal/VideoUploader$UploadContext;->graphNode:Ljava/lang/String;

    aput-object v10, v4, v5

    .line 568
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    const/4 v5, 0x0

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 572
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v8

    .line 574
    .local v8, "response":Lcom/facebook/GraphResponse;
    if-eqz v8, :cond_61

    .line 575
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    .line 576
    .local v7, "error":Lcom/facebook/FacebookRequestError;
    invoke-virtual {v8}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v9

    .line 577
    .local v9, "responseJSON":Lorg/json/JSONObject;
    if-eqz v7, :cond_44

    .line 578
    invoke-virtual {v7}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->attemptRetry(I)Z

    move-result v1

    if-nez v1, :cond_43

    .line 579
    new-instance v1, Lcom/facebook/FacebookGraphResponseException;

    const-string v2, "Video upload failed"

    invoke-direct {v1, v8, v2}, Lcom/facebook/FacebookGraphResponseException;-><init>(Lcom/facebook/GraphResponse;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    .line 593
    .end local v7    # "error":Lcom/facebook/FacebookRequestError;
    .end local v9    # "responseJSON":Lorg/json/JSONObject;
    :cond_43
    :goto_43
    return-void

    .line 581
    .restart local v7    # "error":Lcom/facebook/FacebookRequestError;
    .restart local v9    # "responseJSON":Lorg/json/JSONObject;
    :cond_44
    if-eqz v9, :cond_56

    .line 583
    :try_start_46
    invoke-virtual {p0, v9}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleSuccess(Lorg/json/JSONObject;)V
    :try_end_49
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_49} :catch_4a

    goto :goto_43

    .line 584
    :catch_4a
    move-exception v6

    .line 585
    .local v6, "e":Lorg/json/JSONException;
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected error in server response"

    invoke-direct {v1, v2, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_43

    .line 588
    .end local v6    # "e":Lorg/json/JSONException;
    :cond_56
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected error in server response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    goto :goto_43

    .line 591
    .end local v7    # "error":Lcom/facebook/FacebookRequestError;
    .end local v9    # "responseJSON":Lorg/json/JSONObject;
    :cond_61
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Unexpected error in server response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->handleError(Lcom/facebook/FacebookException;)V

    goto :goto_43
.end method

.method protected abstract getParameters()Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract getTransientErrorCodes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleError(Lcom/facebook/FacebookException;)V
.end method

.method protected abstract handleSuccess(Lorg/json/JSONObject;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Lcom/facebook/FacebookException;
    .param p2, "videoId"    # Ljava/lang/String;

    .prologue
    .line 623
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$800()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;-><init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 629
    return-void
.end method

.method public run()V
    .registers 5

    .prologue
    .line 551
    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-boolean v2, v2, Lcom/facebook/share/internal/VideoUploader$UploadContext;->isCanceled:Z

    if-nez v2, :cond_1f

    .line 553
    :try_start_6
    invoke-virtual {p0}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->getParameters()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->executeGraphRequestSynchronously(Landroid/os/Bundle;)V
    :try_end_d
    .catch Lcom/facebook/FacebookException; {:try_start_6 .. :try_end_d} :catch_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_d} :catch_13

    .line 563
    :goto_d
    return-void

    .line 554
    :catch_e
    move-exception v1

    .line 555
    .local v1, "fe":Lcom/facebook/FacebookException;
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_d

    .line 556
    .end local v1    # "fe":Lcom/facebook/FacebookException;
    :catch_13
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Video upload failed"

    invoke-direct {v2, v3, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_d

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->endUploadWithFailure(Lcom/facebook/FacebookException;)V

    goto :goto_d
.end method

###### Class com.facebook.share.internal.VideoUploader.UploadWorkItemBase.AnonymousClass1 (com.facebook.share.internal.VideoUploader$UploadWorkItemBase$1)
.class Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->attemptRetry(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;->this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 606
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;->this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$1;->this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    iget v1, v1, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->completedRetries:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->enqueueRetry(I)V

    .line 607
    return-void
.end method

###### Class com.facebook.share.internal.VideoUploader.UploadWorkItemBase.AnonymousClass2 (com.facebook.share.internal.VideoUploader$UploadWorkItemBase$2)
.class Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;
.super Ljava/lang/Object;
.source "VideoUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->issueResponseOnMainThread(Lcom/facebook/FacebookException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

.field final synthetic val$error:Lcom/facebook/FacebookException;

.field final synthetic val$videoId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;Lcom/facebook/FacebookException;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    iput-object p2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$error:Lcom/facebook/FacebookException;

    iput-object p3, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$videoId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 626
    iget-object v0, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->this$0:Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;

    iget-object v0, v0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase;->uploadContext:Lcom/facebook/share/internal/VideoUploader$UploadContext;

    iget-object v1, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$error:Lcom/facebook/FacebookException;

    iget-object v2, p0, Lcom/facebook/share/internal/VideoUploader$UploadWorkItemBase$2;->val$videoId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/VideoUploader;->access$900(Lcom/facebook/share/internal/VideoUploader$UploadContext;Lcom/facebook/FacebookException;Ljava/lang/String;)V

    .line 627
    return-void
.end method
