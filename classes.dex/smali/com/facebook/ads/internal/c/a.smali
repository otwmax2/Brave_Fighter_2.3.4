###### Class com.facebook.ads.internal.c.a (com.facebook.ads.internal.c.a)
.class public Lcom/facebook/ads/internal/c/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/c/a$a;,
        Lcom/facebook/ads/internal/c/a$b;,
        Lcom/facebook/ads/internal/c/a$c;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Z

.field private final d:Lcom/facebook/ads/internal/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/ads/internal/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLcom/facebook/ads/internal/c/a$c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/a;->b:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/facebook/ads/internal/c/a;->c:Z

    iput-object p3, p0, Lcom/facebook/ads/internal/c/a;->d:Lcom/facebook/ads/internal/c/a$c;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/facebook/ads/internal/c/a;
    .registers 5

    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    if-eqz v1, :cond_17

    new-instance v0, Lcom/facebook/ads/internal/c/a;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v1

    sget-object v3, Lcom/facebook/ads/internal/c/a$c;->c:Lcom/facebook/ads/internal/c/a$c;

    invoke-direct {v0, v2, v1, v3}, Lcom/facebook/ads/internal/c/a;-><init>(Ljava/lang/String;ZLcom/facebook/ads/internal/c/a$c;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-object v0

    :catch_16
    move-exception v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static a(Landroid/content/Context;Lcom/facebook/ads/internal/c/c$a;)Lcom/facebook/ads/internal/c/a;
    .registers 6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot get advertising info on main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-static {}, Lcom/facebook/ads/internal/q/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "idfa_override"

    invoke-static {v0}, Lcom/facebook/ads/internal/q/a/b;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2f

    new-instance v0, Lcom/facebook/ads/internal/c/a;

    const-string v1, "idfa_override"

    invoke-static {v1}, Lcom/facebook/ads/internal/q/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    sget-object v3, Lcom/facebook/ads/internal/c/a$c;->c:Lcom/facebook/ads/internal/c/a$c;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/c/a;-><init>(Ljava/lang/String;ZLcom/facebook/ads/internal/c/a$c;)V

    :cond_2e
    :goto_2e
    return-object v0

    :cond_2f
    if-eqz p1, :cond_45

    iget-object v0, p1, Lcom/facebook/ads/internal/c/c$a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_45

    new-instance v0, Lcom/facebook/ads/internal/c/a;

    iget-object v1, p1, Lcom/facebook/ads/internal/c/c$a;->b:Ljava/lang/String;

    iget-boolean v2, p1, Lcom/facebook/ads/internal/c/c$a;->c:Z

    sget-object v3, Lcom/facebook/ads/internal/c/a$c;->b:Lcom/facebook/ads/internal/c/a$c;

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/ads/internal/c/a;-><init>(Ljava/lang/String;ZLcom/facebook/ads/internal/c/a$c;)V

    goto :goto_2e

    :cond_45
    invoke-static {p0}, Lcom/facebook/ads/internal/c/a;->a(Landroid/content/Context;)Lcom/facebook/ads/internal/c/a;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_59

    :cond_55
    invoke-static {p0}, Lcom/facebook/ads/internal/c/a;->b(Landroid/content/Context;)Lcom/facebook/ads/internal/c/a;

    move-result-object v0

    :cond_59
    if-eqz v0, :cond_65

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2e

    :cond_65
    invoke-static {p0}, Lcom/facebook/ads/internal/c/a;->c(Landroid/content/Context;)Lcom/facebook/ads/internal/c/a;

    move-result-object v0

    goto :goto_2e
.end method

.method private static b(Landroid/content/Context;)Lcom/facebook/ads/internal/c/a;
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    const-string v2, "isGooglePlayServicesAvailable"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_15

    move-object v0, v1

    :goto_14
    return-object v0

    :cond_15
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_29

    :cond_27
    move-object v0, v1

    goto :goto_14

    :cond_29
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    const-string v2, "getAdvertisingIdInfo"

    new-array v3, v5, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-static {v0, v2, v3}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_3b

    move-object v0, v1

    goto :goto_14

    :cond_3b
    new-array v2, v5, [Ljava/lang/Object;

    aput-object p0, v2, v6

    invoke-static {v1, v0, v2}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_47

    move-object v0, v1

    goto :goto_14

    :cond_47
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getId"

    new-array v4, v6, [Ljava/lang/Class;

    invoke-static {v0, v3, v4}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isLimitAdTrackingEnabled"

    new-array v5, v6, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v0, :cond_63

    if-nez v3, :cond_65

    :cond_63
    move-object v0, v1

    goto :goto_14

    :cond_65
    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/facebook/ads/internal/c/d;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/facebook/ads/internal/c/a;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v3, Lcom/facebook/ads/internal/c/a$c;->d:Lcom/facebook/ads/internal/c/a$c;

    invoke-direct {v2, v0, v1, v3}, Lcom/facebook/ads/internal/c/a;-><init>(Ljava/lang/String;ZLcom/facebook/ads/internal/c/a$c;)V

    move-object v0, v2

    goto :goto_14
.end method

.method private static c(Landroid/content/Context;)Lcom/facebook/ads/internal/c/a;
    .registers 7

    const/4 v1, 0x0

    new-instance v2, Lcom/facebook/ads/internal/c/a$b;

    invoke-direct {v2, v1}, Lcom/facebook/ads/internal/c/a$b;-><init>(Lcom/facebook/ads/internal/c/a$1;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.google.android.gms.ads.identifier.service.START"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.google.android.gms"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_39

    :try_start_19
    new-instance v3, Lcom/facebook/ads/internal/c/a$a;

    invoke-virtual {v2}, Lcom/facebook/ads/internal/c/a$b;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/facebook/ads/internal/c/a$a;-><init>(Landroid/os/IBinder;)V

    new-instance v0, Lcom/facebook/ads/internal/c/a;

    invoke-virtual {v3}, Lcom/facebook/ads/internal/c/a$a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/facebook/ads/internal/c/a$a;->b()Z

    move-result v3

    sget-object v5, Lcom/facebook/ads/internal/c/a$c;->e:Lcom/facebook/ads/internal/c/a$c;

    invoke-direct {v0, v4, v3, v5}, Lcom/facebook/ads/internal/c/a;-><init>(Ljava/lang/String;ZLcom/facebook/ads/internal/c/a$c;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_35
    .catchall {:try_start_19 .. :try_end_31} :catchall_3b

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :goto_34
    return-object v0

    :catch_35
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_39
    move-object v0, v1

    goto :goto_34

    :catchall_3b
    move-exception v0

    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    throw v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/ads/internal/c/a;->c:Z

    return v0
.end method

.method public c()Lcom/facebook/ads/internal/c/a$c;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a;->d:Lcom/facebook/ads/internal/c/a$c;

    return-object v0
.end method

###### Class com.facebook.ads.internal.c.a.AnonymousClass1 (com.facebook.ads.internal.c.a$1)
.class synthetic Lcom/facebook/ads/internal/c/a$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.ads.internal.c.a.C0009a (com.facebook.ads.internal.c.a$a)
.class final Lcom/facebook/ads/internal/c/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/a$a;->a:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    :try_start_8
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a$a;->a:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v2}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_22

    move-result-object v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-object v0

    :catchall_22
    move-exception v0

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a$a;->a:Landroid/os/IBinder;

    return-object v0
.end method

.method public b()Z
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    :try_start_a
    const-string v4, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v4, p0, Lcom/facebook/ads/internal/c/a$a;->a:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v2, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_2c

    move-result v4

    if-eqz v4, :cond_2a

    :goto_23
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    return v0

    :cond_2a
    move v0, v1

    goto :goto_23

    :catchall_2c
    move-exception v0

    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

###### Class com.facebook.ads.internal.c.a.b (com.facebook.ads.internal.c.a$b)
.class final Lcom/facebook/ads/internal/c/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/internal/c/a$b;->b:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/ads/internal/c/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/facebook/ads/internal/c/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .registers 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/internal/c/a$b;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Binder already consumed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-object v0, p0, Lcom/facebook/ads/internal/c/a$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/internal/c/a$b;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method

###### Class com.facebook.ads.internal.c.a.c (com.facebook.ads.internal.c.a$c)
.class public final enum Lcom/facebook/ads/internal/c/a$c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/ads/internal/c/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/facebook/ads/internal/c/a$c;

.field public static final enum b:Lcom/facebook/ads/internal/c/a$c;

.field public static final enum c:Lcom/facebook/ads/internal/c/a$c;

.field public static final enum d:Lcom/facebook/ads/internal/c/a$c;

.field public static final enum e:Lcom/facebook/ads/internal/c/a$c;

.field private static final synthetic f:[Lcom/facebook/ads/internal/c/a$c;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/facebook/ads/internal/c/a$c;

    const-string v1, "SHARED_PREFS"

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/internal/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/c/a$c;->a:Lcom/facebook/ads/internal/c/a$c;

    new-instance v0, Lcom/facebook/ads/internal/c/a$c;

    const-string v1, "FB4A"

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/internal/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/c/a$c;->b:Lcom/facebook/ads/internal/c/a$c;

    new-instance v0, Lcom/facebook/ads/internal/c/a$c;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v4}, Lcom/facebook/ads/internal/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/c/a$c;->c:Lcom/facebook/ads/internal/c/a$c;

    new-instance v0, Lcom/facebook/ads/internal/c/a$c;

    const-string v1, "REFLECTION"

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/internal/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/c/a$c;->d:Lcom/facebook/ads/internal/c/a$c;

    new-instance v0, Lcom/facebook/ads/internal/c/a$c;

    const-string v1, "SERVICE"

    invoke-direct {v0, v1, v6}, Lcom/facebook/ads/internal/c/a$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/ads/internal/c/a$c;->e:Lcom/facebook/ads/internal/c/a$c;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/facebook/ads/internal/c/a$c;

    sget-object v1, Lcom/facebook/ads/internal/c/a$c;->a:Lcom/facebook/ads/internal/c/a$c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/ads/internal/c/a$c;->b:Lcom/facebook/ads/internal/c/a$c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/ads/internal/c/a$c;->c:Lcom/facebook/ads/internal/c/a$c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/facebook/ads/internal/c/a$c;->d:Lcom/facebook/ads/internal/c/a$c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/facebook/ads/internal/c/a$c;->e:Lcom/facebook/ads/internal/c/a$c;

    aput-object v1, v0, v6

    sput-object v0, Lcom/facebook/ads/internal/c/a$c;->f:[Lcom/facebook/ads/internal/c/a$c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/internal/c/a$c;
    .registers 2

    const-class v0, Lcom/facebook/ads/internal/c/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/internal/c/a$c;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/internal/c/a$c;
    .registers 1

    sget-object v0, Lcom/facebook/ads/internal/c/a$c;->f:[Lcom/facebook/ads/internal/c/a$c;

    invoke-virtual {v0}, [Lcom/facebook/ads/internal/c/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/internal/c/a$c;

    return-object v0
.end method
