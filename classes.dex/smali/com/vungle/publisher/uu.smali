###### Class com.vungle.publisher.uu (com.vungle.publisher.uu)
.class public Lcom/vungle/publisher/uu;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lrx/functions/Func2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func2",
        "<",
        "Lcom/vungle/publisher/tw;",
        "Lcom/vungle/publisher/gd",
        "<*>;",
        "Lcom/vungle/publisher/gd",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILcom/vungle/publisher/gd;)Lcom/vungle/publisher/gd;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/vungle/publisher/gd",
            "<*>;)",
            "Lcom/vungle/publisher/gd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 103
    invoke-interface {p2}, Lcom/vungle/publisher/gd;->o()Lcom/vungle/publisher/ei$b;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/vungle/publisher/uu$1;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/ei$b;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4c

    .line 111
    :goto_f
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " downloaded for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ad"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lcom/vungle/publisher/gd;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sget-object v0, Lcom/vungle/publisher/ei$a;->b:Lcom/vungle/publisher/ei$a;

    invoke-interface {p2, v0}, Lcom/vungle/publisher/gd;->a(Lcom/vungle/publisher/ei$a;)V

    .line 114
    invoke-interface {p2}, Lcom/vungle/publisher/gd;->f_()I

    .line 115
    return-object p2

    .line 108
    :pswitch_44
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/vungle/publisher/gd;->a(Ljava/lang/Integer;)V

    goto :goto_f

    .line 104
    :pswitch_data_4c
    .packed-switch 0x1
        :pswitch_44
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public a(Lcom/vungle/publisher/tw;Lcom/vungle/publisher/gd;)Lcom/vungle/publisher/gd;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/tw;",
            "Lcom/vungle/publisher/gd",
            "<*>;)",
            "Lcom/vungle/publisher/gd",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/uu;->b(Lcom/vungle/publisher/tw;Lcom/vungle/publisher/gd;)Lcom/vungle/publisher/gd;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    .line 35
    :catch_5
    move-exception v0

    .line 36
    invoke-static {v0}, Lrx/exceptions/Exceptions;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public b(Lcom/vungle/publisher/tw;Lcom/vungle/publisher/gd;)Lcom/vungle/publisher/gd;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/tw;",
            "Lcom/vungle/publisher/gd",
            "<*>;)",
            "Lcom/vungle/publisher/gd",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 41
    .line 43
    invoke-interface {p2}, Lcom/vungle/publisher/gd;->i()Ljava/lang/String;

    move-result-object v4

    .line 46
    :try_start_6
    invoke-virtual {p1}, Lcom/vungle/publisher/tw;->a()Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 47
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_122

    move-result-object v2

    .line 48
    :try_start_e
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 49
    invoke-static {v6}, Lcom/vungle/publisher/qr;->d(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_e2

    .line 50
    const-string v1, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "downloading to: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/16 v1, 0x2000

    new-array v7, v1, [B

    .line 54
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3a
    .catchall {:try_start_e .. :try_end_3a} :catchall_129

    .line 56
    :goto_3a
    :try_start_3a
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_5b

    .line 57
    add-int/2addr v3, v6

    .line 58
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_45} :catch_46
    .catchall {:try_start_3a .. :try_end_45} :catchall_4f

    goto :goto_3a

    .line 60
    :catch_46
    move-exception v0

    .line 61
    :try_start_47
    new-instance v0, Lcom/vungle/publisher/qn;

    const-string v3, "could not write ad to disk"

    invoke-direct {v0, v3}, Lcom/vungle/publisher/qn;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_4f

    .line 83
    :catchall_4f
    move-exception v0

    :goto_50
    if-eqz v2, :cond_55

    .line 85
    :try_start_52
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_10e

    .line 91
    :cond_55
    :goto_55
    if-eqz v1, :cond_5a

    .line 93
    :try_start_57
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_118

    .line 97
    :cond_5a
    :goto_5a
    throw v0

    .line 63
    :cond_5b
    :try_start_5b
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 64
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 65
    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "response ContentLength = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vungle/publisher/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-gt v5, v3, :cond_ad

    .line 69
    const-string v0, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download complete: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, v3, p2}, Lcom/vungle/publisher/uu;->a(ILcom/vungle/publisher/gd;)Lcom/vungle/publisher/gd;
    :try_end_a1
    .catchall {:try_start_5b .. :try_end_a1} :catchall_4f

    move-result-object v0

    .line 83
    :goto_a2
    if-eqz v2, :cond_a7

    .line 85
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_fc

    .line 91
    :cond_a7
    :goto_a7
    if-eqz v1, :cond_ac

    .line 93
    :try_start_a9
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ac
    .catch Ljava/io/IOException; {:try_start_a9 .. :try_end_ac} :catch_105

    .line 81
    :cond_ac
    :goto_ac
    return-object v0

    .line 73
    :cond_ad
    :try_start_ad
    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "download size mismatch: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", expected size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v3, Lcom/vungle/publisher/ei$a;->d:Lcom/vungle/publisher/ei$a;

    invoke-interface {p2, v3}, Lcom/vungle/publisher/gd;->a(Lcom/vungle/publisher/ei$a;)V

    .line 75
    invoke-interface {p2}, Lcom/vungle/publisher/gd;->f_()I
    :try_end_e1
    .catchall {:try_start_ad .. :try_end_e1} :catchall_4f

    goto :goto_a2

    .line 79
    :cond_e2
    :try_start_e2
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not create or directory not writeable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/publisher/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fa
    .catchall {:try_start_e2 .. :try_end_fa} :catchall_129

    move-object v1, v0

    goto :goto_a2

    .line 87
    :catch_fc
    move-exception v2

    .line 88
    const-string v3, "VunglePrepare"

    const-string v4, "error closing input stream"

    invoke-static {v3, v4, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a7

    .line 95
    :catch_105
    move-exception v1

    .line 96
    const-string v2, "VunglePrepare"

    const-string v3, "error closing output stream"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ac

    .line 87
    :catch_10e
    move-exception v2

    .line 88
    const-string v3, "VunglePrepare"

    const-string v4, "error closing input stream"

    invoke-static {v3, v4, v2}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_55

    .line 95
    :catch_118
    move-exception v1

    .line 96
    const-string v2, "VunglePrepare"

    const-string v3, "error closing output stream"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5a

    .line 83
    :catchall_122
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_50

    :catchall_129
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_50
.end method

.method public synthetic call(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .prologue
    .line 25
    check-cast p1, Lcom/vungle/publisher/tw;

    check-cast p2, Lcom/vungle/publisher/gd;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/uu;->a(Lcom/vungle/publisher/tw;Lcom/vungle/publisher/gd;)Lcom/vungle/publisher/gd;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.uu.AnonymousClass1 (com.vungle.publisher.uu$1)
.class synthetic Lcom/vungle/publisher/uu$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/uu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 104
    invoke-static {}, Lcom/vungle/publisher/ei$b;->values()[Lcom/vungle/publisher/ei$b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/uu$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/uu$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$b;->b:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/uu$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$b;->d:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/uu$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/ei$b;->e:Lcom/vungle/publisher/ei$b;

    invoke-virtual {v1}, Lcom/vungle/publisher/ei$b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
