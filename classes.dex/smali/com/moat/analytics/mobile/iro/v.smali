###### Class com.moat.analytics.mobile.iro.v (com.moat.analytics.mobile.iro.v)
.class final Lcom/moat/analytics/mobile/iro/v;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ˎ:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    sput-object v0, Lcom/moat/analytics/mobile/iro/v;->ˎ:Ljava/util/LinkedHashSet;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˋ(Landroid/view/ViewGroup;Z)Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    .registers 15
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Z)",
            "Lcom/moat/analytics/mobile/iro/base/functional/Optional",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 30
    if-nez p0, :cond_9

    .line 31
    :try_start_4
    invoke-static {}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v1

    .line 66
    :goto_8
    return-object v1

    .line 33
    :cond_9
    instance-of v1, p0, Landroid/webkit/WebView;

    if-eqz v1, :cond_14

    .line 34
    check-cast p0, Landroid/webkit/WebView;

    invoke-static {p0}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->of(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v1

    goto :goto_8

    .line 36
    :cond_14
    new-instance v8, Ljava/util/LinkedList;

    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 37
    invoke-interface {v8, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move v1, v4

    move-object v2, v6

    .line 40
    :goto_1e
    invoke-interface {v8}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_80

    const/16 v3, 0x64

    if-ge v1, v3, :cond_80

    .line 41
    add-int/lit8 v5, v1, 0x1

    .line 42
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v3, v0

    .line 43
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    move v7, v4

    .line 44
    :goto_37
    if-ge v7, v9, :cond_7e

    .line 45
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 46
    instance-of v10, v1, Landroid/webkit/WebView;

    if-eqz v10, :cond_5f

    .line 47
    const/4 v10, 0x3

    const-string v11, "WebViewHound"

    const-string v12, "Found WebView"

    invoke-static {v10, v11, v1, v12}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    if-nez p1, :cond_59

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/moat/analytics/mobile/iro/v;->ॱ(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5f

    .line 49
    :cond_59
    if-nez v2, :cond_6c

    .line 50
    move-object v0, v1

    check-cast v0, Landroid/webkit/WebView;

    move-object v2, v0

    .line 59
    :cond_5f
    instance-of v10, v1, Landroid/view/ViewGroup;

    if-eqz v10, :cond_68

    .line 60
    check-cast v1, Landroid/view/ViewGroup;

    invoke-interface {v8, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_68
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_37

    .line 52
    :cond_6c
    const/4 v2, 0x3

    const-string v3, "WebViewHound"

    const-string v7, "Ambiguous ad container: multiple WebViews reside within it."

    invoke-static {v2, v3, v1, v7}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    const-string v1, "[ERROR] "

    const-string v2, "WebAdTracker not created, ambiguous ad container: multiple WebViews reside within it"

    invoke-static {v1, v2}, Lcom/moat/analytics/mobile/iro/b;->ˎ(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    move-object v2, v6

    .line 55
    goto :goto_1e

    :cond_7e
    move v1, v5

    .line 63
    goto :goto_1e

    .line 64
    :cond_80
    invoke-static {v2}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->ofNullable(Ljava/lang/Object;)Lcom/moat/analytics/mobile/iro/base/functional/Optional;
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_83} :catch_85

    move-result-object v1

    goto :goto_8

    .line 66
    :catch_85
    move-exception v1

    invoke-static {}, Lcom/moat/analytics/mobile/iro/base/functional/Optional;->empty()Lcom/moat/analytics/mobile/iro/base/functional/Optional;

    move-result-object v1

    goto/16 :goto_8
.end method

.method private static ॱ(Ljava/lang/String;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 72
    :try_start_1
    sget-object v0, Lcom/moat/analytics/mobile/iro/v;->ˎ:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 73
    sget-object v2, Lcom/moat/analytics/mobile/iro/v;->ˎ:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_2b

    .line 74
    sget-object v2, Lcom/moat/analytics/mobile/iro/v;->ˎ:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v1

    .line 76
    :goto_18
    const/16 v4, 0x19

    if-ge v2, v4, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 77
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 79
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 82
    :cond_2b
    const/4 v3, 0x3

    const-string v4, "WebViewHound"

    const/4 v5, 0x0

    if-eqz v0, :cond_37

    const-string v2, "Newly Found WebView"

    :goto_33
    invoke-static {v3, v4, v5, v2}, Lcom/moat/analytics/mobile/iro/b;->ˏ(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    :goto_36
    return v0

    .line 82
    :cond_37
    const-string v2, "Already Found WebView"
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_39} :catch_3a

    goto :goto_33

    .line 85
    :catch_3a
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/iro/o;->ॱ(Ljava/lang/Exception;)V

    move v0, v1

    .line 86
    goto :goto_36
.end method
