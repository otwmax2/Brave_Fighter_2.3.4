###### Class com.facebook.ads.internal.o.d (com.facebook.ads.internal.o.d)
.class public Lcom/facebook/ads/internal/o/d;
.super Ljava/lang/Object;


# direct methods
.method public static a()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "https://graph.facebook.com/network_ads_common"

    :goto_c
    return-object v0

    :cond_d
    const-string v1, "https://graph.%s.facebook.com/network_ads_common"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public static b()Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v0, "https://www.facebook.com/adnw_logging/"

    :goto_c
    return-object v0

    :cond_d
    const-string v1, "https://www.%s.facebook.com/adnw_logging/"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method
