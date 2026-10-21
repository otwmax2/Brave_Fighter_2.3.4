###### Class com.vungle.publisher.zj (com.vungle.publisher.zj)
.class public Lcom/vungle/publisher/zj;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(Landroid/content/Context;)Z
    .registers 3

    .prologue
    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_e

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    .line 18
    :goto_f
    return v0

    .line 19
    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 24
    invoke-static {p0}, Lcom/vungle/publisher/zj;->d(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static c(Landroid/content/Context;)Z
    .registers 2

    .prologue
    .line 28
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 30
    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    .line 28
    :goto_11
    return v0

    .line 30
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static d(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    .prologue
    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_12

    .line 40
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_12
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1f

    .line 44
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_1f
    invoke-static {p0}, Lcom/vungle/publisher/zj;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 47
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 50
    const-string v1, "Vungle"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Make sure to add <uses-permission> for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    .line 51
    invoke-static {v3, v0}, Lcom/vungle/publisher/zk;->a(Ljava/lang/String;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" in your AndroidManifest.xml? AND request if revoked in the runtime, which might be possible on Android Marshmallow (API 23) and above."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lcom/vungle/publisher/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_54
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
