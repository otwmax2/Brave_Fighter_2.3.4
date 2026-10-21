###### Class com.moat.analytics.mobile.iro.n (com.moat.analytics.mobile.iro.n)
.class final Lcom/moat/analytics/mobile/iro/n;
.super Lcom/moat/analytics/mobile/iro/MoatFactory;
.source ""


# direct methods
.method constructor <init>()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/iro/o;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/moat/analytics/mobile/iro/MoatFactory;-><init>()V

    .line 1142
    invoke-static {}, Lcom/moat/analytics/mobile/iro/j;->getInstance()Lcom/moat/analytics/mobile/iro/MoatAnalytics;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/j;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/iro/j;->ˊ()Z

    move-result v0

    .line 27
    if-nez v0, :cond_35

    .line 28
    const-string v0, "Failed to initialize MoatFactory"

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", SDK was not started"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    const-string v2, "[ERROR] "

    const-string v3, "Factory"

    .line 2055
    const/4 v4, 0x3

    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 2056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v1, Lcom/moat/analytics/mobile/iro/o;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/iro/o;-><init>(Ljava/lang/String;)V

    throw v1

    .line 33
    :cond_35
    return-void
.end method


# virtual methods
.method public final createCustomTracker(Lcom/moat/analytics/mobile/iro/m;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/moat/analytics/mobile/iro/m",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 73
    .line 2138
    :try_start_0
    invoke-interface {p1}, Lcom/moat/analytics/mobile/iro/m;->create()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 76
    :goto_4
    return-object v0

    .line 75
    :catch_5
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 76
    invoke-interface {p1}, Lcom/moat/analytics/mobile/iro/m;->createNoOp()Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method

.method public final createNativeDisplayTracker(Landroid/view/View;Ljava/util/Map;)Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;
    .registers 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;"
        }
    .end annotation

    .prologue
    .line 55
    .line 2111
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2112
    new-instance v1, Lcom/moat/analytics/mobile/iro/n$5;

    invoke-direct {v1, p0, v0, p2}, Lcom/moat/analytics/mobile/iro/n$5;-><init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V

    .line 2122
    const-class v0, Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/s;->ˊ(Lcom/moat/analytics/mobile/iro/s$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 58
    :goto_12
    return-object v0

    .line 57
    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 58
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$a;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$a;-><init>()V

    goto :goto_12
.end method

.method public final createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/iro/NativeVideoTracker;
    .registers 4

    .prologue
    .line 64
    .line 2126
    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/iro/n$2;

    invoke-direct {v0, p0, p1}, Lcom/moat/analytics/mobile/iro/n$2;-><init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/String;)V

    .line 2134
    const-class v1, Lcom/moat/analytics/mobile/iro/NativeVideoTracker;

    invoke-static {v0, v1}, Lcom/moat/analytics/mobile/iro/s;->ˊ(Lcom/moat/analytics/mobile/iro/s$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/NativeVideoTracker;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 67
    :goto_d
    return-object v0

    .line 66
    :catch_e
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 67
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$c;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$c;-><init>()V

    goto :goto_d
.end method

.method public final createWebAdTracker(Landroid/view/ViewGroup;)Lcom/moat/analytics/mobile/iro/WebAdTracker;
    .registers 4
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 46
    .line 2096
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2097
    new-instance v1, Lcom/moat/analytics/mobile/iro/n$4;

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/iro/n$4;-><init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/ref/WeakReference;)V

    .line 2107
    const-class v0, Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/s;->ˊ(Lcom/moat/analytics/mobile/iro/s$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/WebAdTracker;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 49
    :goto_12
    return-object v0

    .line 48
    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 49
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$b;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$b;-><init>()V

    goto :goto_12
.end method

.method public final createWebAdTracker(Landroid/webkit/WebView;)Lcom/moat/analytics/mobile/iro/WebAdTracker;
    .registers 4
    .param p1    # Landroid/webkit/WebView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    .line 2081
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2082
    new-instance v1, Lcom/moat/analytics/mobile/iro/n$3;

    invoke-direct {v1, p0, v0}, Lcom/moat/analytics/mobile/iro/n$3;-><init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/ref/WeakReference;)V

    .line 2092
    const-class v0, Lcom/moat/analytics/mobile/iro/WebAdTracker;

    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/s;->ˊ(Lcom/moat/analytics/mobile/iro/s$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/moat/analytics/mobile/iro/WebAdTracker;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 40
    :goto_12
    return-object v0

    .line 39
    :catch_13
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    .line 40
    new-instance v0, Lcom/moat/analytics/mobile/iro/NoOp$b;

    invoke-direct {v0}, Lcom/moat/analytics/mobile/iro/NoOp$b;-><init>()V

    goto :goto_12
.end method

###### Class com.moat.analytics.mobile.iro.n.AnonymousClass2 (com.moat.analytics.mobile.iro.n$2)
.class final Lcom/moat/analytics/mobile/iro/n$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/s$a",
        "<",
        "Lcom/moat/analytics/mobile/iro/NativeVideoTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Lcom/moat/analytics/mobile/iro/n;

.field private synthetic ˏ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 126
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/n$2;->ˊ:Lcom/moat/analytics/mobile/iro/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/n$2;->ˏ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ()Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/iro/NativeVideoTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const-string v0, "Attempting to create NativeVideoTracker"

    .line 129
    const-string v1, "[INFO] "

    const-string v2, "Factory"

    .line 1055
    const/4 v3, 0x3

    invoke-static {v3, v2, p0, v0}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v1, v0}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/moat/analytics/mobile/iro/q;

    iget-object v1, p0, Lcom/moat/analytics/mobile/iro/n$2;->ˏ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/iro/q;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.iro.n.AnonymousClass3 (com.moat.analytics.mobile.iro.n$3)
.class final Lcom/moat/analytics/mobile/iro/n$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/s$a",
        "<",
        "Lcom/moat/analytics/mobile/iro/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Lcom/moat/analytics/mobile/iro/n;

.field private synthetic ˎ:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .prologue
    .line 82
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/n$3;->ˊ:Lcom/moat/analytics/mobile/iro/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/n$3;->ˎ:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ()Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/iro/WebAdTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/n$3;->ˎ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to create WebAdTracker for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ॱ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    const-string v2, "[INFO] "

    const-string v3, "Factory"

    .line 1055
    const/4 v4, 0x3

    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v1, Lcom/moat/analytics/mobile/iro/x;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/iro/x;-><init>(Landroid/webkit/WebView;)V

    .line 89
    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.iro.n.AnonymousClass4 (com.moat.analytics.mobile.iro.n$4)
.class final Lcom/moat/analytics/mobile/iro/n$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/s$a",
        "<",
        "Lcom/moat/analytics/mobile/iro/WebAdTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Ljava/lang/ref/WeakReference;

.field private synthetic ˋ:Lcom/moat/analytics/mobile/iro/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/ref/WeakReference;)V
    .registers 3

    .prologue
    .line 97
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/n$4;->ˋ:Lcom/moat/analytics/mobile/iro/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/n$4;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ()Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/iro/WebAdTracker;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/moat/analytics/mobile/iro/o;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/n$4;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to create WebAdTracker for adContainer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ॱ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 102
    const-string v2, "[INFO] "

    const-string v3, "Factory"

    .line 1055
    const/4 v4, 0x3

    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    new-instance v1, Lcom/moat/analytics/mobile/iro/x;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/iro/x;-><init>(Landroid/view/ViewGroup;)V

    .line 104
    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method

###### Class com.moat.analytics.mobile.iro.n.AnonymousClass5 (com.moat.analytics.mobile.iro.n$5)
.class final Lcom/moat/analytics/mobile/iro/n$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/moat/analytics/mobile/iro/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/iro/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moat/analytics/mobile/iro/s$a",
        "<",
        "Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic ˊ:Ljava/lang/ref/WeakReference;

.field private synthetic ˋ:Ljava/util/Map;

.field private synthetic ˎ:Lcom/moat/analytics/mobile/iro/n;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/iro/n;Ljava/lang/ref/WeakReference;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 112
    iput-object p1, p0, Lcom/moat/analytics/mobile/iro/n$5;->ˎ:Lcom/moat/analytics/mobile/iro/n;

    iput-object p2, p0, Lcom/moat/analytics/mobile/iro/n$5;->ˊ:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/moat/analytics/mobile/iro/n$5;->ˋ:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ˏ()Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Lcom/moat/analytics/mobile/iro/NativeDisplayTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/moat/analytics/mobile/iro/n$5;->ˊ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempting to create NativeDisplayTracker for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/b;->ॱ(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    const-string v2, "[INFO] "

    const-string v3, "Factory"

    .line 1055
    const/4 v4, 0x3

    invoke-static {v4, v3, p0, v1}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 1056
    invoke-static {v2, v1}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v1, Lcom/moat/analytics/mobile/iro/r;

    iget-object v2, p0, Lcom/moat/analytics/mobile/iro/n$5;->ˋ:Ljava/util/Map;

    invoke-direct {v1, v0, v2}, Lcom/moat/analytics/mobile/iro/r;-><init>(Landroid/view/View;Ljava/util/Map;)V

    .line 119
    invoke-static {v1}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v0

    return-object v0
.end method
