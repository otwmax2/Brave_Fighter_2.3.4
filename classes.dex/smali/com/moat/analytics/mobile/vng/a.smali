###### Class com.moat.analytics.mobile.vng.a (com.moat.analytics.mobile.vng.a)
.class Lcom/moat/analytics/mobile/vng/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/vng/a$a;
    }
.end annotation


# static fields
.field static a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static b:Z

.field private static c:Landroid/app/Application;

.field private static d:I

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/moat/analytics/mobile/vng/a;->b:Z

    sput v0, Lcom/moat/analytics/mobile/vng/a;->d:I

    sput-boolean v0, Lcom/moat/analytics/mobile/vng/a;->e:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcom/moat/analytics/mobile/vng/a;->d:I

    return p0
.end method

.method static a()Landroid/app/Application;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/vng/a;->c:Landroid/app/Application;

    return-object v0
.end method

.method static a(Landroid/app/Application;)V
    .registers 3

    sput-object p0, Lcom/moat/analytics/mobile/vng/a;->c:Landroid/app/Application;

    sget-boolean v0, Lcom/moat/analytics/mobile/vng/a;->b:Z

    if-nez v0, :cond_13

    const/4 v0, 0x1

    sput-boolean v0, Lcom/moat/analytics/mobile/vng/a;->b:Z

    sget-object v0, Lcom/moat/analytics/mobile/vng/a;->c:Landroid/app/Application;

    new-instance v1, Lcom/moat/analytics/mobile/vng/a$a;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/vng/a$a;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_13
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;)Z
    .registers 2

    invoke-static {p0}, Lcom/moat/analytics/mobile/vng/a;->b(Landroid/app/Activity;)Z

    move-result v0

    return v0
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/moat/analytics/mobile/vng/a;->e:Z

    return p0
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/moat/analytics/mobile/vng/a;->e:Z

    return v0
.end method

.method private static b(Landroid/app/Activity;)Z
    .registers 2

    sget-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/moat/analytics/mobile/vng/a;->d:I

    return v0
.end method

###### Class com.moat.analytics.mobile.vng.a.C0164a (com.moat.analytics.mobile.vng.a$a)
.class Lcom/moat/analytics/mobile/vng/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/vng/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Z)V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x3

    if-eqz p0, :cond_27

    const-string v0, "ActivityState"

    const-string v1, "App became visible"

    invoke-static {v2, v0, v3, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_26

    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/k;->c:Z

    if-nez v0, :cond_26

    invoke-static {}, Lcom/moat/analytics/mobile/vng/o;->a()Lcom/moat/analytics/mobile/vng/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/o;->c()V

    :cond_26
    :goto_26
    return-void

    :cond_27
    const-string v0, "ActivityState"

    const-string v1, "App became invisible"

    invoke-static {v2, v0, v3, v1}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    iget-object v0, v0, Lcom/moat/analytics/mobile/vng/w;->a:Lcom/moat/analytics/mobile/vng/w$d;

    sget-object v1, Lcom/moat/analytics/mobile/vng/w$d;->b:Lcom/moat/analytics/mobile/vng/w$d;

    if-ne v0, v1, :cond_26

    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/k;->c:Z

    if-nez v0, :cond_26

    invoke-static {}, Lcom/moat/analytics/mobile/vng/o;->a()Lcom/moat/analytics/mobile/vng/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/o;->d()V

    goto :goto_26
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(I)I

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    const/4 v1, 0x3

    :try_start_1
    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->c()I

    move-result v0

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->c()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->b()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a$a;->a(Z)V

    :cond_18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(Z)Z

    :cond_1c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(I)I

    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity destroyed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_59} :catch_5a

    :cond_59
    :goto_59
    return-void

    :catch_5a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_59
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(I)I

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    :cond_12
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity paused: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    :goto_3d
    return-void

    :catch_3e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_3d
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(I)I

    invoke-static {}, Lcom/moat/analytics/mobile/vng/w;->a()Lcom/moat/analytics/mobile/vng/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/vng/w;->b()V

    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity resumed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/moat/analytics/mobile/vng/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/vng/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/vng/k;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/vng/k;->b:Z

    if-eqz v0, :cond_4a

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/f;->a(Landroid/app/Activity;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    :cond_4a
    :goto_4a
    return-void

    :catch_4b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_4a
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(I)I

    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->b()Z

    move-result v0

    if-nez v0, :cond_15

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a$a;->a(Z)V

    :cond_15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(Z)Z

    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity started: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_44} :catch_45

    :goto_44
    return-void

    :catch_45
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_44
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    const/4 v1, 0x3

    :try_start_1
    invoke-static {}, Lcom/moat/analytics/mobile/vng/a;->c()I

    move-result v0

    if-eq v0, v1, :cond_f

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(Z)Z

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a$a;->a(Z)V

    :cond_f
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/a;->a(I)I

    invoke-static {p1}, Lcom/moat/analytics/mobile/vng/a;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/vng/a;->a:Ljava/lang/ref/WeakReference;

    :cond_21
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/vng/p;->a(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4d

    :goto_4c
    return-void

    :catch_4d
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/vng/m;->a(Ljava/lang/Exception;)V

    goto :goto_4c
.end method
