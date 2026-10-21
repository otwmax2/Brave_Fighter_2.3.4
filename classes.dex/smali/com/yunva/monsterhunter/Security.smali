###### Class com.yunva.monsterhunter.Security (com.yunva.monsterhunter.Security)
.class public Lcom/yunva/monsterhunter/Security;
.super Ljava/lang/Object;
.source "Security.java"


# static fields
.field private static final KEY_FACTORY_ALGORITHM:Ljava/lang/String; = "RSA"

.field private static final SIGNATURE_ALGORITHM:Ljava/lang/String; = "SHA1withRSA"

.field private static final TAG:Ljava/lang/String; = "IABUtil/Security"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;
    .registers 6
    .param p0, "encodedPublicKey"    # Ljava/lang/String;

    .prologue
    .line 76
    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0, v3}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 77
    .local v0, "decodedKey":[B
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 78
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_13
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_13} :catch_15
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_13} :catch_1c

    move-result-object v3

    return-object v3

    .line 79
    .end local v0    # "decodedKey":[B
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :catch_15
    move-exception v1

    .line 80
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 81
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1c
    move-exception v1

    .line 82
    .local v1, "e":Ljava/security/spec/InvalidKeySpecException;
    const-string v3, "IABUtil/Security"

    const-string v4, "Invalid key specification."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 99
    const/4 v4, 0x0

    :try_start_2
    invoke-static {p2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_5} :catch_24

    move-result-object v2

    .line 105
    .local v2, "signatureBytes":[B
    :try_start_6
    const-string v4, "SHA1withRSA"

    invoke-static {v4}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 106
    .local v1, "sig":Ljava/security/Signature;
    invoke-virtual {v1, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/security/Signature;->update([B)V

    .line 108
    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 109
    const-string v4, "IABUtil/Security"

    const-string v5, "Signature verification failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_23} :catch_2f
    .catch Ljava/security/InvalidKeyException; {:try_start_6 .. :try_end_23} :catch_38
    .catch Ljava/security/SignatureException; {:try_start_6 .. :try_end_23} :catch_41

    .line 120
    .end local v1    # "sig":Ljava/security/Signature;
    .end local v2    # "signatureBytes":[B
    :goto_23
    return v3

    .line 100
    :catch_24
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "IABUtil/Security"

    const-string v5, "Base64 decoding failed."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 112
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "sig":Ljava/security/Signature;
    .restart local v2    # "signatureBytes":[B
    :cond_2d
    const/4 v3, 0x1

    goto :goto_23

    .line 113
    .end local v1    # "sig":Ljava/security/Signature;
    :catch_2f
    move-exception v0

    .line 114
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "IABUtil/Security"

    const-string v5, "NoSuchAlgorithmException."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 115
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_38
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/InvalidKeyException;
    const-string v4, "IABUtil/Security"

    const-string v5, "Invalid key specification."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 117
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :catch_41
    move-exception v0

    .line 118
    .local v0, "e":Ljava/security/SignatureException;
    const-string v4, "IABUtil/Security"

    const-string v5, "Signature exception."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public static verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "base64PublicKey"    # Ljava/lang/String;
    .param p1, "signedData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 59
    :cond_12
    const-string v1, "IABUtil/Security"

    const-string v2, "Purchase verification failed: missing data."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 v1, 0x0

    .line 64
    :goto_1a
    return v1

    .line 63
    :cond_1b
    invoke-static {p0}, Lcom/yunva/monsterhunter/Security;->generatePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v0

    .line 64
    .local v0, "key":Ljava/security/PublicKey;
    invoke-static {v0, p1, p2}, Lcom/yunva/monsterhunter/Security;->verify(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_1a
.end method
