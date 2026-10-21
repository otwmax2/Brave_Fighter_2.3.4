###### Class com.facebook.appevents.internal.SourceApplicationInfo (com.facebook.appevents.internal.SourceApplicationInfo)
.class Lcom/facebook/appevents/internal/SourceApplicationInfo;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
    }
.end annotation


# static fields
.field private static final CALL_APPLICATION_PACKAGE_KEY:Ljava/lang/String; = "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

.field private static final OPENED_BY_APP_LINK_KEY:Ljava/lang/String; = "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

.field private static final SOURCE_APPLICATION_HAS_BEEN_SET_BY_THIS_INTENT:Ljava/lang/String; = "_fbSourceApplicationHasBeenSet"


# instance fields
.field private callingApplicationPackage:Ljava/lang/String;

.field private openedByApplink:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "callingApplicationPackage"    # Ljava/lang/String;
    .param p2, "openedByApplink"    # Z

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    .line 47
    iput-boolean p2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    .line 48
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V
    .registers 4
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Lcom/facebook/appevents/internal/SourceApplicationInfo$1;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static clearSavedSourceApplicationInfoFromDisk()V
    .registers 3

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 69
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 71
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 72
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    const-string v2, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 75
    return-void
.end method

.method public static getStoredSourceApplicatioInfo()Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 52
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 55
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v4, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 64
    :goto_11
    return-object v3

    .line 59
    :cond_12
    const-string v4, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "callingApplicationPackage":Ljava/lang/String;
    const-string v3, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 64
    .local v1, "openedByApplink":Z
    new-instance v3, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v3, v0, v1}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;Z)V

    goto :goto_11
.end method


# virtual methods
.method public getCallingApplicationPackage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    return-object v0
.end method

.method public isOpenedByApplink()Z
    .registers 2

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 87
    const-string v0, "Unclassified"

    .line 88
    .local v0, "openType":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    if-eqz v1, :cond_8

    .line 89
    const-string v0, "Applink"

    .line 92
    :cond_8
    iget-object v1, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .end local v0    # "openType":Ljava/lang/String;
    :cond_2b
    return-object v0
.end method

.method public writeSourceApplicationInfoToDisk()V
    .registers 5

    .prologue
    .line 101
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 100
    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 102
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 103
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage"

    iget-object v3, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->callingApplicationPackage:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 104
    const-string v2, "com.facebook.appevents.SourceApplicationInfo.openedByApplink"

    iget-boolean v3, p0, Lcom/facebook/appevents/internal/SourceApplicationInfo;->openedByApplink:Z

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 106
    return-void
.end method

###### Class com.facebook.appevents.internal.SourceApplicationInfo.AnonymousClass1 (com.facebook.appevents.internal.SourceApplicationInfo$1)
.class synthetic Lcom/facebook/appevents/internal/SourceApplicationInfo$1;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.facebook.appevents.internal.SourceApplicationInfo.Factory (com.facebook.appevents.internal.SourceApplicationInfo$Factory)
.class public Lcom/facebook/appevents/internal/SourceApplicationInfo$Factory;
.super Ljava/lang/Object;
.source "SourceApplicationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/internal/SourceApplicationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Landroid/app/Activity;)Lcom/facebook/appevents/internal/SourceApplicationInfo;
    .registers 12
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 110
    const/4 v6, 0x0

    .line 112
    .local v6, "openedByApplink":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 113
    .local v3, "callingApplication":Landroid/content/ComponentName;
    if-nez v3, :cond_a

    .line 145
    :cond_9
    :goto_9
    return-object v7

    .line 117
    :cond_a
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "callingApplicationPackage":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 126
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 127
    .local v5, "openIntent":Landroid/content/Intent;
    if-eqz v5, :cond_42

    const-string v8, "_fbSourceApplicationHasBeenSet"

    const/4 v9, 0x0

    .line 128
    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_42

    .line 131
    const-string v8, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 132
    invoke-static {v5}, Lbolts/AppLinks;->getAppLinkData(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    .line 133
    .local v0, "applinkData":Landroid/os/Bundle;
    if-eqz v0, :cond_42

    .line 134
    const/4 v6, 0x1

    .line 135
    const-string v8, "referer_app_link"

    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 136
    .local v1, "applinkReferrerData":Landroid/os/Bundle;
    if-eqz v1, :cond_42

    .line 137
    const-string v8, "package"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "applinkReferrerPackage":Ljava/lang/String;
    move-object v4, v2

    .line 144
    .end local v0    # "applinkData":Landroid/os/Bundle;
    .end local v1    # "applinkReferrerData":Landroid/os/Bundle;
    .end local v2    # "applinkReferrerPackage":Ljava/lang/String;
    :cond_42
    const-string v8, "_fbSourceApplicationHasBeenSet"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    new-instance v8, Lcom/facebook/appevents/internal/SourceApplicationInfo;

    invoke-direct {v8, v4, v6, v7}, Lcom/facebook/appevents/internal/SourceApplicationInfo;-><init>(Ljava/lang/String;ZLcom/facebook/appevents/internal/SourceApplicationInfo$1;)V

    move-object v7, v8

    goto :goto_9
.end method
