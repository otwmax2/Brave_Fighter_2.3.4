###### Class com.google.android.gms.internal.zzaph (com.google.android.gms.internal.zzaph)
.class public Lcom/google/android/gms/internal/zzaph;
.super Ljava/lang/Object;


# static fields
.field private static bjb:Ljava/lang/String;


# direct methods
.method public static zzeu(Landroid/content/Context;)Ljava/lang/String;
    .registers 11

    const/4 v2, 0x0

    const/4 v9, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    :goto_8
    return-object v0

    :cond_9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    const-string v1, "http://www.example.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_c1

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v1, v0

    :goto_25
    invoke-virtual {v3, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_32
    :goto_32
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.support.customtabs.action.CustomTabsService"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v8, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v7, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_32

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_32

    :cond_5d
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    sput-object v2, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    :cond_65
    :goto_65
    sget-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_8

    :cond_68
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_78

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_65

    :cond_78
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-static {p0, v4}, Lcom/google/android/gms/internal/zzaph;->zzq(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    sput-object v1, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_65

    :cond_8d
    const-string v0, "com.android.chrome"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "com.android.chrome"

    sput-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_65

    :cond_9a
    const-string v0, "com.chrome.beta"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a7

    const-string v0, "com.chrome.beta"

    sput-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_65

    :cond_a7
    const-string v0, "com.chrome.dev"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b4

    const-string v0, "com.chrome.dev"

    sput-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_65

    :cond_b4
    const-string v0, "com.google.android.apps.chrome"

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    const-string v0, "com.google.android.apps.chrome"

    sput-object v0, Lcom/google/android/gms/internal/zzaph;->bjb:Ljava/lang/String;

    goto :goto_65

    :cond_c1
    move-object v1, v2

    goto/16 :goto_25
.end method

.method private static zzq(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v2, 0x40

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    :goto_14
    return v0

    :cond_15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v3}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v3

    if-eqz v3, :cond_19

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_37
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_37} :catch_3b

    if-eqz v0, :cond_19

    const/4 v0, 0x1

    goto :goto_14

    :catch_3b
    move-exception v0

    const-string v0, "CustomTabsHelper"

    const-string v2, "Runtime exception while getting specialized handlers"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_43
    move v0, v1

    goto :goto_14
.end method
