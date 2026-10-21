###### Class com.facebook.ads.internal.q.a.e (com.facebook.ads.internal.q.a.e)
.class public Lcom/facebook/ads/internal/q/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/q/a/e$a;
    }
.end annotation


# static fields
.field public static volatile a:Lcom/facebook/ads/internal/q/a/e$a;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, -0x1

    sput v0, Lcom/facebook/ads/internal/q/a/e;->b:I

    sget-object v0, Lcom/facebook/ads/internal/q/a/e$a;->a:Lcom/facebook/ads/internal/q/a/e$a;

    sput-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcom/facebook/ads/internal/q/a/e;->b:I

    return p0
.end method

.method public static a(Lorg/xmlpull/v1/XmlPullParser;)I
    .registers 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    const/4 v1, 0x0

    :cond_1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_36

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uses-sdk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1c
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "minSdkVersion"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_36
    return v1

    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c
.end method

.method public static a(Landroid/content/Context;)V
    .registers 2

    invoke-static {}, Lcom/facebook/ads/internal/q/a/e;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/e;->e(Landroid/content/Context;)V

    goto :goto_6
.end method

.method public static a()Z
    .registers 2

    sget-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->c:Lcom/facebook/ads/internal/q/a/e$a;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static b(Landroid/content/Context;)I
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->a:Lcom/facebook/ads/internal/q/a/e$a;

    if-ne v0, v1, :cond_9

    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/e;->a(Landroid/content/Context;)V

    :cond_9
    sget v0, Lcom/facebook/ads/internal/q/a/e;->b:I

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/e;->a(Lorg/xmlpull/v1/XmlPullParser;)I
    :try_end_d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_d} :catch_12
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_f

    move-result v0

    :goto_e
    return v0

    :catch_f
    move-exception v0

    :goto_10
    const/4 v0, 0x0

    goto :goto_e

    :catch_12
    move-exception v0

    goto :goto_10
.end method

.method static synthetic d(Landroid/content/Context;)I
    .registers 2

    invoke-static {p0}, Lcom/facebook/ads/internal/q/a/e;->f(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private static e(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->a:Lcom/facebook/ads/internal/q/a/e$a;

    if-eq v0, v1, :cond_7

    :goto_6
    return-void

    :cond_7
    sget-object v0, Lcom/facebook/ads/internal/q/a/e$a;->b:Lcom/facebook/ads/internal/q/a/e$a;

    sput-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/internal/q/a/e$1;

    invoke-direct {v1, p0}, Lcom/facebook/ads/internal/q/a/e$1;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_6
.end method

.method private static f(Landroid/content/Context;)I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_10} :catch_11

    :goto_10
    return v0

    :catch_11
    move-exception v1

    goto :goto_10
.end method

###### Class com.facebook.ads.internal.q.a.e.AnonymousClass1 (com.facebook.ads.internal.q.a.e$1)
.class final Lcom/facebook/ads/internal/q/a/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/internal/q/a/e;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/ads/internal/q/a/e$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v3, -0x1

    sget-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->c:Lcom/facebook/ads/internal/q/a/e$a;

    if-ne v0, v1, :cond_8

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/e$1;->a:Landroid/content/Context;

    const-string v1, "FBAdPrefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v0, "AppMinSdkVersion"

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v3, :cond_21

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/e;->a(I)I

    sget-object v0, Lcom/facebook/ads/internal/q/a/e$a;->c:Lcom/facebook/ads/internal/q/a/e$a;

    sput-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    goto :goto_7

    :cond_21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_42

    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/e;->d(Landroid/content/Context;)I

    move-result v0

    :goto_2d
    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/e;->a(I)I

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "AppMinSdkVersion"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/facebook/ads/internal/q/a/e$a;->c:Lcom/facebook/ads/internal/q/a/e$a;

    sput-object v0, Lcom/facebook/ads/internal/q/a/e;->a:Lcom/facebook/ads/internal/q/a/e$a;

    goto :goto_7

    :cond_42
    iget-object v0, p0, Lcom/facebook/ads/internal/q/a/e$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/e;->c(Landroid/content/Context;)I

    move-result v0

    goto :goto_2d
.end method

###### Class com.facebook.ads.internal.q.a.e.a (com.facebook.ads.internal.q.a.e$a)
.class final enum Lcom/facebook/ads/internal/q/a/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/q/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/q/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/q/a/e$a;

.field public static final enum b:Lcom/facebook/ads/internal/q/a/e$a;

.field public static final enum c:Lcom/facebook/ads/internal/q/a/e$a;

.field private static final synthetic d:[Lcom/facebook/ads/internal/q/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/q/a/e$a;

    const-string v1, "NOT_INITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/q/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/e$a;->a:Lcom/facebook/ads/internal/q/a/e$a;

    new-instance v0, Lcom/facebook/ads/internal/q/a/e$a;

    const-string v1, "INITIALIZING"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/q/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/e$a;->b:Lcom/facebook/ads/internal/q/a/e$a;

    new-instance v0, Lcom/facebook/ads/internal/q/a/e$a;

    const-string v1, "INITIALIZED"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/q/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/q/a/e$a;->c:Lcom/facebook/ads/internal/q/a/e$a;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/facebook/ads/internal/q/a/e$a;

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->a:Lcom/facebook/ads/internal/q/a/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->b:Lcom/facebook/ads/internal/q/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/q/a/e$a;->c:Lcom/facebook/ads/internal/q/a/e$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/ads/internal/q/a/e$a;->d:[Lcom/facebook/ads/internal/q/a/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/q/a/e$a;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/q/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/q/a/e$a;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/q/a/e$a;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/q/a/e$a;->d:[Lcom/facebook/ads/internal/q/a/e$a;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/q/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/q/a/e$a;

    return-object v0
.end method
