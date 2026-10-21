###### Class com.chartboost.sdk.Libraries.d (com.chartboost.sdk.Libraries.d)
.class public Lcom/chartboost/sdk/Libraries/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/d$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/SharedPreferences;

.field private b:Lcom/chartboost/sdk/Libraries/d$a;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 38
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->f()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 177
    new-instance v0, Lcom/chartboost/sdk/Libraries/a;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Libraries/a;-><init>(Landroid/content/Context;)V

    .line 178
    iget v1, v0, Lcom/chartboost/sdk/Libraries/a;->a:I

    iput v1, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 179
    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    .line 181
    :cond_13
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 192
    const-string v1, "limit_ad_tracking"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 193
    if-nez v1, :cond_1a

    .line 195
    const/4 v1, 0x0

    iput v1, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 196
    const-string v1, "advertising_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    .line 208
    :goto_19
    return-void

    .line 198
    :cond_1a
    if-ne v1, v2, :cond_22

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 201
    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    goto :goto_19

    .line 205
    :cond_22
    const/4 v0, 0x1

    iput v0, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 206
    iput-object v3, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    goto :goto_19
.end method

.method private d()Ljava/lang/String;
    .registers 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    if-nez v0, :cond_31

    .line 140
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_31

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    const-string v1, "cbUUID"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    if-nez v0, :cond_31

    .line 143
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 145
    const-string v1, "cbUUID"

    iget-object v2, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 150
    :cond_31
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .registers 4

    .prologue
    .line 159
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 161
    const-string v1, "Amazon"

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 163
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->b(Landroid/content/Context;)V

    .line 173
    :cond_f
    :goto_f
    return-void

    .line 166
    :cond_10
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->a(Landroid/content/Context;)V

    .line 167
    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 170
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Libraries/d;->b(Landroid/content/Context;)V

    goto :goto_f
.end method

.method private f()Z
    .registers 3

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 213
    :try_start_1
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_6} :catch_d

    move-result-object v0

    .line 217
    :goto_7
    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a

    .line 214
    :catch_d
    move-exception v1

    goto :goto_7
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->f()Z

    move-result v0

    if-nez v0, :cond_19

    .line 57
    :try_start_6
    new-instance v0, Ljava/lang/ClassNotFoundException;

    const-string v1, "Google play services library is missing. Unable to find class com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_e} :catch_e

    .line 58
    :catch_e
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 62
    const-string v0, "CBIdentity"

    const-string v1, "WARNING: It looks like you\'ve forgotten to include the Google Play Services library in your project. Please review the SDK documentation for more details."

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/CBLogging;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_19
    return-void
.end method

.method public declared-synchronized b()Lcom/chartboost/sdk/Libraries/d$a;
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    monitor-enter p0

    .line 90
    :try_start_3
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_7c

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->c:Ljava/lang/String;

    move-object v3, v0

    .line 100
    :goto_12
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->e()V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    if-eqz v0, :cond_91

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 102
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget-object v0, v0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    .line 108
    :goto_2f
    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-eqz v4, :cond_98

    iget-object v4, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    iget v4, v4, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    iget v5, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    if-eq v4, v5, :cond_98

    .line 112
    :goto_3b
    if-nez v1, :cond_41

    iget-object v1, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    if-nez v1, :cond_78

    .line 114
    :cond_41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 115
    if-eqz v3, :cond_51

    sget-boolean v2, Lcom/chartboost/sdk/i;->x:Z

    if-nez v2, :cond_51

    .line 116
    const-string v2, "uuid"

    invoke-static {v1, v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    :cond_51
    if-eqz v0, :cond_5c

    sget-boolean v2, Lcom/chartboost/sdk/i;->x:Z

    if-nez v2, :cond_5c

    .line 119
    const-string v2, "gaid"

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    :cond_5c
    new-instance v2, Lcom/chartboost/sdk/Libraries/d$a;

    iget v4, p0, Lcom/chartboost/sdk/Libraries/d;->c:I

    .line 123
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v5, 0x0

    invoke-static {v1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    sget-boolean v5, Lcom/chartboost/sdk/i;->x:Z

    if-eqz v5, :cond_73

    const-string v0, "000000000"

    :cond_73
    invoke-direct {v2, v4, v1, v3, v0}, Lcom/chartboost/sdk/Libraries/d$a;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;

    .line 127
    :cond_78
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->b:Lcom/chartboost/sdk/Libraries/d$a;
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_95

    monitor-exit p0

    return-object v0

    .line 93
    :cond_7c
    :try_start_7c
    invoke-virtual {p0}, Lcom/chartboost/sdk/Libraries/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_8a

    const-string v2, "9774d56d682e549c"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8e

    .line 95
    :cond_8a
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/d;->d()Ljava/lang/String;

    move-result-object v0

    :cond_8e
    move-object v3, v0

    move v2, v1

    .line 96
    goto :goto_12

    .line 104
    :cond_91
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/d;->d:Ljava/lang/String;
    :try_end_93
    .catchall {:try_start_7c .. :try_end_93} :catchall_95

    move v2, v1

    .line 105
    goto :goto_2f

    .line 86
    :catchall_95
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_98
    move v1, v2

    goto :goto_3b
.end method

.method public c()Ljava/lang/String;
    .registers 3

    .prologue
    .line 131
    sget-object v0, Lcom/chartboost/sdk/i;->m:Landroid/content/Context;

    .line 133
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    return-object v0
.end method

###### Class com.chartboost.sdk.Libraries.d.a (com.chartboost.sdk.Libraries.d$a)
.class public Lcom/chartboost/sdk/Libraries/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/chartboost/sdk/Libraries/d$a;->a:I

    .line 76
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/d$a;->b:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/chartboost/sdk/Libraries/d$a;->c:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/chartboost/sdk/Libraries/d$a;->d:Ljava/lang/String;

    .line 79
    return-void
.end method
