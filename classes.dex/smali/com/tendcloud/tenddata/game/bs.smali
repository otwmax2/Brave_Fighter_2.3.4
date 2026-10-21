###### Class com.tendcloud.tenddata.game.bs (com.tendcloud.tenddata.game.bs)
.class public Lcom/tendcloud/tenddata/game/bs;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/bs$a;
    }
.end annotation


# static fields
.field public static a:Z


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bs;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bs;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bs;->c:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/io/File;)V
    .registers 6

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_6

    :cond_11
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_20

    array-length v0, v1

    if-nez v0, :cond_24

    :cond_20
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_6

    :cond_24
    array-length v2, v1

    const/4 v0, 0x0

    :goto_26
    if-ge v0, v2, :cond_30

    aget-object v3, v1, v0

    invoke-direct {p0, v3}, Lcom/tendcloud/tenddata/game/bs;->a(Ljava/io/File;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    :cond_30
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_6
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bs;->a:Z

    const/4 v1, 0x0

    :try_start_4
    new-instance v0, Ljava/io/File;

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bs;->a(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/net/URL;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const-string v2, "Accept-Encoding"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_d6

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tmp.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    :goto_60
    const/4 v4, -0x1

    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-eq v4, v5, :cond_6f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_60

    :catch_6c
    move-exception v0

    move-object v0, v1

    :goto_6e
    return-object v0

    :cond_6f
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    new-instance v0, Lcom/tendcloud/tenddata/game/bs$a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tmp.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lcom/tendcloud/tenddata/game/bs$a;-><init>(Lcom/tendcloud/tenddata/game/bs;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bs$a;->a()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/index.html"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c4} :catch_6c

    move-result-object v0

    const/4 v1, 0x2

    :try_start_c6
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Decompress"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_c6 .. :try_end_d3} :catch_d4

    goto :goto_6e

    :catch_d4
    move-exception v1

    goto :goto_6e

    :cond_d6
    move-object v0, v1

    goto :goto_6e
.end method

.method protected a(Ljava/lang/String;)V
    .registers 5

    const/4 v2, 0x0

    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bs;->c:Lorg/json/JSONObject;

    if-eqz v0, :cond_15

    :try_start_7
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bs;->c:Lorg/json/JSONObject;

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_e} :catch_23

    :goto_e
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bs;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bs;->c:Lorg/json/JSONObject;

    invoke-static {v0, v1, v2}, Lcom/tendcloud/tenddata/game/az;->a(Landroid/content/Context;Lorg/json/JSONObject;Z)V

    :cond_15
    :goto_15
    sput-boolean v2, Lcom/tendcloud/tenddata/game/bs;->a:Z

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_1b
    const-string v0, "TDZipDownload"

    const-string v1, "download error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :catch_23
    move-exception v0

    goto :goto_e
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/bs;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/bs;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .registers 2

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/game/bs;->a([Ljava/lang/Integer;)V

    return-void
.end method

###### Class com.tendcloud.tenddata.game.bs.a (com.tendcloud.tenddata.game.bs$a)
.class Lcom/tendcloud/tenddata/game/bs$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/bs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bs;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/tendcloud/tenddata/game/bs;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bs$a;->a:Lcom/tendcloud/tenddata/game/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/bs$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/tendcloud/tenddata/game/bs$a;->c:Ljava/lang/String;

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bs$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bs$a;->c:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_10
    return-void
.end method


# virtual methods
.method public a()V
    .registers 7

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/bs$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/zip/ZipInputStream;

    invoke-direct {v1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_c
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v0

    if-eqz v0, :cond_96

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Decompress"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unzipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/bp;->a([Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bs$a;->a(Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    goto :goto_c

    :catch_45
    move-exception v0

    const-string v1, "Decompress"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unzip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    return-void

    :cond_63
    :try_start_63
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/tendcloud/tenddata/game/bs$a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->read()I

    move-result v0

    :goto_83
    const/4 v3, -0x1

    if-eq v0, v3, :cond_8e

    invoke-virtual {v2, v0}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->read()I

    move-result v0

    goto :goto_83

    :cond_8e
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->closeEntry()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_c

    :cond_96
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_99
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_99} :catch_45

    goto :goto_62
.end method
