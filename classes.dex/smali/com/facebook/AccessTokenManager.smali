###### Class com.facebook.AccessTokenManager (com.facebook.AccessTokenManager)
.class final Lcom/facebook/AccessTokenManager;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AccessTokenManager$RefreshResult;
    }
.end annotation


# static fields
.field static final ACTION_CURRENT_ACCESS_TOKEN_CHANGED:Ljava/lang/String; = "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

.field static final EXTRA_NEW_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

.field static final EXTRA_OLD_ACCESS_TOKEN:Ljava/lang/String; = "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

.field private static final ME_PERMISSIONS_GRAPH_PATH:Ljava/lang/String; = "me/permissions"

.field static final SHARED_PREFERENCES_NAME:Ljava/lang/String; = "com.facebook.AccessTokenManager.SharedPreferences"

.field static final TAG:Ljava/lang/String; = "AccessTokenManager"

.field private static final TOKEN_EXTEND_GRAPH_PATH:Ljava/lang/String; = "oauth/access_token"

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field private static volatile instance:Lcom/facebook/AccessTokenManager;


# instance fields
.field private final accessTokenCache:Lcom/facebook/AccessTokenCache;

.field private currentAccessToken:Lcom/facebook/AccessToken;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

.field private tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/AccessTokenCache;)V
    .registers 7
    .param p1, "localBroadcastManager"    # Landroid/support/v4/content/LocalBroadcastManager;
    .param p2, "accessTokenCache"    # Lcom/facebook/AccessTokenCache;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 73
    const-string v0, "localBroadcastManager"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    const-string v0, "accessTokenCache"

    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iput-object p1, p0, Lcom/facebook/AccessTokenManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    .line 77
    iput-object p2, p0, Lcom/facebook/AccessTokenManager;->accessTokenCache:Lcom/facebook/AccessTokenCache;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/AccessTokenManager;
    .param p1, "x1"    # Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/AccessTokenManager;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private static createExtendAccessTokenRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 8
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 182
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 183
    .local v3, "parameters":Landroid/os/Bundle;
    const-string v0, "grant_type"

    const-string v1, "fb_extend_sso_token"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "oauth/access_token"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method private static createGrantedPermissionsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;
    .registers 8
    .param p0, "accessToken"    # Lcom/facebook/AccessToken;
    .param p1, "callback"    # Lcom/facebook/GraphRequest$Callback;

    .prologue
    .line 169
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v3, "parameters":Landroid/os/Bundle;
    new-instance v0, Lcom/facebook/GraphRequest;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    return-object v0
.end method

.method static getInstance()Lcom/facebook/AccessTokenManager;
    .registers 5

    .prologue
    .line 81
    sget-object v3, Lcom/facebook/AccessTokenManager;->instance:Lcom/facebook/AccessTokenManager;

    if-nez v3, :cond_20

    .line 82
    const-class v4, Lcom/facebook/AccessTokenManager;

    monitor-enter v4

    .line 83
    :try_start_7
    sget-object v3, Lcom/facebook/AccessTokenManager;->instance:Lcom/facebook/AccessTokenManager;

    if-nez v3, :cond_1f

    .line 84
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 85
    .local v1, "applicationContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    .line 87
    .local v2, "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    new-instance v0, Lcom/facebook/AccessTokenCache;

    invoke-direct {v0}, Lcom/facebook/AccessTokenCache;-><init>()V

    .line 89
    .local v0, "accessTokenCache":Lcom/facebook/AccessTokenCache;
    new-instance v3, Lcom/facebook/AccessTokenManager;

    invoke-direct {v3, v2, v0}, Lcom/facebook/AccessTokenManager;-><init>(Landroid/support/v4/content/LocalBroadcastManager;Lcom/facebook/AccessTokenCache;)V

    sput-object v3, Lcom/facebook/AccessTokenManager;->instance:Lcom/facebook/AccessTokenManager;

    .line 91
    :cond_1f
    monitor-exit v4
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_23

    .line 94
    :cond_20
    sget-object v3, Lcom/facebook/AccessTokenManager;->instance:Lcom/facebook/AccessTokenManager;

    return-object v3

    .line 91
    .end local v0    # "accessTokenCache":Lcom/facebook/AccessTokenCache;
    .end local v2    # "localBroadcastManager":Landroid/support/v4/content/LocalBroadcastManager;
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v3
.end method

.method private refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .registers 12
    .param p1, "callback"    # Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 213
    iget-object v2, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    .line 214
    .local v2, "accessToken":Lcom/facebook/AccessToken;
    if-nez v2, :cond_13

    .line 215
    if-eqz p1, :cond_12

    .line 216
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "No current access token to refresh"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V

    .line 331
    :cond_12
    :goto_12
    return-void

    .line 221
    :cond_13
    iget-object v0, p0, Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_28

    .line 222
    if-eqz p1, :cond_12

    .line 223
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Refresh already in progress"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V

    goto :goto_12

    .line 229
    :cond_28
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/facebook/AccessTokenManager;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 231
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 232
    .local v6, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 233
    .local v7, "declinedPermissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 234
    .local v4, "permissionsCallSucceeded":Ljava/util/concurrent/atomic/AtomicBoolean;
    new-instance v5, Lcom/facebook/AccessTokenManager$RefreshResult;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/facebook/AccessTokenManager$RefreshResult;-><init>(Lcom/facebook/AccessTokenManager$1;)V

    .line 236
    .local v5, "refreshResult":Lcom/facebook/AccessTokenManager$RefreshResult;
    new-instance v8, Lcom/facebook/GraphRequestBatch;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/GraphRequest;

    new-instance v1, Lcom/facebook/AccessTokenManager$2;

    invoke-direct {v1, p0, v4, v6, v7}, Lcom/facebook/AccessTokenManager$2;-><init>(Lcom/facebook/AccessTokenManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;)V

    .line 237
    invoke-static {v2, v1}, Lcom/facebook/AccessTokenManager;->createGrantedPermissionsRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Lcom/facebook/AccessTokenManager$3;

    invoke-direct {v1, p0, v5}, Lcom/facebook/AccessTokenManager$3;-><init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;)V

    .line 270
    invoke-static {v2, v1}, Lcom/facebook/AccessTokenManager;->createExtendAccessTokenRequest(Lcom/facebook/AccessToken;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-direct {v8, v0}, Lcom/facebook/GraphRequestBatch;-><init>([Lcom/facebook/GraphRequest;)V

    .line 283
    .local v8, "batch":Lcom/facebook/GraphRequestBatch;
    new-instance v0, Lcom/facebook/AccessTokenManager$4;

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/AccessTokenManager$4;-><init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/AccessTokenManager$RefreshResult;Ljava/util/Set;Ljava/util/Set;)V

    invoke-virtual {v8, v0}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 330
    invoke-virtual {v8}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_12
.end method

.method private sendCurrentAccessTokenChangedBroadcast(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .registers 5
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.facebook.sdk.ACTION_CURRENT_ACCESS_TOKEN_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 140
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.facebook.sdk.EXTRA_OLD_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 141
    const-string v1, "com.facebook.sdk.EXTRA_NEW_ACCESS_TOKEN"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/facebook/AccessTokenManager;->localBroadcastManager:Landroid/support/v4/content/LocalBroadcastManager;

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 144
    return-void
.end method

.method private setCurrentAccessToken(Lcom/facebook/AccessToken;Z)V
    .registers 7
    .param p1, "currentAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "saveToCache"    # Z

    .prologue
    .line 117
    iget-object v0, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    .line 118
    .local v0, "oldAccessToken":Lcom/facebook/AccessToken;
    iput-object p1, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    .line 119
    iget-object v1, p0, Lcom/facebook/AccessTokenManager;->tokenRefreshInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/facebook/AccessTokenManager;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 122
    if-eqz p2, :cond_1c

    .line 123
    if-eqz p1, :cond_26

    .line 124
    iget-object v1, p0, Lcom/facebook/AccessTokenManager;->accessTokenCache:Lcom/facebook/AccessTokenCache;

    invoke-virtual {v1, p1}, Lcom/facebook/AccessTokenCache;->save(Lcom/facebook/AccessToken;)V

    .line 131
    :cond_1c
    :goto_1c
    invoke-static {v0, p1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 132
    invoke-direct {p0, v0, p1}, Lcom/facebook/AccessTokenManager;->sendCurrentAccessTokenChangedBroadcast(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V

    .line 134
    :cond_25
    return-void

    .line 126
    :cond_26
    iget-object v1, p0, Lcom/facebook/AccessTokenManager;->accessTokenCache:Lcom/facebook/AccessTokenCache;

    invoke-virtual {v1}, Lcom/facebook/AccessTokenCache;->clear()V

    .line 127
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    goto :goto_1c
.end method

.method private shouldExtendAccessToken()Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 154
    iget-object v2, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    if-nez v2, :cond_6

    .line 161
    :cond_5
    :goto_5
    return v1

    .line 157
    :cond_6
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 159
    .local v0, "now":Ljava/lang/Long;
    iget-object v2, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/AccessTokenSource;->canExtendToken()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 160
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/AccessTokenManager;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    .line 161
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v4, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x5265c00

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    const/4 v1, 0x1

    goto :goto_5
.end method


# virtual methods
.method extendAccessTokenIfNeeded()V
    .registers 2

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager;->shouldExtendAccessToken()Z

    move-result v0

    if-nez v0, :cond_7

    .line 151
    :goto_6
    return-void

    .line 150
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/AccessTokenManager;->refreshCurrentAccessToken(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    goto :goto_6
.end method

.method getCurrentAccessToken()Lcom/facebook/AccessToken;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/AccessTokenManager;->currentAccessToken:Lcom/facebook/AccessToken;

    return-object v0
.end method

.method loadCurrentAccessToken()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v2, p0, Lcom/facebook/AccessTokenManager;->accessTokenCache:Lcom/facebook/AccessTokenCache;

    invoke-virtual {v2}, Lcom/facebook/AccessTokenCache;->load()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 104
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_d

    .line 105
    invoke-direct {p0, v0, v1}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;Z)V

    .line 106
    const/4 v1, 0x1

    .line 109
    :cond_d
    return v1
.end method

.method refreshCurrentAccessToken(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .registers 5
    .param p1, "callback"    # Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    .prologue
    .line 198
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 199
    invoke-direct {p0, p1}, Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    .line 209
    :goto_11
    return-void

    .line 201
    :cond_12
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    .local v0, "mainHandler":Landroid/os/Handler;
    new-instance v1, Lcom/facebook/AccessTokenManager$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/AccessTokenManager$1;-><init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11
.end method

.method setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    .registers 3
    .param p1, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;Z)V

    .line 114
    return-void
.end method

###### Class com.facebook.AccessTokenManager.AnonymousClass1 (com.facebook.AccessTokenManager$1)
.class Lcom/facebook/AccessTokenManager$1;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessToken(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$1;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/facebook/AccessTokenManager$1;->this$0:Lcom/facebook/AccessTokenManager;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$1;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-static {v0, v1}, Lcom/facebook/AccessTokenManager;->access$000(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V

    .line 206
    return-void
.end method

###### Class com.facebook.AccessTokenManager.AnonymousClass2 (com.facebook.AccessTokenManager$2)
.class Lcom/facebook/AccessTokenManager$2;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$2;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$2;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$2;->val$permissions:Ljava/util/Set;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$2;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 11
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 240
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    .line 241
    .local v4, "result":Lorg/json/JSONObject;
    if-nez v4, :cond_7

    .line 268
    :cond_6
    return-void

    .line 244
    :cond_7
    const-string v6, "data"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 245
    .local v3, "permissionsArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_6

    .line 248
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v0, v6, :cond_6

    .line 250
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 251
    .local v2, "permissionEntry":Lorg/json/JSONObject;
    if-nez v2, :cond_25

    .line 249
    :cond_22
    :goto_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 254
    :cond_25
    const-string v6, "permission"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, "permission":Ljava/lang/String;
    const-string v6, "status"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 256
    .local v5, "status":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 257
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_22

    .line 258
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 259
    const-string v6, "granted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 260
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$permissions:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 261
    :cond_51
    const-string v6, "declined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5f

    .line 262
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$declinedPermissions:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 264
    :cond_5f
    const-string v6, "AccessTokenManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected status: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22
.end method

###### Class com.facebook.AccessTokenManager.AnonymousClass3 (com.facebook.AccessTokenManager$3)
.class Lcom/facebook/AccessTokenManager$3;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .prologue
    .line 270
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$3;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 273
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_7

    .line 279
    :goto_6
    return-void

    .line 277
    :cond_7
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    goto :goto_6
.end method

###### Class com.facebook.AccessTokenManager.AnonymousClass4 (com.facebook.AccessTokenManager$4)
.class Lcom/facebook/AccessTokenManager$4;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessToken;Lcom/facebook/AccessToken$AccessTokenRefreshCallback;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/facebook/AccessTokenManager$RefreshResult;Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iput-object p6, p0, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    iput-object p7, p0, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 16
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 286
    const/4 v9, 0x0

    .line 288
    .local v9, "newAccessToken":Lcom/facebook/AccessToken;
    :try_start_1
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 289
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessTokenManager;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 290
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v2, :cond_46

    .line 291
    :cond_1f
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_2f

    .line 292
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "No current access token to refresh"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_108

    .line 323
    :cond_2f
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v1}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_44

    if-eqz v9, :cond_44

    .line 325
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v1, v9}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_44
    move-object v0, v9

    .line 328
    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .local v0, "newAccessToken":Lcom/facebook/AccessToken;
    :cond_45
    :goto_45
    return-void

    .line 297
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_46
    :try_start_46
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-nez v1, :cond_81

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    if-nez v1, :cond_81

    .line 300
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_6a

    .line 301
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Failed to refresh access token"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshFailed(Lcom/facebook/FacebookException;)V
    :try_end_6a
    .catchall {:try_start_46 .. :try_end_6a} :catchall_108

    .line 323
    :cond_6a
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v1}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_7f

    if-eqz v9, :cond_7f

    .line 325
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v1, v9}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_7f
    move-object v0, v9

    .line 304
    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    goto :goto_45

    .line 306
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_81
    :try_start_81
    new-instance v0, Lcom/facebook/AccessToken;

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    if-eqz v1, :cond_ec

    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget-object v1, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    .line 308
    :goto_8d
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 309
    invoke-virtual {v2}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 310
    invoke-virtual {v3}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 311
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_f3

    iget-object v4, p0, Lcom/facebook/AccessTokenManager$4;->val$permissions:Ljava/util/Set;

    .line 312
    :goto_a3
    iget-object v5, p0, Lcom/facebook/AccessTokenManager$4;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 313
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_fa

    iget-object v5, p0, Lcom/facebook/AccessTokenManager$4;->val$declinedPermissions:Ljava/util/Set;

    .line 314
    :goto_ad
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 315
    invoke-virtual {v6}, Lcom/facebook/AccessToken;->getSource()Lcom/facebook/AccessTokenSource;

    move-result-object v6

    iget-object v7, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v7, v7, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    if-eqz v7, :cond_101

    new-instance v7, Ljava/util/Date;

    iget-object v8, p0, Lcom/facebook/AccessTokenManager$4;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    iget v8, v8, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    int-to-long v10, v8

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 318
    :goto_c6
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-direct/range {v0 .. v8}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;)V
    :try_end_ce
    .catchall {:try_start_81 .. :try_end_ce} :catchall_108

    .line 321
    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    :try_start_ce
    invoke-static {}, Lcom/facebook/AccessTokenManager;->getInstance()Lcom/facebook/AccessTokenManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/AccessTokenManager;->setCurrentAccessToken(Lcom/facebook/AccessToken;)V
    :try_end_d5
    .catchall {:try_start_ce .. :try_end_d5} :catchall_120

    .line 323
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v1}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v1, :cond_45

    if-eqz v0, :cond_45

    .line 325
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v1, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    goto/16 :goto_45

    .line 306
    .end local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    :cond_ec
    :try_start_ec
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 308
    invoke-virtual {v1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_8d

    .line 311
    :cond_f3
    iget-object v4, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 312
    invoke-virtual {v4}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v4

    goto :goto_a3

    .line 313
    :cond_fa
    iget-object v5, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 314
    invoke-virtual {v5}, Lcom/facebook/AccessToken;->getDeclinedPermissions()Ljava/util/Set;

    move-result-object v5

    goto :goto_ad

    .line 315
    :cond_101
    iget-object v7, p0, Lcom/facebook/AccessTokenManager$4;->val$accessToken:Lcom/facebook/AccessToken;

    .line 318
    invoke-virtual {v7}, Lcom/facebook/AccessToken;->getExpires()Ljava/util/Date;
    :try_end_106
    .catchall {:try_start_ec .. :try_end_106} :catchall_108

    move-result-object v7

    goto :goto_c6

    .line 323
    :catchall_108
    move-exception v1

    move-object v0, v9

    .end local v9    # "newAccessToken":Lcom/facebook/AccessToken;
    .restart local v0    # "newAccessToken":Lcom/facebook/AccessToken;
    :goto_10a
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->this$0:Lcom/facebook/AccessTokenManager;

    invoke-static {v2}, Lcom/facebook/AccessTokenManager;->access$200(Lcom/facebook/AccessTokenManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    if-eqz v2, :cond_11f

    if-eqz v0, :cond_11f

    .line 325
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$4;->val$callback:Lcom/facebook/AccessToken$AccessTokenRefreshCallback;

    invoke-interface {v2, v0}, Lcom/facebook/AccessToken$AccessTokenRefreshCallback;->OnTokenRefreshed(Lcom/facebook/AccessToken;)V

    :cond_11f
    throw v1

    .line 323
    :catchall_120
    move-exception v1

    goto :goto_10a
.end method

###### Class com.facebook.AccessTokenManager.RefreshResult (com.facebook.AccessTokenManager$RefreshResult)
.class Lcom/facebook/AccessTokenManager$RefreshResult;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AccessTokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefreshResult"
.end annotation


# instance fields
.field public accessToken:Ljava/lang/String;

.field public expiresAt:I


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/AccessTokenManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/facebook/AccessTokenManager$1;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/facebook/AccessTokenManager$RefreshResult;-><init>()V

    return-void
.end method
