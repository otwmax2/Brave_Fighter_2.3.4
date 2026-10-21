###### Class com.facebook.share.internal.LikeActionController (com.facebook.share.internal.LikeActionController)
.class public Lcom/facebook/share/internal/LikeActionController;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;,
        Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$RequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;,
        Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;,
        Lcom/facebook/share/internal/LikeActionController$CreationCallback;
    }
.end annotation


# static fields
.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_ERROR:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_ERROR"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_DID_RESET:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.DID_RESET"

.field public static final ACTION_LIKE_ACTION_CONTROLLER_UPDATED:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.UPDATED"

.field public static final ACTION_OBJECT_ID_KEY:Ljava/lang/String; = "com.facebook.sdk.LikeActionController.OBJECT_ID"

.field private static final ERROR_CODE_OBJECT_ALREADY_LIKED:I = 0xdad

.field public static final ERROR_INVALID_OBJECT_ID:Ljava/lang/String; = "Invalid Object Id"

.field public static final ERROR_PUBLISH_ERROR:Ljava/lang/String; = "Unable to publish the like/unlike action"

.field private static final JSON_BOOL_IS_OBJECT_LIKED_KEY:Ljava/lang/String; = "is_object_liked"

.field private static final JSON_BUNDLE_FACEBOOK_DIALOG_ANALYTICS_BUNDLE:Ljava/lang/String; = "facebook_dialog_analytics_bundle"

.field private static final JSON_INT_OBJECT_TYPE_KEY:Ljava/lang/String; = "object_type"

.field private static final JSON_INT_VERSION_KEY:Ljava/lang/String; = "com.facebook.share.internal.LikeActionController.version"

.field private static final JSON_STRING_LIKE_COUNT_WITHOUT_LIKE_KEY:Ljava/lang/String; = "like_count_string_without_like"

.field private static final JSON_STRING_LIKE_COUNT_WITH_LIKE_KEY:Ljava/lang/String; = "like_count_string_with_like"

.field private static final JSON_STRING_OBJECT_ID_KEY:Ljava/lang/String; = "object_id"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITHOUT_LIKE_KEY:Ljava/lang/String; = "social_sentence_without_like"

.field private static final JSON_STRING_SOCIAL_SENTENCE_WITH_LIKE_KEY:Ljava/lang/String; = "social_sentence_with_like"

.field private static final JSON_STRING_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final LIKE_ACTION_CONTROLLER_STORE:Ljava/lang/String; = "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

.field private static final LIKE_ACTION_CONTROLLER_STORE_OBJECT_SUFFIX_KEY:Ljava/lang/String; = "OBJECT_SUFFIX"

.field private static final LIKE_ACTION_CONTROLLER_STORE_PENDING_OBJECT_ID_KEY:Ljava/lang/String; = "PENDING_CONTROLLER_KEY"

.field private static final LIKE_ACTION_CONTROLLER_VERSION:I = 0x3

.field private static final LIKE_DIALOG_RESPONSE_LIKE_COUNT_STRING_KEY:Ljava/lang/String; = "like_count_string"

.field private static final LIKE_DIALOG_RESPONSE_OBJECT_IS_LIKED_KEY:Ljava/lang/String; = "object_is_liked"

.field private static final LIKE_DIALOG_RESPONSE_SOCIAL_SENTENCE_KEY:Ljava/lang/String; = "social_sentence"

.field private static final LIKE_DIALOG_RESPONSE_UNLIKE_TOKEN_KEY:Ljava/lang/String; = "unlike_token"

.field private static final MAX_CACHE_SIZE:I = 0x80

.field private static final MAX_OBJECT_SUFFIX:I = 0x3e8

.field private static final TAG:Ljava/lang/String;

.field private static accessTokenTracker:Lcom/facebook/AccessTokenTracker;

.field private static final cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/share/internal/LikeActionController;",
            ">;"
        }
    .end annotation
.end field

.field private static controllerDiskCache:Lcom/facebook/internal/FileLruCache;

.field private static diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static isInitialized:Z

.field private static mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

.field private static objectIdForPendingController:Ljava/lang/String;

.field private static volatile objectSuffix:I


# instance fields
.field private appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

.field private facebookDialogAnalyticsBundle:Landroid/os/Bundle;

.field private isObjectLiked:Z

.field private isObjectLikedOnServer:Z

.field private isPendingLikeOrUnlike:Z

.field private likeCountStringWithLike:Ljava/lang/String;

.field private likeCountStringWithoutLike:Ljava/lang/String;

.field private objectId:Ljava/lang/String;

.field private objectIsPage:Z

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private socialSentenceWithLike:Ljava/lang/String;

.field private socialSentenceWithoutLike:Ljava/lang/String;

.field private unlikeToken:Ljava/lang/String;

.field private verifiedObjectId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x1

    .line 76
    const-class v0, Lcom/facebook/share/internal/LikeActionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 119
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    .line 121
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 3
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 602
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 603
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V
    .registers 4
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Intent;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;
    .param p6, "x6"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct/range {p0 .. p6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 1
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V

    return-void
.end method

.method static synthetic access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishAgainIfNeeded(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/facebook/share/internal/LikeActionController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .registers 3
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/facebook/share/internal/LikeActionController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method static synthetic access$2600(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "x2"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 61
    invoke-static {p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    return-void
.end method

.method static synthetic access$300()I
    .registers 1

    .prologue
    .line 61
    sget v0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return v0
.end method

.method static synthetic access$302(I)I
    .registers 1
    .param p0, "x0"    # I

    .prologue
    .line 61
    sput p0, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    return p0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$500()Lcom/facebook/internal/FileLruCache;
    .registers 1

    .prologue
    .line 61
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    return-object v0
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 3
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method private static broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz p0, :cond_17

    .line 583
    if-nez p2, :cond_e

    .line 584
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "data":Landroid/os/Bundle;
    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 587
    .restart local p2    # "data":Landroid/os/Bundle;
    :cond_e
    const-string v1, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {p0}, Lcom/facebook/share/internal/LikeActionController;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_17
    if-eqz p2, :cond_1c

    .line 591
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 593
    :cond_1c
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    .line 594
    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 595
    return-void
.end method

.method private canUseOGPublish()Z
    .registers 4

    .prologue
    .line 968
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 971
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    if-eqz v1, :cond_22

    if-eqz v0, :cond_22

    .line 974
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 975
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v1

    const-string v2, "publish_actions"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    :goto_21
    return v1

    :cond_22
    const/4 v1, 0x0

    goto :goto_21
.end method

.method private clearState()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 950
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 952
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 953
    return-void
.end method

.method private static createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 7
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 261
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 262
    .local v0, "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    if-eqz v0, :cond_a

    .line 264
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 289
    :goto_9
    return-void

    .line 269
    :cond_a
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 271
    if-nez v0, :cond_18

    .line 272
    new-instance v0, Lcom/facebook/share/internal/LikeActionController;

    .end local v0    # "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 273
    .restart local v0    # "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 277
    :cond_18
    invoke-static {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V

    .line 280
    move-object v1, v0

    .line 281
    .local v1, "controllerToRefresh":Lcom/facebook/share/internal/LikeActionController;
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$2;

    invoke-direct {v3, v1}, Lcom/facebook/share/internal/LikeActionController$2;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 288
    const/4 v2, 0x0

    invoke-static {p2, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    goto :goto_9
.end method

.method private static deserializeFromDiskSynchronously(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 8
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 436
    const/4 v1, 0x0

    .line 438
    .local v1, "controller":Lcom/facebook/share/internal/LikeActionController;
    const/4 v4, 0x0

    .line 440
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_2
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v5, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v5, v0}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 442
    if-eqz v4, :cond_1c

    .line 443
    invoke-static {v4}, Lcom/facebook/internal/Utility;->readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 444
    .local v2, "controllerJsonString":Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1c

    .line 445
    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_1b} :catch_22
    .catchall {:try_start_2 .. :try_end_1b} :catchall_31

    move-result-object v1

    .line 452
    .end local v2    # "controllerJsonString":Ljava/lang/String;
    :cond_1c
    if-eqz v4, :cond_21

    .line 453
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 457
    .end local v0    # "cacheKey":Ljava/lang/String;
    :cond_21
    :goto_21
    return-object v1

    .line 448
    :catch_22
    move-exception v3

    .line 449
    .local v3, "e":Ljava/io/IOException;
    :try_start_23
    sget-object v5, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v6, "Unable to deserialize controller from disk"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_23 .. :try_end_2a} :catchall_31

    .line 450
    const/4 v1, 0x0

    .line 452
    if-eqz v4, :cond_21

    .line 453
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_21

    .line 452
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_31
    move-exception v5

    if-eqz v4, :cond_37

    .line 453
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_37
    throw v5
.end method

.method private static deserializeFromJson(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 10
    .param p0, "controllerJsonString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 464
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 465
    .local v2, "controllerJson":Lorg/json/JSONObject;
    const-string v7, "com.facebook.share.internal.LikeActionController.version"

    const/4 v8, -0x1

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    .line 466
    .local v6, "version":I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_11

    .line 505
    .end local v2    # "controllerJson":Lorg/json/JSONObject;
    .end local v6    # "version":I
    :cond_10
    :goto_10
    return-object v1

    .line 472
    .restart local v2    # "controllerJson":Lorg/json/JSONObject;
    .restart local v6    # "version":I
    :cond_11
    const-string v7, "object_id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    .local v4, "objectId":Ljava/lang/String;
    const-string v7, "object_type"

    sget-object v8, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 475
    invoke-virtual {v8}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v8

    .line 473
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 477
    .local v5, "objectTypeInt":I
    new-instance v1, Lcom/facebook/share/internal/LikeActionController;

    .line 479
    invoke-static {v5}, Lcom/facebook/share/widget/LikeView$ObjectType;->fromInt(I)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v7

    invoke-direct {v1, v4, v7}, Lcom/facebook/share/internal/LikeActionController;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 483
    .local v1, "controller":Lcom/facebook/share/internal/LikeActionController;
    const-string v7, "like_count_string_with_like"

    const/4 v8, 0x0

    .line 484
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 485
    const-string v7, "like_count_string_without_like"

    const/4 v8, 0x0

    .line 486
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 487
    const-string v7, "social_sentence_with_like"

    const/4 v8, 0x0

    .line 488
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 489
    const-string v7, "social_sentence_without_like"

    const/4 v8, 0x0

    .line 490
    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 491
    const-string v7, "is_object_liked"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v1, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 492
    const-string v7, "unlike_token"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 494
    const-string v7, "facebook_dialog_analytics_bundle"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 496
    .local v0, "analyticsJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_10

    .line 498
    invoke-static {v0}, Lcom/facebook/internal/BundleJSONConverter;->convertToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, v1, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_6f} :catch_70

    goto :goto_10

    .line 500
    .end local v0    # "analyticsJSON":Lorg/json/JSONObject;
    .end local v1    # "controller":Lcom/facebook/share/internal/LikeActionController;
    .end local v2    # "controllerJson":Lorg/json/JSONObject;
    .end local v4    # "objectId":Ljava/lang/String;
    .end local v5    # "objectTypeInt":I
    .end local v6    # "version":I
    :catch_70
    move-exception v3

    .line 501
    .local v3, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v8, "Unable to deserialize controller from JSON"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 502
    const/4 v1, 0x0

    .restart local v1    # "controller":Lcom/facebook/share/internal/LikeActionController;
    goto :goto_10
.end method

.method private fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
    .registers 7
    .param p1, "completionHandler"    # Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    .prologue
    .line 1199
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1200
    if-eqz p1, :cond_d

    .line 1201
    invoke-interface {p1}, Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    .line 1244
    :cond_d
    :goto_d
    return-void

    .line 1207
    :cond_e
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v0, p0, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1209
    .local v0, "objectIdRequest":Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {v1, p0, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1212
    .local v1, "pageIdRequest":Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1213
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1214
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1216
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$11;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$11;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1243
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_d
.end method

.method private getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;
    .registers 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    if-nez v0, :cond_e

    .line 700
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    .line 702
    :cond_e
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->appEventsLogger:Lcom/facebook/appevents/AppEventsLogger;

    return-object v0
.end method

.method private static getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 547
    const/4 v1, 0x0

    .line 548
    .local v1, "accessTokenPortion":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 549
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_b

    .line 550
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    .line 552
    :cond_b
    if-eqz v1, :cond_11

    .line 557
    invoke-static {v1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 559
    :cond_11
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%s|%s|com.fb.sdk.like|%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    const-string v6, ""

    .line 563
    invoke-static {v1, v6}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    sget v6, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 564
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 559
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 6
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 209
    sget-boolean v1, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z

    if-nez v1, :cond_7

    .line 210
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->performFirstInitialize()V

    .line 213
    :cond_7
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;

    move-result-object v0

    .line 214
    .local v0, "controllerForObject":Lcom/facebook/share/internal/LikeActionController;
    if-eqz v0, :cond_11

    .line 216
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 221
    :goto_10
    return-void

    .line 218
    :cond_11
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;

    invoke-direct {v2, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;-><init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    goto :goto_10
.end method

.method private static getControllerFromInMemoryCache(Ljava/lang/String;)Lcom/facebook/share/internal/LikeActionController;
    .registers 6
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 388
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/share/internal/LikeActionController;

    .line 391
    .local v1, "controller":Lcom/facebook/share/internal/LikeActionController;
    if-eqz v1, :cond_19

    .line 393
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 396
    :cond_19
    return-object v1
.end method

.method private getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
    .registers 4
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 856
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$6;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V

    return-object v0
.end method

.method public static handleOnActivityResult(IILandroid/content/Intent;)Z
    .registers 8
    .param p0, "requestCode"    # I
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 161
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 162
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 163
    .local v0, "appContext":Landroid/content/Context;
    const-string v3, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 167
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v3, "PENDING_CONTROLLER_KEY"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 172
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_1c
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 196
    :goto_24
    return v2

    .line 177
    :cond_25
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    new-instance v4, Lcom/facebook/share/internal/LikeActionController$1;

    invoke-direct {v4, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$1;-><init>(IILandroid/content/Intent;)V

    invoke-static {v2, v3, v4}, Lcom/facebook/share/internal/LikeActionController;->getControllerForObjectId(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 196
    const/4 v2, 0x1

    goto :goto_24
.end method

.method private static invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 5
    .param p0, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;
    .param p1, "controller"    # Lcom/facebook/share/internal/LikeActionController;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 327
    if-nez p0, :cond_3

    .line 337
    :goto_2
    return-void

    .line 331
    :cond_3
    sget-object v0, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/share/internal/LikeActionController$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/share/internal/LikeActionController$4;-><init>(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method private logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;

    .prologue
    .line 1247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 1248
    .local v0, "logParams":Landroid/os/Bundle;
    const-string v1, "object_id"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v1, "object_type"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v2}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v1, "current_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    const-string v2, "fb_like_control_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1253
    return-void
.end method

.method private logAppEventForError(Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V
    .registers 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1256
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1257
    .local v0, "logParams":Landroid/os/Bundle;
    if-eqz p2, :cond_16

    .line 1258
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getRequestResult()Lorg/json/JSONObject;

    move-result-object v1

    .line 1259
    .local v1, "requestResult":Lorg/json/JSONObject;
    if-eqz v1, :cond_16

    .line 1260
    const-string v2, "error"

    .line 1262
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1260
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1265
    .end local v1    # "requestResult":Lorg/json/JSONObject;
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1266
    return-void
.end method

.method private onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 844
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 848
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;

    move-result-object v0

    .line 844
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/share/internal/ShareInternalUtility;->handleActivityResult(IILandroid/content/Intent;Lcom/facebook/share/internal/ResultProcessor;)Z

    .line 852
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->clearState()V

    .line 853
    return-void
.end method

.method private static declared-synchronized performFirstInitialize()V
    .registers 6

    .prologue
    .line 292
    const-class v3, Lcom/facebook/share/internal/LikeActionController;

    monitor-enter v3

    :try_start_3
    sget-boolean v2, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_4b

    if-eqz v2, :cond_9

    .line 321
    .local v0, "appContext":Landroid/content/Context;
    .local v1, "sharedPreferences":Landroid/content/SharedPreferences;
    :goto_7
    monitor-exit v3

    return-void

    .line 296
    .end local v0    # "appContext":Landroid/content/Context;
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :cond_9
    :try_start_9
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v2, Lcom/facebook/share/internal/LikeActionController;->handler:Landroid/os/Handler;

    .line 298
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    .restart local v0    # "appContext":Landroid/content/Context;
    const-string v2, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 303
    .restart local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v2, "OBJECT_SUFFIX"

    const/4 v4, 0x1

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/facebook/share/internal/LikeActionController;->objectSuffix:I

    .line 304
    new-instance v2, Lcom/facebook/internal/FileLruCache;

    sget-object v4, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    new-instance v5, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v5}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v2, v4, v5}, Lcom/facebook/internal/FileLruCache;-><init>(Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v2, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    .line 306
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V

    .line 308
    sget-object v2, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 309
    invoke-virtual {v2}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v2

    new-instance v4, Lcom/facebook/share/internal/LikeActionController$3;

    invoke-direct {v4}, Lcom/facebook/share/internal/LikeActionController$3;-><init>()V

    .line 308
    invoke-static {v2, v4}, Lcom/facebook/internal/CallbackManagerImpl;->registerStaticCallback(ILcom/facebook/internal/CallbackManagerImpl$Callback;)V

    .line 320
    const/4 v2, 0x1

    sput-boolean v2, Lcom/facebook/share/internal/LikeActionController;->isInitialized:Z
    :try_end_4a
    .catchall {:try_start_9 .. :try_end_4a} :catchall_4b

    goto :goto_7

    .line 292
    .end local v1    # "sharedPreferences":Landroid/content/SharedPreferences;
    :catchall_4b
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V
    .registers 10
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragmentWrapper"    # Lcom/facebook/internal/FragmentWrapper;
    .param p3, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    .line 797
    const/4 v0, 0x0

    .line 799
    .local v0, "analyticsEvent":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 800
    const-string v0, "fb_like_control_did_present_dialog"

    .line 815
    :goto_a
    if-eqz v0, :cond_3f

    .line 816
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-eqz v3, :cond_5b

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 817
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    .line 819
    .local v2, "objectTypeString":Ljava/lang/String;
    :goto_16
    new-instance v3, Lcom/facebook/share/internal/LikeContent$Builder;

    invoke-direct {v3}, Lcom/facebook/share/internal/LikeContent$Builder;-><init>()V

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    .line 820
    invoke-virtual {v3, v4}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectId(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v3

    .line 821
    invoke-virtual {v3, v2}, Lcom/facebook/share/internal/LikeContent$Builder;->setObjectType(Ljava/lang/String;)Lcom/facebook/share/internal/LikeContent$Builder;

    move-result-object v3

    .line 822
    invoke-virtual {v3}, Lcom/facebook/share/internal/LikeContent$Builder;->build()Lcom/facebook/share/internal/LikeContent;

    move-result-object v1

    .line 824
    .local v1, "likeContent":Lcom/facebook/share/internal/LikeContent;
    if-eqz p2, :cond_62

    .line 825
    new-instance v3, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {v3, p2}, Lcom/facebook/share/internal/LikeDialog;-><init>(Lcom/facebook/internal/FragmentWrapper;)V

    invoke-virtual {v3, v1}, Lcom/facebook/share/internal/LikeDialog;->show(Ljava/lang/Object;)V

    .line 830
    :goto_33
    invoke-direct {p0, p3}, Lcom/facebook/share/internal/LikeActionController;->saveState(Landroid/os/Bundle;)V

    .line 832
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    const-string v4, "fb_like_control_did_present_dialog"

    invoke-virtual {v3, v4, v5, p3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 837
    .end local v1    # "likeContent":Lcom/facebook/share/internal/LikeContent;
    .end local v2    # "objectTypeString":Ljava/lang/String;
    :cond_3f
    return-void

    .line 801
    :cond_40
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 802
    const-string v0, "fb_like_control_did_present_fallback_dialog"

    goto :goto_a

    .line 805
    :cond_49
    const-string v3, "present_dialog"

    invoke-direct {p0, v3, p3}, Lcom/facebook/share/internal/LikeActionController;->logAppEventForError(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 806
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v4, "Cannot show the Like Dialog on this device."

    invoke-static {v3, v4}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v3, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {v5, v3}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    goto :goto_a

    .line 817
    :cond_5b
    sget-object v3, Lcom/facebook/share/widget/LikeView$ObjectType;->UNKNOWN:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 818
    invoke-virtual {v3}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_16

    .line 827
    .restart local v1    # "likeContent":Lcom/facebook/share/internal/LikeContent;
    .restart local v2    # "objectTypeString":Ljava/lang/String;
    :cond_62
    new-instance v3, Lcom/facebook/share/internal/LikeDialog;

    invoke-direct {v3, p1}, Lcom/facebook/share/internal/LikeDialog;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v3, v1}, Lcom/facebook/share/internal/LikeDialog;->show(Ljava/lang/Object;)V

    goto :goto_33
.end method

.method private publishAgainIfNeeded(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 1190
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLikedOnServer:Z

    if-eq v0, v1, :cond_16

    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 1191
    invoke-direct {p0, v0, p1}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1194
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-nez v0, :cond_17

    const/4 v0, 0x1

    :goto_13
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->publishDidError(Z)V

    .line 1196
    :cond_16
    return-void

    .line 1194
    :cond_17
    const/4 v0, 0x0

    goto :goto_13
.end method

.method private publishDidError(Z)V
    .registers 5
    .param p1, "oldLikeState"    # Z

    .prologue
    .line 727
    invoke-direct {p0, p1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 729
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 730
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v1, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v2, "Unable to publish the like/unlike action"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string v1, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {p0, v1, v0}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 738
    return-void
.end method

.method private publishLikeAsync(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 979
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 981
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$7;

    invoke-direct {v0, p0, p1}, Lcom/facebook/share/internal/LikeActionController$7;-><init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    .line 1033
    return-void
.end method

.method private publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z
    .registers 5
    .param p1, "shouldLikeObject"    # Z
    .param p2, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 708
    const/4 v0, 0x0

    .line 709
    .local v0, "requested":Z
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 710
    if-eqz p1, :cond_e

    .line 711
    const/4 v0, 0x1

    .line 712
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V

    .line 719
    :cond_d
    :goto_d
    return v0

    .line 713
    :cond_e
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 714
    const/4 v0, 0x1

    .line 715
    invoke-direct {p0, p2}, Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V

    goto :goto_d
.end method

.method private publishUnlikeAsync(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 1036
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    .line 1039
    new-instance v0, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v0}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1040
    .local v0, "requestBatch":Lcom/facebook/GraphRequestBatch;
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 1042
    .local v1, "unlikeRequest":Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1043
    new-instance v2, Lcom/facebook/share/internal/LikeActionController$8;

    invoke-direct {v2, p0, v1, p1}, Lcom/facebook/share/internal/LikeActionController$8;-><init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1068
    invoke-virtual {v0}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1069
    return-void
.end method

.method private static putControllerInMemoryCache(Ljava/lang/String;Lcom/facebook/share/internal/LikeActionController;)V
    .registers 6
    .param p0, "objectId"    # Ljava/lang/String;
    .param p1, "controllerForObject"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 382
    .local v0, "cacheKey":Ljava/lang/String;
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->mruCacheWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 384
    sget-object v1, Lcom/facebook/share/internal/LikeActionController;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    return-void
.end method

.method private refreshStatusAsync()V
    .registers 3

    .prologue
    .line 1072
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1073
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-nez v0, :cond_a

    .line 1077
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V

    .line 1128
    :goto_9
    return-void

    .line 1081
    :cond_a
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$9;

    invoke-direct {v1, p0}, Lcom/facebook/share/internal/LikeActionController$9;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    invoke-direct {p0, v1}, Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V

    goto :goto_9
.end method

.method private refreshStatusViaService()V
    .registers 6

    .prologue
    .line 1131
    new-instance v1, Lcom/facebook/share/internal/LikeStatusClient;

    .line 1132
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1133
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/share/internal/LikeStatusClient;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    .local v1, "likeStatusClient":Lcom/facebook/share/internal/LikeStatusClient;
    invoke-virtual {v1}, Lcom/facebook/share/internal/LikeStatusClient;->start()Z

    move-result v2

    if-nez v2, :cond_16

    .line 1187
    :goto_15
    return-void

    .line 1139
    :cond_16
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$10;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$10;-><init>(Lcom/facebook/share/internal/LikeActionController;)V

    .line 1186
    .local v0, "callback":Lcom/facebook/internal/PlatformServiceClient$CompletedListener;
    invoke-virtual {v1, v0}, Lcom/facebook/share/internal/LikeStatusClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    goto :goto_15
.end method

.method private static registerAccessTokenTracker()V
    .registers 1

    .prologue
    .line 344
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$5;

    invoke-direct {v0}, Lcom/facebook/share/internal/LikeActionController$5;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController;->accessTokenTracker:Lcom/facebook/AccessTokenTracker;

    .line 375
    return-void
.end method

.method private saveState(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    .line 940
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->storeObjectIdForPendingController(Ljava/lang/String;)V

    .line 943
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 946
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 947
    return-void
.end method

.method private static serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 5
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 404
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "controllerJson":Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-static {v2}, Lcom/facebook/share/internal/LikeActionController;->getCacheKeyForObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 408
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->diskIOWorkQueue:Lcom/facebook/internal/WorkQueue;

    new-instance v3, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;

    invoke-direct {v3, v0, v1}, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 411
    :cond_20
    return-void
.end method

.method private static serializeToDiskSynchronously(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "cacheKey"    # Ljava/lang/String;
    .param p1, "controllerJson"    # Ljava/lang/String;

    .prologue
    .line 418
    const/4 v1, 0x0

    .line 420
    .local v1, "outputStream":Ljava/io/OutputStream;
    :try_start_1
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->controllerDiskCache:Lcom/facebook/internal/FileLruCache;

    invoke-virtual {v2, p0}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 421
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_e} :catch_14
    .catchall {:try_start_1 .. :try_end_e} :catchall_22

    .line 425
    if-eqz v1, :cond_13

    .line 426
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 429
    :cond_13
    :goto_13
    return-void

    .line 422
    :catch_14
    move-exception v0

    .line 423
    .local v0, "e":Ljava/io/IOException;
    :try_start_15
    sget-object v2, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v3, "Unable to serialize controller to disk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_15 .. :try_end_1c} :catchall_22

    .line 425
    if-eqz v1, :cond_13

    .line 426
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_13

    .line 425
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_22
    move-exception v2

    if-eqz v1, :cond_28

    .line 426
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :cond_28
    throw v2
.end method

.method private static serializeToJson(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;
    .registers 6
    .param p0, "controller"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 509
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 511
    .local v1, "controllerJson":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "com.facebook.share.internal.LikeActionController.version"

    const/4 v4, 0x3

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 512
    const-string v3, "object_id"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v3, "object_type"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->getValue()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 514
    const-string v3, "like_count_string_with_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 517
    const-string v3, "like_count_string_without_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 520
    const-string v3, "social_sentence_with_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v3, "social_sentence_without_like"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v3, "is_object_liked"

    iget-boolean v4, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 527
    const-string v3, "unlike_token"

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 528
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_58

    .line 529
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->facebookDialogAnalyticsBundle:Landroid/os/Bundle;

    .line 530
    invoke-static {v3}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v0

    .line 532
    .local v0, "analyticsJSON":Lorg/json/JSONObject;
    if-eqz v0, :cond_58

    .line 533
    const-string v3, "facebook_dialog_analytics_bundle"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_58
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_58} :catch_5d

    .line 543
    .end local v0    # "analyticsJSON":Lorg/json/JSONObject;
    :cond_58
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_5c
    return-object v3

    .line 538
    :catch_5d
    move-exception v2

    .line 539
    .local v2, "e":Lorg/json/JSONException;
    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->TAG:Ljava/lang/String;

    const-string v4, "Unable to serialize controller to JSON"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 540
    const/4 v3, 0x0

    goto :goto_5c
.end method

.method private static storeObjectIdForPendingController(Ljava/lang/String;)V
    .registers 5
    .param p0, "objectId"    # Ljava/lang/String;

    .prologue
    .line 956
    sput-object p0, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 957
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 959
    .local v0, "appContext":Landroid/content/Context;
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 960
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "PENDING_CONTROLLER_KEY"

    sget-object v3, Lcom/facebook/share/internal/LikeActionController;->objectIdForPendingController:Ljava/lang/String;

    .line 961
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 964
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 965
    return-void
.end method

.method private updateLikeState(Z)V
    .registers 9
    .param p1, "isObjectLiked"    # Z

    .prologue
    .line 741
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    return-void
.end method

.method private updateState(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "isObjectLiked"    # Z
    .param p2, "likeCountStringWithLike"    # Ljava/lang/String;
    .param p3, "likeCountStringWithoutLike"    # Ljava/lang/String;
    .param p4, "socialSentenceWithLike"    # Ljava/lang/String;
    .param p5, "socialSentenceWithoutLike"    # Ljava/lang/String;
    .param p6, "unlikeToken"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 756
    invoke-static {p2, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 758
    invoke-static {p3, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 759
    invoke-static {p4, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 761
    invoke-static {p5, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 762
    invoke-static {p6, v1}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 764
    iget-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-ne p1, v1, :cond_41

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 765
    invoke-static {p2, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 768
    invoke-static {p3, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 771
    invoke-static {p4, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 772
    invoke-static {p5, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 775
    invoke-static {p6, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    :cond_41
    const/4 v0, 0x1

    .line 777
    .local v0, "stateChanged":Z
    :goto_42
    if-nez v0, :cond_47

    .line 791
    :goto_44
    return-void

    .line 775
    .end local v0    # "stateChanged":Z
    :cond_45
    const/4 v0, 0x0

    goto :goto_42

    .line 781
    .restart local v0    # "stateChanged":Z
    :cond_47
    iput-boolean p1, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    .line 782
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    .line 783
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 784
    iput-object p4, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    .line 785
    iput-object p5, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    .line 786
    iput-object p6, p0, Lcom/facebook/share/internal/LikeActionController;->unlikeToken:Ljava/lang/String;

    .line 788
    invoke-static {p0}, Lcom/facebook/share/internal/LikeActionController;->serializeToDiskAsync(Lcom/facebook/share/internal/LikeActionController;)V

    .line 790
    const-string v1, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-static {p0, v1}, Lcom/facebook/share/internal/LikeActionController;->broadcastAction(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private static verifyControllerAndInvokeCallback(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 9
    .param p0, "likeActionController"    # Lcom/facebook/share/internal/LikeActionController;
    .param p1, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p2, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 227
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-static {p1, v2}, Lcom/facebook/share/internal/ShareInternalUtility;->getMostSpecificObjectType(Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/widget/LikeView$ObjectType;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    .line 230
    .local v0, "bestObjectType":Lcom/facebook/share/widget/LikeView$ObjectType;
    const/4 v1, 0x0

    .line 231
    .local v1, "error":Lcom/facebook/FacebookException;
    if-nez v0, :cond_2d

    .line 234
    new-instance v1, Lcom/facebook/FacebookException;

    .end local v1    # "error":Lcom/facebook/FacebookException;
    const-string v2, "Object with id:\"%s\" is already marked as type:\"%s\". Cannot change the type to:\"%s\""

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 238
    invoke-virtual {v5}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    .line 239
    invoke-virtual {p1}, Lcom/facebook/share/widget/LikeView$ObjectType;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 240
    .restart local v1    # "error":Lcom/facebook/FacebookException;
    const/4 p0, 0x0

    .line 245
    :goto_29
    invoke-static {p2, p0, v1}, Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    .line 246
    return-void

    .line 242
    :cond_2d
    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    goto :goto_29
.end method


# virtual methods
.method public getLikeCountString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithLike:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->likeCountStringWithoutLike:Ljava/lang/String;

    goto :goto_6
.end method

.method public getObjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->objectId:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialSentence()Ljava/lang/String;
    .registers 2

    .prologue
    .line 629
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithLike:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController;->socialSentenceWithoutLike:Ljava/lang/String;

    goto :goto_6
.end method

.method public isObjectLiked()Z
    .registers 2

    .prologue
    .line 638
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    return v0
.end method

.method public shouldEnableView()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 647
    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowNativeDialog()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-static {}, Lcom/facebook/share/internal/LikeDialog;->canShowWebFallback()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 664
    :cond_e
    :goto_e
    return v1

    .line 650
    :cond_f
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectIsPage:Z

    if-nez v3, :cond_19

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    sget-object v4, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    if-ne v3, v4, :cond_1b

    :cond_19
    move v1, v2

    .line 655
    goto :goto_e

    .line 661
    :cond_1b
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 662
    .local v0, "token":Lcom/facebook/AccessToken;
    if-eqz v0, :cond_33

    .line 663
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 664
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getPermissions()Ljava/util/Set;

    move-result-object v3

    const-string v4, "publish_actions"

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    :cond_33
    move v1, v2

    goto :goto_e
.end method

.method public toggleLike(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Lcom/facebook/internal/FragmentWrapper;
    .param p3, "analyticsParameters"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 674
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->isObjectLiked:Z

    if-nez v3, :cond_1f

    move v0, v1

    .line 676
    .local v0, "shouldLikeObject":Z
    :goto_7
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->canUseOGPublish()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 678
    invoke-direct {p0, v0}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 679
    iget-boolean v3, p0, Lcom/facebook/share/internal/LikeActionController;->isPendingLikeOrUnlike:Z

    if-eqz v3, :cond_21

    .line 683
    invoke-direct {p0}, Lcom/facebook/share/internal/LikeActionController;->getAppEventsLogger()Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v1

    const-string v2, "fb_like_control_did_undo_quickly"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p3}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 696
    :cond_1e
    :goto_1e
    return-void

    .end local v0    # "shouldLikeObject":Z
    :cond_1f
    move v0, v2

    .line 674
    goto :goto_7

    .line 687
    .restart local v0    # "shouldLikeObject":Z
    :cond_21
    invoke-direct {p0, v0, p3}, Lcom/facebook/share/internal/LikeActionController;->publishLikeOrUnlikeAsync(ZLandroid/os/Bundle;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 690
    if-nez v0, :cond_30

    :goto_29
    invoke-direct {p0, v1}, Lcom/facebook/share/internal/LikeActionController;->updateLikeState(Z)V

    .line 691
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    goto :goto_1e

    :cond_30
    move v1, v2

    .line 690
    goto :goto_29

    .line 694
    :cond_32
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController;->presentLikeDialog(Landroid/app/Activity;Lcom/facebook/internal/FragmentWrapper;Landroid/os/Bundle;)V

    goto :goto_1e
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass1 (com.facebook.share.internal.LikeActionController$1)
.class final Lcom/facebook/share/internal/LikeActionController$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$CreationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->handleOnActivityResult(IILandroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(IILandroid/content/Intent;)V
    .registers 4

    .prologue
    .line 180
    iput p1, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$requestCode:I

    iput p2, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$resultCode:I

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 6
    .param p1, "likeActionController"    # Lcom/facebook/share/internal/LikeActionController;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 185
    if-nez p2, :cond_c

    .line 186
    iget v0, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$requestCode:I

    iget v1, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$resultCode:I

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    invoke-static {p1, v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->access$000(Lcom/facebook/share/internal/LikeActionController;IILandroid/content/Intent;)V

    .line 193
    :goto_b
    return-void

    .line 191
    :cond_c
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_b
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass10 (com.facebook.share.internal.LikeActionController$10)
.class Lcom/facebook/share/internal/LikeActionController$10;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/internal/PlatformServiceClient$CompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusViaService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public completed(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "result"    # Landroid/os/Bundle;

    .prologue
    .line 1143
    if-eqz p1, :cond_a

    const-string v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1183
    :cond_a
    :goto_a
    return-void

    .line 1147
    :cond_b
    const-string v0, "com.facebook.platform.extra.OBJECT_IS_LIKED"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1149
    .local v1, "objectIsLiked":Z
    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    .line 1150
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITH_LIKE"

    .line 1151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1154
    .local v2, "likeCountWithLike":Ljava/lang/String;
    :goto_1f
    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    .line 1155
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_64

    const-string v0, "com.facebook.platform.extra.LIKE_COUNT_STRING_WITHOUT_LIKE"

    .line 1156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1160
    .local v3, "likeCountWithoutLike":Ljava/lang/String;
    :goto_2d
    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    .line 1161
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6b

    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITH_LIKE"

    .line 1162
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1165
    .local v4, "socialSentenceWithLike":Ljava/lang/String;
    :goto_3b
    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    .line 1166
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    const-string v0, "com.facebook.platform.extra.SOCIAL_SENTENCE_WITHOUT_LIKE"

    .line 1167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1171
    .local v5, "socialSentenceWithoutLike":Ljava/lang/String;
    :goto_49
    const-string v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    .line 1172
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "com.facebook.platform.extra.UNLIKE_TOKEN"

    .line 1173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1176
    .local v6, "unlikeToken":Ljava/lang/String;
    :goto_57
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1151
    .end local v2    # "likeCountWithLike":Ljava/lang/String;
    .end local v3    # "likeCountWithoutLike":Ljava/lang/String;
    .end local v4    # "socialSentenceWithLike":Ljava/lang/String;
    .end local v5    # "socialSentenceWithoutLike":Ljava/lang/String;
    .end local v6    # "unlikeToken":Ljava/lang/String;
    :cond_5d
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1152
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1f

    .line 1156
    .restart local v2    # "likeCountWithLike":Ljava/lang/String;
    :cond_64
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1158
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    .line 1162
    .restart local v3    # "likeCountWithoutLike":Ljava/lang/String;
    :cond_6b
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1163
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3b

    .line 1167
    .restart local v4    # "socialSentenceWithLike":Ljava/lang/String;
    :cond_72
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1169
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    goto :goto_49

    .line 1173
    .restart local v5    # "socialSentenceWithoutLike":Ljava/lang/String;
    :cond_79
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$10;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1174
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    goto :goto_57
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass11 (com.facebook.share.internal.LikeActionController$11)
.class Lcom/facebook/share/internal/LikeActionController$11;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->fetchVerifiedObjectId(Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

.field final synthetic val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

.field final synthetic val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;)V
    .registers 5
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iput-object p4, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 8
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1219
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    iget-object v1, v1, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1220
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1221
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-object v1, v1, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1602(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    iget-boolean v1, v1, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectIsPage:Z

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2302(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1225
    :cond_27
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1226
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    .line 1227
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to verify the FB id for \'%s\'. Verify that it is a valid FB object or page"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1230
    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1226
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1231
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$11;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "get_verified_id"

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    .line 1232
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$pageIdRequest:Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;

    .line 1233
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 1231
    :goto_5c
    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1237
    :cond_5f
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    if-eqz v0, :cond_68

    .line 1238
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$completionHandler:Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;

    invoke-interface {v0}, Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;->onComplete()V

    .line 1240
    :cond_68
    return-void

    .line 1233
    :cond_69
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$11;->val$objectIdRequest:Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;

    .line 1234
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    goto :goto_5c
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass12 (com.facebook.share.internal.LikeActionController$12)
.class synthetic Lcom/facebook/share/internal/LikeActionController$12;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 1085
    invoke-static {}, Lcom/facebook/share/widget/LikeView$ObjectType;->values()[Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    :try_start_9
    sget-object v0, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-virtual {v1}, Lcom/facebook/share/widget/LikeView$ObjectType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_15

    :goto_14
    return-void

    :catch_15
    move-exception v0

    goto :goto_14
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass2 (com.facebook.share.internal.LikeActionController$2)
.class final Lcom/facebook/share/internal/LikeActionController$2;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->createControllerForObjectIdAndType(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$controllerToRefresh:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2

    .prologue
    .line 281
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$2;->val$controllerToRefresh:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$2;->val$controllerToRefresh:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$200(Lcom/facebook/share/internal/LikeActionController;)V

    .line 285
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass3 (com.facebook.share.internal.LikeActionController$3)
.class final Lcom/facebook/share/internal/LikeActionController$3;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/internal/CallbackManagerImpl$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->performFirstInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)Z
    .registers 4
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 313
    sget-object v0, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->Like:Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;

    .line 314
    invoke-virtual {v0}, Lcom/facebook/internal/CallbackManagerImpl$RequestCodeOffset;->toRequestCode()I

    move-result v0

    .line 313
    invoke-static {v0, p1, p2}, Lcom/facebook/share/internal/LikeActionController;->handleOnActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    return v0
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass4 (com.facebook.share.internal.LikeActionController$4)
.class final Lcom/facebook/share/internal/LikeActionController$4;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->invokeCallbackWithController(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

.field final synthetic val$controller:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$error:Lcom/facebook/FacebookException;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$CreationCallback;Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
    .registers 4

    .prologue
    .line 331
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$4;->val$callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$4;->val$controller:Lcom/facebook/share/internal/LikeActionController;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$4;->val$error:Lcom/facebook/FacebookException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 334
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$4;->val$callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$4;->val$controller:Lcom/facebook/share/internal/LikeActionController;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$4;->val$error:Lcom/facebook/FacebookException;

    invoke-interface {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController$CreationCallback;->onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V

    .line 335
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass5 (com.facebook.share.internal.LikeActionController$5)
.class final Lcom/facebook/share/internal/LikeActionController$5;
.super Lcom/facebook/AccessTokenTracker;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .registers 7
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .prologue
    .line 349
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    .local v0, "appContext":Landroid/content/Context;
    if-nez p2, :cond_37

    .line 358
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    rem-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$302(I)I

    .line 359
    const-string v1, "com.facebook.LikeActionController.CONTROLLER_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 362
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "OBJECT_SUFFIX"

    .line 363
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$300()I

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 364
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 369
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 370
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$500()Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/FileLruCache;->clearCache()V

    .line 372
    :cond_37
    const/4 v1, 0x0

    const-string v2, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-static {v1, v2}, Lcom/facebook/share/internal/LikeActionController;->access$600(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 373
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass6 (com.facebook.share.internal.LikeActionController$6)
.class Lcom/facebook/share/internal/LikeActionController$6;
.super Lcom/facebook/share/internal/ResultProcessor;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->getResultProcessor(Landroid/os/Bundle;)Lcom/facebook/share/internal/ResultProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookCallback;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;
    .param p2, "callback"    # Lcom/facebook/FacebookCallback;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0, p2}, Lcom/facebook/share/internal/ResultProcessor;-><init>(Lcom/facebook/FacebookCallback;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/facebook/internal/AppCall;)V
    .registers 3
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;

    .prologue
    .line 933
    new-instance v0, Lcom/facebook/FacebookOperationCanceledException;

    invoke-direct {v0}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/facebook/share/internal/LikeActionController$6;->onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V

    .line 934
    return-void
.end method

.method public onError(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V
    .registers 9
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 911
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 913
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Like Dialog failed with error : %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 911
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 917
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v1, :cond_3a

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 918
    .local v0, "logParams":Landroid/os/Bundle;
    :goto_1a
    const-string v1, "call_id"

    .line 920
    invoke-virtual {p1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "present_dialog"

    invoke-static {v1, v2, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 925
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "com.facebook.sdk.LikeActionController.DID_ERROR"

    .line 928
    invoke-static {p2}, Lcom/facebook/internal/NativeProtocol;->createBundleForException(Lcom/facebook/FacebookException;)Landroid/os/Bundle;

    move-result-object v3

    .line 925
    invoke-static {v1, v2, v3}, Lcom/facebook/share/internal/LikeActionController;->access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 929
    return-void

    .line 917
    .end local v0    # "logParams":Landroid/os/Bundle;
    :cond_3a
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_1a
.end method

.method public onSuccess(Lcom/facebook/internal/AppCall;Landroid/os/Bundle;)V
    .registers 13
    .param p1, "appCall"    # Lcom/facebook/internal/AppCall;
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 859
    if-eqz p2, :cond_a

    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 907
    :cond_a
    :goto_a
    return-void

    .line 864
    :cond_b
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 867
    .local v1, "isObjectLiked":Z
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 868
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v2

    .line 869
    .local v2, "likeCountStringWithLike":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 870
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    .line 871
    .local v3, "likeCountStringWithoutLike":Ljava/lang/String;
    const-string v0, "like_count_string"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 872
    const-string v0, "like_count_string"

    .line 873
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 874
    move-object v3, v2

    .line 877
    :cond_2c
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    .line 878
    .local v4, "socialSentenceWithLike":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 879
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, "socialSentenceWithoutWithoutLike":Ljava/lang/String;
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    .line 881
    const-string v0, "social_sentence"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 883
    move-object v5, v4

    .line 886
    :cond_47
    const-string v0, "object_is_liked"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const-string v0, "unlike_token"

    .line 887
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 890
    .local v6, "unlikeToken":Ljava/lang/String;
    :goto_55
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    if-nez v0, :cond_84

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 892
    .local v7, "logParams":Landroid/os/Bundle;
    :goto_5e
    const-string v0, "call_id"

    .line 894
    invoke-virtual {p1}, Lcom/facebook/internal/AppCall;->getCallId()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .line 892
    invoke-virtual {v7, v0, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string v8, "fb_like_control_dialog_did_succeed"

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9, v7}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 900
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 887
    .end local v6    # "unlikeToken":Ljava/lang/String;
    .end local v7    # "logParams":Landroid/os/Bundle;
    :cond_7d
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$6;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 888
    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1100(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v6

    goto :goto_55

    .line 890
    .restart local v6    # "unlikeToken":Ljava/lang/String;
    :cond_84
    iget-object v7, p0, Lcom/facebook/share/internal/LikeActionController$6;->val$analyticsParameters:Landroid/os/Bundle;

    goto :goto_5e
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass7 (com.facebook.share.internal.LikeActionController$7)
.class Lcom/facebook/share/internal/LikeActionController$7;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->publishLikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 981
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 7

    .prologue
    .line 984
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v3}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 986
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 987
    .local v0, "errorBundle":Landroid/os/Bundle;
    const-string v3, "com.facebook.platform.status.ERROR_DESCRIPTION"

    const-string v4, "Invalid Object Id"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v4, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-static {v3, v4, v0}, Lcom/facebook/share/internal/LikeActionController;->access$1500(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1031
    .end local v0    # "errorBundle":Landroid/os/Bundle;
    :goto_1f
    return-void

    .line 999
    :cond_20
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1000
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1001
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1002
    .local v1, "likeRequest":Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;
    invoke-virtual {v1, v2}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1003
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$7$1;

    invoke-direct {v3, p0, v1}, Lcom/facebook/share/internal/LikeActionController$7$1;-><init>(Lcom/facebook/share/internal/LikeActionController$7;Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1030
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    goto :goto_1f
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass7.AnonymousClass1 (com.facebook.share.internal.LikeActionController$7$1)
.class Lcom/facebook/share/internal/LikeActionController$7$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$7;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$7;

.field final synthetic val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$7;Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;)V
    .registers 3
    .param p1, "this$1"    # Lcom/facebook/share/internal/LikeActionController$7;

    .prologue
    .line 1003
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 6
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1006
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1008
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 1012
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V

    .line 1027
    :goto_18
    return-void

    .line 1014
    :cond_19
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->val$likeRequest:Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;

    iget-object v1, v1, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1015
    invoke-static {v1, v3}, Lcom/facebook/internal/Utility;->coerceValueIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1014
    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1016
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1018
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string v1, "fb_like_control_did_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v2, v2, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1025
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$7;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$7$1;->this$1:Lcom/facebook/share/internal/LikeActionController$7;

    iget-object v1, v1, Lcom/facebook/share/internal/LikeActionController$7;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    goto :goto_18
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass8 (com.facebook.share.internal.LikeActionController$8)
.class Lcom/facebook/share/internal/LikeActionController$8;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->publishUnlikeAsync(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field final synthetic val$analyticsParameters:Landroid/os/Bundle;

.field final synthetic val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 6
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 1046
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1802(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1048
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$unlikeRequest:Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;

    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1051
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$1900(Lcom/facebook/share/internal/LikeActionController;Z)V

    .line 1065
    :goto_15
    return-void

    .line 1053
    :cond_16
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0, v3}, Lcom/facebook/share/internal/LikeActionController;->access$1102(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)Ljava/lang/String;

    .line 1054
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2002(Lcom/facebook/share/internal/LikeActionController;Z)Z

    .line 1056
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v0}, Lcom/facebook/share/internal/LikeActionController;->access$1200(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    const-string v1, "fb_like_control_did_unlike"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v3, v2}, Lcom/facebook/appevents/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    .line 1063
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$8;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$8;->val$analyticsParameters:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2100(Lcom/facebook/share/internal/LikeActionController;Landroid/os/Bundle;)V

    goto :goto_15
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass9 (com.facebook.share.internal.LikeActionController$9)
.class Lcom/facebook/share/internal/LikeActionController$9;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController;->refreshStatusAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/facebook/share/internal/LikeActionController;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 7

    .prologue
    .line 1085
    sget-object v3, Lcom/facebook/share/internal/LikeActionController$12;->$SwitchMap$com$facebook$share$widget$LikeView$ObjectType:[I

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/share/widget/LikeView$ObjectType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_5c

    .line 1090
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1091
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1094
    .local v1, "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    :goto_24
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1095
    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$1700(Lcom/facebook/share/internal/LikeActionController;)Lcom/facebook/share/widget/LikeView$ObjectType;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1097
    .local v0, "engagementRequest":Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
    new-instance v2, Lcom/facebook/GraphRequestBatch;

    invoke-direct {v2}, Lcom/facebook/GraphRequestBatch;-><init>()V

    .line 1098
    .local v2, "requestBatch":Lcom/facebook/GraphRequestBatch;
    invoke-interface {v1, v2}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1099
    invoke-virtual {v0, v2}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->addToBatch(Lcom/facebook/GraphRequestBatch;)V

    .line 1101
    new-instance v3, Lcom/facebook/share/internal/LikeActionController$9$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/facebook/share/internal/LikeActionController$9$1;-><init>(Lcom/facebook/share/internal/LikeActionController$9;Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;)V

    invoke-virtual {v2, v3}, Lcom/facebook/GraphRequestBatch;->addCallback(Lcom/facebook/GraphRequestBatch$Callback;)V

    .line 1125
    invoke-virtual {v2}, Lcom/facebook/GraphRequestBatch;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1126
    return-void

    .line 1087
    .end local v0    # "engagementRequest":Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
    .end local v1    # "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    .end local v2    # "requestBatch":Lcom/facebook/GraphRequestBatch;
    :pswitch_4e
    new-instance v1, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v4}, Lcom/facebook/share/internal/LikeActionController;->access$1600(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V

    .line 1088
    .restart local v1    # "likeRequestWrapper":Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
    goto :goto_24

    .line 1085
    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_4e
    .end packed-switch
.end method

###### Class com.facebook.share.internal.LikeActionController.AnonymousClass9.AnonymousClass1 (com.facebook.share.internal.LikeActionController$9$1)
.class Lcom/facebook/share/internal/LikeActionController$9$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequestBatch$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$9;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$9;

.field final synthetic val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

.field final synthetic val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$9;Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;)V
    .registers 4
    .param p1, "this$1"    # Lcom/facebook/share/internal/LikeActionController$9;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchCompleted(Lcom/facebook/GraphRequestBatch;)V
    .registers 9
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    invoke-interface {v0}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    .line 1105
    invoke-virtual {v0}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 1108
    :cond_10
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1110
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to refresh like state for id: \'%s\'"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1111
    invoke-static {v5}, Lcom/facebook/share/internal/LikeActionController;->access$2200(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1108
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1122
    :goto_29
    return-void

    .line 1115
    :cond_2a
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->this$1:Lcom/facebook/share/internal/LikeActionController$9;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$9;->this$0:Lcom/facebook/share/internal/LikeActionController;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    .line 1116
    invoke-interface {v1}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->isObjectLiked()Z

    move-result v1

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v2, v2, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v3, v3, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v4, v4, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$engagementRequest:Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;

    iget-object v5, v5, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController$9$1;->val$likeRequestWrapper:Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;

    .line 1121
    invoke-interface {v6}, Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;->getUnlikeToken()Ljava/lang/String;

    move-result-object v6

    .line 1115
    invoke-static/range {v0 .. v6}, Lcom/facebook/share/internal/LikeActionController;->access$1300(Lcom/facebook/share/internal/LikeActionController;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_29
.end method

###### Class com.facebook.share.internal.LikeActionController.AbstractRequestWrapper (com.facebook.share.internal.LikeActionController$AbstractRequestWrapper)
.class abstract Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "AbstractRequestWrapper"
.end annotation


# instance fields
.field protected error:Lcom/facebook/FacebookRequestError;

.field protected objectId:Ljava/lang/String;

.field protected objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field private request:Lcom/facebook/GraphRequest;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method protected constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 4
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1662
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1663
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectId:Ljava/lang/String;

    .line 1664
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1665
    return-void
.end method


# virtual methods
.method public addToBatch(Lcom/facebook/GraphRequestBatch;)V
    .registers 3
    .param p1, "batch"    # Lcom/facebook/GraphRequestBatch;

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->request:Lcom/facebook/GraphRequest;

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequestBatch;->add(Lcom/facebook/GraphRequest;)Z

    .line 1669
    return-void
.end method

.method public getError()Lcom/facebook/FacebookRequestError;
    .registers 2

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    return-object v0
.end method

.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1694
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1695
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error running request for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1694
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1700
    return-void
.end method

.method protected abstract processSuccess(Lcom/facebook/GraphResponse;)V
.end method

.method protected setRequest(Lcom/facebook/GraphRequest;)V
    .registers 3
    .param p1, "request"    # Lcom/facebook/GraphRequest;

    .prologue
    .line 1676
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->request:Lcom/facebook/GraphRequest;

    .line 1679
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setVersion(Ljava/lang/String;)V

    .line 1680
    new-instance v0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;

    invoke-direct {v0, p0}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;-><init>(Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;)V

    invoke-virtual {p1, v0}, Lcom/facebook/GraphRequest;->setCallback(Lcom/facebook/GraphRequest$Callback;)V

    .line 1691
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.AbstractRequestWrapper.AnonymousClass1 (com.facebook.share.internal.LikeActionController$AbstractRequestWrapper$1)
.class Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;)V
    .registers 2
    .param p1, "this$1"    # Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1684
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    iget-object v0, v0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    if-eqz v0, :cond_18

    .line 1685
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    iget-object v1, v1, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    invoke-virtual {v0, v1}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->processError(Lcom/facebook/FacebookRequestError;)V

    .line 1689
    :goto_17
    return-void

    .line 1687
    :cond_18
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper$1;->this$1:Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;

    invoke-virtual {v0, p1}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;->processSuccess(Lcom/facebook/GraphResponse;)V

    goto :goto_17
.end method

###### Class com.facebook.share.internal.LikeActionController.CreateLikeActionControllerWorkItem (com.facebook.share.internal.LikeActionController$CreateLikeActionControllerWorkItem)
.class Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CreateLikeActionControllerWorkItem"
.end annotation


# instance fields
.field private callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

.field private objectId:Ljava/lang/String;

.field private objectType:Lcom/facebook/share/widget/LikeView$ObjectType;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V
    .registers 4
    .param p1, "objectId"    # Ljava/lang/String;
    .param p2, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;
    .param p3, "callback"    # Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .prologue
    .line 1760
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1761
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    .line 1762
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1763
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    .line 1764
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1768
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/share/internal/LikeActionController$CreationCallback;

    invoke-static {v0, v1, v2}, Lcom/facebook/share/internal/LikeActionController;->access$2700(Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;Lcom/facebook/share/internal/LikeActionController$CreationCallback;)V

    .line 1769
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.CreationCallback (com.facebook.share.internal.LikeActionController$CreationCallback)
.class public interface abstract Lcom/facebook/share/internal/LikeActionController$CreationCallback;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreationCallback"
.end annotation


# virtual methods
.method public abstract onComplete(Lcom/facebook/share/internal/LikeActionController;Lcom/facebook/FacebookException;)V
.end method

###### Class com.facebook.share.internal.LikeActionController.GetEngagementRequestWrapper (com.facebook.share.internal.LikeActionController$GetEngagementRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetEngagementRequestWrapper"
.end annotation


# instance fields
.field likeCountStringWithLike:Ljava/lang/String;

.field likeCountStringWithoutLike:Ljava/lang/String;

.field socialSentenceStringWithLike:Ljava/lang/String;

.field socialSentenceStringWithoutLike:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 8
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1589
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1582
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$700(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1583
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$800(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1584
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$900(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1585
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1586
    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$1000(Lcom/facebook/share/internal/LikeActionController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1591
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1592
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "engagement.fields(count_string_with_like,count_string_without_like,social_sentence_with_like,social_sentence_without_like)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1604
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, p2, v0, v3}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1603
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1608
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1641
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1642
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching engagement for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1641
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1647
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "get_engagement"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1648
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1612
    .line 1613
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "engagement"

    .line 1612
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1615
    .local v0, "engagementResults":Lorg/json/JSONObject;
    if-eqz v0, :cond_34

    .line 1617
    const-string v1, "count_string_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1618
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithLike:Ljava/lang/String;

    .line 1622
    const-string v1, "count_string_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1623
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->likeCountStringWithoutLike:Ljava/lang/String;

    .line 1627
    const-string v1, "social_sentence_with_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1628
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithLike:Ljava/lang/String;

    .line 1632
    const-string v1, "social_sentence_without_like"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1633
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetEngagementRequestWrapper;->socialSentenceStringWithoutLike:Ljava/lang/String;

    .line 1637
    :cond_34
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.GetOGObjectIdRequestWrapper (com.facebook.share.internal.LikeActionController$GetOGObjectIdRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOGObjectIdRequestWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field verifiedObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1296
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1298
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1299
    .local v0, "objectIdRequestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "og_object.fields(id)"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    const-string v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1303
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1302
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1307
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1313
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "og_object"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1314
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1323
    :goto_f
    return-void

    .line 1316
    :cond_10
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1317
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1316
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1327
    .line 1328
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->objectId:Ljava/lang/String;

    .line 1327
    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1330
    .local v1, "results":Lorg/json/JSONObject;
    if-eqz v1, :cond_1c

    .line 1332
    const-string v2, "og_object"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1333
    .local v0, "ogObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_1c

    .line 1334
    const-string v2, "id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    .line 1337
    .end local v0    # "ogObject":Lorg/json/JSONObject;
    :cond_1c
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.GetOGObjectLikesRequestWrapper (com.facebook.share.internal.LikeActionController$GetOGObjectLikesRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetOGObjectLikesRequestWrapper"
.end annotation


# instance fields
.field private final objectId:Ljava/lang/String;

.field private objectIsLiked:Z

.field private final objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field private unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1518
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1512
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$2500(Lcom/facebook/share/internal/LikeActionController;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    .line 1519
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    .line 1520
    iput-object p3, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    .line 1522
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1523
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "id,application"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const-string v1, "object"

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1527
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1526
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1531
    return-void
.end method


# virtual methods
.method public getUnlikeToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1575
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->unlikeToken:Ljava/lang/String;

    return-object v0
.end method

.method public isObjectLiked()Z
    .registers 2

    .prologue
    .line 1570
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    return v0
.end method

.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1559
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1560
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1559
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1565
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "get_og_object_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1566
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 9
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1535
    .line 1536
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "data"

    .line 1535
    invoke-static {v5, v6}, Lcom/facebook/internal/Utility;->tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1538
    .local v3, "dataSet":Lorg/json/JSONArray;
    if-eqz v3, :cond_45

    .line 1539
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_45

    .line 1540
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1541
    .local v2, "data":Lorg/json/JSONObject;
    if-eqz v2, :cond_42

    .line 1542
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->objectIsLiked:Z

    .line 1543
    const-string v5, "application"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1544
    .local v1, "appData":Lorg/json/JSONObject;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 1545
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v1, :cond_42

    if-eqz v0, :cond_42

    .line 1548
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getApplicationId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "id"

    .line 1549
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1547
    invoke-static {v5, v6}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1550
    const-string v5, "id"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetOGObjectLikesRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1539
    .end local v0    # "accessToken":Lcom/facebook/AccessToken;
    .end local v1    # "appData":Lorg/json/JSONObject;
    :cond_42
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1555
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "i":I
    :cond_45
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.GetPageIdRequestWrapper (com.facebook.share.internal.LikeActionController$GetPageIdRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPageIdRequestWrapper"
.end annotation


# instance fields
.field objectIsPage:Z

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field verifiedObjectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1344
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1345
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1347
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1348
    .local v0, "pageIdRequestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v1, "ids"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1352
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1356
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1371
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1372
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error getting the FB id for object \'%s\' with type \'%s\' : %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 1371
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1377
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1360
    .line 1361
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectId:Ljava/lang/String;

    .line 1360
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONObjectFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1363
    .local v0, "results":Lorg/json/JSONObject;
    if-eqz v0, :cond_1f

    .line 1364
    const-string v1, "id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    .line 1365
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->verifiedObjectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_20

    const/4 v1, 0x1

    :goto_1d
    iput-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageIdRequestWrapper;->objectIsPage:Z

    .line 1367
    :cond_1f
    return-void

    .line 1365
    :cond_20
    const/4 v1, 0x0

    goto :goto_1d
.end method

###### Class com.facebook.share.internal.LikeActionController.GetPageLikesRequestWrapper (com.facebook.share.internal.LikeActionController$GetPageLikesRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetPageLikesRequestWrapper"
.end annotation


# instance fields
.field private objectIsLiked:Z

.field private pageId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 8
    .param p2, "pageId"    # Ljava/lang/String;

    .prologue
    .line 1461
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1462
    sget-object v1, Lcom/facebook/share/widget/LikeView$ObjectType;->PAGE:Lcom/facebook/share/widget/LikeView$ObjectType;

    invoke-direct {p0, p1, p2, v1}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1458
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    invoke-static {v1}, Lcom/facebook/share/internal/LikeActionController;->access$2500(Lcom/facebook/share/internal/LikeActionController;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->objectIsLiked:Z

    .line 1463
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->pageId:Ljava/lang/String;

    .line 1465
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1466
    .local v0, "requestParams":Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1469
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "me/likes/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1468
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1473
    return-void
.end method


# virtual methods
.method public getUnlikeToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1503
    const/4 v0, 0x0

    return-object v0
.end method

.method public isObjectLiked()Z
    .registers 2

    .prologue
    .line 1498
    iget-boolean v0, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->objectIsLiked:Z

    return v0
.end method

.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1487
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1488
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error fetching like status for page id \'%s\': %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->pageId:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1487
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1492
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "get_page_like"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1493
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 5
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1477
    .line 1478
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "data"

    .line 1477
    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->tryGetJSONArrayFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1480
    .local v0, "dataSet":Lorg/json/JSONArray;
    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 1481
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/facebook/share/internal/LikeActionController$GetPageLikesRequestWrapper;->objectIsLiked:Z

    .line 1483
    :cond_15
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.LikeRequestWrapper (com.facebook.share.internal.LikeActionController$LikeRequestWrapper)
.class interface abstract Lcom/facebook/share/internal/LikeActionController$LikeRequestWrapper;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Lcom/facebook/share/internal/LikeActionController$RequestWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "LikeRequestWrapper"
.end annotation


# virtual methods
.method public abstract getUnlikeToken()Ljava/lang/String;
.end method

.method public abstract isObjectLiked()Z
.end method

###### Class com.facebook.share.internal.LikeActionController.MRUCacheWorkItem (com.facebook.share.internal.LikeActionController$MRUCacheWorkItem)
.class Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MRUCacheWorkItem"
.end annotation


# static fields
.field private static mruCachedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cacheItem:Ljava/lang/String;

.field private shouldTrim:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1710
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "cacheItem"    # Ljava/lang/String;
    .param p2, "shouldTrim"    # Z

    .prologue
    .line 1714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1715
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    .line 1716
    iput-boolean p2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->shouldTrim:Z

    .line 1717
    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 1721
    iget-object v2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    if-eqz v2, :cond_13

    .line 1722
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1723
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->cacheItem:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1725
    :cond_13
    iget-boolean v2, p0, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->shouldTrim:Z

    if-eqz v2, :cond_43

    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x80

    if-lt v2, v3, :cond_43

    .line 1726
    const/16 v1, 0x40

    .line 1727
    .local v1, "targetSize":I
    :goto_23
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_43

    .line 1728
    sget-object v2, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    sget-object v3, Lcom/facebook/share/internal/LikeActionController$MRUCacheWorkItem;->mruCachedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1731
    .local v0, "cacheKey":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$400()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 1734
    .end local v0    # "cacheKey":Ljava/lang/String;
    .end local v1    # "targetSize":I
    :cond_43
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.PublishLikeRequestWrapper (com.facebook.share.internal.LikeActionController$PublishLikeRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishLikeRequestWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V
    .registers 9
    .param p2, "objectId"    # Ljava/lang/String;
    .param p3, "objectType"    # Lcom/facebook/share/widget/LikeView$ObjectType;

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1384
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1387
    .local v0, "likeRequestParams":Landroid/os/Bundle;
    const-string v1, "object"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    new-instance v1, Lcom/facebook/GraphRequest;

    .line 1390
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    const-string v3, "me/og.likes"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1389
    invoke-virtual {p0, v1}, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1394
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 9
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1403
    invoke-virtual {p1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    .line 1404
    .local v0, "errorCode":I
    const/16 v1, 0xdad

    if-ne v0, v1, :cond_c

    .line 1409
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->error:Lcom/facebook/FacebookRequestError;

    .line 1419
    :goto_b
    return-void

    .line 1411
    :cond_c
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1412
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error liking object \'%s\' with type \'%s\' : %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->objectId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->objectType:Lcom/facebook/share/widget/LikeView$ObjectType;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    aput-object p1, v4, v5

    .line 1411
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1417
    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v2, "publish_like"

    invoke-static {v1, v2, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    goto :goto_b
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 4
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1398
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->safeGetStringFromResponse(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/internal/LikeActionController$PublishLikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1399
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.PublishUnlikeRequestWrapper (com.facebook.share.internal.LikeActionController$PublishUnlikeRequestWrapper)
.class Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;
.super Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublishUnlikeRequestWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/share/internal/LikeActionController;

.field private unlikeToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;)V
    .registers 7
    .param p2, "unlikeToken"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1425
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    .line 1426
    invoke-direct {p0, p1, v3, v3}, Lcom/facebook/share/internal/LikeActionController$AbstractRequestWrapper;-><init>(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/share/widget/LikeView$ObjectType;)V

    .line 1428
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    .line 1430
    new-instance v0, Lcom/facebook/GraphRequest;

    .line 1431
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v1

    sget-object v2, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    invoke-direct {v0, v1, p2, v3, v2}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 1430
    invoke-virtual {p0, v0}, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->setRequest(Lcom/facebook/GraphRequest;)V

    .line 1435
    return-void
.end method


# virtual methods
.method protected processError(Lcom/facebook/FacebookRequestError;)V
    .registers 8
    .param p1, "error"    # Lcom/facebook/FacebookRequestError;

    .prologue
    .line 1443
    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 1444
    invoke-static {}, Lcom/facebook/share/internal/LikeActionController;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error unliking object with unlike token \'%s\' : %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->unlikeToken:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 1443
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1446
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$PublishUnlikeRequestWrapper;->this$0:Lcom/facebook/share/internal/LikeActionController;

    const-string v1, "publish_unlike"

    invoke-static {v0, v1, p1}, Lcom/facebook/share/internal/LikeActionController;->access$2400(Lcom/facebook/share/internal/LikeActionController;Ljava/lang/String;Lcom/facebook/FacebookRequestError;)V

    .line 1447
    return-void
.end method

.method protected processSuccess(Lcom/facebook/GraphResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .prologue
    .line 1439
    return-void
.end method

###### Class com.facebook.share.internal.LikeActionController.RequestCompletionCallback (com.facebook.share.internal.LikeActionController$RequestCompletionCallback)
.class interface abstract Lcom/facebook/share/internal/LikeActionController$RequestCompletionCallback;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RequestCompletionCallback"
.end annotation


# virtual methods
.method public abstract onComplete()V
.end method

###### Class com.facebook.share.internal.LikeActionController.RequestWrapper (com.facebook.share.internal.LikeActionController$RequestWrapper)
.class interface abstract Lcom/facebook/share/internal/LikeActionController$RequestWrapper;
.super Ljava/lang/Object;
.source "LikeActionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "RequestWrapper"
.end annotation


# virtual methods
.method public abstract addToBatch(Lcom/facebook/GraphRequestBatch;)V
.end method

.method public abstract getError()Lcom/facebook/FacebookRequestError;
.end method

###### Class com.facebook.share.internal.LikeActionController.SerializeToDiskWorkItem (com.facebook.share.internal.LikeActionController$SerializeToDiskWorkItem)
.class Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;
.super Ljava/lang/Object;
.source "LikeActionController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/internal/LikeActionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializeToDiskWorkItem"
.end annotation


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private controllerJson:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "cacheKey"    # Ljava/lang/String;
    .param p2, "controllerJson"    # Ljava/lang/String;

    .prologue
    .line 1741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    iput-object p1, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->cacheKey:Ljava/lang/String;

    .line 1743
    iput-object p2, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->controllerJson:Ljava/lang/String;

    .line 1744
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1748
    iget-object v0, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->cacheKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/share/internal/LikeActionController$SerializeToDiskWorkItem;->controllerJson:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/share/internal/LikeActionController;->access$2600(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    return-void
.end method
