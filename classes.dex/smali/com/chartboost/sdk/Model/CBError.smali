###### Class com.chartboost.sdk.Model.CBError (com.chartboost.sdk.Model.CBError)
.class public final Lcom/chartboost/sdk/Model/CBError;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Model/CBError$a;,
        Lcom/chartboost/sdk/Model/CBError$CBClickError;,
        Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    }
.end annotation


# instance fields
.field private final a:Lcom/chartboost/sdk/Model/CBError$a;

.field private final b:Ljava/lang/String;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Model/CBError$a;Ljava/lang/String;)V
    .registers 4
    .param p1, "error"    # Lcom/chartboost/sdk/Model/CBError$a;
    .param p2, "errorDesc"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$a;

    .line 101
    iput-object p2, p0, Lcom/chartboost/sdk/Model/CBError;->b:Ljava/lang/String;

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Model/CBError;->c:Z

    .line 103
    return-void
.end method


# virtual methods
.method public a()Lcom/chartboost/sdk/Model/CBError$a;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$a;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/chartboost/sdk/Model/CBError;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 3

    .prologue
    .line 114
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    iget-object v1, p0, Lcom/chartboost/sdk/Model/CBError;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1a

    .line 126
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    :goto_f
    return-object v0

    .line 118
    :pswitch_10
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_f

    .line 120
    :pswitch_13
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_f

    .line 122
    :pswitch_16
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    goto :goto_f

    .line 114
    nop

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_13
        :pswitch_16
    .end packed-switch
.end method

###### Class com.chartboost.sdk.Model.CBError.AnonymousClass1 (com.chartboost.sdk.Model.CBError$1)
.class synthetic Lcom/chartboost/sdk/Model/CBError$1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 114
    invoke-static {}, Lcom/chartboost/sdk/Model/CBError$a;->values()[Lcom/chartboost/sdk/Model/CBError$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_63

    :goto_14
    :try_start_14
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_61

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->f:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_5f

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_5d

    :goto_35
    :try_start_35
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_5b

    :goto_40
    :try_start_40
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_59

    :goto_4b
    :try_start_4b
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$1;->a:[I

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Model/CBError$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_56
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4b .. :try_end_56} :catch_57

    :goto_56
    return-void

    :catch_57
    move-exception v0

    goto :goto_56

    :catch_59
    move-exception v0

    goto :goto_4b

    :catch_5b
    move-exception v0

    goto :goto_40

    :catch_5d
    move-exception v0

    goto :goto_35

    :catch_5f
    move-exception v0

    goto :goto_2a

    :catch_61
    move-exception v0

    goto :goto_1f

    :catch_63
    move-exception v0

    goto :goto_14
.end method

###### Class com.chartboost.sdk.Model.CBError.CBClickError (com.chartboost.sdk.Model.CBError$CBClickError)
.class public final enum Lcom/chartboost/sdk/Model/CBError$CBClickError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBClickError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/CBError$CBClickError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field public static final enum URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

.field private static final synthetic a:[Lcom/chartboost/sdk/Model/CBError$CBClickError;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "URI_INVALID"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 76
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "URI_UNRECOGNIZED"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 78
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "AGE_GATE_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 80
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "NO_HOST_ACTIVITY"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 82
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Model/CBError$CBClickError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    .line 72
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/chartboost/sdk/Model/CBError$CBClickError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_INVALID:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v2

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->URI_UNRECOGNIZED:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->AGE_GATE_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBClickError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBClickError;

    aput-object v1, v0, v6

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->a:[Lcom/chartboost/sdk/Model/CBError$CBClickError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$CBClickError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 72
    const-class v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$CBClickError;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBClickError;->a:[Lcom/chartboost/sdk/Model/CBError$CBClickError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$CBClickError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$CBClickError;

    return-object v0
.end method

###### Class com.chartboost.sdk.Model.CBError.CBImpressionError (com.chartboost.sdk.Model.CBError$CBImpressionError)
.class public final enum Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CBImpressionError"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/CBError$CBImpressionError;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field public static final enum WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

.field private static final synthetic a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 9
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 11
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "TOO_MANY_CONNECTIONS"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 13
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "WRONG_ORIENTATION"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 15
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "FIRST_SESSION_INTERSTITIALS_DISABLED"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 17
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "NETWORK_FAILURE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 19
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "NO_AD_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 21
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "SESSION_NOT_STARTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 23
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "IMPRESSION_ALREADY_VISIBLE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 25
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "NO_HOST_ACTIVITY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 27
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "USER_CANCELLATION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 29
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INVALID_LOCATION"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 31
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "VIDEO_UNAVAILABLE"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 33
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "VIDEO_ID_MISSING"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 35
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_PLAYING_VIDEO"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 37
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INVALID_RESPONSE"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 39
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ASSETS_DOWNLOAD_FAILURE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 41
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_CREATING_VIEW"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 43
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_DISPLAYING_VIEW"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 45
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INCOMPATIBLE_API_VERSION"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 47
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ERROR_LOADING_WEB_VIEW"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 49
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ASSET_PREFETCH_IN_PROGRESS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 51
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ACTIVITY_MISSING_IN_MANIFEST"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 53
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "EMPTY_LOCAL_VIDEO_LIST"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 55
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "END_POINT_DISABLED"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 57
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "HARDWARE_ACCELERATION_DISABLED"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 59
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "PENDING_IMPRESSION_ERROR"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 61
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 63
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "ASSET_MISSING"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 65
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "WEB_VIEW_PAGE_LOAD_TIMEOUT"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 67
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "WEB_VIEW_CLIENT_RECEIVED_ERROR"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 69
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    const-string v1, "INTERNET_UNAVAILABLE_AT_SHOW"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    .line 5
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNAL:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->TOO_MANY_CONNECTIONS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WRONG_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->FIRST_SESSION_INTERSTITIALS_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NETWORK_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_AD_FOUND:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->SESSION_NOT_STARTED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->IMPRESSION_ALREADY_VISIBLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->NO_HOST_ACTIVITY:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->USER_CANCELLATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_LOCATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_ID_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_PLAYING_VIDEO:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INVALID_RESPONSE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSETS_DOWNLOAD_FAILURE:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_CREATING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_DISPLAYING_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INCOMPATIBLE_API_VERSION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ERROR_LOADING_WEB_VIEW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_PREFETCH_IN_PROGRESS:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ACTIVITY_MISSING_IN_MANIFEST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->EMPTY_LOCAL_VIDEO_LIST:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->END_POINT_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->HARDWARE_ACCELERATION_DISABLED:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->PENDING_IMPRESSION_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->VIDEO_UNAVAILABLE_FOR_CURRENT_ORIENTATION:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->ASSET_MISSING:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_PAGE_LOAD_TIMEOUT:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->WEB_VIEW_CLIENT_RECEIVED_ERROR:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->INTERNET_UNAVAILABLE_AT_SHOW:Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->a:[Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$CBImpressionError;

    return-object v0
.end method

###### Class com.chartboost.sdk.Model.CBError.a (com.chartboost.sdk.Model.CBError$a)
.class public final enum Lcom/chartboost/sdk/Model/CBError$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Model/CBError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/chartboost/sdk/Model/CBError$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum b:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum c:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum d:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum e:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum f:Lcom/chartboost/sdk/Model/CBError$a;

.field public static final enum g:Lcom/chartboost/sdk/Model/CBError$a;

.field private static final synthetic h:[Lcom/chartboost/sdk/Model/CBError$a;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "MISCELLANEOUS"

    invoke-direct {v0, v1, v3}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    .line 87
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "INTERNET_UNAVAILABLE"

    invoke-direct {v0, v1, v4}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    .line 88
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v5}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    .line 89
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "UNEXPECTED_RESPONSE"

    invoke-direct {v0, v1, v6}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    .line 90
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "NETWORK_FAILURE"

    invoke-direct {v0, v1, v7}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    .line 91
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "PUBLIC_KEY_MISSING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->f:Lcom/chartboost/sdk/Model/CBError$a;

    .line 92
    new-instance v0, Lcom/chartboost/sdk/Model/CBError$a;

    const-string v1, "HTTP_NOT_FOUND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/Model/CBError$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    .line 85
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/chartboost/sdk/Model/CBError$a;

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->a:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->b:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->c:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->d:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/chartboost/sdk/Model/CBError$a;->e:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->f:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/chartboost/sdk/Model/CBError$a;->g:Lcom/chartboost/sdk/Model/CBError$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/chartboost/sdk/Model/CBError$a;->h:[Lcom/chartboost/sdk/Model/CBError$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/chartboost/sdk/Model/CBError$a;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/chartboost/sdk/Model/CBError$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Model/CBError$a;

    return-object v0
.end method

.method public static values()[Lcom/chartboost/sdk/Model/CBError$a;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/chartboost/sdk/Model/CBError$a;->h:[Lcom/chartboost/sdk/Model/CBError$a;

    invoke-virtual {v0}, [Lcom/chartboost/sdk/Model/CBError$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/chartboost/sdk/Model/CBError$a;

    return-object v0
.end method
