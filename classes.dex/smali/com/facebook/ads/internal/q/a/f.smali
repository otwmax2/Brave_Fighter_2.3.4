###### Class com.facebook.ads.internal.q.a.f (com.facebook.ads.internal.q.a.f)
.class public Lcom/facebook/ads/internal/q/a/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/q/a/f$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/q/a/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/q/a/f;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/facebook/ads/internal/q/a/f$a;
    .registers 1

    :try_start_0
    invoke-static {}, Lcom/facebook/ads/internal/q/a/f;->c()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {}, Lcom/facebook/ads/internal/q/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_14

    const-string v0, "su"

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_14
    const/4 v0, 0x1

    :goto_15
    if-eqz v0, :cond_1c

    sget-object v0, Lcom/facebook/ads/internal/q/a/f$a;->c:Lcom/facebook/ads/internal/q/a/f$a;

    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_15

    :cond_1c
    sget-object v0, Lcom/facebook/ads/internal/q/a/f$a;->b:Lcom/facebook/ads/internal/q/a/f$a;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_19

    :catch_1f
    move-exception v0

    sget-object v0, Lcom/facebook/ads/internal/q/a/f$a;->a:Lcom/facebook/ads/internal/q/a/f$a;

    goto :goto_19
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/f;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static a(Landroid/content/pm/Signature;)Ljava/security/PublicKey;
    .registers 4

    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 9

    const/4 v0, 0x0

    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v2, v0

    :goto_f
    if-ge v2, v4, :cond_3f

    aget-object v1, v3, v2

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_24
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_f

    :cond_28
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_24

    array-length v6, v5

    move v1, v0

    :goto_30
    if-ge v1, v6, :cond_24

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_40

    const/4 v0, 0x1

    :cond_3f
    return v0

    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_30
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_17
    if-ge v0, v3, :cond_3c

    aget-object v4, v2, v0

    const-string v5, "SHA1"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    invoke-static {v4}, Lcom/facebook/ads/internal/q/a/f;->a(Landroid/content/pm/Signature;)Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/ads/internal/q/a/h;->a([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    :cond_3c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Z
    .registers 2

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v1, "test-keys"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static c()Z
    .registers 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app/Superuser.apk"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

###### Class com.facebook.ads.internal.q.a.f.a (com.facebook.ads.internal.q.a.f$a)
.class public final enum Lcom/facebook/ads/internal/q/a/f$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/q/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/q/a/f$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/q/a/f$a;

.field public static final enum b:Lcom/facebook/ads/internal/q/a/f$a;

.field public static final enum c:Lcom/facebook/ads/internal/q/a/f$a;

.field private static final synthetic e:[Lcom/facebook/ads/internal/q/a/f$a;


# instance fields
.field public final d:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/q/a/f$a;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/facebook/ads/internal/q/a/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/f$a;->a:Lcom/facebook/ads/internal/q/a/f$a;

    new-instance v0, Lcom/facebook/ads/internal/q/a/f$a;

    const-string v1, "UNROOTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/facebook/ads/internal/q/a/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/f$a;->b:Lcom/facebook/ads/internal/q/a/f$a;

    new-instance v0, Lcom/facebook/ads/internal/q/a/f$a;

    const-string v1, "ROOTED"

    invoke-direct {v0, v1, v4, v4}, Lcom/facebook/ads/internal/q/a/f$a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/f$a;->c:Lcom/facebook/ads/internal/q/a/f$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/q/a/f$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/f$a;->a:Lcom/facebook/ads/internal/q/a/f$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/q/a/f$a;->b:Lcom/facebook/ads/internal/q/a/f$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/q/a/f$a;->c:Lcom/facebook/ads/internal/q/a/f$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/q/a/f$a;->e:[Lcom/facebook/ads/internal/q/a/f$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/facebook/ads/internal/q/a/f$a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/q/a/f$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/q/a/f$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/q/a/f$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/q/a/f$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/q/a/f$a;->e:[Lcom/facebook/ads/internal/q/a/f$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/q/a/f$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/q/a/f$a;

    return-object v0
.end method
