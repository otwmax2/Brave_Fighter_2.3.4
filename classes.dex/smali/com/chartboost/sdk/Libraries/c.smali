###### Class com.chartboost.sdk.Libraries.c (com.chartboost.sdk.Libraries.c)
.class public final Lcom/chartboost/sdk/Libraries/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    return-void
.end method

.method public static declared-synchronized a([B)[B
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 19
    const-class v2, Lcom/chartboost/sdk/Libraries/c;

    monitor-enter v2

    if-eqz p0, :cond_13

    .line 20
    :try_start_6
    const-string v1, "SHA-1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 21
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 22
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_12
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_21
    .catchall {:try_start_6 .. :try_end_12} :catchall_1e

    move-result-object v0

    .line 30
    :cond_13
    :goto_13
    monitor-exit v2

    return-object v0

    .line 25
    :catch_15
    move-exception v1

    .line 26
    :try_start_16
    const-class v3, Lcom/chartboost/sdk/Libraries/c;

    const-string v4, "sha1"

    invoke-static {v3, v4, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_1e

    goto :goto_13

    .line 19
    :catchall_1e
    move-exception v0

    monitor-exit v2

    throw v0

    .line 28
    :catch_21
    move-exception v1

    .line 29
    :try_start_22
    const-class v3, Lcom/chartboost/sdk/Libraries/c;

    const-string v4, "sha1"

    invoke-static {v3, v4, v1}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_1e

    goto :goto_13
.end method

.method public static b([B)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 35
    if-nez p0, :cond_5

    .line 36
    const/4 v0, 0x0

    .line 38
    :goto_4
    return-object v0

    .line 37
    :cond_5
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 38
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p0

    shl-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
