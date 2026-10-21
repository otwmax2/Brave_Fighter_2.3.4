###### Class com.unity3d.ads.connectivity.ConnectivityMonitor (com.unity3d.ads.connectivity.ConnectivityMonitor)
.class public Lcom/unity3d/ads/connectivity/ConnectivityMonitor;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# static fields
.field private static _connected:I

.field private static _listeners:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/unity3d/ads/connectivity/IConnectivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private static _listening:Z

.field private static _networkType:I

.field private static _webappMonitoring:Z

.field private static _wifi:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 17
    sput v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    .line 18
    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    .line 19
    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    .line 20
    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    .line 21
    sput v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    return-void
.end method

.method public static addListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .prologue
    .line 30
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    .line 34
    :cond_b
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    .line 36
    return-void
.end method

.method public static connected()V
    .registers 4

    .prologue
    .line 114
    sget v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 129
    .local v0, "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_5
    return-void

    .line 118
    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :cond_6
    const-string v1, "Unity Ads connectivity change: connected"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 120
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    .line 122
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v1, :cond_28

    .line 123
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    check-cast v0, Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .line 124
    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    invoke-interface {v0}, Lcom/unity3d/ads/connectivity/IConnectivityListener;->onConnected()V

    goto :goto_18

    .line 128
    :cond_28
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    sget-boolean v2, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    sget v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    invoke-static {v1, v2, v3}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V

    goto :goto_5
.end method

.method public static connectionStatusChanged()V
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 152
    sget v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    if-eq v5, v4, :cond_6

    .line 176
    .local v0, "cm":Landroid/net/ConnectivityManager;
    .local v2, "ni":Landroid/net/NetworkInfo;
    :cond_5
    :goto_5
    return-void

    .line 156
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "ni":Landroid/net/NetworkInfo;
    :cond_6
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 157
    .restart local v0    # "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 159
    .restart local v2    # "ni":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 160
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v4, :cond_4f

    .line 161
    .local v4, "wifiStatus":Z
    :goto_24
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 162
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v1

    .line 165
    .local v1, "mobileNetworkType":I
    sget-boolean v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    if-ne v4, v5, :cond_40

    sget v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    if-eq v1, v5, :cond_5

    sget-boolean v5, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v5, :cond_5

    .line 169
    :cond_40
    sput-boolean v4, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    .line 170
    sput v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    .line 172
    const-string v5, "Unity Ads connectivity change: network change"

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 174
    sget-object v5, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-static {v5, v4, v1}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V

    goto :goto_5

    .line 160
    .end local v1    # "mobileNetworkType":I
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    .end local v4    # "wifiStatus":Z
    :cond_4f
    const/4 v4, 0x0

    goto :goto_24
.end method

.method public static disconnected()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 134
    sget v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    if-nez v1, :cond_6

    .line 148
    .local v0, "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_5
    return-void

    .line 137
    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :cond_6
    sput v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    .line 139
    const-string v1, "Unity Ads connectivity change: disconnected"

    invoke-static {v1}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 141
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v1, :cond_27

    .line 142
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    check-cast v0, Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .line 143
    .restart local v0    # "listener":Lcom/unity3d/ads/connectivity/IConnectivityListener;
    invoke-interface {v0}, Lcom/unity3d/ads/connectivity/IConnectivityListener;->onDisconnected()V

    goto :goto_17

    .line 147
    :cond_27
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-static {v1, v3, v3}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V

    goto :goto_5
.end method

.method private static initConnectionStatus()V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 90
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    .local v0, "cm":Landroid/net/ConnectivityManager;
    if-nez v0, :cond_11

    .line 109
    :cond_10
    :goto_10
    return-void

    .line 96
    :cond_11
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 98
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_40

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_40

    .line 99
    sput v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    .line 100
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    if-ne v5, v3, :cond_3e

    :goto_25
    sput-boolean v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    .line 102
    sget-boolean v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_wifi:Z

    if-nez v3, :cond_10

    .line 103
    invoke-static {}, Lcom/unity3d/ads/properties/ClientProperties;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 104
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    sput v3, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_networkType:I

    goto :goto_10

    .end local v2    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3e
    move v3, v4

    .line 100
    goto :goto_25

    .line 107
    :cond_40
    sput v4, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_connected:I

    goto :goto_10
.end method

.method public static removeListener(Lcom/unity3d/ads/connectivity/IConnectivityListener;)V
    .registers 2
    .param p0, "listener"    # Lcom/unity3d/ads/connectivity/IConnectivityListener;

    .prologue
    .line 39
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-nez v0, :cond_5

    .line 45
    :goto_4
    return-void

    .line 43
    :cond_5
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 44
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    goto :goto_4
.end method

.method private static sendToWebview(Lcom/unity3d/ads/connectivity/ConnectivityEvent;ZI)V
    .registers 10
    .param p0, "eventType"    # Lcom/unity3d/ads/connectivity/ConnectivityEvent;
    .param p1, "wifi"    # Z
    .param p2, "networkType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    sget-boolean v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v1, :cond_8

    .line 213
    :cond_7
    :goto_7
    return-void

    .line 183
    :cond_8
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v0

    .line 186
    .local v0, "webViewApp":Lcom/unity3d/ads/webview/WebViewApp;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/unity3d/ads/webview/WebViewApp;->isWebAppLoaded()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 190
    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I

    invoke-virtual {p0}, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_86

    goto :goto_7

    .line 192
    :pswitch_20
    if-eqz p1, :cond_38

    .line 193
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 195
    :cond_38
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 200
    :pswitch_4e
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 204
    :pswitch_58
    if-eqz p1, :cond_70

    .line 205
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 207
    :cond_70
    sget-object v1, Lcom/unity3d/ads/webview/WebViewEventCategory;->CONNECTIVITY:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_7

    .line 190
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_20
        :pswitch_4e
        :pswitch_58
    .end packed-switch
.end method

.method public static setConnectionMonitoring(Z)V
    .registers 1
    .param p0, "monitoring"    # Z

    .prologue
    .line 25
    sput-boolean p0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    .line 26
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    .line 27
    return-void
.end method

.method private static startListening()V
    .registers 2

    .prologue
    .line 62
    sget-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    if-eqz v0, :cond_5

    .line 74
    :goto_4
    return-void

    .line 65
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    .line 67
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->initConnectionStatus()V

    .line 69
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_15

    .line 70
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->register()V

    goto :goto_4

    .line 72
    :cond_15
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->register()V

    goto :goto_4
.end method

.method public static stopAll()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    .line 50
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->updateListeningStatus()V

    .line 51
    return-void
.end method

.method private static stopListening()V
    .registers 2

    .prologue
    .line 77
    sget-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    if-nez v0, :cond_5

    .line 87
    :goto_4
    return-void

    .line 80
    :cond_5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listening:Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_12

    .line 83
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityChangeReceiver;->unregister()V

    goto :goto_4

    .line 85
    :cond_12
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityNetworkCallback;->unregister()V

    goto :goto_4
.end method

.method private static updateListeningStatus()V
    .registers 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_webappMonitoring:Z

    if-nez v0, :cond_10

    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    if-eqz v0, :cond_14

    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->_listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 55
    :cond_10
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->startListening()V

    .line 59
    :goto_13
    return-void

    .line 57
    :cond_14
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityMonitor;->stopListening()V

    goto :goto_13
.end method

###### Class com.unity3d.ads.connectivity.ConnectivityMonitor.AnonymousClass1 (com.unity3d.ads.connectivity.ConnectivityMonitor$1)
.class synthetic Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;
.super Ljava/lang/Object;
.source "ConnectivityMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/ads/connectivity/ConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 190
    invoke-static {}, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->values()[Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I

    :try_start_9
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I

    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->CONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-virtual {v1}, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_2f

    :goto_14
    :try_start_14
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I

    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->DISCONNECTED:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-virtual {v1}, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_2d

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/unity3d/ads/connectivity/ConnectivityMonitor$1;->$SwitchMap$com$unity3d$ads$connectivity$ConnectivityEvent:[I

    sget-object v1, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->NETWORK_CHANGE:Lcom/unity3d/ads/connectivity/ConnectivityEvent;

    invoke-virtual {v1}, Lcom/unity3d/ads/connectivity/ConnectivityEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_2b

    :goto_2a
    return-void

    :catch_2b
    move-exception v0

    goto :goto_2a

    :catch_2d
    move-exception v0

    goto :goto_1f

    :catch_2f
    move-exception v0

    goto :goto_14
.end method
