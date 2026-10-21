###### Class bolts.AppLink (bolts.AppLink)
.class public Lbolts/AppLink;
.super Ljava/lang/Object;
.source "AppLink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbolts/AppLink$Target;
    }
.end annotation


# instance fields
.field private sourceUrl:Landroid/net/Uri;

.field private targets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbolts/AppLink$Target;",
            ">;"
        }
    .end annotation
.end field

.field private webUrl:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V
    .registers 4
    .param p1, "sourceUrl"    # Landroid/net/Uri;
    .param p3, "webUrl"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Lbolts/AppLink$Target;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    .prologue
    .line 90
    .local p2, "targets":Ljava/util/List;, "Ljava/util/List<Lbolts/AppLink$Target;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lbolts/AppLink;->sourceUrl:Landroid/net/Uri;

    .line 92
    if-nez p2, :cond_b

    .line 93
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    .line 95
    :cond_b
    iput-object p2, p0, Lbolts/AppLink;->targets:Ljava/util/List;

    .line 96
    iput-object p3, p0, Lbolts/AppLink;->webUrl:Landroid/net/Uri;

    .line 97
    return-void
.end method


# virtual methods
.method public getSourceUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lbolts/AppLink;->sourceUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbolts/AppLink$Target;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    iget-object v0, p0, Lbolts/AppLink;->targets:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWebUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lbolts/AppLink;->webUrl:Landroid/net/Uri;

    return-object v0
.end method

###### Class bolts.AppLink.Target (bolts.AppLink$Target)
.class public Lbolts/AppLink$Target;
.super Ljava/lang/Object;
.source "AppLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbolts/AppLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Target"
.end annotation


# instance fields
.field private final appName:Ljava/lang/String;

.field private final className:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field private final url:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "url"    # Landroid/net/Uri;
    .param p4, "appName"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    .line 44
    iput-object p4, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lbolts/AppLink$Target;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lbolts/AppLink$Target;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lbolts/AppLink$Target;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lbolts/AppLink$Target;->url:Landroid/net/Uri;

    return-object v0
.end method
