###### Class com.facebook.internal.NativeAppCallAttachmentStore (com.facebook.internal.NativeAppCallAttachmentStore)
.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    }
.end annotation


# static fields
.field static final ATTACHMENTS_DIR_NAME:Ljava/lang/String; = "com.facebook.NativeAppCallAttachmentStore.files"

.field private static final TAG:Ljava/lang/String;

.field private static attachmentsDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAttachments(Ljava/util/Collection;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "attachments":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;>;"
    if-eqz p0, :cond_8

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 146
    :cond_8
    return-void

    .line 106
    :cond_9
    sget-object v4, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v4, :cond_10

    .line 107
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->cleanupAllAttachments()V

    .line 110
    :cond_10
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->ensureAttachmentsDirectoryExists()Ljava/io/File;

    .line 112
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v3, "filesToCleanup":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    :try_start_18
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1c
    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .line 116
    .local v0, "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 121
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;

    move-result-object v5

    .line 122
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    .line 120
    invoke-static {v5, v6, v7}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 124
    .local v2, "file":Ljava/io/File;
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_7b

    .line 127
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v5, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_4b} :catch_4c

    goto :goto_1c

    .line 135
    .end local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local v2    # "file":Ljava/io/File;
    :catch_4c
    move-exception v1

    .line 136
    .local v1, "exception":Ljava/io/IOException;
    sget-object v4, Lcom/facebook/internal/NativeAppCallAttachmentStore;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got unexpected exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_69
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 139
    .restart local v2    # "file":Ljava/io/File;
    :try_start_75
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_79

    goto :goto_69

    .line 140
    :catch_79
    move-exception v5

    goto :goto_69

    .line 128
    .end local v1    # "exception":Ljava/io/IOException;
    .restart local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    :cond_7b
    :try_start_7b
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_1c

    .line 130
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;

    move-result-object v5

    .line 131
    invoke-static {v0}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z

    move-result v6

    .line 129
    invoke-static {v5, v6, v2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_8c} :catch_4c

    goto :goto_1c

    .line 144
    .end local v0    # "attachment":Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "exception":Ljava/io/IOException;
    :cond_8d
    new-instance v4, Lcom/facebook/FacebookException;

    invoke-direct {v4, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static cleanupAllAttachments()V
    .registers 1

    .prologue
    .line 223
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 224
    .local v0, "dir":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 225
    return-void
.end method

.method public static cleanupAttachmentsForCall(Ljava/util/UUID;)V
    .registers 3
    .param p0, "callId"    # Ljava/util/UUID;

    .prologue
    .line 154
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 155
    .local v0, "dir":Ljava/io/File;
    if-eqz v0, :cond_a

    .line 156
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 158
    :cond_a
    return-void
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/graphics/Bitmap;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    .line 56
    const-string v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    const-string v0, "attachmentBitmap"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method public static createAttachment(Ljava/util/UUID;Landroid/net/Uri;)Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
    .registers 4
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentUri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 63
    const-string v0, "callId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    const-string v0, "attachmentUri"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    invoke-direct {v0, p0, v1, p1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V

    return-object v0
.end method

.method static ensureAttachmentsDirectoryExists()Ljava/io/File;
    .registers 1

    .prologue
    .line 186
    invoke-static {}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectory()Ljava/io/File;

    move-result-object v0

    .line 187
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 188
    return-object v0
.end method

.method static getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    .registers 8
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentName"    # Ljava/lang/String;
    .param p2, "createDirs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {p0, p2}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, "dir":Ljava/io/File;
    if-nez v0, :cond_8

    .line 216
    :goto_7
    return-object v2

    .line 214
    :cond_8
    :try_start_8
    new-instance v3, Ljava/io/File;

    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_13} :catch_15

    move-object v2, v3

    goto :goto_7

    .line 215
    :catch_15
    move-exception v1

    .line 216
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_7
.end method

.method static declared-synchronized getAttachmentsDirectory()Ljava/io/File;
    .registers 4

    .prologue
    .line 177
    const-class v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v0, :cond_18

    .line 178
    new-instance v0, Ljava/io/File;

    .line 179
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "com.facebook.NativeAppCallAttachmentStore.files"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    .line 182
    :cond_18
    sget-object v0, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_1c

    monitor-exit v1

    return-object v0

    .line 177
    :catchall_1c
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static getAttachmentsDirectoryForCall(Ljava/util/UUID;Z)Ljava/io/File;
    .registers 5
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "create"    # Z

    .prologue
    .line 192
    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    if-nez v1, :cond_6

    .line 193
    const/4 v0, 0x0

    .line 200
    :cond_5
    :goto_5
    return-object v0

    .line 196
    :cond_6
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/facebook/internal/NativeAppCallAttachmentStore;->attachmentsDirectory:Ljava/io/File;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 197
    .local v0, "dir":Ljava/io/File;
    if-eqz p1, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    .line 198
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_5
.end method

.method public static openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;
    .registers 4
    .param p0, "callId"    # Ljava/util/UUID;
    .param p1, "attachmentName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 162
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p0, :cond_e

    .line 164
    :cond_8
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1

    .line 168
    :cond_e
    const/4 v1, 0x0

    :try_start_f
    invoke-static {p0, p1, v1}, Lcom/facebook/internal/NativeAppCallAttachmentStore;->getAttachmentFile(Ljava/util/UUID;Ljava/lang/String;Z)Ljava/io/File;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_14

    move-result-object v1

    return-object v1

    .line 169
    :catch_14
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1}, Ljava/io/FileNotFoundException;-><init>()V

    throw v1
.end method

.method private static processAttachmentBitmap(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .registers 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 72
    .local v0, "outputStream":Ljava/io/FileOutputStream;
    :try_start_5
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_10

    .line 74
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 76
    return-void

    .line 74
    :catchall_10
    move-exception v1

    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static processAttachmentFile(Landroid/net/Uri;ZLjava/io/File;)V
    .registers 6
    .param p0, "imageUri"    # Landroid/net/Uri;
    .param p1, "isContentUri"    # Z
    .param p2, "outputFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 85
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    if-nez p1, :cond_17

    .line 86
    :try_start_7
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, "inputStream":Ljava/io/InputStream;
    :goto_10
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->copyAndCloseInputStream(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_24

    .line 96
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    return-void

    .line 89
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_17
    :try_start_17
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 90
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 91
    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_24

    move-result-object v0

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_10

    .line 96
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :catchall_24
    move-exception v2

    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    throw v2
.end method

###### Class com.facebook.internal.NativeAppCallAttachmentStore.AnonymousClass1 (com.facebook.internal.NativeAppCallAttachmentStore$1)
.class synthetic Lcom/facebook/internal/NativeAppCallAttachmentStore$1;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeAppCallAttachmentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.internal.NativeAppCallAttachmentStore.Attachment (com.facebook.internal.NativeAppCallAttachmentStore$Attachment)
.class public final Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/NativeAppCallAttachmentStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attachment"
.end annotation


# instance fields
.field private final attachmentName:Ljava/lang/String;

.field private final attachmentUrl:Ljava/lang/String;

.field private bitmap:Landroid/graphics/Bitmap;

.field private final callId:Ljava/util/UUID;

.field private isContentUri:Z

.field private originalUri:Landroid/net/Uri;

.field private shouldCreateFile:Z


# direct methods
.method private constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V
    .registers 8
    .param p1, "callId"    # Ljava/util/UUID;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x1

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    .line 240
    iput-object p2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    .line 241
    iput-object p3, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    .line 243
    if-eqz p3, :cond_72

    .line 244
    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "scheme":Ljava/lang/String;
    const-string v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 246
    iput-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    .line 247
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_42

    .line 248
    invoke-virtual {p3}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string v3, "media"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_42

    :goto_2c
    iput-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    .line 260
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_2e
    :goto_2e
    iget-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    if-nez v1, :cond_7f

    const/4 v1, 0x0

    :goto_33
    iput-object v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 261
    iget-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    if-nez v1, :cond_88

    iget-object v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    .line 262
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    :goto_3f
    iput-object v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    .line 267
    return-void

    .line 248
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_42
    const/4 v1, 0x0

    goto :goto_2c

    .line 249
    :cond_44
    const-string v2, "file"

    invoke-virtual {p3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 250
    iput-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    goto :goto_2e

    .line 251
    :cond_53
    invoke-static {p3}, Lcom/facebook/internal/Utility;->isWebUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 252
    new-instance v1, Lcom/facebook/FacebookException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported scheme for media Uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    .end local v0    # "scheme":Ljava/lang/String;
    :cond_72
    if-eqz p2, :cond_77

    .line 255
    iput-boolean v1, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    goto :goto_2e

    .line 257
    :cond_77
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Cannot share media without a bitmap or Uri set"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_7f
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    .line 264
    :cond_88
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    .line 263
    invoke-static {v1, p1, v2}, Lcom/facebook/FacebookContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3f
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;Lcom/facebook/internal/NativeAppCallAttachmentStore$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Landroid/graphics/Bitmap;
    .param p3, "x2"    # Landroid/net/Uri;
    .param p4, "x3"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$1;

    .prologue
    .line 227
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;-><init>(Ljava/util/UUID;Landroid/graphics/Bitmap;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->shouldCreateFile:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/util/UUID;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->callId:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->originalUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;

    .prologue
    .line 227
    iget-boolean v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->isContentUri:Z

    return v0
.end method


# virtual methods
.method public getAttachmentUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/internal/NativeAppCallAttachmentStore$Attachment;->attachmentUrl:Ljava/lang/String;

    return-object v0
.end method
