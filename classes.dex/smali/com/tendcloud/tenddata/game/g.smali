###### Class com.tendcloud.tenddata.game.g (com.tendcloud.tenddata.game.g)
.class public Lcom/tendcloud/tenddata/game/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/g$b;,
        Lcom/tendcloud/tenddata/game/g$a;,
        Lcom/tendcloud/tenddata/game/g$c;,
        Lcom/tendcloud/tenddata/game/g$d;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:I = 0x0

.field public static volatile c:Ljava/util/HashMap; = null

.field private static final d:I = 0x258

.field private static final e:I = 0xea60

.field private static final f:I = 0xea60

.field private static g:Landroid/content/Context;

.field private static volatile h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0xea60

    sput v0, Lcom/tendcloud/tenddata/game/g;->a:I

    sput v0, Lcom/tendcloud/tenddata/game/g;->b:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/g;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/g;->g:Landroid/content/Context;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/g$d;
    .registers 7

    sput-object p0, Lcom/tendcloud/tenddata/game/g;->g:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p2, p3, p4, p5}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/tendcloud/tenddata/game/g$d;
    .registers 9

    const/16 v3, 0x258

    new-instance v0, Lcom/tendcloud/tenddata/game/g$d;

    invoke-direct {v0, v3}, Lcom/tendcloud/tenddata/game/g$d;-><init>(I)V

    const/4 v1, 0x2

    :try_start_8
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    iget v1, v0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    if-ne v1, v3, :cond_20

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_20
    :goto_20
    return-object v0

    :cond_21
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    iget v1, v0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    if-eq v1, v3, :cond_41

    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;)V

    :cond_41
    iget v1, v0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    if-ne v1, v3, :cond_62

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    iget v1, v0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    if-eq v1, v3, :cond_62

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_62
    iget v1, v0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    if-ne v1, v3, :cond_20

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2, p3, p4, p0}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/g$d;

    move-result-object v0

    iget v1, v0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    if-eq v1, v3, :cond_20

    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_7c} :catch_7d

    goto :goto_20

    :catch_7d
    move-exception v1

    goto :goto_20
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/g$d;
    .registers 10

    const/16 v4, 0x258

    :try_start_2
    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/tendcloud/tenddata/game/g;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    invoke-static {p1, p0}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p4, v1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    if-nez v0, :cond_30

    new-instance v0, Lcom/tendcloud/tenddata/game/g$d;

    const/16 v1, 0x258

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/g$d;-><init>(ILjava/lang/String;)V

    :goto_2f
    return-object v0

    :cond_30
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    invoke-static {v0, p2}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    :cond_4a
    invoke-static {p3, v0}, Lcom/tendcloud/tenddata/game/g;->a([BLjava/net/URLConnection;)Lcom/tendcloud/tenddata/game/g$d;
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4d} :catch_4f

    move-result-object v0

    goto :goto_2f

    :catch_4f
    move-exception v0

    new-instance v0, Lcom/tendcloud/tenddata/game/g$d;

    const-string v1, ""

    invoke-direct {v0, v4, v1}, Lcom/tendcloud/tenddata/game/g$d;-><init>(ILjava/lang/String;)V

    goto :goto_2f
.end method

.method private static a([BLjava/net/URLConnection;)Lcom/tendcloud/tenddata/game/g$d;
    .registers 10

    const/4 v2, 0x0

    const/16 v1, 0x258

    const v7, 0xea60

    if-eqz p0, :cond_d

    array-length v0, p0

    if-eqz v0, :cond_d

    if-nez p1, :cond_15

    :cond_d
    new-instance v0, Lcom/tendcloud/tenddata/game/g$d;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/tendcloud/tenddata/game/g$d;-><init>(ILjava/lang/String;)V

    :goto_14
    return-object v0

    :cond_15
    check-cast p1, Ljava/net/HttpURLConnection;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_1c
    const-string v0, "POST"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_24} :catch_b8
    .catchall {:try_start_1c .. :try_end_24} :catchall_8b

    move-result-object v3

    :try_start_25
    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2e} :catch_bc
    .catchall {:try_start_25 .. :try_end_2e} :catchall_b3

    move-result v0

    const/16 v1, 0x190

    if-le v0, v1, :cond_71

    :try_start_33
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v4, v1

    :goto_38
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_42} :catch_c1
    .catchall {:try_start_33 .. :try_end_42} :catchall_b3

    :goto_42
    :try_start_42
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_77

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0xa

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_50} :catch_51
    .catchall {:try_start_42 .. :try_end_50} :catchall_b5

    goto :goto_42

    :catch_51
    move-exception v2

    move-object v2, v3

    :goto_53
    if-eqz v2, :cond_58

    :try_start_55
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_58} :catch_a7

    :cond_58
    :goto_58
    if-eqz v1, :cond_5d

    :try_start_5a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_5a .. :try_end_5d} :catch_a9

    :cond_5d
    :goto_5d
    if-eqz p1, :cond_62

    :try_start_5f
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_62
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_62} :catch_ab

    :cond_62
    :goto_62
    sput v7, Lcom/tendcloud/tenddata/game/g;->a:I

    sput v7, Lcom/tendcloud/tenddata/game/g;->b:I

    :goto_66
    new-instance v1, Lcom/tendcloud/tenddata/game/g$d;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/tendcloud/tenddata/game/g$d;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_14

    :cond_71
    :try_start_71
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_c1
    .catchall {:try_start_71 .. :try_end_74} :catchall_b3

    move-result-object v1

    move-object v4, v1

    goto :goto_38

    :cond_77
    if-eqz v3, :cond_7c

    :try_start_79
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_7c} :catch_a1

    :cond_7c
    :goto_7c
    if-eqz v1, :cond_81

    :try_start_7e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_81
    .catch Ljava/lang/Throwable; {:try_start_7e .. :try_end_81} :catch_a3

    :cond_81
    :goto_81
    if-eqz p1, :cond_86

    :try_start_83
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_86} :catch_a5

    :cond_86
    :goto_86
    sput v7, Lcom/tendcloud/tenddata/game/g;->a:I

    sput v7, Lcom/tendcloud/tenddata/game/g;->b:I

    goto :goto_66

    :catchall_8b
    move-exception v0

    move-object v3, v2

    :goto_8d
    if-eqz v3, :cond_92

    :try_start_8f
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_92
    .catch Ljava/lang/Throwable; {:try_start_8f .. :try_end_92} :catch_ad

    :cond_92
    :goto_92
    if-eqz v2, :cond_97

    :try_start_94
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_97} :catch_af

    :cond_97
    :goto_97
    if-eqz p1, :cond_9c

    :try_start_99
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9c
    .catch Ljava/lang/Throwable; {:try_start_99 .. :try_end_9c} :catch_b1

    :cond_9c
    :goto_9c
    sput v7, Lcom/tendcloud/tenddata/game/g;->a:I

    sput v7, Lcom/tendcloud/tenddata/game/g;->b:I

    throw v0

    :catch_a1
    move-exception v2

    goto :goto_7c

    :catch_a3
    move-exception v1

    goto :goto_81

    :catch_a5
    move-exception v1

    goto :goto_86

    :catch_a7
    move-exception v2

    goto :goto_58

    :catch_a9
    move-exception v1

    goto :goto_5d

    :catch_ab
    move-exception v1

    goto :goto_62

    :catch_ad
    move-exception v1

    goto :goto_92

    :catch_af
    move-exception v1

    goto :goto_97

    :catch_b1
    move-exception v1

    goto :goto_9c

    :catchall_b3
    move-exception v0

    goto :goto_8d

    :catchall_b5
    move-exception v0

    move-object v2, v1

    goto :goto_8d

    :catch_b8
    move-exception v0

    move v0, v1

    move-object v1, v2

    goto :goto_53

    :catch_bc
    move-exception v0

    move v0, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_53

    :catch_c1
    move-exception v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_53
.end method

.method private static declared-synchronized a(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    const/4 v1, 0x0

    const-class v2, Lcom/tendcloud/tenddata/game/g;

    monitor-enter v2

    :try_start_4
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_32

    move-result v0

    if-nez v0, :cond_15

    :cond_12
    move-object v0, v1

    :goto_13
    monitor-exit v2

    return-object v0

    :cond_15
    :try_start_15
    sget-object v0, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/g$a;

    if-nez v0, :cond_21

    move-object v0, v1

    goto :goto_13

    :cond_21
    packed-switch p1, :pswitch_data_36

    move-object v0, v1

    goto :goto_13

    :pswitch_26
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/g$a;->b:Ljava/lang/String;

    goto :goto_13

    :pswitch_29
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/g$a;->d:Ljava/lang/String;

    goto :goto_13

    :pswitch_2c
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/g$a;->c:Ljava/lang/String;

    goto :goto_13

    :pswitch_2f
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/g$a;->a:Ljava/lang/String;
    :try_end_31
    .catchall {:try_start_15 .. :try_end_31} :catchall_32

    goto :goto_13

    :catchall_32
    move-exception v0

    monitor-exit v2

    throw v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_26
        :pswitch_29
        :pswitch_2c
        :pswitch_2f
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/g;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/g;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/g;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .registers 6

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tendcloud/tenddata/game/o;->a()Z

    move-result v1

    if-eqz v1, :cond_c

    :goto_b
    return-object v0

    :cond_c
    new-instance v1, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-virtual {v0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, p1, v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_b
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;
    .registers 6

    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const-string v1, "Accept-Encoding"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_43

    const-string v1, "Host"

    invoke-virtual {v0, v1, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    const-string v1, "eauth.xdrig.com"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_38

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    :cond_38
    sget v1, Lcom/tendcloud/tenddata/game/g;->a:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    sget v1, Lcom/tendcloud/tenddata/game/g;->b:I

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    :goto_42
    return-object v0

    :cond_43
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "jic.talkingdata.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_52} :catch_56

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_2e

    :catch_56
    move-exception v0

    const/4 v0, 0x0

    goto :goto_42
.end method

.method private static a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const-string v1, "TLSv1.2"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v2, Lcom/tendcloud/tenddata/game/g$c;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/g;->b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/g$c;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    new-instance v2, Lcom/tendcloud/tenddata/game/h;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/h;-><init>()V

    invoke-virtual {p0, v2}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_2d

    :goto_2c
    return-object p0

    :catch_2d
    move-exception v1

    move-object p0, v0

    goto :goto_2c
.end method

.method public static a(Ljava/security/cert/X509Certificate;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    new-instance v2, Lcom/tendcloud/tenddata/game/g$c;

    invoke-direct {v2, p0}, Lcom/tendcloud/tenddata/game/g$c;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v4, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1a} :catch_1c

    move-result-object v0

    :goto_1b
    return-object v0

    :catch_1c
    move-exception v1

    goto :goto_1b
.end method

.method private static a(Ljava/lang/String;)V
    .registers 6

    const/4 v4, 0x3

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    invoke-static {p0, v4}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    sget-object v0, Lcom/tendcloud/tenddata/game/g;->g:Landroid/content/Context;

    if-eqz v0, :cond_36

    sget-object v0, Lcom/tendcloud/tenddata/game/g;->g:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {p0, v3}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_36
    return-void
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    const-class v1, Lcom/tendcloud/tenddata/game/g;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_22

    move-result v0

    if-nez v0, :cond_13

    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    :cond_13
    :try_start_13
    sget-object v0, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/g$a;

    packed-switch p2, :pswitch_data_2e

    goto :goto_11

    :pswitch_1f
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/g$a;->b:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_11

    :catchall_22
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_25
    :try_start_25
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/g$a;->d:Ljava/lang/String;

    goto :goto_11

    :pswitch_28
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/g$a;->c:Ljava/lang/String;

    goto :goto_11

    :pswitch_2b
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/g$a;->a:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_22

    goto :goto_11

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_25
        :pswitch_28
        :pswitch_2b
    .end packed-switch
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .registers 8

    if-eqz p0, :cond_eb

    :try_start_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response Code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getResponseCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cipher Suite : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getServerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_63
    if-ge v0, v2, :cond_eb

    aget-object v3, v1, v0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Hash Code : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Public Key Algorithm : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-interface {v6}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cert Public Key Format : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_e6
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e6} :catch_ea

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_63

    :catch_ea
    move-exception v0

    :cond_eb
    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x400

    new-array v2, v2, [B

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_f
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1f

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_f

    :catch_1d
    move-exception v1

    :goto_1e
    return-object v0

    :cond_1f
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2c} :catch_1d

    goto :goto_1e
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .registers 11

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_a6
    .catchall {:try_start_1 .. :try_end_e} :catchall_94

    :try_start_e
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ab

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ab

    sget-object v3, Lcom/tendcloud/tenddata/game/g;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_38} :catch_a9
    .catchall {:try_start_e .. :try_end_38} :catchall_a0

    move-result-object v0

    move-object v2, v0

    :goto_3a
    :try_start_3a
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_8c

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_50} :catch_6d
    .catchall {:try_start_3a .. :try_end_50} :catchall_a4

    move-result-object v0

    const/16 v5, 0x1000

    :try_start_53
    new-array v5, v5, [B

    :goto_55
    invoke-virtual {v3, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_76

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v7, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_64
    .catchall {:try_start_53 .. :try_end_64} :catchall_65

    goto :goto_55

    :catchall_65
    move-exception v0

    :try_start_66
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_6d
    .catch Ljava/lang/Throwable; {:try_start_66 .. :try_end_6d} :catch_6d
    .catchall {:try_start_66 .. :try_end_6d} :catchall_a4

    :catch_6d
    move-exception v0

    move-object v0, v2

    :goto_6f
    if-eqz v0, :cond_74

    :try_start_71
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_74
    .catch Ljava/lang/Throwable; {:try_start_71 .. :try_end_74} :catch_9c

    :cond_74
    :goto_74
    move-object v0, v1

    :cond_75
    :goto_75
    return-object v0

    :cond_76
    :try_start_76
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/aa;->a([B)Ljava/lang/String;
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_76 .. :try_end_83} :catch_6d
    .catchall {:try_start_76 .. :try_end_83} :catchall_a4

    move-result-object v0

    if-eqz v2, :cond_75

    :try_start_86
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_89
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_75

    :catch_8a
    move-exception v1

    goto :goto_75

    :cond_8c
    if-eqz v2, :cond_74

    :try_start_8e
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_91
    .catch Ljava/lang/Throwable; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_74

    :catch_92
    move-exception v0

    goto :goto_74

    :catchall_94
    move-exception v0

    move-object v2, v1

    :goto_96
    if-eqz v2, :cond_9b

    :try_start_98
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9b
    .catch Ljava/lang/Throwable; {:try_start_98 .. :try_end_9b} :catch_9e

    :cond_9b
    :goto_9b
    throw v0

    :catch_9c
    move-exception v0

    goto :goto_74

    :catch_9e
    move-exception v1

    goto :goto_9b

    :catchall_a0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_96

    :catchall_a4
    move-exception v0

    goto :goto_96

    :catch_a6
    move-exception v0

    move-object v0, v1

    goto :goto_6f

    :catch_a9
    move-exception v2

    goto :goto_6f

    :cond_ab
    move-object v2, v0

    goto :goto_3a
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 12

    const/4 v1, 0x0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v0, v1

    :goto_8
    return-object v0

    :cond_9
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_f
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v0, v5}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/net/URL;Ljava/lang/String;Z)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_1c} :catch_db
    .catchall {:try_start_f .. :try_end_1c} :catchall_b4

    :try_start_1c
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e3

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_e3

    sget-object v5, Lcom/tendcloud/tenddata/game/g;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_46} :catch_de
    .catchall {:try_start_1c .. :try_end_46} :catchall_cf

    move-result-object v0

    move-object v2, v0

    :goto_48
    :try_start_48
    const-string v0, "GET"

    invoke-virtual {v2, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v5, 0xc8

    if-ne v0, v5, :cond_a7

    if-eqz p2, :cond_78

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/g;->a(Ljava/io/InputStream;)[B

    move-result-object v3

    const-string v5, "utf-8"

    invoke-direct {v0, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_69} :catch_e0
    .catchall {:try_start_48 .. :try_end_69} :catchall_d4

    :goto_69
    if-eqz v1, :cond_6e

    :try_start_6b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6e
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_6e} :catch_c5

    :cond_6e
    :goto_6e
    if-eqz v2, :cond_73

    :try_start_70
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_73} :catch_c7

    :cond_73
    :goto_73
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_78
    :try_start_78
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_78 .. :try_end_86} :catch_e0
    .catchall {:try_start_78 .. :try_end_86} :catchall_d4

    :goto_86
    :try_start_86
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a5

    const-string v3, "/n"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_86 .. :try_end_94} :catch_95
    .catchall {:try_start_86 .. :try_end_94} :catchall_d6

    goto :goto_86

    :catch_95
    move-exception v1

    move-object v1, v0

    move-object v0, v2

    :goto_98
    if-eqz v1, :cond_9d

    :try_start_9a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_9d} :catch_c9

    :cond_9d
    :goto_9d
    if-eqz v0, :cond_73

    :try_start_9f
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a2
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a2} :catch_a3

    goto :goto_73

    :catch_a3
    move-exception v0

    goto :goto_73

    :cond_a5
    move-object v1, v0

    goto :goto_69

    :cond_a7
    if-eqz v1, :cond_ac

    :try_start_a9
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_ac
    .catch Ljava/lang/Throwable; {:try_start_a9 .. :try_end_ac} :catch_c1

    :cond_ac
    :goto_ac
    if-eqz v2, :cond_b1

    :try_start_ae
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b1
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_b1} :catch_c3

    :cond_b1
    :goto_b1
    move-object v0, v1

    goto/16 :goto_8

    :catchall_b4
    move-exception v0

    move-object v2, v1

    :goto_b6
    if-eqz v1, :cond_bb

    :try_start_b8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_bb
    .catch Ljava/lang/Throwable; {:try_start_b8 .. :try_end_bb} :catch_cb

    :cond_bb
    :goto_bb
    if-eqz v2, :cond_c0

    :try_start_bd
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c0
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_c0} :catch_cd

    :cond_c0
    :goto_c0
    throw v0

    :catch_c1
    move-exception v0

    goto :goto_ac

    :catch_c3
    move-exception v0

    goto :goto_b1

    :catch_c5
    move-exception v0

    goto :goto_6e

    :catch_c7
    move-exception v0

    goto :goto_73

    :catch_c9
    move-exception v1

    goto :goto_9d

    :catch_cb
    move-exception v1

    goto :goto_bb

    :catch_cd
    move-exception v1

    goto :goto_c0

    :catchall_cf
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_b6

    :catchall_d4
    move-exception v0

    goto :goto_b6

    :catchall_d6
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_b6

    :catch_db
    move-exception v0

    move-object v0, v1

    goto :goto_98

    :catch_de
    move-exception v2

    goto :goto_98

    :catch_e0
    move-exception v0

    move-object v0, v2

    goto :goto_98

    :cond_e3
    move-object v2, v0

    goto/16 :goto_48
.end method

.method private static b(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .registers 4

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    move-object v0, v1

    :cond_e
    :goto_e
    return-object v0

    :cond_f
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_18
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_24} :catch_2c
    .catchall {:try_start_18 .. :try_end_24} :catchall_37

    if-eqz v2, :cond_e

    :try_start_26
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_e

    :catch_2a
    move-exception v1

    goto :goto_e

    :catch_2c
    move-exception v0

    if-eqz v2, :cond_32

    :try_start_2f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_32} :catch_34

    :cond_32
    move-object v0, v1

    goto :goto_e

    :catch_34
    move-exception v0

    move-object v0, v1

    goto :goto_e

    :catchall_37
    move-exception v0

    if-eqz v2, :cond_3d

    :try_start_3a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_3e

    :cond_3d
    :goto_3d
    throw v0

    :catch_3e
    move-exception v1

    goto :goto_3d
.end method

.method private static declared-synchronized b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-class v1, Lcom/tendcloud/tenddata/game/g;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aa;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    sget-object v0, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_3d

    move-result v0

    if-eqz v0, :cond_13

    :cond_11
    :goto_11
    monitor-exit v1

    return-void

    :cond_13
    :try_start_13
    new-instance v0, Lcom/tendcloud/tenddata/game/g$a;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/g$a;-><init>()V

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/g$a;->e:Ljava/lang/String;

    iput-object p1, v0, Lcom/tendcloud/tenddata/game/g$a;->a:Ljava/lang/String;

    sget-object v2, Lcom/tendcloud/tenddata/game/g;->g:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/aa;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/g$a;->c:Ljava/lang/String;
    :try_end_2d
    .catchall {:try_start_13 .. :try_end_2d} :catchall_3d

    :try_start_2d
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tendcloud/tenddata/game/g$a;->b:Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_37} :catch_40
    .catchall {:try_start_2d .. :try_end_37} :catchall_3d

    :goto_37
    :try_start_37
    sget-object v2, Lcom/tendcloud/tenddata/game/g;->h:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_3d

    goto :goto_11

    :catchall_3d
    move-exception v0

    monitor-exit v1

    throw v0

    :catch_40
    move-exception v2

    goto :goto_37
.end method

###### Class com.tendcloud.tenddata.game.g.a (com.tendcloud.tenddata.game.g$a)
.class Lcom/tendcloud/tenddata/game/g$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/g$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/g$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/g$a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/g$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/g$a;->e:Ljava/lang/String;

    return-void
.end method

###### Class com.tendcloud.tenddata.game.g.b (com.tendcloud.tenddata.game.g$b)
.class Lcom/tendcloud/tenddata/game/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.tendcloud.tenddata.game.g.c (com.tendcloud.tenddata.game.g$c)
.class Lcom/tendcloud/tenddata/game/g$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field a:Ljava/security/cert/X509Certificate;


# direct methods
.method constructor <init>(Ljava/security/cert/X509Certificate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/g$c;->a:Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 7

    const/4 v1, 0x0

    array-length v0, p1

    if-nez v0, :cond_c

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No server certificate found!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/g$c;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Parent certificate of server was different than expected signing certificate"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    const/4 v0, 0x0

    :try_start_27
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4c

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_4c

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4c
    const-string v1, "\\."

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_d4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_78
    sget-object v0, Lcom/tendcloud/tenddata/game/g;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9f

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No valid host provided!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_94
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_94} :catch_94

    :catch_94
    move-exception v0

    instance-of v1, v0, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_d3

    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_9f
    :try_start_9f
    sget-object v0, Lcom/tendcloud/tenddata/game/g;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c1

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Server certificate has incorrect host name!"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/g$c;->a:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->checkValidity()V
    :try_end_d3
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_d3} :catch_94

    :cond_d3
    return-void

    :cond_d4
    move-object v1, v0

    goto :goto_78
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

###### Class com.tendcloud.tenddata.game.g.d (com.tendcloud.tenddata.game.g$d)
.class public Lcom/tendcloud/tenddata/game/g$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/game/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method constructor <init>(I)V
    .registers 3

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/tendcloud/tenddata/game/g$d;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    iput-object p2, p0, Lcom/tendcloud/tenddata/game/g$d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/tendcloud/tenddata/game/g$d;->a:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/g$d;->b:Ljava/lang/String;

    return-object v0
.end method
