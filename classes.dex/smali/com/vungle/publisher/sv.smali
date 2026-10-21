###### Class com.vungle.publisher.sv (com.vungle.publisher.sv)
.class public Lcom/vungle/publisher/sv;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/sz;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Landroid/net/ConnectivityManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/ta;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Landroid/telephony/TelephonyManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->c()Lcom/vungle/publisher/inject/w;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/inject/w;->a(Lcom/vungle/publisher/sv;)V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/sy;
    .registers 6

    .prologue
    .line 36
    const/4 v0, 0x0

    .line 38
    :try_start_1
    iget-object v1, p0, Lcom/vungle/publisher/sv;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 39
    if-eqz v1, :cond_28

    .line 40
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 41
    sparse-switch v1, :sswitch_data_38

    .line 50
    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown connectivity type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_28
    :goto_28
    return-object v0

    .line 44
    :sswitch_29
    sget-object v0, Lcom/vungle/publisher/sy;->b:Lcom/vungle/publisher/sy;

    goto :goto_28

    .line 47
    :sswitch_2c
    sget-object v0, Lcom/vungle/publisher/sy;->a:Lcom/vungle/publisher/sy;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    goto :goto_28

    .line 54
    :catch_2f
    move-exception v1

    .line 55
    const-string v2, "VungleNetwork"

    const-string v3, "error getting connectivity type"

    invoke-static {v2, v3, v1}, Lcom/vungle/publisher/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_28

    .line 41
    :sswitch_data_38
    .sparse-switch
        0x0 -> :sswitch_2c
        0x1 -> :sswitch_29
        0x6 -> :sswitch_29
    .end sparse-switch
.end method

.method public b()Z
    .registers 2
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/sv;->a:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/vungle/publisher/sv;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
