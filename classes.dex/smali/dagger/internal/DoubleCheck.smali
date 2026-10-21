###### Class dagger.internal.DoubleCheck (dagger.internal.DoubleCheck)
.class public final Ldagger/internal/DoubleCheck;
.super Ljava/lang/Object;
.source "DoubleCheck.java"

# interfaces
.implements Ljavax/inject/Provider;
.implements Ldagger/Lazy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider",
        "<TT;>;",
        "Ldagger/Lazy",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final UNINITIALIZED:Ljava/lang/Object;


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field private volatile provider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 28
    const-class v0, Ldagger/internal/DoubleCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/DoubleCheck;->$assertionsDisabled:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    return-void

    .line 28
    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "this":Ldagger/internal/DoubleCheck;, "Ldagger/internal/DoubleCheck<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 35
    sget-boolean v0, Ldagger/internal/DoubleCheck;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_13
    iput-object p1, p0, Ldagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    .line 37
    return-void
.end method

.method public static lazy(Ljavax/inject/Provider;)Ldagger/Lazy;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ldagger/Lazy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    instance-of v1, p0, Ldagger/Lazy;

    if-eqz v1, :cond_8

    move-object v0, p0

    .line 81
    check-cast v0, Ldagger/Lazy;

    .line 89
    :goto_7
    return-object v0

    :cond_8
    new-instance v0, Ldagger/internal/DoubleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Ldagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    goto :goto_7
.end method

.method public static provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/inject/Provider",
            "<TT;>;)",
            "Ljavax/inject/Provider",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_8

    .line 74
    .end local p0    # "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :goto_7
    return-object p0

    .restart local p0    # "delegate":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_8
    new-instance v0, Ldagger/internal/DoubleCheck;

    invoke-direct {v0, p0}, Ldagger/internal/DoubleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object p0, v0

    goto :goto_7
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Ldagger/internal/DoubleCheck;, "Ldagger/internal/DoubleCheck<TT;>;"
    iget-object v1, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 43
    .local v1, "result":Ljava/lang/Object;
    sget-object v2, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v1, v2, :cond_47

    .line 44
    monitor-enter p0

    .line 45
    :try_start_7
    iget-object v1, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 46
    sget-object v2, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v1, v2, :cond_46

    .line 47
    iget-object v2, p0, Ldagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    .line 51
    iget-object v0, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 52
    .local v0, "currentInstance":Ljava/lang/Object;
    sget-object v2, Ldagger/internal/DoubleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-eq v0, v2, :cond_41

    if-eq v0, v1, :cond_41

    .line 53
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Scoped provider was invoked recursively returning different results: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " & "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v0    # "currentInstance":Ljava/lang/Object;
    :catchall_3e
    move-exception v2

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_7 .. :try_end_40} :catchall_3e

    throw v2

    .line 56
    .restart local v0    # "currentInstance":Ljava/lang/Object;
    :cond_41
    :try_start_41
    iput-object v1, p0, Ldagger/internal/DoubleCheck;->instance:Ljava/lang/Object;

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Ldagger/internal/DoubleCheck;->provider:Ljavax/inject/Provider;

    .line 61
    .end local v0    # "currentInstance":Ljava/lang/Object;
    :cond_46
    monitor-exit p0
    :try_end_47
    .catchall {:try_start_41 .. :try_end_47} :catchall_3e

    .line 63
    :cond_47
    return-object v1
.end method
