###### Class com.chartboost.sdk.impl.aq (com.chartboost.sdk.impl.aq)
.class public Lcom/chartboost/sdk/impl/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string v0, "CBTrace"

    sput-object v0, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/chartboost/sdk/impl/aq;->a()Z

    move-result v0

    sput-boolean v0, Lcom/chartboost/sdk/impl/aq;->b:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 135
    sget-boolean v0, Lcom/chartboost/sdk/impl/aq;->b:Z

    if-eqz v0, :cond_9

    .line 136
    sget-object v0, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_9
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 125
    sget-boolean v0, Lcom/chartboost/sdk/impl/aq;->b:Z

    if-eqz v0, :cond_38

    .line 126
    if-eqz p1, :cond_39

    .line 127
    sget-object v0, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_38
    :goto_38
    return-void

    .line 129
    :cond_39
    sget-object v0, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 113
    sget-boolean v0, Lcom/chartboost/sdk/impl/aq;->b:Z

    if-eqz v0, :cond_20

    .line 114
    sget-object v0, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_20
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 5

    .prologue
    .line 119
    sget-boolean v0, Lcom/chartboost/sdk/impl/aq;->b:Z

    if-eqz v0, :cond_20

    .line 120
    sget-object v0, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_20
    return-void
.end method

.method private static a()Z
    .registers 4

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/impl/aq;->a:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 98
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->c()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 101
    invoke-static {}, Lcom/chartboost/sdk/impl/s;->a()Lcom/chartboost/sdk/impl/s;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/s;->b()Ljava/io/File;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2f

    .line 103
    new-instance v2, Ljava/io/File;

    const-string v3, ".chartboost/log_trace"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_2e} :catch_30

    move-result v0

    .line 109
    :cond_2f
    :goto_2f
    return v0

    .line 107
    :catch_30
    move-exception v1

    goto :goto_2f
.end method
