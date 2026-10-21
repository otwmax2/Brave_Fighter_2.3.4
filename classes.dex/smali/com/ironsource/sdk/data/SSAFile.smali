###### Class com.ironsource.sdk.data.SSAFile (com.ironsource.sdk.data.SSAFile)
.class public Lcom/ironsource/sdk/data/SSAFile;
.super Lcom/ironsource/sdk/data/SSAObj;
.source "SSAFile.java"


# instance fields
.field private FILE:Ljava/lang/String;

.field private LAST_UPDATE_TIME:Ljava/lang/String;

.field private PATH:Ljava/lang/String;

.field private mErrMsg:Ljava/lang/String;

.field private mFile:Ljava/lang/String;

.field private mLastUpdateTime:Ljava/lang/String;

.field private mPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAObj;-><init>(Ljava/lang/String;)V

    .line 5
    const-string v0, "file"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    .line 6
    const-string v0, "path"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    .line 7
    const-string v0, "lastUpdateTime"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    .line 17
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 18
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->setFile(Ljava/lang/String;)V

    .line 21
    :cond_20
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 22
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->setPath(Ljava/lang/String;)V

    .line 25
    :cond_31
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 26
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/data/SSAFile;->setLastUpdateTime(Ljava/lang/String;)V

    .line 28
    :cond_42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/ironsource/sdk/data/SSAObj;-><init>()V

    .line 5
    const-string v0, "file"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->FILE:Ljava/lang/String;

    .line 6
    const-string v0, "path"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->PATH:Ljava/lang/String;

    .line 7
    const-string v0, "lastUpdateTime"

    iput-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->LAST_UPDATE_TIME:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/data/SSAFile;->setFile(Ljava/lang/String;)V

    .line 33
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/data/SSAFile;->setPath(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method private setFile(Ljava/lang/String;)V
    .registers 2
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAFile;->mFile:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAFile;->mPath:Ljava/lang/String;

    .line 46
    return-void
.end method


# virtual methods
.method public getErrMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->mErrMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->mFile:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdateTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->mLastUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ironsource/sdk/data/SSAFile;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .registers 2
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAFile;->mErrMsg:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setLastUpdateTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "lastUpdateTime"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ironsource/sdk/data/SSAFile;->mLastUpdateTime:Ljava/lang/String;

    .line 62
    return-void
.end method
