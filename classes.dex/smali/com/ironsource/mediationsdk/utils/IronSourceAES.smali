###### Class com.ironsource.mediationsdk.utils.IronSourceAES (com.ironsource.mediationsdk.utils.IronSourceAES)
.class public Lcom/ironsource/mediationsdk/utils/IronSourceAES;
.super Ljava/lang/Object;
.source "IronSourceAES.java"


# static fields
.field private static mDidSendEncryptionFailEventInSession:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p0, "keyString"    # Ljava/lang/String;
    .param p1, "stringToDecode"    # Ljava/lang/String;

    .prologue
    .line 59
    const-class v12, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v12

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 60
    const-string v2, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_75

    .line 101
    :goto_b
    monitor-exit v12

    return-object v2

    .line 62
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_16

    .line 63
    const-string v2, ""
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_75

    goto :goto_b

    .line 66
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v9

    .line 69
    .local v9, "key":Ljavax/crypto/SecretKey;
    const/16 v11, 0x10

    new-array v7, v11, [B

    .line 70
    .local v7, "iv":[B
    const/4 v11, 0x0

    invoke-static {v7, v11}, Ljava/util/Arrays;->fill([BB)V

    .line 71
    new-instance v8, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v8, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 73
    .local v8, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v11, 0x0

    invoke-static {p1, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v6

    .line 75
    .local v6, "encrypedPwdBytes":[B
    const-string v11, "AES/CBC/PKCS7Padding"

    invoke-static {v11}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 76
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v11, 0x2

    invoke-virtual {v0, v11, v9, v8}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 77
    invoke-virtual {v0, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 79
    .local v3, "decrypedValueBytes":[B
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3f} :catch_40
    .catchall {:try_start_16 .. :try_end_3f} :catchall_75

    .line 81
    .local v2, "decrypedValue":Ljava/lang/String;
    goto :goto_b

    .line 83
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "decrypedValue":Ljava/lang/String;
    .end local v3    # "decrypedValueBytes":[B
    .end local v6    # "encrypedPwdBytes":[B
    .end local v7    # "iv":[B
    .end local v8    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v9    # "key":Ljavax/crypto/SecretKey;
    :catch_40
    move-exception v4

    .line 84
    .local v4, "e":Ljava/lang/Exception;
    :try_start_41
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    sget-boolean v11, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    if-nez v11, :cond_6d

    .line 88
    const/4 v11, 0x1

    sput-boolean v11, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->mDidSendEncryptionFailEventInSession:Z

    .line 89
    const/4 v11, 0x0

    invoke-static {v11}, Lcom/ironsource/mediationsdk/utils/IronSourceUtils;->getMediationAdditionalData(Z)Lorg/json/JSONObject;
    :try_end_4f
    .catchall {:try_start_41 .. :try_end_4f} :catchall_75

    move-result-object v1

    .line 91
    .local v1, "data":Lorg/json/JSONObject;
    :try_start_50
    const-string v11, "status"

    const-string v13, "false"

    invoke-virtual {v1, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    const-string v11, "reason"

    const/4 v13, 0x1

    invoke-virtual {v1, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5d
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_5d} :catch_70
    .catchall {:try_start_50 .. :try_end_5d} :catchall_75

    .line 96
    :goto_5d
    :try_start_5d
    new-instance v10, Lcom/ironsource/eventsmodule/EventData;

    const/16 v11, 0x72

    invoke-direct {v10, v11, v1}, Lcom/ironsource/eventsmodule/EventData;-><init>(ILorg/json/JSONObject;)V

    .line 97
    .local v10, "parseFailedEvent":Lcom/ironsource/eventsmodule/EventData;
    invoke-static {}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->getInstance()Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;

    move-result-object v11

    const-string v13, "https://track.atom-data.io"

    invoke-virtual {v11, v10, v13}, Lcom/ironsource/mediationsdk/events/InterstitialEventsManager;->sendEventToUrl(Lcom/ironsource/eventsmodule/EventData;Ljava/lang/String;)V

    .line 101
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v10    # "parseFailedEvent":Lcom/ironsource/eventsmodule/EventData;
    :cond_6d
    const-string v2, ""

    goto :goto_b

    .line 93
    .restart local v1    # "data":Lorg/json/JSONObject;
    :catch_70
    move-exception v5

    .line 94
    .local v5, "e1":Lorg/json/JSONException;
    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_5d .. :try_end_74} :catchall_75

    goto :goto_5d

    .line 59
    .end local v1    # "data":Lorg/json/JSONObject;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "e1":Lorg/json/JSONException;
    :catchall_75
    move-exception v11

    monitor-exit v12

    throw v11
.end method

.method public static declared-synchronized encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "keyString"    # Ljava/lang/String;
    .param p1, "stringToEncode"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v8, Lcom/ironsource/mediationsdk/utils/IronSourceAES;

    monitor-enter v8

    :try_start_3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 28
    const-string v3, ""
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_54

    .line 55
    :goto_b
    monitor-exit v8

    return-object v3

    .line 30
    :cond_d
    :try_start_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 31
    const-string v3, ""
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_54

    goto :goto_b

    .line 34
    :cond_16
    :try_start_16
    invoke-static {p0}, Lcom/ironsource/mediationsdk/utils/IronSourceAES;->getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    .line 35
    .local v6, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v7, "UTF8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 38
    .local v1, "clearText":[B
    const/16 v7, 0x10

    new-array v4, v7, [B

    .line 39
    .local v4, "iv":[B
    const/4 v7, 0x0

    invoke-static {v4, v7}, Ljava/util/Arrays;->fill([BB)V

    .line 40
    new-instance v5, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v5, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 43
    .local v5, "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v7, "AES/CBC/PKCS7Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 44
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v7, 0x1

    invoke-virtual {v0, v7, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 46
    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v7, v9}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 47
    .local v3, "encrypedValue":Ljava/lang/String;
    const-string v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v3, v7, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_4b} :catch_4d
    .catchall {:try_start_16 .. :try_end_4b} :catchall_54

    move-result-object v3

    .line 49
    goto :goto_b

    .line 51
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "clearText":[B
    .end local v3    # "encrypedValue":Ljava/lang/String;
    .end local v4    # "iv":[B
    .end local v5    # "ivParameterSpec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v6    # "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_4d
    move-exception v2

    .line 52
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 55
    const-string v3, ""
    :try_end_53
    .catchall {:try_start_4e .. :try_end_53} :catchall_54

    goto :goto_b

    .line 27
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_54
    move-exception v7

    monitor-exit v8

    throw v7
.end method

.method private static getKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .registers 8
    .param p0, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 112
    const/16 v1, 0x100

    .line 113
    .local v1, "keyLength":I
    const/16 v4, 0x20

    new-array v0, v4, [B

    .line 115
    .local v0, "keyBytes":[B
    invoke-static {v0, v6}, Ljava/util/Arrays;->fill([BB)V

    .line 118
    const-string v4, "UTF-8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 119
    .local v3, "passwordBytes":[B
    array-length v4, v3

    array-length v5, v0

    if-ge v4, v5, :cond_20

    array-length v2, v3

    .line 120
    .local v2, "length":I
    :goto_15
    invoke-static {v3, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 122
    new-instance v4, Ljavax/crypto/spec/SecretKeySpec;

    const-string v5, "AES"

    invoke-direct {v4, v0, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v4

    .line 119
    .end local v2    # "length":I
    :cond_20
    array-length v2, v0

    goto :goto_15
.end method
