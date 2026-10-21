###### Class com.chartboost.sdk.Libraries.e (com.chartboost.sdk.Libraries.e)
.class public Lcom/chartboost/sdk/Libraries/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)Lcom/chartboost/sdk/Libraries/e$a;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Lcom/chartboost/sdk/Libraries/e$a;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/Libraries/e$a;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static varargs a(Lorg/json/JSONObject;[Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 13
    array-length v1, p1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_8

    aget-object v2, p1, v0

    .line 14
    if-nez p0, :cond_9

    .line 18
    :cond_8
    return-object p0

    .line 16
    :cond_9
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static varargs a([Lcom/chartboost/sdk/Libraries/e$a;)Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 34
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    array-length v2, p0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v2, :cond_15

    aget-object v3, p0, v0

    .line 36
    iget-object v4, v3, Lcom/chartboost/sdk/Libraries/e$a;->a:Ljava/lang/String;

    iget-object v3, v3, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    invoke-static {v1, v4, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 38
    :cond_15
    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    .prologue
    .line 26
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3} :catch_4

    .line 30
    :goto_3
    return-void

    .line 27
    :catch_4
    move-exception v0

    .line 28
    const-class v1, Lcom/chartboost/sdk/Libraries/e;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "put ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/chartboost/sdk/Tracking/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3
.end method

###### Class com.chartboost.sdk.Libraries.e.a (com.chartboost.sdk.Libraries.e$a)
.class public Lcom/chartboost/sdk/Libraries/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/Libraries/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/chartboost/sdk/Libraries/e$a;->a:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/chartboost/sdk/Libraries/e$a;->b:Ljava/lang/Object;

    .line 55
    return-void
.end method
