###### Class com.chartboost.sdk.impl.g (com.chartboost.sdk.impl.g)
.class public Lcom/chartboost/sdk/impl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/aj$a;


# instance fields
.field private final a:Lcom/chartboost/sdk/impl/e;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/e;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    .line 17
    iput-object p2, p0, Lcom/chartboost/sdk/impl/g;->b:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/aj;Lcom/chartboost/sdk/Model/CBError;)V
    .registers 6

    .prologue
    .line 31
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/c;->h:Z

    if-eqz v0, :cond_13

    .line 32
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    monitor-enter v1

    .line 33
    :try_start_b
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->b(Ljava/lang/String;)V

    .line 34
    monitor-exit v1

    .line 36
    :cond_13
    return-void

    .line 34
    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_14

    throw v0
.end method

.method public a(Lcom/chartboost/sdk/impl/aj;Lorg/json/JSONObject;)V
    .registers 6

    .prologue
    .line 22
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/e;->f:Lcom/chartboost/sdk/impl/c;

    iget-boolean v0, v0, Lcom/chartboost/sdk/impl/c;->h:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/chartboost/sdk/i;->t:Z

    if-eqz v0, :cond_17

    .line 23
    :cond_c
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    monitor-enter v1

    .line 24
    :try_start_f
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->a:Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/e;->b(Ljava/lang/String;)V

    .line 25
    monitor-exit v1

    .line 27
    :cond_17
    return-void

    .line 25
    :catchall_18
    move-exception v0

    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    throw v0
.end method
