###### Class com.vungle.publisher.wv (com.vungle.publisher.wv)
.class public Lcom/vungle/publisher/wv;
.super Lcom/vungle/publisher/wu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wv$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected g:[Lcom/vungle/publisher/wa;

.field protected h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Boolean;

.field private l:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/vungle/publisher/wu;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/wv;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/vungle/publisher/wv;->k:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/wv;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iput-object p1, p0, Lcom/vungle/publisher/wv;->l:Ljava/lang/String;

    return-object p1
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
    .line 92
    invoke-super {p0}, Lcom/vungle/publisher/wu;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 93
    const-string v1, "postroll_click"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->a:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v1, "video_click"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->b:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v1, "video_close"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->c:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v1, "error"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->d:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    const-string v1, "mute"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->e:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "pause"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->f:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 99
    const-string v1, "play_percentage"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->g:[Lcom/vungle/publisher/wa;

    invoke-static {v2}, Lcom/vungle/publisher/ra;->a([Lcom/vungle/publisher/vs;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    const-string v1, "postroll_view"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->h:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    const-string v1, "resume"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->i:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v1, "unmute"

    iget-object v2, p0, Lcom/vungle/publisher/wv;->j:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
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
    .line 13
    invoke-virtual {p0}, Lcom/vungle/publisher/wv;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/wv;->a:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/wv;->b:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/wv;->c:Ljava/util/List;

    return-object v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/wv;->d:Ljava/util/List;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/wv;->e:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/wv;->f:Ljava/util/List;

    return-object v0
.end method

.method public j()[Lcom/vungle/publisher/wa;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/vungle/publisher/wv;->g:[Lcom/vungle/publisher/wa;

    return-object v0
.end method

.method public k()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/wv;->h:Ljava/util/List;

    return-object v0
.end method

.method public l()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/vungle/publisher/wv;->i:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/wv;->j:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/vungle/publisher/wv;->k:Ljava/lang/Boolean;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/wv;->l:Ljava/lang/String;

    return-object v0
.end method

###### Class com.vungle.publisher.wv.a (com.vungle.publisher.wv$a)
.class public Lcom/vungle/publisher/wv$a;
.super Lcom/vungle/publisher/wu$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/wu$a",
        "<",
        "Lcom/vungle/publisher/wv;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/wa$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/vungle/publisher/wu$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/wv;
    .registers 2

    .prologue
    .line 142
    new-instance v0, Lcom/vungle/publisher/wv;

    invoke-direct {v0}, Lcom/vungle/publisher/wv;-><init>()V

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wv;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 116
    if-eqz p1, :cond_78

    .line 117
    invoke-virtual {p0}, Lcom/vungle/publisher/wv$a;->a()Lcom/vungle/publisher/wv;

    move-result-object v1

    .line 118
    const-string v0, "postroll_click"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->a:Ljava/util/List;

    .line 119
    const-string v0, "video_click"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->b:Ljava/util/List;

    .line 120
    const-string v0, "video_close"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->c:Ljava/util/List;

    .line 121
    const-string v0, "error"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->d:Ljava/util/List;

    .line 122
    const-string v0, "mute"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->e:Ljava/util/List;

    .line 123
    const-string v0, "pause"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->f:Ljava/util/List;

    .line 124
    iget-object v0, p0, Lcom/vungle/publisher/wv$a;->a:Lcom/vungle/publisher/wa$a;

    const-string v2, "play_percentage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/wa$a;->a(Lorg/json/JSONArray;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/wa;

    iput-object v0, v1, Lcom/vungle/publisher/wv;->g:[Lcom/vungle/publisher/wa;

    .line 125
    const-string v0, "postroll_view"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->h:Ljava/util/List;

    .line 126
    const-string v0, "resume"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->i:Ljava/util/List;

    .line 127
    const-string v0, "unmute"

    invoke-static {p1, v0}, Lcom/vungle/publisher/ra;->h(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/vungle/publisher/wv;->j:Ljava/util/List;

    .line 128
    const-string v0, "moat"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 129
    const-string v2, "is_enabled"

    invoke-static {v0, v2}, Lcom/vungle/publisher/ra;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/publisher/wv;->a(Lcom/vungle/publisher/wv;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 130
    const-string v2, "extra_vast"

    invoke-static {v0, v2}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vungle/publisher/wv;->a(Lcom/vungle/publisher/wv;Ljava/lang/String;)Ljava/lang/String;

    move-object v0, v1

    .line 132
    :cond_78
    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/wv;
    .registers 3

    .prologue
    .line 137
    new-array v0, p1, [Lcom/vungle/publisher/wv;

    return-object v0
.end method

.method public synthetic b(Lorg/json/JSONObject;)Lcom/vungle/publisher/wu;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wv$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wv;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vungle/publisher/wv$a;->a()Lcom/vungle/publisher/wv;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wv$a;->a(I)[Lcom/vungle/publisher/wv;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 106
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wv$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wv;

    move-result-object v0

    return-object v0
.end method
