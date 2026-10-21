###### Class com.chartboost.sdk.impl.ai (com.chartboost.sdk.impl.ai)
.class public Lcom/chartboost/sdk/impl/ai;
.super Ljava/util/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/ai$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:I

.field private final d:Lcom/chartboost/sdk/impl/ai$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    .line 25
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    .line 30
    new-instance v0, Lcom/chartboost/sdk/impl/ai$a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/ai$a;-><init>(Lcom/chartboost/sdk/impl/ai;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/impl/ai$a;

    .line 31
    return-void
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/Integer;
    .registers 3

    .prologue
    .line 213
    :try_start_0
    const-string v0, "connectivity"

    .line 214
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 216
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 218
    if-eqz v0, :cond_2a

    .line 219
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    .line 221
    :goto_15
    if-eqz v0, :cond_34

    .line 222
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 223
    if-eqz v0, :cond_34

    .line 224
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_28
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_28} :catch_2c

    move-result-object v0

    .line 230
    :goto_29
    return-object v0

    .line 219
    :cond_2a
    const/4 v0, 0x0

    goto :goto_15

    .line 226
    :catch_2c
    move-exception v0

    .line 227
    const-string v0, "CBReachability"

    const-string v1, "Chartboost SDK requires \'android.permission.ACCESS_NETWORK_STATE\' permission set in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_34
    const/4 v0, 0x0

    goto :goto_29
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    return v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 95
    :try_start_1
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 96
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_47

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 100
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/ai;->a(Z)V

    .line 101
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2a

    .line 102
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    .line 103
    const-string v0, "CBReachability"

    const-string v1, "NETWORK TYPE: TYPE_WIFI"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :cond_29
    :goto_29
    return-void

    .line 105
    :cond_2a
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_29

    .line 106
    const/4 v0, 0x2

    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    .line 107
    const-string v0, "CBReachability"

    const-string v1, "NETWORK TYPE: TYPE_MOBILE"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3a
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_3a} :catch_3b

    goto :goto_29

    .line 115
    :catch_3b
    move-exception v0

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    .line 117
    const-string v0, "CBReachability"

    const-string v1, "Chartboost SDK requires \'android.permission.ACCESS_NETWORK_STATE\' permission set in your AndroidManifest.xml"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    .line 111
    :cond_47
    const/4 v0, 0x0

    :try_start_48
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->a(Z)V

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/chartboost/sdk/impl/ai;->c:I

    .line 113
    const-string v0, "CBReachability"

    const-string v1, "NETWORK TYPE: NO Network"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/SecurityException; {:try_start_48 .. :try_end_55} :catch_3b

    goto :goto_29
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    .line 143
    return-void
.end method

.method public b(Landroid/content/Context;)Landroid/content/Intent;
    .registers 5

    .prologue
    .line 163
    if-eqz p1, :cond_1f

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    if-nez v0, :cond_1f

    .line 164
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->b(Z)V

    .line 165
    const-string v0, "CBReachability"

    const-string v1, "Network broadcast successfully registered"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/impl/ai$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 168
    :goto_1e
    return-object v0

    :cond_1f
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public b(Z)V
    .registers 2

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    .line 198
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    return v0
.end method

.method public c(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 177
    if-eqz p1, :cond_16

    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->b:Z

    if-eqz v0, :cond_16

    .line 178
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai;->d:Lcom/chartboost/sdk/impl/ai$a;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/ai;->b(Z)V

    .line 180
    const-string v0, "CBReachability"

    const-string v1, "Network broadcast successfully unregistered"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_16
    return-void
.end method

.method public notifyObservers()V
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/ai;->a:Z

    if-eqz v0, :cond_a

    .line 130
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/ai;->setChanged()V

    .line 131
    invoke-super {p0, p0}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V

    .line 133
    :cond_a
    return-void
.end method

###### Class com.chartboost.sdk.impl.ai.a (com.chartboost.sdk.impl.ai$a)
.class Lcom/chartboost/sdk/impl/ai$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/ai;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/ai;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/chartboost/sdk/impl/ai$a;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 75
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/ai;->a(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/ai$a;->a:Lcom/chartboost/sdk/impl/ai;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/ai;->notifyObservers()V

    .line 81
    return-void
.end method
