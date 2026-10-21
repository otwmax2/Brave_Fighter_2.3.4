###### Class com.unity3d.ads.webview.bridge.WebViewBridge (com.unity3d.ads.webview.bridge.WebViewBridge)
.class public Lcom/unity3d/ads/webview/bridge/WebViewBridge;
.super Ljava/lang/Object;
.source "WebViewBridge.java"


# static fields
.field private static _classTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/reflect/Method;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .registers 7
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 49
    sget-object v3, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 50
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v3

    .line 53
    :cond_e
    sget-object v3, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 57
    .local v0, "methodTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;>;"
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 58
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3}, Ljava/lang/NoSuchMethodException;-><init>()V

    throw v3

    .line 60
    :cond_22
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 63
    .local v1, "overrideTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;"
    invoke-static {p2}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->getTypes([Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object v2

    .line 65
    .local v2, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {v2}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/reflect/Method;

    return-object v3
.end method

.method private static getTypes([Ljava/lang/Object;)[Ljava/lang/Class;
    .registers 5
    .param p0, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 70
    if-nez p0, :cond_16

    .line 71
    const/4 v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    .line 76
    .local v1, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_5
    if-eqz p0, :cond_1c

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    array-length v2, p0

    if-ge v0, v2, :cond_1c

    .line 78
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    aput-object v2, v1, v0

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 73
    .end local v0    # "i":I
    .end local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_16
    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Ljava/lang/Class;

    .restart local v1    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_5

    .line 82
    :cond_1c
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    const-class v3, Lcom/unity3d/ads/webview/bridge/WebViewCallback;

    aput-object v3, v1, v2

    .line 84
    return-object v1
.end method

.method private static getValues([Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)[Ljava/lang/Object;
    .registers 6
    .param p0, "parameters"    # [Ljava/lang/Object;
    .param p1, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 89
    if-nez p0, :cond_18

    .line 90
    if-nez p1, :cond_8

    .line 91
    const/4 v0, 0x0

    .line 106
    :cond_7
    :goto_7
    return-object v0

    .line 93
    :cond_8
    new-array v0, v1, [Ljava/lang/Object;

    .line 98
    .local v0, "values":[Ljava/lang/Object;
    :goto_a
    if-eqz p0, :cond_10

    .line 99
    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    :cond_10
    if-eqz p1, :cond_7

    .line 103
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aput-object p1, v0, v1

    goto :goto_7

    .line 95
    .end local v0    # "values":[Ljava/lang/Object;
    :cond_18
    array-length v3, p0

    if-eqz p1, :cond_1f

    :goto_1b
    add-int/2addr v1, v3

    new-array v0, v1, [Ljava/lang/Object;

    .restart local v0    # "values":[Ljava/lang/Object;
    goto :goto_a

    .end local v0    # "values":[Ljava/lang/Object;
    :cond_1f
    move v1, v2

    goto :goto_1b
.end method

.method public static handleCallback(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6
    .param p0, "callbackId"    # Ljava/lang/String;
    .param p1, "callbackStatus"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/unity3d/ads/webview/WebViewApp;->getCallback(Ljava/lang/String;)Lcom/unity3d/ads/webview/bridge/NativeCallback;

    move-result-object v0

    .line 133
    .local v0, "callback":Lcom/unity3d/ads/webview/bridge/NativeCallback;
    const/4 v2, 0x0

    :try_start_9
    invoke-static {p2, v2}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->getValues([Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/unity3d/ads/webview/bridge/NativeCallback;->invoke(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_10} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_10} :catch_11
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_10} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_10} :catch_1a

    .line 138
    return-void

    .line 134
    :catch_11
    move-exception v1

    .line 135
    .local v1, "e":Ljava/lang/Exception;
    :goto_12
    const-string v2, "Error while invoking method"

    invoke-static {v2}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V

    .line 136
    throw v1

    .line 134
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_18
    move-exception v1

    goto :goto_12

    :catch_1a
    move-exception v1

    goto :goto_12

    :catch_1c
    move-exception v1

    goto :goto_12
.end method

.method public static handleInvocation(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)V
    .registers 13
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "parameters"    # [Ljava/lang/Object;
    .param p3, "callback"    # Lcom/unity3d/ads/webview/bridge/WebViewCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    :try_start_4
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->findMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/reflect/Method;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_7} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_7} :catch_36

    move-result-object v1

    .line 120
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_8
    invoke-static {p2, p3}, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->getValues([Ljava/lang/Object;Lcom/unity3d/ads/webview/bridge/WebViewCallback;)[Ljava/lang/Object;

    move-result-object v2

    .line 121
    .local v2, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_10} :catch_38
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_10} :catch_3c
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_10} :catch_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_10} :catch_3a

    .line 126
    return-void

    .line 114
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "values":[Ljava/lang/Object;
    :catch_11
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    :goto_12
    sget-object v3, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->METHOD_NOT_FOUND:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    new-array v4, v8, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    invoke-virtual {p3, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 116
    throw v0

    .line 122
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_20
    move-exception v0

    .line 123
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_21
    sget-object v3, Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;->INVOCATION_FAILED:Lcom/unity3d/ads/webview/bridge/WebViewBridgeError;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p3, v3, v4}, Lcom/unity3d/ads/webview/bridge/WebViewCallback;->error(Ljava/lang/Enum;[Ljava/lang/Object;)V

    .line 124
    throw v0

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_36
    move-exception v0

    goto :goto_12

    .line 122
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_38
    move-exception v0

    goto :goto_21

    :catch_3a
    move-exception v0

    goto :goto_21

    :catch_3c
    move-exception v0

    goto :goto_21
.end method

.method public static setClassTable([Ljava/lang/Class;)V
    .registers 13
    .param p0, "apiClassList"    # [Ljava/lang/Class;

    .prologue
    const/4 v6, 0x0

    .line 16
    if-nez p0, :cond_4

    .line 44
    :cond_3
    return-void

    .line 19
    :cond_4
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    sput-object v5, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    .line 21
    array-length v8, p0

    move v7, v6

    :goto_d
    if-ge v7, v8, :cond_3

    aget-object v0, p0, v7

    .line 22
    .local v0, "cls":Ljava/lang/Class;
    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v9, "com.unity3d.ads"

    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 21
    :cond_23
    :goto_23
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_d

    .line 26
    :cond_27
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 27
    .local v3, "methodTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    array-length v10, v9

    move v5, v6

    :goto_32
    if-ge v5, v10, :cond_69

    aget-object v1, v9, v5

    .line 28
    .local v1, "method":Ljava/lang/reflect/Method;
    const-class v11, Lcom/unity3d/ads/webview/bridge/WebViewExposed;

    invoke-virtual {v1, v11}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    if-eqz v11, :cond_60

    .line 29
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "methodName":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_63

    .line 33
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 38
    .local v4, "overrideTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;"
    :goto_4e
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v4    # "overrideTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;"
    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 35
    .restart local v2    # "methodName":Ljava/lang/String;
    :cond_63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .restart local v4    # "overrideTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;"
    goto :goto_4e

    .line 42
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .end local v2    # "methodName":Ljava/lang/String;
    .end local v4    # "overrideTable":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/reflect/Method;>;"
    :cond_69
    sget-object v5, Lcom/unity3d/ads/webview/bridge/WebViewBridge;->_classTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23
.end method
