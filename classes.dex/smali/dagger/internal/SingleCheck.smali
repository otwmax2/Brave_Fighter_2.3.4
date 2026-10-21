###### Class dagger.internal.SingleCheck (dagger.internal.SingleCheck)
.class public final Ldagger/internal/SingleCheck;
.super Ljava/lang/Object;
.source "SingleCheck.java"

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
    const-class v0, Ldagger/internal/SingleCheck;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Ldagger/internal/SingleCheck;->$assertionsDisabled:Z

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

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
    .local p0, "this":Ldagger/internal/SingleCheck;, "Ldagger/internal/SingleCheck<TT;>;"
    .local p1, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    sget-object v0, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    iput-object v0, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 35
    sget-boolean v0, Ldagger/internal/SingleCheck;->$assertionsDisabled:Z

    if-nez v0, :cond_13

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 36
    :cond_13
    iput-object p1, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 37
    return-void
.end method

.method public static provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;
    .registers 3
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
    .line 59
    .local p0, "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    instance-of v0, p0, Ldagger/internal/SingleCheck;

    if-nez v0, :cond_8

    instance-of v0, p0, Ldagger/internal/DoubleCheck;

    if-eqz v0, :cond_9

    .line 62
    .end local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_8
    :goto_8
    return-object p0

    .restart local p0    # "provider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    :cond_9
    new-instance v1, Ldagger/internal/SingleCheck;

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/inject/Provider;

    invoke-direct {v1, v0}, Ldagger/internal/SingleCheck;-><init>(Ljavax/inject/Provider;)V

    move-object p0, v1

    goto :goto_8
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Ldagger/internal/SingleCheck;, "Ldagger/internal/SingleCheck<TT;>;"
    iget-object v0, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 47
    .local v0, "providerReference":Ljavax/inject/Provider;, "Ljavax/inject/Provider<TT;>;"
    iget-object v1, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    sget-object v2, Ldagger/internal/SingleCheck;->UNINITIALIZED:Ljava/lang/Object;

    if-ne v1, v2, :cond_11

    .line 48
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    .line 51
    const/4 v1, 0x0

    iput-object v1, p0, Ldagger/internal/SingleCheck;->provider:Ljavax/inject/Provider;

    .line 53
    :cond_11
    iget-object v1, p0, Ldagger/internal/SingleCheck;->instance:Ljava/lang/Object;

    return-object v1
.end method
