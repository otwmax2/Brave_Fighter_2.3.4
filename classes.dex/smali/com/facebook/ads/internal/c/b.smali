###### Class com.facebook.ads.internal.c.b (com.facebook.ads.internal.c.b)
.class public Lcom/facebook/ads/internal/c/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Z

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/facebook/ads/internal/c/b;->b:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/internal/c/b;->c:Z

    const-string v0, ""

    sput-object v0, Lcom/facebook/ads/internal/c/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 5

    const/4 v1, 0x0

    :try_start_1
    const-string v0, "SDKIDFA"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v0, "attributionId"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "attributionId"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    :cond_1a
    const-string v0, "advertisingId"

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    const-string v0, "advertisingId"

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/c/b;->b:Ljava/lang/String;

    const-string v0, "limitAdTracking"

    sget-boolean v3, Lcom/facebook/ads/internal/c/b;->c:Z

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/internal/c/b;->c:Z

    sget-object v0, Lcom/facebook/ads/internal/c/a$c;->a:Lcom/facebook/ads/internal/c/a$c;

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a$c;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/c/b;->d:Ljava/lang/String;
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3e} :catch_c1

    :cond_3e
    :try_start_3e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/c/c;->a(Landroid/content/ContentResolver;)Lcom/facebook/ads/internal/c/c$a;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_45} :catch_a9

    move-result-object v0

    :goto_46
    if-eqz v0, :cond_50

    :try_start_48
    iget-object v3, v0, Lcom/facebook/ads/internal/c/c$a;->a:Ljava/lang/String;

    if-eqz v3, :cond_50

    iget-object v3, v0, Lcom/facebook/ads/internal/c/c$a;->a:Ljava/lang/String;

    sput-object v3, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    :cond_50
    invoke-static {}, Lcom/facebook/ads/internal/q/a/b;->a()Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v3, "aid_override"

    invoke-static {v3}, Lcom/facebook/ads/internal/q/a/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_66

    const-string v3, "aid_override"

    invoke-static {v3}, Lcom/facebook/ads/internal/q/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_66} :catch_c1

    :cond_66
    :try_start_66
    invoke-static {p0, v0}, Lcom/facebook/ads/internal/c/a;->a(Landroid/content/Context;Lcom/facebook/ads/internal/c/c$a;)Lcom/facebook/ads/internal/c/a;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_b5

    move-result-object v0

    :goto_6a
    if-eqz v0, :cond_8c

    :try_start_6c
    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a;->b()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v1, :cond_8c

    sput-object v1, Lcom/facebook/ads/internal/c/b;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/facebook/ads/internal/c/b;->c:Z

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a;->c()Lcom/facebook/ads/internal/c/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/c/a$c;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/internal/c/b;->d:Ljava/lang/String;

    :cond_8c
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "attributionId"

    sget-object v2, Lcom/facebook/ads/internal/c/b;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "advertisingId"

    sget-object v2, Lcom/facebook/ads/internal/c/b;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v1, "limitAdTracking"

    sget-boolean v2, Lcom/facebook/ads/internal/c/b;->c:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_a8
    return-void

    :catch_a9
    move-exception v0

    const-string v3, "Error retrieving attribution id from fb4a"

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V

    move-object v0, v1

    goto :goto_46

    :catch_b5
    move-exception v0

    const-string v3, "Error retrieving advertising id from Google Play Services"

    invoke-static {v0, v3}, Lcom/facebook/ads/internal/j/a;->a(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/facebook/ads/internal/j/a;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/internal/j/b;->a(Lcom/facebook/ads/internal/j/a;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_bf} :catch_c1

    move-object v0, v1

    goto :goto_6a

    :catch_c1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a8
.end method
