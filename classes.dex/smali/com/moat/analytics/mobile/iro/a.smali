###### Class com.moat.analytics.mobile.iro.a (com.moat.analytics.mobile.iro.a)
.class final Lcom/moat/analytics/mobile/iro/a;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/iro/a$c;
    }
.end annotation


# static fields
.field static ˊ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static ˋ:Z

.field private static ˎ:Z

.field private static ˏ:Landroid/app/Application;

.field private static ॱ:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 30
    sput-boolean v0, Lcom/moat/analytics/mobile/iro/a;->ˋ:Z

    .line 33
    sput v0, Lcom/moat/analytics/mobile/iro/a;->ॱ:I

    .line 34
    sput-boolean v0, Lcom/moat/analytics/mobile/iro/a;->ˎ:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic ˊ(I)I
    .registers 1

    .prologue
    .line 18
    sput p0, Lcom/moat/analytics/mobile/iro/a;->ॱ:I

    return p0
.end method

.method static ˊ(Landroid/app/Application;)V
    .registers 3

    .prologue
    .line 41
    sput-object p0, Lcom/moat/analytics/mobile/iro/a;->ˏ:Landroid/app/Application;

    .line 42
    sget-boolean v0, Lcom/moat/analytics/mobile/iro/a;->ˋ:Z

    if-nez v0, :cond_13

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/moat/analytics/mobile/iro/a;->ˋ:Z

    .line 44
    sget-object v0, Lcom/moat/analytics/mobile/iro/a;->ˏ:Landroid/app/Application;

    new-instance v1, Lcom/moat/analytics/mobile/iro/a$c;

    invoke-direct {v1}, Lcom/moat/analytics/mobile/iro/a$c;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 46
    :cond_13
    return-void
.end method

.method static synthetic ˋ()Z
    .registers 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/moat/analytics/mobile/iro/a;->ˎ:Z

    return v0
.end method

.method static ˎ()Landroid/app/Application;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/moat/analytics/mobile/iro/a;->ˏ:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic ˎ(Landroid/app/Activity;)Z
    .registers 2

    .prologue
    .line 1054
    sget-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    sget-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    .line 18
    goto :goto_d
.end method

.method static synthetic ˏ()I
    .registers 1

    .prologue
    .line 18
    sget v0, Lcom/moat/analytics/mobile/iro/a;->ॱ:I

    return v0
.end method

.method static synthetic ˏ(Z)Z
    .registers 1

    .prologue
    .line 18
    sput-boolean p0, Lcom/moat/analytics/mobile/iro/a;->ˎ:Z

    return p0
.end method

###### Class com.moat.analytics.mobile.iro.a.c (com.moat.analytics.mobile.iro.a$c)
.class final Lcom/moat/analytics/mobile/iro/a$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ˋ(Z)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 150
    if-eqz p0, :cond_27

    .line 151
    const-string v0, "ActivityState"

    const-string v1, "App became visible"

    invoke-static {v2, v0, v3, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˋ:I

    sget v1, Lcom/moat/analytics/mobile/iro/t$c;->ॱ:I

    if-ne v0, v1, :cond_26

    .line 153
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/j;->ˏ:Z

    if-nez v0, :cond_26

    .line 154
    invoke-static {}, Lcom/moat/analytics/mobile/iro/k;->ˎ()Lcom/moat/analytics/mobile/iro/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/k;->ˋ()V

    .line 164
    :cond_26
    :goto_26
    return-void

    .line 158
    :cond_27
    const-string v0, "ActivityState"

    const-string v1, "App became invisible"

    invoke-static {v2, v0, v3, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    iget v0, v0, Lcom/moat/analytics/mobile/iro/t;->ˋ:I

    sget v1, Lcom/moat/analytics/mobile/iro/t$c;->ॱ:I

    if-ne v0, v1, :cond_26

    .line 160
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/j;->ˏ:Z

    if-nez v0, :cond_26

    .line 161
    invoke-static {}, Lcom/moat/analytics/mobile/iro/k;->ˎ()Lcom/moat/analytics/mobile/iro/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/k;->ˊ()V

    goto :goto_26
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˊ(I)I

    .line 64
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 133
    :try_start_1
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˏ()I

    move-result v0

    if-eq v0, v1, :cond_1c

    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˏ()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    .line 134
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˋ()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 135
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a$c;->ˋ(Z)V

    .line 137
    :cond_18
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˏ(Z)Z

    .line 139
    :cond_1c
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˊ(I)I

    .line 140
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity destroyed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/a;->ˎ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 142
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_55} :catch_56

    .line 147
    :cond_55
    :goto_55
    return-void

    .line 145
    :catch_56
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_55
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 100
    const/4 v0, 0x4

    :try_start_1
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˊ(I)I

    .line 101
    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/a;->ˎ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    .line 104
    :cond_12
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity paused: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    .line 108
    :goto_39
    return-void

    .line 106
    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_39
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    .line 85
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˊ(I)I

    .line 86
    invoke-static {}, Lcom/moat/analytics/mobile/iro/t;->ˋ()Lcom/moat/analytics/mobile/iro/t;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/t;->ˏ()V

    .line 88
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity resumed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-static {}, Lcom/moat/analytics/mobile/iro/MoatAnalytics;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    iget-boolean v0, v0, Lcom/moat/analytics/mobile/iro/j;->ˎ:Z

    if-eqz v0, :cond_46

    .line 90
    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/e;->ˊ(Landroid/app/Activity;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .line 95
    :cond_46
    :goto_46
    return-void

    .line 93
    :catch_47
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_46
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .prologue
    .line 128
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 69
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    .line 70
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˊ(I)I

    .line 71
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˋ()Z

    move-result v0

    if-nez v0, :cond_15

    .line 72
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a$c;->ˋ(Z)V

    .line 74
    :cond_15
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˏ(Z)Z

    .line 75
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity started: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    .line 79
    :goto_40
    return-void

    .line 77
    :catch_41
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_40
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v1, 0x3

    .line 113
    :try_start_1
    invoke-static {}, Lcom/moat/analytics/mobile/iro/a;->ˏ()I

    move-result v0

    if-eq v0, v1, :cond_f

    .line 114
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˏ(Z)Z

    .line 115
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a$c;->ˋ(Z)V

    .line 117
    :cond_f
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/a;->ˊ(I)I

    .line 118
    invoke-static {p1}, Lcom/moat/analytics/mobile/iro/a;->ˎ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/moat/analytics/mobile/iro/a;->ˊ:Ljava/lang/ref/WeakReference;

    .line 121
    :cond_21
    const/4 v0, 0x3

    const-string v1, "ActivityState"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Activity stopped: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    invoke-static {v0, v1, p0, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_48} :catch_49

    .line 125
    :goto_48
    return-void

    .line 123
    :catch_49
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    goto :goto_48
.end method
