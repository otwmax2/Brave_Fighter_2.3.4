###### Class com.chartboost.sdk.Libraries.g (com.chartboost.sdk.Libraries.g)
.class public Lcom/chartboost/sdk/Libraries/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public final e:Ljava/io/File;

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/io/File;

    const-string v1, ".chartboost"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    .line 20
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    .line 21
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    :cond_19
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, "css"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->b:Ljava/io/File;

    .line 24
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, "html"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->c:Ljava/io/File;

    .line 25
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, "images"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->d:Ljava/io/File;

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, "js"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->e:Ljava/io/File;

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, "templates"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->f:Ljava/io/File;

    .line 28
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->a:Ljava/io/File;

    const-string v1, "videos"

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/g;->a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/g;->g:Ljava/io/File;

    .line 29
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .registers 4

    .prologue
    .line 32
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_e

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 36
    :cond_e
    return-object v0
.end method
