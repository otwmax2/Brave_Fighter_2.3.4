###### Class com.vungle.publisher.wp (com.vungle.publisher.wp)
.class public abstract Lcom/vungle/publisher/wp;
.super Lcom/vungle/publisher/wc;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wp$a;,
        Lcom/vungle/publisher/wp$b;
    }
.end annotation


# instance fields
.field protected p:Ljava/lang/String;

.field protected q:Lcom/vungle/publisher/wp$a;

.field protected r:Ljava/lang/String;

.field protected s:Ljava/lang/Integer;

.field protected t:Ljava/lang/Integer;

.field protected u:Ljava/lang/Integer;

.field protected v:Ljava/lang/Integer;

.field protected w:Ljava/lang/String;

.field protected x:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/vungle/publisher/wc;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/wp;->p:Ljava/lang/String;

    return-object v0
.end method

.method public r()Lcom/vungle/publisher/wp$a;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/wp;->q:Lcom/vungle/publisher/wp$a;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/wp;->r:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vungle/publisher/wp;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method public u()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/wp;->t:Ljava/lang/Integer;

    return-object v0
.end method

.method public v()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/wp;->u:Ljava/lang/Integer;

    return-object v0
.end method

.method public w()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/wp;->v:Ljava/lang/Integer;

    return-object v0
.end method

.method public x()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/wp;->w:Ljava/lang/String;

    return-object v0
.end method

.method public y()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/wp;->x:Ljava/lang/Integer;

    return-object v0
.end method

###### Class com.vungle.publisher.wp.a (com.vungle.publisher.wp$a)
.class public Lcom/vungle/publisher/wp$a;
.super Lcom/vungle/publisher/vs;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/wp$a$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/lang/Float;

.field protected b:Ljava/lang/Integer;

.field protected c:Ljava/lang/Boolean;

.field protected d:Ljava/lang/Boolean;

.field protected e:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 133
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
    .line 157
    invoke-super {p0}, Lcom/vungle/publisher/vs;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    const-string v1, "click_area"

    iget-object v2, p0, Lcom/vungle/publisher/wp$a;->a:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v1, "enabled"

    iget-object v2, p0, Lcom/vungle/publisher/wp$a;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v1, "show_onclick"

    iget-object v2, p0, Lcom/vungle/publisher/wp$a;->d:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string v1, "time_show"

    iget-object v2, p0, Lcom/vungle/publisher/wp$a;->e:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    const-string v1, "time_enabled"

    iget-object v2, p0, Lcom/vungle/publisher/wp$a;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 163
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
    .line 120
    invoke-virtual {p0}, Lcom/vungle/publisher/wp$a;->a()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/Float;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/wp$a;->a:Ljava/lang/Float;

    return-object v0
.end method

.method public d()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/vungle/publisher/wp$a;->c:Ljava/lang/Boolean;

    return-object v0
.end method

.method public f()Ljava/lang/Boolean;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/wp$a;->d:Ljava/lang/Boolean;

    return-object v0
.end method

.method public g()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vungle/publisher/wp$a;->e:Ljava/lang/Integer;

    return-object v0
.end method

.method public h()Ljava/lang/Integer;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vungle/publisher/wp$a;->b:Ljava/lang/Integer;

    return-object v0
.end method

###### Class com.vungle.publisher.wp.a.C0172a (com.vungle.publisher.wp$a$a)
.class public Lcom/vungle/publisher/wp$a$a;
.super Lcom/vungle/publisher/vy;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wp$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/vy",
        "<",
        "Lcom/vungle/publisher/wp$a;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/vungle/publisher/vy;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lcom/vungle/publisher/wp$a;
    .registers 2

    .prologue
    .line 192
    new-instance v0, Lcom/vungle/publisher/wp$a;

    invoke-direct {v0}, Lcom/vungle/publisher/wp$a;-><init>()V

    return-object v0
.end method

.method protected a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp$a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 174
    if-eqz p1, :cond_2f

    .line 175
    invoke-virtual {p0}, Lcom/vungle/publisher/wp$a$a;->a()Lcom/vungle/publisher/wp$a;

    move-result-object v0

    .line 176
    const-string v1, "click_area"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->c(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wp$a;->a:Ljava/lang/Float;

    .line 177
    const-string v1, "enabled"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wp$a;->c:Ljava/lang/Boolean;

    .line 178
    const-string v1, "show_onclick"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wp$a;->d:Ljava/lang/Boolean;

    .line 179
    const-string v1, "time_show"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wp$a;->e:Ljava/lang/Integer;

    .line 180
    const-string v1, "time_enabled"

    invoke-static {p1, v1}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wp$a;->b:Ljava/lang/Integer;

    .line 182
    :cond_2f
    return-object v0
.end method

.method protected a(I)[Lcom/vungle/publisher/wp$a;
    .registers 3

    .prologue
    .line 187
    new-array v0, p1, [Lcom/vungle/publisher/wp$a;

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/vungle/publisher/wp$a$a;->a()Lcom/vungle/publisher/wp$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wp$a$a;->a(I)[Lcom/vungle/publisher/wp$a;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic c(Lorg/json/JSONObject;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wp$a$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp$a;

    move-result-object v0

    return-object v0
.end method

###### Class com.vungle.publisher.wp.b (com.vungle.publisher.wp$b)
.class public abstract Lcom/vungle/publisher/wp$b;
.super Lcom/vungle/publisher/wc$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/wp;",
        "T:",
        "Lcom/vungle/publisher/wu$a",
        "<*>;>",
        "Lcom/vungle/publisher/wc$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field protected c:Lcom/vungle/publisher/wp$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/vungle/publisher/wc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wp$b;->e(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp;

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
    .line 89
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/wp$b;->e(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp;

    move-result-object v0

    return-object v0
.end method

.method public e(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/vungle/publisher/wc$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wc;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wp;

    .line 100
    if-eqz v0, :cond_7f

    .line 101
    invoke-virtual {p0}, Lcom/vungle/publisher/wp$b;->a()Lorg/json/JSONObject;

    move-result-object v1

    .line 102
    const-string v2, "callToActionDest"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->p:Ljava/lang/String;

    .line 103
    iget-object v2, p0, Lcom/vungle/publisher/wp$b;->c:Lcom/vungle/publisher/wp$a$a;

    const-string v3, "cta_overlay"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/wp$a$a;->a(Lorg/json/JSONObject;)Lcom/vungle/publisher/wp$a;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->q:Lcom/vungle/publisher/wp$a;

    .line 104
    const-string v2, "callToActionUrl"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->r:Ljava/lang/String;

    .line 105
    const-string v2, "showCloseIncentivized"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->s:Ljava/lang/Integer;

    .line 106
    const-string v2, "showClose"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->t:Ljava/lang/Integer;

    .line 107
    const-string v2, "countdown"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->u:Ljava/lang/Integer;

    .line 108
    const-string v2, "videoHeight"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->v:Ljava/lang/Integer;

    .line 109
    const-string v2, "videoHeight"

    iget-object v3, v0, Lcom/vungle/publisher/wp;->v:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lcom/vungle/publisher/wp$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    const-string v2, "url"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->f(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->w:Ljava/lang/String;

    .line 111
    const-string v2, "url"

    iget-object v3, v0, Lcom/vungle/publisher/wp;->w:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/vungle/publisher/wp$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    const-string v2, "videoWidth"

    invoke-static {v1, v2}, Lcom/vungle/publisher/ra;->d(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/vungle/publisher/wp;->x:Ljava/lang/Integer;

    .line 113
    const-string v2, "videoWidth"

    iget-object v3, v0, Lcom/vungle/publisher/wp;->x:Ljava/lang/Integer;

    invoke-virtual {p0, v1, v2, v3}, Lcom/vungle/publisher/wp$b;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lcom/vungle/publisher/wp$b;->e()Lcom/vungle/publisher/wu$a;

    move-result-object v2

    const-string v3, "tpat"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/wu$a;->b(Lorg/json/JSONObject;)Lcom/vungle/publisher/wu;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/wp;->e:Lcom/vungle/publisher/wu;

    .line 116
    :cond_7f
    return-object v0
.end method

.method protected abstract e()Lcom/vungle/publisher/wu$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
