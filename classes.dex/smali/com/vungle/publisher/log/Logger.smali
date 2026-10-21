###### Class com.vungle.publisher.log.Logger (com.vungle.publisher.log.Logger)
.class public Lcom/vungle/publisher/log/Logger;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field public static final AD_TAG:Ljava/lang/String; = "VungleAd"

.field public static final ASYNC_TAG:Ljava/lang/String; = "VungleAsync"

.field public static final CONFIG_TAG:Ljava/lang/String; = "VungleConfig"

.field public static final DATABASE_DUMP_TAG:Ljava/lang/String; = "VungleDumpDatabase"

.field public static final DATABASE_TAG:Ljava/lang/String; = "VungleDatabase"

.field public static final DATA_TAG:Ljava/lang/String; = "VungleData"

.field public static final DEVICE_TAG:Ljava/lang/String; = "VungleDevice"

.field public static final EVENT_TAG:Ljava/lang/String; = "VungleEvent"

.field public static final FILE_TAG:Ljava/lang/String; = "VungleFile"

.field public static final INJECT_TAG:Ljava/lang/String; = "VungleInject"

.field public static final LOCATION_TAG:Ljava/lang/String; = "VungleLocation"

.field public static final NETWORK_TAG:Ljava/lang/String; = "VungleNetwork"

.field public static final PREPARE_TAG:Ljava/lang/String; = "VunglePrepare"

.field public static final PROTOCOL_TAG:Ljava/lang/String; = "VungleProtocol"

.field public static final REPORT_TAG:Ljava/lang/String; = "VungleReport"

.field public static final VUNGLE_TAG:Ljava/lang/String; = "Vungle"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 89
    return-void
.end method

.method static a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 96
    const-string v2, "VungleDebug"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/vungle/publisher/log/Logger;->a(Ljava/lang/String;I)Z

    move-result v2

    .line 97
    if-nez v2, :cond_e

    const/4 v3, 0x5

    if-ge p0, v3, :cond_16

    :cond_e
    if-eqz v2, :cond_42

    invoke-static {p0}, Lcom/vungle/publisher/log/Logger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 98
    :cond_16
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_43

    move v2, v0

    .line 99
    :goto_1d
    if-eqz p3, :cond_45

    .line 100
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    if-eqz v2, :cond_29

    .line 102
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_29
    if-eqz v2, :cond_32

    if-eqz v0, :cond_32

    .line 105
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    :cond_32
    if-eqz v0, :cond_3b

    .line 108
    invoke-static {p3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_3b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_42
    return-void

    :cond_43
    move v2, v1

    .line 98
    goto :goto_1d

    :cond_45
    move v0, v1

    .line 99
    goto :goto_1f
.end method

.method static a(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    return-void
.end method

.method static a(Ljava/lang/String;I)Z
    .registers 3

    .prologue
    .line 119
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 48
    const/4 v0, 0x3

    invoke-static {v0, p0, p1, p2}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 44
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 84
    const/4 v0, 0x6

    invoke-static {v0, p0, p1, p2}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 80
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 52
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    const/4 v0, 0x4

    invoke-static {v0, p0, p1, p2}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 56
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public static isLoggable(I)Z
    .registers 2
    .param p0, "level"    # I

    .prologue
    .line 115
    const-string v0, "Vungle"

    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 28
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 36
    const/4 v0, 0x2

    invoke-static {v0, p0, p1, p2}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 32
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    const/4 v0, 0x5

    invoke-static {v0, p0, p1, p2}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 68
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/log/Logger;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method
