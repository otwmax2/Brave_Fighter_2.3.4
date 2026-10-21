###### Class com.chartboost.sdk.impl.ap (com.chartboost.sdk.impl.ap)
.class public Lcom/chartboost/sdk/impl/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/chartboost/sdk/Libraries/d;

.field final b:Lcom/chartboost/sdk/impl/ai;

.field final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;"
        }
    .end annotation
.end field

.field final d:Landroid/content/SharedPreferences;

.field final e:Lcom/chartboost/sdk/Libraries/i;

.field final f:Ljava/lang/String;

.field final g:Ljava/lang/String;

.field final h:Ljava/lang/String;

.field final i:Ljava/lang/String;

.field j:Ljava/lang/String;

.field k:Ljava/lang/String;

.field final l:Ljava/lang/String;

.field final m:Ljava/lang/Integer;

.field final n:Ljava/lang/Integer;

.field final o:Ljava/lang/Integer;

.field final p:Ljava/lang/Integer;

.field final q:Ljava/lang/String;

.field final r:Ljava/lang/Float;

.field final s:Ljava/lang/String;

.field final t:Ljava/lang/String;

.field final u:Ljava/lang/String;

.field final v:Lorg/json/JSONObject;

.field final w:Z

.field final x:Ljava/lang/String;

.field final y:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/chartboost/sdk/Libraries/d;Lcom/chartboost/sdk/impl/ai;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/SharedPreferences;Lcom/chartboost/sdk/Libraries/i;)V
    .registers 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/d;",
            "Lcom/chartboost/sdk/impl/ai;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/chartboost/sdk/Model/e;",
            ">;",
            "Landroid/content/SharedPreferences;",
            "Lcom/chartboost/sdk/Libraries/i;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p3, p0, Lcom/chartboost/sdk/impl/ap;->a:Lcom/chartboost/sdk/Libraries/d;

    .line 78
    iput-object p4, p0, Lcom/chartboost/sdk/impl/ap;->b:Lcom/chartboost/sdk/impl/ai;

    .line 79
    iput-object p5, p0, Lcom/chartboost/sdk/impl/ap;->c:Ljava/util/concurrent/atomic/AtomicReference;

    .line 80
    iput-object p6, p0, Lcom/chartboost/sdk/impl/ap;->d:Landroid/content/SharedPreferences;

    .line 81
    move-object/from16 v0, p7

    iput-object v0, p0, Lcom/chartboost/sdk/impl/ap;->e:Lcom/chartboost/sdk/Libraries/i;

    .line 83
    iput-object p2, p0, Lcom/chartboost/sdk/impl/ap;->s:Ljava/lang/String;

    .line 85
    const-string v1, "sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "google_sdk"

    sget-object v2, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    if-eqz v1, :cond_1c9

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v2, "Genymotion"

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1c9

    .line 87
    :cond_33
    const-string v1, "Android Simulator"

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Ljava/lang/String;

    .line 91
    :goto_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->t:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ar;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->u:Ljava/lang/String;

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->g:Ljava/lang/String;

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->h:Ljava/lang/String;

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->i:Ljava/lang/String;

    .line 96
    const-string v1, "7.2.0"

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->l:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->r:Ljava/lang/Float;

    .line 99
    :try_start_99
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    .line 101
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 102
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/chartboost/sdk/impl/ap;->j:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->k:Ljava/lang/String;
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_ad} :catch_1cf

    .line 111
    :goto_ad
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 112
    if-eqz v1, :cond_1e4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v2

    if-eqz v2, :cond_1e4

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e4

    .line 114
    const/4 v2, 0x0

    .line 116
    :try_start_c5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c8} :catch_1d9

    move-result-object v2

    move-object v4, v2

    .line 121
    :goto_ca
    const/4 v3, 0x0

    .line 122
    const/4 v2, 0x0

    .line 123
    if-eqz v4, :cond_df

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_df

    .line 124
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v4, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 125
    const/4 v2, 0x3

    invoke-virtual {v4, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    :cond_df
    const/4 v4, 0x5

    new-array v4, v4, [Lcom/chartboost/sdk/Libraries/e$a;

    const/4 v5, 0x0

    const-string v6, "carrier-name"

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mobile-country-code"

    .line 129
    invoke-static {v6, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v4, v5

    const/4 v3, 0x2

    const-string v5, "mobile-network-code"

    .line 130
    invoke-static {v5, v2}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v2

    aput-object v2, v4, v3

    const/4 v2, 0x3

    const-string v3, "iso-country-code"

    .line 131
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x4

    const-string v3, "phone-type"

    .line 132
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    aput-object v1, v4, v2

    .line 128
    invoke-static {v4}, Lcom/chartboost/sdk/Libraries/e;->a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;

    move-result-object v1

    .line 136
    :goto_123
    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->v:Lorg/json/JSONObject;

    .line 138
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->c()Z

    move-result v1

    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/ap;->w:Z

    .line 139
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBUtility;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->x:Ljava/lang/String;

    .line 140
    invoke-static {p1}, Lcom/chartboost/sdk/impl/ai;->d(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->y:Ljava/lang/Integer;

    .line 141
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 143
    :try_start_139
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_1fe

    .line 144
    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .line 145
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 146
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 148
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I
    :try_end_158
    .catch Ljava/lang/Exception; {:try_start_139 .. :try_end_158} :catch_1eb

    move-result v1

    move v2, v3

    :goto_15a
    move v3, v1

    move v4, v2

    .line 156
    :goto_15c
    invoke-static {}, Lcom/chartboost/sdk/g;->a()Lcom/chartboost/sdk/g;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/DisplayMetrics;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    .line 159
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-lt v2, v5, :cond_18d

    .line 163
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 164
    if-eqz v2, :cond_18d

    .line 165
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 168
    :cond_18d
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 169
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 171
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/chartboost/sdk/impl/ap;->o:Ljava/lang/Integer;

    .line 172
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, p0, Lcom/chartboost/sdk/impl/ap;->p:Ljava/lang/Integer;

    .line 173
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->q:Ljava/lang/String;

    .line 175
    if-lez v4, :cond_1fa

    if-gt v4, v5, :cond_1fa

    .line 176
    :goto_1b8
    if-lez v3, :cond_1fc

    if-gt v3, v2, :cond_1fc

    .line 178
    :goto_1bc
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->m:Ljava/lang/Integer;

    .line 179
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->n:Ljava/lang/Integer;

    .line 180
    return-void

    .line 89
    :cond_1c9
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v1, p0, Lcom/chartboost/sdk/impl/ap;->f:Ljava/lang/String;

    goto/16 :goto_37

    .line 104
    :catch_1cf
    move-exception v1

    .line 105
    const-string v2, "RequestBody"

    const-string v3, "Exception raised getting package mager object"

    invoke-static {v2, v3, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_ad

    .line 117
    :catch_1d9
    move-exception v3

    .line 119
    const-class v4, Lcom/chartboost/sdk/Chartboost;

    const-string v5, "Unable to retrieve sim operator information"

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    move-object v4, v2

    goto/16 :goto_ca

    .line 134
    :cond_1e4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    goto/16 :goto_123

    .line 151
    :catch_1eb
    move-exception v1

    move-object v8, v1

    move v1, v3

    move-object v3, v8

    .line 153
    const-string v4, "RequestBody"

    const-string v5, "Exception getting activity size"

    invoke-static {v4, v5, v3}, Lcom/chartboost/sdk/Libraries/CBLogging;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v3, v2

    move v4, v1

    goto/16 :goto_15c

    :cond_1fa
    move v4, v5

    .line 175
    goto :goto_1b8

    :cond_1fc
    move v3, v2

    .line 176
    goto :goto_1bc

    :cond_1fe
    move v1, v2

    move v2, v3

    goto/16 :goto_15a
.end method
