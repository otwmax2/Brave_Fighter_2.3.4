###### Class com.chartboost.sdk.b (com.chartboost.sdk.b)
.class public final Lcom/chartboost/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/chartboost/sdk/Model/e;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/chartboost/sdk/Model/e;->y:Z

    if-nez v0, :cond_7

    .line 192
    const-string v0, "native"

    .line 194
    :goto_6
    return-object v0

    :cond_7
    const-string v0, "web"

    goto :goto_6
.end method

.method static a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 33
    sget-object v0, Lcom/chartboost/sdk/i;->d:Lcom/chartboost/sdk/Chartboost$CBFramework;

    if-nez v0, :cond_c

    .line 34
    const-string v0, "CBConfig"

    const-string v1, "Set a valid CBFramework first"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :goto_b
    return-void

    .line 37
    :cond_c
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 38
    const-string v0, "CBConfig"

    const-string v1, "Invalid Version String"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 41
    :cond_1a
    sput-object p0, Lcom/chartboost/sdk/i;->b:Ljava/lang/String;

    goto :goto_b
.end method

.method public static a()Z
    .registers 1

    .prologue
    .line 68
    invoke-static {}, Lcom/chartboost/sdk/b;->b()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 69
    const/4 v0, 0x1

    .line 71
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method static a(Landroid/app/Activity;)Z
    .registers 3

    .prologue
    .line 97
    if-nez p0, :cond_10

    .line 99
    :try_start_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid activity context: Host Activity object is null, Please send a valid activity object"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a} :catch_a

    .line 100
    :catch_a
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 103
    const/4 v0, 0x0

    .line 105
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public static a(Landroid/content/Context;)Z
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-nez p0, :cond_12

    .line 131
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid activity context passed during intitalization"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_c

    .line 161
    :catch_c
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    .line 165
    :cond_11
    return v0

    .line 137
    :cond_12
    :try_start_12
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v2

    const/16 v3, 0x17

    invoke-virtual {v2, v3}, Lcom/chartboost/sdk/impl/s;->a(I)Z

    move-result v2

    if-eqz v2, :cond_67

    .line 138
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 139
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 140
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 141
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 142
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v7

    .line 151
    :goto_42
    if-eqz v2, :cond_8c

    move v2, v0

    :goto_45
    sput-boolean v2, Lcom/chartboost/sdk/i;->n:Z

    .line 152
    if-eqz v5, :cond_8e

    move v2, v0

    :goto_4a
    sput-boolean v2, Lcom/chartboost/sdk/i;->o:Z

    .line 153
    if-eqz v6, :cond_90

    move v2, v0

    :goto_4f
    sput-boolean v2, Lcom/chartboost/sdk/i;->p:Z

    .line 154
    if-eqz v4, :cond_92

    move v2, v0

    :goto_54
    sput-boolean v2, Lcom/chartboost/sdk/i;->q:Z

    .line 155
    if-eqz v3, :cond_94

    move v2, v0

    :goto_59
    sput-boolean v2, Lcom/chartboost/sdk/i;->r:Z

    .line 157
    sget-boolean v2, Lcom/chartboost/sdk/i;->o:Z

    if-eqz v2, :cond_96

    .line 158
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please add the permission : android.permission.INTERNET in your android manifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_67
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    .line 145
    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 146
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    .line 147
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    .line 148
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    move v7, v2

    move v2, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v7

    goto :goto_42

    :cond_8c
    move v2, v1

    .line 151
    goto :goto_45

    :cond_8e
    move v2, v1

    .line 152
    goto :goto_4a

    :cond_90
    move v2, v1

    .line 153
    goto :goto_4f

    :cond_92
    move v2, v1

    .line 154
    goto :goto_54

    :cond_94
    move v2, v1

    .line 155
    goto :goto_59

    .line 159
    :cond_96
    sget-boolean v2, Lcom/chartboost/sdk/i;->p:Z

    if-eqz v2, :cond_11

    .line 160
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Please add the permission : android.permission.ACCESS_NETWORK_STATE in your android manifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_a2} :catch_c
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicReference;Lorg/json/JSONObject;Landroid/content/SharedPreferences;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Lorg/json/JSONObject;",
            "Landroid/content/SharedPreferences;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 59
    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/Model/e;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Model/e;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    .line 60
    const/4 v0, 0x1

    .line 64
    :goto_9
    return v0

    .line 61
    :catch_a
    move-exception v0

    .line 62
    const-class v1, Lcom/chartboost/sdk/b;

    const-string v2, "updateConfig"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 64
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static b()Z
    .registers 2

    .prologue
    .line 113
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v0

    if-nez v0, :cond_14

    .line 114
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. SDK seems to be not initialized properly, check for any integration issues"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    .line 121
    :catch_e
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    const/4 v0, 0x0

    .line 125
    :goto_13
    return v0

    .line 115
    :cond_14
    :try_start_14
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    if-nez v0, :cond_20

    .line 116
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. Activity context seems to be not initialized properly, host activity or application context is being sent as null"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_20
    sget-object v0, Lcom/chartboost/sdk/i;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 118
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppId is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_30
    sget-object v0, Lcom/chartboost/sdk/i;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 120
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "SDK Initialization error. AppSignature is missing"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_40} :catch_e

    .line 125
    :cond_40
    const/4 v0, 0x1

    goto :goto_13
.end method

.method public static b(Landroid/content/Context;)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 176
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 179
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 182
    :goto_16
    return v1

    .line 181
    :cond_17
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 182
    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_40

    iget v2, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_40

    iget v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_40

    iget v2, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_40

    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_40

    const/4 v0, 0x1

    :goto_3e
    move v1, v0

    goto :goto_16

    :cond_40
    move v0, v1

    goto :goto_3e
.end method

.method private static c()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-static {}, Lcom/chartboost/sdk/h;->a()Lcom/chartboost/sdk/h;

    move-result-object v1

    .line 79
    if-nez v1, :cond_8

    .line 90
    :goto_7
    return v0

    .line 82
    :cond_8
    iget-object v1, v1, Lcom/chartboost/sdk/h;->q:Lcom/chartboost/sdk/c;

    iget-object v1, v1, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/Libraries/j;

    if-nez v1, :cond_1b

    .line 84
    :try_start_e
    new-instance v1, Ljava/lang/Exception;

    const-string v2, "Chartboost Weak Activity reference is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_16} :catch_16

    .line 85
    :catch_16
    move-exception v1

    .line 86
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 90
    :cond_1b
    const/4 v0, 0x1

    goto :goto_7
.end method
