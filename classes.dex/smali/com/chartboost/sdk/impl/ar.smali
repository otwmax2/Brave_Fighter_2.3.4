###### Class com.chartboost.sdk.impl.ar (com.chartboost.sdk.impl.ar)
.class public Lcom/chartboost/sdk/impl/ar;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x4

    .line 21
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    .line 23
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    .line 29
    const-string v3, "org.chromium.arc.device_management"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4b

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    if-eqz v3, :cond_3d

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v4, "chromium"

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v4, "chromium"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4b

    :cond_3d
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    if-eqz v3, :cond_4e

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    const-string v4, ".+_cheets"

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 32
    :cond_4b
    const-string v0, "chromebook"

    .line 47
    :goto_4d
    return-object v0

    .line 34
    :cond_4e
    const-string v3, "android.hardware.type.watch"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_59

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5c

    .line 35
    :cond_59
    const-string v0, "watch"

    goto :goto_4d

    .line 37
    :cond_5c
    const-string v3, "android.hardware.type.television"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_66

    if-ne v1, v5, :cond_69

    .line 38
    :cond_66
    const-string v0, "tv"

    goto :goto_4d

    .line 40
    :cond_69
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v0, :cond_77

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_79

    :cond_77
    if-ne v2, v5, :cond_7c

    .line 42
    :cond_79
    const-string v0, "tablet"

    goto :goto_4d

    .line 47
    :cond_7c
    const-string v0, "phone"

    goto :goto_4d
.end method
