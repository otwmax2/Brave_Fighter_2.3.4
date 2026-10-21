###### Class com.google.android.gms.internal.zzau (com.google.android.gms.internal.zzau)
.class public Lcom/google/android/gms/internal/zzau;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzau$zza;
    }
.end annotation


# static fields
.field private static zzagb:Ljavax/crypto/Cipher;

.field private static final zzagc:Ljava/lang/Object;

.field private static final zzagd:Ljava/lang/Object;


# instance fields
.field private final zzaga:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzau;->zzaga:Ljava/security/SecureRandom;

    return-void
.end method

.method private getCipher()Ljavax/crypto/Cipher;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/zzau;->zzagd:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    if-nez v0, :cond_f

    const-string v0, "AES/CBC/PKCS5Padding"

    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    :cond_f
    sget-object v0, Lcom/google/android/gms/internal/zzau;->zzagb:Ljavax/crypto/Cipher;

    monitor-exit v1

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method static zzh([B)V
    .registers 3

    const/4 v0, 0x0

    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_e

    aget-byte v1, p0, v0

    xor-int/lit8 v1, v1, 0x44

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public zzc([BLjava/lang/String;)[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;
        }
    .end annotation

    const/16 v2, 0x10

    array-length v0, p1

    if-eq v0, v2, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0

    :cond_b
    const/4 v0, 0x0

    :try_start_c
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Z)[B

    move-result-object v0

    array-length v1, v0

    if-gt v1, v2, :cond_20

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0
    :try_end_19
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_19} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_19} :catch_5e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_c .. :try_end_19} :catch_65
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_c .. :try_end_19} :catch_6c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_c .. :try_end_19} :catch_73
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_19} :catch_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_19} :catch_81

    :catch_19
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :cond_20
    :try_start_20
    array-length v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/16 v2, 0x10

    new-array v2, v2, [B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x10

    new-array v0, v0, [B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v1, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/internal/zzau;->zzagc:Ljava/lang/Object;

    monitor-enter v3
    :try_end_44
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_20 .. :try_end_44} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_20 .. :try_end_44} :catch_5e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_20 .. :try_end_44} :catch_65
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_20 .. :try_end_44} :catch_6c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_20 .. :try_end_44} :catch_73
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_20 .. :try_end_44} :catch_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_44} :catch_81

    :try_start_44
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v4

    const/4 v5, 0x2

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v6, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v4, v5, v1, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    monitor-exit v3

    return-object v0

    :catchall_5b
    move-exception v0

    monitor-exit v3
    :try_end_5d
    .catchall {:try_start_44 .. :try_end_5d} :catchall_5b

    :try_start_5d
    throw v0
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5d .. :try_end_5e} :catch_19
    .catch Ljava/security/InvalidKeyException; {:try_start_5d .. :try_end_5e} :catch_5e
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_5d .. :try_end_5e} :catch_65
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_5d .. :try_end_5e} :catch_6c
    .catch Ljavax/crypto/BadPaddingException; {:try_start_5d .. :try_end_5e} :catch_73
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_5d .. :try_end_5e} :catch_7a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5d .. :try_end_5e} :catch_81

    :catch_5e
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_65
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_6c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_73
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_7a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_81
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzd([B[B)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x10

    if-eq v0, v1, :cond_b

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0

    :cond_b
    :try_start_b
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    sget-object v1, Lcom/google/android/gms/internal/zzau;->zzagc:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_15} :catch_4f
    .catch Ljava/security/InvalidKeyException; {:try_start_b .. :try_end_15} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_b .. :try_end_15} :catch_5d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_b .. :try_end_15} :catch_64
    .catch Ljavax/crypto/BadPaddingException; {:try_start_b .. :try_end_15} :catch_6b

    :try_start_15
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzau;->zzaga:Ljava/security/SecureRandom;

    invoke-virtual {v2, v3, v0, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzau;->getCipher()Ljavax/crypto/Cipher;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_4c

    :try_start_30
    array-length v1, v0

    array-length v3, v2

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-array v0, v1, [B

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaj;->zza([BZ)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_4a} :catch_4f
    .catch Ljava/security/InvalidKeyException; {:try_start_30 .. :try_end_4a} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_30 .. :try_end_4a} :catch_5d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_30 .. :try_end_4a} :catch_64
    .catch Ljavax/crypto/BadPaddingException; {:try_start_30 .. :try_end_4a} :catch_6b

    move-result-object v0

    return-object v0

    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    :try_start_4e
    throw v0
    :try_end_4f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4e .. :try_end_4f} :catch_4f
    .catch Ljava/security/InvalidKeyException; {:try_start_4e .. :try_end_4f} :catch_56
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_4e .. :try_end_4f} :catch_5d
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_4e .. :try_end_4f} :catch_64
    .catch Ljavax/crypto/BadPaddingException; {:try_start_4e .. :try_end_4f} :catch_6b

    :catch_4f
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_56
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_5d
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_64
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :catch_6b
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public zzl(Ljava/lang/String;)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzau$zza;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzaj;->zza(Ljava/lang/String;Z)[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x20

    if-eq v1, v2, :cond_17

    new-instance v0, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;)V

    throw v0
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_10} :catch_10

    :catch_10
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzau$zza;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzau$zza;-><init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V

    throw v1

    :cond_17
    const/4 v1, 0x4

    const/16 v2, 0x10

    :try_start_1a
    invoke-static {v0, v1, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzau;->zzh([B)V
    :try_end_28
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_28} :catch_10

    return-object v1
.end method

###### Class com.google.android.gms.internal.zzau.zza (com.google.android.gms.internal.zzau$zza)
.class public Lcom/google/android/gms/internal/zzau$zza;
.super Ljava/lang/Exception;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzau;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzage:Lcom/google/android/gms/internal/zzau;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzau;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzau$zza;->zzage:Lcom/google/android/gms/internal/zzau;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzau;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzau$zza;->zzage:Lcom/google/android/gms/internal/zzau;

    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method
