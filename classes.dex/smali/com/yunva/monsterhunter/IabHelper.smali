###### Class com.yunva.monsterhunter.IabHelper (com.yunva.monsterhunter.IabHelper)
.class public Lcom/yunva/monsterhunter/IabHelper;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;,
        Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;,
        Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;,
        Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;,
        Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;,
        Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;
    }
.end annotation


# static fields
.field public static final BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE:I = 0x3

.field public static final BILLING_RESPONSE_RESULT_DEVELOPER_ERROR:I = 0x5

.field public static final BILLING_RESPONSE_RESULT_ERROR:I = 0x6

.field public static final BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED:I = 0x7

.field public static final BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED:I = 0x8

.field public static final BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE:I = 0x4

.field public static final BILLING_RESPONSE_RESULT_OK:I = 0x0

.field public static final BILLING_RESPONSE_RESULT_SERVICE_UNAVAILABLE:I = 0x2

.field public static final BILLING_RESPONSE_RESULT_USER_CANCELED:I = 0x1

.field public static final GET_SKU_DETAILS_ITEM_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field public static final GET_SKU_DETAILS_ITEM_TYPE_LIST:Ljava/lang/String; = "ITEM_TYPE_LIST"

.field public static final IABHELPER_BAD_RESPONSE:I = -0x3ea

.field public static final IABHELPER_ERROR_BASE:I = -0x3e8

.field public static final IABHELPER_INVALID_CONSUMPTION:I = -0x3f2

.field public static final IABHELPER_MISSING_TOKEN:I = -0x3ef

.field public static final IABHELPER_REMOTE_EXCEPTION:I = -0x3e9

.field public static final IABHELPER_SEND_INTENT_FAILED:I = -0x3ec

.field public static final IABHELPER_SUBSCRIPTIONS_NOT_AVAILABLE:I = -0x3f1

.field public static final IABHELPER_SUBSCRIPTION_UPDATE_NOT_AVAILABLE:I = -0x3f3

.field public static final IABHELPER_UNKNOWN_ERROR:I = -0x3f0

.field public static final IABHELPER_UNKNOWN_PURCHASE_RESPONSE:I = -0x3ee

.field public static final IABHELPER_USER_CANCELLED:I = -0x3ed

.field public static final IABHELPER_VERIFICATION_FAILED:I = -0x3eb

.field public static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field public static final ITEM_TYPE_INAPP:Ljava/lang/String; = "inapp"

.field public static final ITEM_TYPE_SUBS:Ljava/lang/String; = "subs"

.field public static final RESPONSE_BUY_INTENT:Ljava/lang/String; = "BUY_INTENT"

.field public static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field public static final RESPONSE_GET_SKU_DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field public static final RESPONSE_INAPP_ITEM_LIST:Ljava/lang/String; = "INAPP_PURCHASE_ITEM_LIST"

.field public static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field public static final RESPONSE_INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field public static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field public static final RESPONSE_INAPP_SIGNATURE_LIST:Ljava/lang/String; = "INAPP_DATA_SIGNATURE_LIST"


# instance fields
.field mAsyncInProgress:Z

.field private final mAsyncInProgressLock:Ljava/lang/Object;

.field mAsyncOperation:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mDebugLog:Z

.field mDebugTag:Ljava/lang/String;

.field mDisposeAfterAsync:Z

.field mDisposed:Z

.field mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

.field mPurchasingItemType:Ljava/lang/String;

.field mRequestCode:I

.field mService:Lcom/android/vending/billing/IInAppBillingService;

.field mServiceConn:Landroid/content/ServiceConnection;

.field mSetupDone:Z

.field mSignatureBase64:Ljava/lang/String;

.field mSubscriptionUpdateSupported:Z

.field mSubscriptionsSupported:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "base64PublicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugLog:Z

    .line 78
    const-string v0, "IabHelper"

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 81
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mSetupDone:Z

    .line 84
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    .line 87
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mDisposeAfterAsync:Z

    .line 90
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    .line 93
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 97
    iput-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    .line 179
    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper;->mSignatureBase64:Ljava/lang/String;

    .line 180
    const-string v0, "IAB helper created."

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method private checkNotDisposed()V
    .registers 3

    .prologue
    .line 361
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IabHelper was disposed of, so it cannot be used."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_c
    return-void
.end method

.method public static getResponseDesc(I)Ljava/lang/String;
    .registers 6
    .param p0, "code"    # I

    .prologue
    .line 831
    const-string v3, "0:OK/1:User Canceled/2:Unknown/3:Billing Unavailable/4:Item unavailable/5:Developer Error/6:Error/7:Item Already Owned/8:Item not owned"

    const-string v4, "/"

    .line 834
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "iab_msgs":[Ljava/lang/String;
    const-string v3, "0:OK/-1001:Remote exception during initialization/-1002:Bad response received/-1003:Purchase signature verification failed/-1004:Send intent failed/-1005:User cancelled/-1006:Unknown purchase response/-1007:Missing token/-1008:Unknown error/-1009:Subscriptions not available/-1010:Invalid consumption attempt"

    const-string v4, "/"

    .line 844
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 846
    .local v1, "iabhelper_msgs":[Ljava/lang/String;
    const/16 v3, -0x3e8

    if-gt p0, v3, :cond_36

    .line 847
    rsub-int v2, p0, -0x3e8

    .line 848
    .local v2, "index":I
    if-ltz v2, :cond_1e

    array-length v3, v1

    if-ge v2, v3, :cond_1e

    aget-object v3, v1, v2

    .line 854
    .end local v2    # "index":I
    :goto_1d
    return-object v3

    .line 849
    .restart local v2    # "index":I
    :cond_1e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown IAB Helper Error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 851
    .end local v2    # "index":I
    :cond_36
    if-ltz p0, :cond_3b

    array-length v3, v0

    if-lt p0, v3, :cond_53

    .line 852
    :cond_3b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":Unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1d

    .line 854
    :cond_53
    aget-object v3, v0, p0

    goto :goto_1d
.end method


# virtual methods
.method public canExcuteBuy()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 1120
    iget-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    if-ne v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method checkSetupDone(Ljava/lang/String;)V
    .registers 5
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 860
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mSetupDone:Z

    if-nez v0, :cond_39

    .line 861
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal state for operation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "): IAB helper is not set up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 862
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IAB helper is not set up. Can\'t perform operation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 864
    :cond_39
    return-void
.end method

.method consume(Lcom/yunva/monsterhunter/Purchase;)V
    .registers 10
    .param p1, "itemInfo"    # Lcom/yunva/monsterhunter/Purchase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 736
    const-string v4, "consume"

    invoke-virtual {p0, v4}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 738
    iget-object v4, p1, Lcom/yunva/monsterhunter/Purchase;->mItemType:Ljava/lang/String;

    const-string v5, "inapp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    .line 739
    new-instance v4, Lcom/yunva/monsterhunter/IabException;

    const/16 v5, -0x3f2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Items of type \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/yunva/monsterhunter/Purchase;->mItemType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' can\'t be consumed."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 744
    :cond_35
    :try_start_35
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/Purchase;->getToken()Ljava/lang/String;

    move-result-object v3

    .line 745
    .local v3, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/yunva/monsterhunter/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 746
    .local v2, "sku":Ljava/lang/String;
    if-eqz v3, :cond_47

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 747
    :cond_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t consume "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". No token."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 748
    new-instance v4, Lcom/yunva/monsterhunter/IabException;

    const/16 v5, -0x3ef

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PurchaseInfo is missing token for sku: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_35 .. :try_end_88} :catch_88

    .line 762
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "token":Ljava/lang/String;
    :catch_88
    move-exception v0

    .line 763
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v4, Lcom/yunva/monsterhunter/IabException;

    const/16 v5, -0x3e9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception while consuming. PurchaseInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v0}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 752
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "sku":Ljava/lang/String;
    .restart local v3    # "token":Ljava/lang/String;
    :cond_a4
    :try_start_a4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Consuming sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", token: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 753
    iget-object v4, p0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6, v3}, Lcom/android/vending/billing/IInAppBillingService;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 754
    .local v1, "response":I
    if-nez v1, :cond_ea

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Successfully consumed sku: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 765
    return-void

    .line 758
    :cond_ea
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error consuming consuming sku "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 759
    new-instance v4, Lcom/yunva/monsterhunter/IabException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error consuming sku "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_127
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_127} :catch_88
.end method

.method public consumeAsync(Lcom/yunva/monsterhunter/Purchase;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;)V
    .registers 5
    .param p1, "purchase"    # Lcom/yunva/monsterhunter/Purchase;
    .param p2, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 804
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 805
    const-string v1, "consume"

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 806
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 807
    .local v0, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/yunva/monsterhunter/Purchase;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p2, v1}, Lcom/yunva/monsterhunter/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 809
    return-void
.end method

.method public consumeAsync(Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 4
    .param p2, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yunva/monsterhunter/Purchase;",
            ">;",
            "Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 818
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/yunva/monsterhunter/Purchase;>;"
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 819
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 820
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/yunva/monsterhunter/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V

    .line 821
    return-void
.end method

.method consumeAsyncInternal(Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 11
    .param p2, "singleListener"    # Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;
    .param p3, "multiListener"    # Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yunva/monsterhunter/Purchase;",
            ">;",
            "Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;",
            "Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 1072
    .local p1, "purchases":Ljava/util/List;, "Ljava/util/List<Lcom/yunva/monsterhunter/Purchase;>;"
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 1073
    .local v4, "handler":Landroid/os/Handler;
    const-string v0, "consume"

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 1074
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/yunva/monsterhunter/IabHelper$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/yunva/monsterhunter/IabHelper$3;-><init>(Lcom/yunva/monsterhunter/IabHelper;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1103
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1104
    return-void
.end method

.method public dispose()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 321
    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 322
    :try_start_4
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_2c

    .line 323
    new-instance v0, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t dispose because an async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_29

    throw v0

    :cond_2c
    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_29

    .line 327
    const-string v0, "Disposing."

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mSetupDone:Z

    .line 329
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_49

    .line 330
    const-string v0, "Unbinding from service."

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 333
    :cond_49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    .line 334
    iput-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    .line 335
    iput-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 336
    iput-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 337
    iput-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    .line 338
    return-void
.end method

.method public disposeWhenFinished()V
    .registers 3

    .prologue
    .line 345
    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 346
    :try_start_3
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_11

    .line 347
    const-string v0, "Will dispose after async operation finishes."

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 348
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDisposeAfterAsync:Z

    .line 357
    :goto_f
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_17

    .line 358
    return-void

    .line 351
    :cond_11
    :try_start_11
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->dispose()V
    :try_end_14
    .catch Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_17

    goto :goto_f

    .line 352
    :catch_15
    move-exception v0

    goto :goto_f

    .line 357
    :catchall_17
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public enableDebugLogging(Z)V
    .registers 2
    .param p1, "enable"    # Z

    .prologue
    .line 193
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 194
    iput-boolean p1, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugLog:Z

    .line 195
    return-void
.end method

.method public enableDebugLogging(ZLjava/lang/String;)V
    .registers 3
    .param p1, "enable"    # Z
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 188
    iput-boolean p1, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugLog:Z

    .line 189
    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugTag:Ljava/lang/String;

    .line 190
    return-void
.end method

.method flagEndAsync()V
    .registers 4

    .prologue
    .line 912
    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 913
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ending async operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 914
    const-string v0, ""

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 915
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    .line 916
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDisposeAfterAsync:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_2b

    if-eqz v0, :cond_29

    .line 918
    :try_start_26
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->dispose()V
    :try_end_29
    .catch Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException; {:try_start_26 .. :try_end_29} :catch_2e
    .catchall {:try_start_26 .. :try_end_29} :catchall_2b

    .line 924
    :cond_29
    :goto_29
    :try_start_29
    monitor-exit v1

    .line 925
    return-void

    .line 924
    :catchall_2b
    move-exception v0

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_2b

    throw v0

    .line 919
    :catch_2e
    move-exception v0

    goto :goto_29
.end method

.method flagStartAsync(Ljava/lang/String;)V
    .registers 6
    .param p1, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 899
    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgressLock:Ljava/lang/Object;

    monitor-enter v1

    .line 900
    :try_start_3
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    if-eqz v0, :cond_35

    .line 901
    new-instance v0, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t start async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") because another async operation ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncOperation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is in progress."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 908
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_3 .. :try_end_34} :catchall_32

    throw v0

    .line 905
    :cond_35
    :try_start_35
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncOperation:Ljava/lang/String;

    .line 906
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mAsyncInProgress:Z

    .line 907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting async operation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 908
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_35 .. :try_end_51} :catchall_32

    .line 909
    return-void
.end method

.method getResponseCodeFromBundle(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 868
    const-string v1, "RESPONSE_CODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 869
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_f

    .line 870
    const-string v1, "Bundle with null response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 871
    const/4 v1, 0x0

    .line 874
    .end local v0    # "o":Ljava/lang/Object;
    :goto_e
    return v1

    .line 873
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_f
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1a

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_e

    .line 874
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1a
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_26

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_e

    .line 876
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_26
    const-string v1, "Unexpected type for bundle response code."

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 877
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 878
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for bundle response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getResponseCodeFromIntent(Landroid/content/Intent;)I
    .registers 6
    .param p1, "i"    # Landroid/content/Intent;

    .prologue
    .line 884
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "RESPONSE_CODE"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 885
    .local v0, "o":Ljava/lang/Object;
    if-nez v0, :cond_13

    .line 886
    const-string v1, "Intent with no response code, assuming OK (known issue)"

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 887
    const/4 v1, 0x0

    .line 890
    .end local v0    # "o":Ljava/lang/Object;
    :goto_12
    return v1

    .line 889
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_13
    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_1e

    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_12

    .line 890
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_1e
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/Long;

    .end local v0    # "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-int v1, v2

    goto :goto_12

    .line 892
    .restart local v0    # "o":Ljava/lang/Object;
    :cond_2a
    const-string v1, "Unexpected type for intent response code."

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 893
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 894
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected type for intent response code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 520
    iget v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mRequestCode:I

    if-eq p1, v8, :cond_6

    const/4 v8, 0x0

    .line 599
    :goto_5
    return v8

    .line 522
    :cond_6
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 523
    const-string v8, "handleActivityResult"

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 528
    if-nez p3, :cond_2d

    .line 529
    const-string v8, "Null data in IAB activity result."

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 530
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Null data in IAB result"

    invoke-direct {v6, v8, v9}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 531
    .local v6, "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_2b

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    .line 532
    :cond_2b
    const/4 v8, 0x1

    goto :goto_5

    .line 535
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_2d
    invoke-virtual {p0, p3}, Lcom/yunva/monsterhunter/IabHelper;->getResponseCodeFromIntent(Landroid/content/Intent;)I

    move-result v5

    .line 536
    .local v5, "responseCode":I
    const-string v8, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    .local v4, "purchaseData":Ljava/lang/String;
    const-string v8, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "dataSignature":Ljava/lang/String;
    const/4 v8, -0x1

    if-ne p2, v8, :cond_16a

    if-nez v5, :cond_16a

    .line 540
    const-string v8, "Successful resultcode from purchase activity."

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 541
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 542
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Data signature: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 543
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected item type: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 546
    if-eqz v4, :cond_a9

    if-nez v0, :cond_e2

    .line 547
    :cond_a9
    const-string v8, "BUG: either purchaseData or dataSignature is null."

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 548
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 549
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const/16 v8, -0x3f0

    const-string v9, "IAB returned null purchaseData or dataSignature"

    invoke-direct {v6, v8, v9}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 550
    .restart local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_df

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    .line 551
    :cond_df
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 554
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_e2
    const/4 v2, 0x0

    .line 556
    .local v2, "purchase":Lcom/yunva/monsterhunter/Purchase;
    :try_start_e3
    new-instance v3, Lcom/yunva/monsterhunter/Purchase;

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    invoke-direct {v3, v8, v4, v0}, Lcom/yunva/monsterhunter/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ea
    .catch Lorg/json/JSONException; {:try_start_e3 .. :try_end_ea} :catch_14b

    .line 557
    .end local v2    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    .local v3, "purchase":Lcom/yunva/monsterhunter/Purchase;
    :try_start_ea
    invoke-virtual {v3}, Lcom/yunva/monsterhunter/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 560
    .local v7, "sku":Ljava/lang/String;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v8, v4, v0}, Lcom/yunva/monsterhunter/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_132

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase signature verification FAILED for sku "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 562
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const/16 v8, -0x3eb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Signature verification failed for sku "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 563
    .restart local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_12f

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    invoke-interface {v8, v6, v3}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    .line 564
    :cond_12f
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 566
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_132
    const-string v8, "Purchase signature successfully verified."

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V
    :try_end_137
    .catch Lorg/json/JSONException; {:try_start_ea .. :try_end_137} :catch_206

    .line 576
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    .line 577
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    new-instance v9, Lcom/yunva/monsterhunter/IabResult;

    const/4 v10, 0x0

    const-string v11, "Success"

    invoke-direct {v9, v10, v11}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v8, v9, v3}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    .line 599
    .end local v3    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    .end local v7    # "sku":Ljava/lang/String;
    :cond_148
    :goto_148
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 568
    .restart local v2    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    :catch_14b
    move-exception v1

    .line 569
    .local v1, "e":Lorg/json/JSONException;
    :goto_14c
    const-string v8, "Failed to parse purchase data."

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 570
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 571
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const/16 v8, -0x3ea

    const-string v9, "Failed to parse purchase data."

    invoke-direct {v6, v8, v9}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 572
    .restart local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_167

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    .line 573
    :cond_167
    const/4 v8, 0x1

    goto/16 :goto_5

    .line 580
    .end local v1    # "e":Lorg/json/JSONException;
    .end local v2    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_16a
    const/4 v8, -0x1

    if-ne p2, v8, :cond_199

    .line 582
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Result code was OK but in-app billing response was not OK: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 583
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    .line 584
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const-string v8, "Problem purchashing item."

    invoke-direct {v6, v5, v8}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 585
    .restart local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    goto :goto_148

    .line 588
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_199
    if-nez p2, :cond_1c9

    .line 589
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase canceled - Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v5}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 590
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const/16 v8, -0x3ed

    const-string v9, "User canceled."

    invoke-direct {v6, v8, v9}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 591
    .restart local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    goto :goto_148

    .line 594
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_1c9
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Purchase failed. Result code: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ". Response: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 595
    invoke-static {v5}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 594
    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 596
    new-instance v6, Lcom/yunva/monsterhunter/IabResult;

    const/16 v8, -0x3ee

    const-string v9, "Unknown purchase response."

    invoke-direct {v6, v8, v9}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 597
    .restart local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    if-eqz v8, :cond_148

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    const/4 v9, 0x0

    invoke-interface {v8, v6, v9}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    goto/16 :goto_148

    .line 568
    .end local v6    # "result":Lcom/yunva/monsterhunter/IabResult;
    .restart local v3    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    :catch_206
    move-exception v1

    move-object v2, v3

    .end local v3    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    .restart local v2    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    goto/16 :goto_14c
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 393
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 399
    const-string v3, "inapp"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 22
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "itemType"    # Ljava/lang/String;
    .param p5, "requestCode"    # I
    .param p6, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;
    .param p7, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 436
    .local p4, "oldSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 437
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 438
    const-string v1, "launchPurchaseFlow"

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 441
    const-string v1, "subs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    iget-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    if-nez v1, :cond_30

    .line 442
    new-instance v11, Lcom/yunva/monsterhunter/IabResult;

    const/16 v1, -0x3f1

    const-string v2, "Subscriptions are not available."

    invoke-direct {v11, v1, v2}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 444
    .local v11, "r":Lcom/yunva/monsterhunter/IabResult;
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 445
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v11, v1}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    .line 503
    .end local v11    # "r":Lcom/yunva/monsterhunter/IabResult;
    :cond_2f
    :goto_2f
    return-void

    .line 450
    :cond_30
    :try_start_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constructing buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 452
    if-eqz p4, :cond_5c

    invoke-interface/range {p4 .. p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d4

    .line 454
    :cond_5c
    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    invoke-interface/range {v1 .. v6}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 468
    .local v8, "buyIntentBundle":Landroid/os/Bundle;
    :goto_6f
    invoke-virtual {p0, v8}, Lcom/yunva/monsterhunter/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v12

    .line 469
    .local v12, "response":I
    if-eqz v12, :cond_137

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to buy item, Error response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v12}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 472
    new-instance v13, Lcom/yunva/monsterhunter/IabResult;

    const-string v1, "Unable to buy item"

    invoke-direct {v13, v12, v1}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 473
    .local v13, "result":Lcom/yunva/monsterhunter/IabResult;
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v1}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V
    :try_end_a1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_30 .. :try_end_a1} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_a1} :catch_ee

    goto :goto_2f

    .line 487
    .end local v8    # "buyIntentBundle":Landroid/os/Bundle;
    .end local v12    # "response":I
    .end local v13    # "result":Lcom/yunva/monsterhunter/IabResult;
    :catch_a2
    move-exception v9

    .line 488
    .local v9, "e":Landroid/content/IntentSender$SendIntentException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendIntentException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v9}, Landroid/content/IntentSender$SendIntentException;->printStackTrace()V

    .line 490
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 492
    new-instance v13, Lcom/yunva/monsterhunter/IabResult;

    const/16 v1, -0x3ec

    const-string v2, "Failed to send intent."

    invoke-direct {v13, v1, v2}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 493
    .restart local v13    # "result":Lcom/yunva/monsterhunter/IabResult;
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v1}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    goto/16 :goto_2f

    .line 458
    .end local v9    # "e":Landroid/content/IntentSender$SendIntentException;
    .end local v13    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_d4
    :try_start_d4
    iget-boolean v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z

    if-nez v1, :cond_120

    .line 459
    new-instance v11, Lcom/yunva/monsterhunter/IabResult;

    const/16 v1, -0x3f3

    const-string v2, "Subscription updates are not available."

    invoke-direct {v11, v1, v2}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 461
    .restart local v11    # "r":Lcom/yunva/monsterhunter/IabResult;
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 462
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v11, v1}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V
    :try_end_ec
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_d4 .. :try_end_ec} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_d4 .. :try_end_ec} :catch_ee

    goto/16 :goto_2f

    .line 495
    .end local v11    # "r":Lcom/yunva/monsterhunter/IabResult;
    :catch_ee
    move-exception v9

    .line 496
    .local v9, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException while launching purchase flow for sku "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v9}, Landroid/os/RemoteException;->printStackTrace()V

    .line 498
    invoke-virtual {p0}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 500
    new-instance v13, Lcom/yunva/monsterhunter/IabResult;

    const/16 v1, -0x3e9

    const-string v2, "Remote exception while starting purchase flow"

    invoke-direct {v13, v1, v2}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 501
    .restart local v13    # "result":Lcom/yunva/monsterhunter/IabResult;
    if-eqz p6, :cond_2f

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, v13, v1}, Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V

    goto/16 :goto_2f

    .line 465
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v13    # "result":Lcom/yunva/monsterhunter/IabResult;
    :cond_120
    :try_start_120
    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v2, 0x5

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    invoke-interface/range {v1 .. v7}, Lcom/android/vending/billing/IInAppBillingService;->getBuyIntentToReplaceSkus(ILjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .restart local v8    # "buyIntentBundle":Landroid/os/Bundle;
    goto/16 :goto_6f

    .line 477
    .restart local v12    # "response":I
    :cond_137
    const-string v1, "BUY_INTENT"

    invoke-virtual {v8, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/PendingIntent;

    .line 478
    .local v10, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Launching buy intent for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Request code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 479
    move/from16 v0, p5

    iput v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mRequestCode:I

    .line 480
    move-object/from16 v0, p6

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchaseListener:Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;

    .line 481
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mPurchasingItemType:Ljava/lang/String;

    .line 482
    invoke-virtual {v10}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 484
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v1, 0x0

    .line 485
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object v1, p1

    move/from16 v3, p5

    .line 482
    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_199
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_120 .. :try_end_199} :catch_a2
    .catch Landroid/os/RemoteException; {:try_start_120 .. :try_end_199} :catch_ee

    goto/16 :goto_2f
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;)V
    .registers 11
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 404
    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yunva/monsterhunter/IabHelper;->launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public launchSubscriptionPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V
    .registers 14
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "sku"    # Ljava/lang/String;
    .param p3, "requestCode"    # I
    .param p4, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;
    .param p5, "extraData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 410
    const-string v3, "subs"

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/yunva/monsterhunter/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method logDebug(Ljava/lang/String;)V
    .registers 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1107
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugLog:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    :cond_9
    return-void
.end method

.method logError(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    return-void
.end method

.method logWarn(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mDebugTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In-app billing warning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    return-void
.end method

.method public queryInventory()Lcom/yunva/monsterhunter/Inventory;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 603
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/yunva/monsterhunter/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/yunva/monsterhunter/Inventory;

    move-result-object v0

    return-object v0
.end method

.method public queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/yunva/monsterhunter/Inventory;
    .registers 10
    .param p1, "querySkuDetails"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/yunva/monsterhunter/Inventory;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabException;
        }
    .end annotation

    .prologue
    .line 621
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 622
    const-string v3, "queryInventory"

    invoke-virtual {p0, v3}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 624
    :try_start_8
    new-instance v1, Lcom/yunva/monsterhunter/Inventory;

    invoke-direct {v1}, Lcom/yunva/monsterhunter/Inventory;-><init>()V

    .line 625
    .local v1, "inv":Lcom/yunva/monsterhunter/Inventory;
    const-string v3, "inapp"

    invoke-virtual {p0, v1, v3}, Lcom/yunva/monsterhunter/IabHelper;->queryPurchases(Lcom/yunva/monsterhunter/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 626
    .local v2, "r":I
    if-eqz v2, :cond_28

    .line 627
    new-instance v3, Lcom/yunva/monsterhunter/IabException;

    const-string v4, "Error refreshing inventory (querying owned items)."

    invoke-direct {v3, v2, v4}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_1d} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_1d} :catch_3a

    .line 654
    .end local v1    # "inv":Lcom/yunva/monsterhunter/Inventory;
    .end local v2    # "r":I
    :catch_1d
    move-exception v0

    .line 655
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Lcom/yunva/monsterhunter/IabException;

    const/16 v4, -0x3e9

    const-string v5, "Remote exception while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 630
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "inv":Lcom/yunva/monsterhunter/Inventory;
    .restart local v2    # "r":I
    :cond_28
    if-eqz p1, :cond_45

    .line 631
    :try_start_2a
    const-string v3, "inapp"

    invoke-virtual {p0, v3, v1, p2}, Lcom/yunva/monsterhunter/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/yunva/monsterhunter/Inventory;Ljava/util/List;)I

    move-result v2

    .line 632
    if-eqz v2, :cond_45

    .line 633
    new-instance v3, Lcom/yunva/monsterhunter/IabException;

    const-string v4, "Error refreshing inventory (querying prices of items)."

    invoke-direct {v3, v2, v4}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3a} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_3a} :catch_3a

    .line 657
    .end local v1    # "inv":Lcom/yunva/monsterhunter/Inventory;
    .end local v2    # "r":I
    :catch_3a
    move-exception v0

    .line 658
    .local v0, "e":Lorg/json/JSONException;
    new-instance v3, Lcom/yunva/monsterhunter/IabException;

    const/16 v4, -0x3ea

    const-string v5, "Error parsing JSON response while refreshing inventory."

    invoke-direct {v3, v4, v5, v0}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;Ljava/lang/Exception;)V

    throw v3

    .line 638
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "inv":Lcom/yunva/monsterhunter/Inventory;
    .restart local v2    # "r":I
    :cond_45
    :try_start_45
    iget-boolean v3, p0, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    if-eqz v3, :cond_6b

    .line 639
    const-string v3, "subs"

    invoke-virtual {p0, v1, v3}, Lcom/yunva/monsterhunter/IabHelper;->queryPurchases(Lcom/yunva/monsterhunter/Inventory;Ljava/lang/String;)I

    move-result v2

    .line 640
    if-eqz v2, :cond_59

    .line 641
    new-instance v3, Lcom/yunva/monsterhunter/IabException;

    const-string v4, "Error refreshing inventory (querying owned subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 644
    :cond_59
    if-eqz p1, :cond_6b

    .line 645
    const-string v3, "subs"

    invoke-virtual {p0, v3, v1, p3}, Lcom/yunva/monsterhunter/IabHelper;->querySkuDetails(Ljava/lang/String;Lcom/yunva/monsterhunter/Inventory;Ljava/util/List;)I

    move-result v2

    .line 646
    if-eqz v2, :cond_6b

    .line 647
    new-instance v3, Lcom/yunva/monsterhunter/IabException;

    const-string v4, "Error refreshing inventory (querying prices of subscriptions)."

    invoke-direct {v3, v2, v4}, Lcom/yunva/monsterhunter/IabException;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_6b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_6b} :catch_1d
    .catch Lorg/json/JSONException; {:try_start_45 .. :try_end_6b} :catch_3a

    .line 652
    :cond_6b
    return-object v1
.end method

.method public queryInventoryAsync(Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;)V
    .registers 4
    .param p1, "listener"    # Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 722
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1, p1}, Lcom/yunva/monsterhunter/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;)V

    .line 723
    return-void
.end method

.method public queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;)V
    .registers 13
    .param p1, "querySkuDetails"    # Z
    .param p4, "listener"    # Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
        }
    .end annotation

    .prologue
    .line 690
    .local p2, "moreItemSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "moreSubsSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 691
    .local v6, "handler":Landroid/os/Handler;
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 692
    const-string v0, "queryInventory"

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->checkSetupDone(Ljava/lang/String;)V

    .line 693
    const-string v0, "refresh inventory"

    invoke-virtual {p0, v0}, Lcom/yunva/monsterhunter/IabHelper;->flagStartAsync(Ljava/lang/String;)V

    .line 694
    new-instance v7, Ljava/lang/Thread;

    new-instance v0, Lcom/yunva/monsterhunter/IabHelper$2;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/yunva/monsterhunter/IabHelper$2;-><init>(Lcom/yunva/monsterhunter/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V

    invoke-direct {v7, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 717
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 718
    return-void
.end method

.method queryPurchases(Lcom/yunva/monsterhunter/Inventory;Ljava/lang/String;)I
    .registers 19
    .param p1, "inv"    # Lcom/yunva/monsterhunter/Inventory;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 939
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Querying owned items, item type: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 940
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Package name: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 941
    const/4 v12, 0x0

    .line 942
    .local v12, "verificationFailed":Z
    const/4 v1, 0x0

    .line 945
    .local v1, "continueToken":Ljava/lang/String;
    :cond_3c
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Calling getPurchases with continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 946
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v13, v14, v15, v0, v1}, Lcom/android/vending/billing/IInAppBillingService;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 949
    .local v3, "ownedItems":Landroid/os/Bundle;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/yunva/monsterhunter/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v8

    .line 950
    .local v8, "response":I
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Owned items response: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 951
    if-eqz v8, :cond_a8

    .line 952
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getPurchases() failed: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v8}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 997
    .end local v8    # "response":I
    :goto_a7
    return v8

    .line 955
    .restart local v8    # "response":I
    :cond_a8
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    .line 956
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c0

    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    .line 957
    invoke-virtual {v3, v13}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_ca

    .line 958
    :cond_c0
    const-string v13, "Bundle returned from getPurchases() doesn\'t contain required fields."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 959
    const/16 v8, -0x3ea

    goto :goto_a7

    .line 962
    :cond_ca
    const-string v13, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 964
    .local v4, "ownedSkus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 966
    .local v7, "purchaseDataList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v13, "INAPP_DATA_SIGNATURE_LIST"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 969
    .local v10, "signatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_dd
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_188

    .line 970
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 971
    .local v6, "purchaseData":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 972
    .local v9, "signature":Ljava/lang/String;
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 973
    .local v11, "sku":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/yunva/monsterhunter/IabHelper;->mSignatureBase64:Ljava/lang/String;

    invoke-static {v13, v6, v9}, Lcom/yunva/monsterhunter/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_14f

    .line 974
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Sku is owned: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 975
    new-instance v5, Lcom/yunva/monsterhunter/Purchase;

    move-object/from16 v0, p2

    invoke-direct {v5, v0, v6, v9}, Lcom/yunva/monsterhunter/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    .local v5, "purchase":Lcom/yunva/monsterhunter/Purchase;
    invoke-virtual {v5}, Lcom/yunva/monsterhunter/Purchase;->getToken()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_147

    .line 978
    const-string v13, "BUG: empty/null token!"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 979
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 983
    :cond_147
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/yunva/monsterhunter/Inventory;->addPurchase(Lcom/yunva/monsterhunter/Purchase;)V

    .line 969
    .end local v5    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    :goto_14c
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 986
    :cond_14f
    const-string v13, "Purchase signature verification **FAILED**. Not adding item."

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logWarn(Ljava/lang/String;)V

    .line 987
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Purchase data: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 988
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "   Signature: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 989
    const/4 v12, 0x1

    goto :goto_14c

    .line 993
    .end local v6    # "purchaseData":Ljava/lang/String;
    .end local v9    # "signature":Ljava/lang/String;
    .end local v11    # "sku":Ljava/lang/String;
    :cond_188
    const-string v13, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 994
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Continuation token: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 995
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3c

    .line 997
    if-eqz v12, :cond_1b3

    const/16 v13, -0x3eb

    :goto_1b0
    move v8, v13

    goto/16 :goto_a7

    :cond_1b3
    const/4 v13, 0x0

    goto :goto_1b0
.end method

.method querySkuDetails(Ljava/lang/String;Lcom/yunva/monsterhunter/Inventory;Ljava/util/List;)I
    .registers 27
    .param p1, "itemType"    # Ljava/lang/String;
    .param p2, "inv"    # Lcom/yunva/monsterhunter/Inventory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yunva/monsterhunter/Inventory;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1002
    .local p3, "moreSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v19, "Querying SKU details."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1003
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1004
    .local v15, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/Inventory;->getAllOwnedSkus(Ljava/lang/String;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1005
    if-eqz p3, :cond_37

    .line 1006
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_21
    :goto_21
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_37

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1007
    .local v13, "sku":Ljava/lang/String;
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_21

    .line 1008
    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 1013
    .end local v13    # "sku":Ljava/lang/String;
    :cond_37
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_48

    .line 1014
    const-string v19, "queryPrices: nothing to do because there are no SKUs."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1015
    const/4 v10, 0x0

    .line 1065
    :goto_47
    return v10

    .line 1019
    :cond_48
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    .local v8, "packs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    div-int/lit8 v7, v19, 0x14

    .line 1022
    .local v7, "n":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v19

    rem-int/lit8 v6, v19, 0x14

    .line 1023
    .local v6, "mod":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5a
    if-ge v5, v7, :cond_8d

    .line 1024
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v17, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v5, 0x14

    mul-int/lit8 v20, v5, 0x14

    add-int/lit8 v20, v20, 0x14

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_73
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_85

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1026
    .local v12, "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_73

    .line 1028
    .end local v12    # "s":Ljava/lang/String;
    :cond_85
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 1030
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8d
    if-eqz v6, :cond_bd

    .line 1031
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 1032
    .restart local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    mul-int/lit8 v19, v7, 0x14

    mul-int/lit8 v20, v7, 0x14

    add-int v20, v20, v6

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v15, v0, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_a6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1033
    .restart local v12    # "s":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a6

    .line 1035
    .end local v12    # "s":Ljava/lang/String;
    :cond_b8
    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    .end local v17    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_bd
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_c1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_17b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1039
    .local v16, "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 1040
    .local v9, "querySkus":Landroid/os/Bundle;
    const-string v20, "ITEM_ID_LIST"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    move-object/from16 v20, v0

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, p1

    invoke-interface {v0, v1, v2, v3, v9}, Lcom/android/vending/billing/IInAppBillingService;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v14

    .line 1044
    .local v14, "skuDetails":Landroid/os/Bundle;
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_138

    .line 1045
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/yunva/monsterhunter/IabHelper;->getResponseCodeFromBundle(Landroid/os/Bundle;)I

    move-result v10

    .line 1046
    .local v10, "response":I
    if-eqz v10, :cond_12b

    .line 1047
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "getSkuDetails() failed: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-static {v10}, Lcom/yunva/monsterhunter/IabHelper;->getResponseDesc(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    goto/16 :goto_47

    .line 1050
    :cond_12b
    const-string v19, "getSkuDetails() returned a bundle with neither an error nor a detail list."

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logError(Ljava/lang/String;)V

    .line 1051
    const/16 v10, -0x3ea

    goto/16 :goto_47

    .line 1055
    .end local v10    # "response":I
    :cond_138
    const-string v20, "DETAILS_LIST"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1058
    .local v11, "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_144
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_c1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1059
    .local v18, "thisResponse":Ljava/lang/String;
    new-instance v4, Lcom/yunva/monsterhunter/SkuDetails;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Lcom/yunva/monsterhunter/SkuDetails;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    .local v4, "d":Lcom/yunva/monsterhunter/SkuDetails;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Got sku details: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 1061
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Lcom/yunva/monsterhunter/Inventory;->addSkuDetails(Lcom/yunva/monsterhunter/SkuDetails;)V

    goto :goto_144

    .line 1065
    .end local v4    # "d":Lcom/yunva/monsterhunter/SkuDetails;
    .end local v9    # "querySkus":Landroid/os/Bundle;
    .end local v11    # "responseList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "skuDetails":Landroid/os/Bundle;
    .end local v16    # "skuPartList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "thisResponse":Ljava/lang/String;
    :cond_17b
    const/4 v10, 0x0

    goto/16 :goto_47
.end method

.method public startSetup(Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 220
    iget-boolean v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mSetupDone:Z

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "IAB helper is already set up."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    :cond_f
    const-string v2, "Starting in-app billing setup."

    invoke-virtual {p0, v2}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 224
    new-instance v2, Lcom/yunva/monsterhunter/IabHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/yunva/monsterhunter/IabHelper$1;-><init>(Lcom/yunva/monsterhunter/IabHelper;Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;)V

    iput-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    .line 297
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 298
    .local v1, "serviceIntent":Landroid/content/Intent;
    const-string v2, "com.android.vending"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 300
    .local v0, "intentServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_43

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    .line 302
    iget-object v2, p0, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper;->mServiceConn:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 312
    :cond_42
    :goto_42
    return-void

    .line 306
    :cond_43
    if-eqz p1, :cond_42

    .line 307
    new-instance v2, Lcom/yunva/monsterhunter/IabResult;

    const/4 v3, 0x3

    const-string v4, "Billing service unavailable on device."

    invoke-direct {v2, v3, v4}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v2}, Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V

    goto :goto_42
.end method

.method public subscriptionsSupported()Z
    .registers 2

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/yunva/monsterhunter/IabHelper;->checkNotDisposed()V

    .line 367
    iget-boolean v0, p0, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    return v0
.end method

###### Class com.yunva.monsterhunter.IabHelper.AnonymousClass1 (com.yunva.monsterhunter.IabHelper$1)
.class Lcom/yunva/monsterhunter/IabHelper$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/IabHelper;->startSetup(Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/IabHelper;

.field final synthetic val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/IabHelper;Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;)V
    .registers 3
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/IabHelper;

    .prologue
    .line 224
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 10
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 233
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-boolean v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    if-eqz v3, :cond_8

    .line 294
    :cond_7
    :goto_7
    return-void

    .line 234
    :cond_8
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const-string v4, "Billing service connected."

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 235
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    invoke-static {p2}, Lcom/android/vending/billing/IInAppBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;

    move-result-object v4

    iput-object v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 236
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-object v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "packageName":Ljava/lang/String;
    :try_start_1f
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const-string v4, "Checking for in-app billing 3 support."

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 241
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-object v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "inapp"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 242
    .local v2, "response":I
    if-eqz v2, :cond_65

    .line 243
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_43

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/yunva/monsterhunter/IabResult;

    const-string v5, "Error checking for billing v3 support."

    invoke-direct {v4, v2, v5}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V

    .line 247
    :cond_43
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    .line 248
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_4d} :catch_4e

    goto :goto_7

    .line 282
    .end local v2    # "response":I
    :catch_4e
    move-exception v0

    .line 283
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_61

    .line 284
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/yunva/monsterhunter/IabResult;

    const/16 v5, -0x3e9

    const-string v6, "RemoteException while setting up in-app billing."

    invoke-direct {v4, v5, v6}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V

    .line 287
    :cond_61
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_7

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "response":I
    :cond_65
    :try_start_65
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "In-app billing version 3 supported for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-object v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x5

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 257
    if-nez v2, :cond_b8

    .line 258
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const-string v4, "Subscription re-signup AVAILABLE."

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 259
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z

    .line 265
    :goto_96
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-boolean v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z

    if-eqz v3, :cond_c5

    .line 266
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    .line 280
    :goto_a1
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSetupDone:Z
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_a6} :catch_4e

    .line 291
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    if-eqz v3, :cond_7

    .line 292
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->val$listener:Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;

    new-instance v4, Lcom/yunva/monsterhunter/IabResult;

    const-string v5, "Setup successful."

    invoke-direct {v4, v6, v5}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;->onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V

    goto/16 :goto_7

    .line 261
    :cond_b8
    :try_start_b8
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const-string v4, "Subscription re-signup not available."

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z

    goto :goto_96

    .line 269
    :cond_c5
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-object v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    const/4 v4, 0x3

    const-string v5, "subs"

    invoke-interface {v3, v4, v1, v5}, Lcom/android/vending/billing/IInAppBillingService;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 270
    if-nez v2, :cond_df

    .line 271
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const-string v4, "Subscriptions AVAILABLE."

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 272
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    goto :goto_a1

    .line 274
    :cond_df
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Subscriptions NOT AVAILABLE. Response: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 275
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionsSupported:Z

    .line 276
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/yunva/monsterhunter/IabHelper;->mSubscriptionUpdateSupported:Z
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_101} :catch_4e

    goto :goto_a1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const-string v1, "Billing service disconnected."

    invoke-virtual {v0, v1}, Lcom/yunva/monsterhunter/IabHelper;->logDebug(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper$1;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/yunva/monsterhunter/IabHelper;->mService:Lcom/android/vending/billing/IInAppBillingService;

    .line 229
    return-void
.end method

###### Class com.yunva.monsterhunter.IabHelper.AnonymousClass2 (com.yunva.monsterhunter.IabHelper$2)
.class Lcom/yunva/monsterhunter/IabHelper$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$listener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

.field final synthetic val$moreItemSkus:Ljava/util/List;

.field final synthetic val$moreSubsSkus:Ljava/util/List;

.field final synthetic val$querySkuDetails:Z


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/IabHelper;ZLjava/util/List;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/IabHelper;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper$2;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iput-boolean p2, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$querySkuDetails:Z

    iput-object p3, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iput-object p4, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    iput-object p5, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$listener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

    iput-object p6, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 696
    new-instance v3, Lcom/yunva/monsterhunter/IabResult;

    const/4 v5, 0x0

    const-string v6, "Inventory refresh successful."

    invoke-direct {v3, v5, v6}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    .line 697
    .local v3, "result":Lcom/yunva/monsterhunter/IabResult;
    const/4 v1, 0x0

    .line 699
    .local v1, "inv":Lcom/yunva/monsterhunter/Inventory;
    :try_start_9
    iget-object v5, p0, Lcom/yunva/monsterhunter/IabHelper$2;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-boolean v6, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$querySkuDetails:Z

    iget-object v7, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$moreItemSkus:Ljava/util/List;

    iget-object v8, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$moreSubsSkus:Ljava/util/List;

    invoke-virtual {v5, v6, v7, v8}, Lcom/yunva/monsterhunter/IabHelper;->queryInventory(ZLjava/util/List;Ljava/util/List;)Lcom/yunva/monsterhunter/Inventory;
    :try_end_14
    .catch Lcom/yunva/monsterhunter/IabException; {:try_start_9 .. :try_end_14} :catch_31

    move-result-object v1

    .line 705
    :goto_15
    iget-object v5, p0, Lcom/yunva/monsterhunter/IabHelper$2;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    invoke-virtual {v5}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 707
    move-object v4, v3

    .line 708
    .local v4, "result_f":Lcom/yunva/monsterhunter/IabResult;
    move-object v2, v1

    .line 709
    .local v2, "inv_f":Lcom/yunva/monsterhunter/Inventory;
    iget-object v5, p0, Lcom/yunva/monsterhunter/IabHelper$2;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-boolean v5, v5, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    if-nez v5, :cond_30

    iget-object v5, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$listener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

    if-eqz v5, :cond_30

    .line 710
    iget-object v5, p0, Lcom/yunva/monsterhunter/IabHelper$2;->val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/yunva/monsterhunter/IabHelper$2$1;

    invoke-direct {v6, p0, v4, v2}, Lcom/yunva/monsterhunter/IabHelper$2$1;-><init>(Lcom/yunva/monsterhunter/IabHelper$2;Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Inventory;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 716
    :cond_30
    return-void

    .line 701
    .end local v2    # "inv_f":Lcom/yunva/monsterhunter/Inventory;
    .end local v4    # "result_f":Lcom/yunva/monsterhunter/IabResult;
    :catch_31
    move-exception v0

    .line 702
    .local v0, "ex":Lcom/yunva/monsterhunter/IabException;
    invoke-virtual {v0}, Lcom/yunva/monsterhunter/IabException;->getResult()Lcom/yunva/monsterhunter/IabResult;

    move-result-object v3

    goto :goto_15
.end method

###### Class com.yunva.monsterhunter.IabHelper.AnonymousClass2.AnonymousClass1 (com.yunva.monsterhunter.IabHelper$2$1)
.class Lcom/yunva/monsterhunter/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yunva/monsterhunter/IabHelper$2;

.field final synthetic val$inv_f:Lcom/yunva/monsterhunter/Inventory;

.field final synthetic val$result_f:Lcom/yunva/monsterhunter/IabResult;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/IabHelper$2;Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Inventory;)V
    .registers 4
    .param p1, "this$1"    # Lcom/yunva/monsterhunter/IabHelper$2;

    .prologue
    .line 710
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper$2$1;->this$1:Lcom/yunva/monsterhunter/IabHelper$2;

    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper$2$1;->val$result_f:Lcom/yunva/monsterhunter/IabResult;

    iput-object p3, p0, Lcom/yunva/monsterhunter/IabHelper$2$1;->val$inv_f:Lcom/yunva/monsterhunter/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 712
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper$2$1;->this$1:Lcom/yunva/monsterhunter/IabHelper$2;

    iget-object v0, v0, Lcom/yunva/monsterhunter/IabHelper$2;->val$listener:Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper$2$1;->val$result_f:Lcom/yunva/monsterhunter/IabResult;

    iget-object v2, p0, Lcom/yunva/monsterhunter/IabHelper$2$1;->val$inv_f:Lcom/yunva/monsterhunter/Inventory;

    invoke-interface {v0, v1, v2}, Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Inventory;)V

    .line 713
    return-void
.end method

###### Class com.yunva.monsterhunter.IabHelper.AnonymousClass3 (com.yunva.monsterhunter.IabHelper$3)
.class Lcom/yunva/monsterhunter/IabHelper$3;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/IabHelper;->consumeAsyncInternal(Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yunva/monsterhunter/IabHelper;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$multiListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;

.field final synthetic val$purchases:Ljava/util/List;

.field final synthetic val$singleListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/IabHelper;Ljava/util/List;Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;Landroid/os/Handler;Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;)V
    .registers 6
    .param p1, "this$0"    # Lcom/yunva/monsterhunter/IabHelper;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper$3;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$purchases:Ljava/util/List;

    iput-object p3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$singleListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

    iput-object p4, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$multiListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 1076
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Lcom/yunva/monsterhunter/IabResult;>;"
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yunva/monsterhunter/Purchase;

    .line 1079
    .local v1, "purchase":Lcom/yunva/monsterhunter/Purchase;
    :try_start_17
    iget-object v4, p0, Lcom/yunva/monsterhunter/IabHelper$3;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    invoke-virtual {v4, v1}, Lcom/yunva/monsterhunter/IabHelper;->consume(Lcom/yunva/monsterhunter/Purchase;)V

    .line 1080
    new-instance v4, Lcom/yunva/monsterhunter/IabResult;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successful consume of sku "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/yunva/monsterhunter/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/yunva/monsterhunter/IabResult;-><init>(ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lcom/yunva/monsterhunter/IabException; {:try_start_17 .. :try_end_3c} :catch_3d

    goto :goto_b

    .line 1082
    :catch_3d
    move-exception v0

    .line 1083
    .local v0, "ex":Lcom/yunva/monsterhunter/IabException;
    invoke-virtual {v0}, Lcom/yunva/monsterhunter/IabException;->getResult()Lcom/yunva/monsterhunter/IabResult;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1087
    .end local v0    # "ex":Lcom/yunva/monsterhunter/IabException;
    .end local v1    # "purchase":Lcom/yunva/monsterhunter/Purchase;
    :cond_46
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    invoke-virtual {v3}, Lcom/yunva/monsterhunter/IabHelper;->flagEndAsync()V

    .line 1088
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-boolean v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    if-nez v3, :cond_5f

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$singleListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

    if-eqz v3, :cond_5f

    .line 1089
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/yunva/monsterhunter/IabHelper$3$1;

    invoke-direct {v4, p0, v2}, Lcom/yunva/monsterhunter/IabHelper$3$1;-><init>(Lcom/yunva/monsterhunter/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1095
    :cond_5f
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->this$0:Lcom/yunva/monsterhunter/IabHelper;

    iget-boolean v3, v3, Lcom/yunva/monsterhunter/IabHelper;->mDisposed:Z

    if-nez v3, :cond_73

    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$multiListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;

    if-eqz v3, :cond_73

    .line 1096
    iget-object v3, p0, Lcom/yunva/monsterhunter/IabHelper$3;->val$handler:Landroid/os/Handler;

    new-instance v4, Lcom/yunva/monsterhunter/IabHelper$3$2;

    invoke-direct {v4, p0, v2}, Lcom/yunva/monsterhunter/IabHelper$3$2;-><init>(Lcom/yunva/monsterhunter/IabHelper$3;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1102
    :cond_73
    return-void
.end method

###### Class com.yunva.monsterhunter.IabHelper.AnonymousClass3.AnonymousClass1 (com.yunva.monsterhunter.IabHelper$3$1)
.class Lcom/yunva/monsterhunter/IabHelper$3$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yunva/monsterhunter/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/IabHelper$3;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lcom/yunva/monsterhunter/IabHelper$3;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper$3$1;->this$1:Lcom/yunva/monsterhunter/IabHelper$3;

    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1091
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper$3$1;->this$1:Lcom/yunva/monsterhunter/IabHelper$3;

    iget-object v2, v0, Lcom/yunva/monsterhunter/IabHelper$3;->val$singleListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;

    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper$3$1;->this$1:Lcom/yunva/monsterhunter/IabHelper$3;

    iget-object v0, v0, Lcom/yunva/monsterhunter/IabHelper$3;->val$purchases:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yunva/monsterhunter/Purchase;

    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper$3$1;->val$results:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yunva/monsterhunter/IabResult;

    invoke-interface {v2, v0, v1}, Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/yunva/monsterhunter/Purchase;Lcom/yunva/monsterhunter/IabResult;)V

    .line 1092
    return-void
.end method

###### Class com.yunva.monsterhunter.IabHelper.AnonymousClass3.AnonymousClass2 (com.yunva.monsterhunter.IabHelper$3$2)
.class Lcom/yunva/monsterhunter/IabHelper$3$2;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yunva/monsterhunter/IabHelper$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yunva/monsterhunter/IabHelper$3;

.field final synthetic val$results:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/yunva/monsterhunter/IabHelper$3;Ljava/util/List;)V
    .registers 3
    .param p1, "this$1"    # Lcom/yunva/monsterhunter/IabHelper$3;

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/yunva/monsterhunter/IabHelper$3$2;->this$1:Lcom/yunva/monsterhunter/IabHelper$3;

    iput-object p2, p0, Lcom/yunva/monsterhunter/IabHelper$3$2;->val$results:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/yunva/monsterhunter/IabHelper$3$2;->this$1:Lcom/yunva/monsterhunter/IabHelper$3;

    iget-object v0, v0, Lcom/yunva/monsterhunter/IabHelper$3;->val$multiListener:Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;

    iget-object v1, p0, Lcom/yunva/monsterhunter/IabHelper$3$2;->this$1:Lcom/yunva/monsterhunter/IabHelper$3;

    iget-object v1, v1, Lcom/yunva/monsterhunter/IabHelper$3;->val$purchases:Ljava/util/List;

    iget-object v2, p0, Lcom/yunva/monsterhunter/IabHelper$3$2;->val$results:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;->onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V

    .line 1099
    return-void
.end method

###### Class com.yunva.monsterhunter.IabHelper.IabAsyncInProgressException (com.yunva.monsterhunter.IabHelper$IabAsyncInProgressException)
.class public Lcom/yunva/monsterhunter/IabHelper$IabAsyncInProgressException;
.super Ljava/lang/Exception;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IabAsyncInProgressException"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 933
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 934
    return-void
.end method

###### Class com.yunva.monsterhunter.IabHelper.OnConsumeFinishedListener (com.yunva.monsterhunter.IabHelper$OnConsumeFinishedListener)
.class public interface abstract Lcom/yunva/monsterhunter/IabHelper$OnConsumeFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeFinished(Lcom/yunva/monsterhunter/Purchase;Lcom/yunva/monsterhunter/IabResult;)V
.end method

###### Class com.yunva.monsterhunter.IabHelper.OnConsumeMultiFinishedListener (com.yunva.monsterhunter.IabHelper$OnConsumeMultiFinishedListener)
.class public interface abstract Lcom/yunva/monsterhunter/IabHelper$OnConsumeMultiFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConsumeMultiFinishedListener"
.end annotation


# virtual methods
.method public abstract onConsumeMultiFinished(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yunva/monsterhunter/Purchase;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/yunva/monsterhunter/IabResult;",
            ">;)V"
        }
    .end annotation
.end method

###### Class com.yunva.monsterhunter.IabHelper.OnIabPurchaseFinishedListener (com.yunva.monsterhunter.IabHelper$OnIabPurchaseFinishedListener)
.class public interface abstract Lcom/yunva/monsterhunter/IabHelper$OnIabPurchaseFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIabPurchaseFinishedListener"
.end annotation


# virtual methods
.method public abstract onIabPurchaseFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Purchase;)V
.end method

###### Class com.yunva.monsterhunter.IabHelper.OnIabSetupFinishedListener (com.yunva.monsterhunter.IabHelper$OnIabSetupFinishedListener)
.class public interface abstract Lcom/yunva/monsterhunter/IabHelper$OnIabSetupFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnIabSetupFinishedListener"
.end annotation


# virtual methods
.method public abstract onIabSetupFinished(Lcom/yunva/monsterhunter/IabResult;)V
.end method

###### Class com.yunva.monsterhunter.IabHelper.QueryInventoryFinishedListener (com.yunva.monsterhunter.IabHelper$QueryInventoryFinishedListener)
.class public interface abstract Lcom/yunva/monsterhunter/IabHelper$QueryInventoryFinishedListener;
.super Ljava/lang/Object;
.source "IabHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yunva/monsterhunter/IabHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "QueryInventoryFinishedListener"
.end annotation


# virtual methods
.method public abstract onQueryInventoryFinished(Lcom/yunva/monsterhunter/IabResult;Lcom/yunva/monsterhunter/Inventory;)V
.end method
