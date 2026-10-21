###### Class com.google.android.gms.internal.zzkm (com.google.android.gms.internal.zzkm)
.class public Lcom/google/android/gms/internal/zzkm;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzkm$zzh;,
        Lcom/google/android/gms/internal/zzkm$zzg;,
        Lcom/google/android/gms/internal/zzkm$zze;,
        Lcom/google/android/gms/internal/zzkm$zzd;,
        Lcom/google/android/gms/internal/zzkm$zzf;,
        Lcom/google/android/gms/internal/zzkm$zzc;,
        Lcom/google/android/gms/internal/zzkm$zzb;,
        Lcom/google/android/gms/internal/zzkm$zza;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzkm$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm;-><init>()V

    return-void
.end method

.method public static zzay(I)Lcom/google/android/gms/internal/zzkm;
    .registers 2

    const/16 v0, 0x15

    if-lt p0, v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzh;-><init>()V

    :goto_9
    return-object v0

    :cond_a
    const/16 v0, 0x13

    if-lt p0, v0, :cond_14

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzg;-><init>()V

    goto :goto_9

    :cond_14
    const/16 v0, 0x12

    if-lt p0, v0, :cond_1e

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zze;-><init>()V

    goto :goto_9

    :cond_1e
    const/16 v0, 0x11

    if-lt p0, v0, :cond_28

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzd;-><init>()V

    goto :goto_9

    :cond_28
    const/16 v0, 0x10

    if-lt p0, v0, :cond_32

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzf;-><init>()V

    goto :goto_9

    :cond_32
    const/16 v0, 0xe

    if-lt p0, v0, :cond_3c

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzc;-><init>()V

    goto :goto_9

    :cond_3c
    const/16 v0, 0xb

    if-lt p0, v0, :cond_46

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zzb;-><init>()V

    goto :goto_9

    :cond_46
    const/16 v0, 0x9

    if-lt p0, v0, :cond_50

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm$zza;-><init>()V

    goto :goto_9

    :cond_50
    new-instance v0, Lcom/google/android/gms/internal/zzkm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkm;-><init>()V

    goto :goto_9
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    return-object v0
.end method

.method public zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/app/DownloadManager$Request;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public zza(Landroid/view/Window;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzao(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 3

    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzll;Z)Lcom/google/android/gms/internal/zzlm;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzlm;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzlm;-><init>(Lcom/google/android/gms/internal/zzll;Z)V

    return-object v0
.end method

.method public zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzkm;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_21
    return-void
.end method

.method public zzg(Landroid/net/Uri;)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v5, -0x1

    invoke-virtual {p1}, Landroid/net/Uri;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_b
    return-object v0

    :cond_c
    invoke-virtual {p1}, Landroid/net/Uri;->getEncodedQuery()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_17

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_b

    :cond_17
    new-instance v4, Ljava/util/LinkedHashSet;

    invoke-direct {v4}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    :cond_1d
    const/16 v1, 0x26

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-ne v1, v5, :cond_29

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :cond_29
    const/16 v2, 0x3d

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-gt v2, v1, :cond_33

    if-ne v2, v5, :cond_34

    :cond_33
    move v2, v1

    :cond_34
    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_1d

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_b
.end method

.method public zzj(Lcom/google/android/gms/internal/zzll;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->onPause()V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public zzk(Lcom/google/android/gms/internal/zzll;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->onResume()V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public zzl(Lcom/google/android/gms/internal/zzll;)Landroid/webkit/WebChromeClient;
    .registers 3

    const/4 v0, 0x0

    return-object v0
.end method

.method public zzo(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zzp(Landroid/view/View;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public zztk()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public zztl()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public zztm()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public zztn()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x2

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzkm.AnonymousClass1 (com.google.android.gms.internal.zzkm$1)
.class synthetic Lcom/google/android/gms/internal/zzkm$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzkm.zza (com.google.android.gms.internal.zzkm$zza)
.class public Lcom/google/android/gms/internal/zzkm$zza;
.super Lcom/google/android/gms/internal/zzkm;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzkm;-><init>(Lcom/google/android/gms/internal/zzkm$1;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/app/DownloadManager$Request;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setShowRunningNotification(Z)Landroid/app/DownloadManager$Request;

    return v0
.end method

.method public zztk()I
    .registers 2

    const/4 v0, 0x6

    return v0
.end method

.method public zztl()I
    .registers 2

    const/4 v0, 0x7

    return v0
.end method

###### Class com.google.android.gms.internal.zzkm.zzb (com.google.android.gms.internal.zzkm$zzb)
.class public Lcom/google/android/gms/internal/zzkm$zzb;
.super Lcom/google/android/gms/internal/zzkm$zza;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/app/DownloadManager$Request;)Z
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    return v0
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzkm$zza;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    new-instance v0, Lcom/google/android/gms/internal/zzkm$zzb$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzkm$zzb$1;-><init>(Lcom/google/android/gms/internal/zzkm$zzb;Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkx;->zzb(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public zza(Landroid/view/Window;)Z
    .registers 3

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 v0, 0x1

    return v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzll;Z)Lcom/google/android/gms/internal/zzlm;
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzlt;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzlt;-><init>(Lcom/google/android/gms/internal/zzll;Z)V

    return-object v0
.end method

.method public zzg(Landroid/net/Uri;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzll;)Landroid/webkit/WebChromeClient;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzls;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzls;-><init>(Lcom/google/android/gms/internal/zzll;)V

    return-object v0
.end method

.method public zzo(Landroid/view/View;)Z
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x1

    return v0
.end method

.method public zzp(Landroid/view/View;)Z
    .registers 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return v1
.end method

###### Class com.google.android.gms.internal.zzkm.zzb.AnonymousClass1 (com.google.android.gms.internal.zzkm$zzb$1)
.class Lcom/google/android/gms/internal/zzkm$zzb$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzkm$zzb;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaky:Landroid/content/Context;

.field final synthetic zzcln:Landroid/webkit/WebSettings;

.field final synthetic zzclo:Lcom/google/android/gms/internal/zzkm$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzkm$zzb;Landroid/content/Context;Landroid/webkit/WebSettings;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzclo:Lcom/google/android/gms/internal/zzkm$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzaky:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzto()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public zzto()Ljava/lang/Boolean;
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzaky:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzaky:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    :cond_25
    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzaky:Landroid/content/Context;

    const-string v2, "com.google.android.gms.ads.db"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v4}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkm$zzb$1;->zzcln:Landroid/webkit/WebSettings;

    invoke-virtual {v0, v5}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzkm.zzc (com.google.android.gms.internal.zzkm$zzc)
.class public Lcom/google/android/gms/internal/zzkm$zzc;
.super Lcom/google/android/gms/internal/zzkm$zzb;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zzb;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/net/http/SslError;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzl(Lcom/google/android/gms/internal/zzll;)Landroid/webkit/WebChromeClient;
    .registers 3

    new-instance v0, Lcom/google/android/gms/internal/zzlu;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzlu;-><init>(Lcom/google/android/gms/internal/zzll;)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzkm.zzd (com.google.android.gms.internal.zzkm$zzd)
.class public Lcom/google/android/gms/internal/zzkm$zzd;
.super Lcom/google/android/gms/internal/zzkm$zzf;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/graphics/Bitmap;ZF)Landroid/graphics/drawable/Drawable;
    .registers 9

    if-eqz p3, :cond_d

    const/4 v0, 0x0

    cmpg-float v0, p4, v0

    if-lez v0, :cond_d

    const/high16 v0, 0x41c80000    # 25.0f

    cmpl-float v0, p4, v0

    if-lez v0, :cond_17

    :cond_d
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :goto_16
    return-object v0

    :cond_17
    :try_start_17
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v2

    invoke-static {v2}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v3

    invoke-static {v2, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v0

    invoke-static {v2, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v3, p4}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v3, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_51} :catch_52

    goto :goto_16

    :catch_52
    move-exception v0

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_16
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzkm$zzf;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    const/4 v0, 0x1

    return v0
.end method

###### Class com.google.android.gms.internal.zzkm.zze (com.google.android.gms.internal.zzkm$zze)
.class public Lcom/google/android/gms/internal/zzkm$zze;
.super Lcom/google/android/gms/internal/zzkm$zzd;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x12
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zzd;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzkm$zzd;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public zztm()I
    .registers 2

    const/16 v0, 0xe

    return v0
.end method

###### Class com.google.android.gms.internal.zzkm.zzf (com.google.android.gms.internal.zzkm$zzf)
.class public Lcom/google/android/gms/internal/zzkm$zzf;
.super Lcom/google/android/gms/internal/zzkm$zzc;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzf"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zzc;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 3

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .registers 4

    const/4 v0, 0x0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/zzkm$zzc;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 5

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/internal/zzkm$zzf;->zza(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_21
    return-void
.end method

###### Class com.google.android.gms.internal.zzkm.zzg (com.google.android.gms.internal.zzkm$zzg)
.class public Lcom/google/android/gms/internal/zzkm$zzg;
.super Lcom/google/android/gms/internal/zzkm$zze;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzg"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zze;-><init>()V

    return-void
.end method


# virtual methods
.method public isAttachedToWindow(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public zztn()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    const/4 v1, -0x1

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzkm.zzh (com.google.android.gms.internal.zzkm$zzh)
.class public Lcom/google/android/gms/internal/zzkm$zzh;
.super Lcom/google/android/gms/internal/zzkm$zzg;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzkm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzh"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkm$zzg;-><init>()V

    return-void
.end method


# virtual methods
.method public zzao(Landroid/content/Context;)Landroid/webkit/CookieManager;
    .registers 3

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    return-object v0
.end method
