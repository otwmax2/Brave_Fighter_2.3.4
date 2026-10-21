###### Class com.vungle.publisher.mc (com.vungle.publisher.mc)
.class public Lcom/vungle/publisher/mc;
.super Lcom/vungle/publisher/vs;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/vungle/publisher/vs;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-super {p0}, Lcom/vungle/publisher/vs;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 22
    const-string v1, "privacyPolicyEnabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 23
    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/vungle/publisher/mc;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
