###### Class com.vungle.publisher.inject.l (com.vungle.publisher.inject.l)
.class public final Lcom/vungle/publisher/inject/l;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory",
        "<",
        "Lcom/vungle/publisher/env/n;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/vungle/publisher/inject/a;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/WrapperFramework;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/vungle/publisher/inject/l;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/inject/l;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/vungle/publisher/inject/a;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/inject/a;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/WrapperFramework;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget-boolean v0, Lcom/vungle/publisher/inject/l;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 27
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/inject/l;->b:Lcom/vungle/publisher/inject/a;

    .line 28
    sget-boolean v0, Lcom/vungle/publisher/inject/l;->a:Z

    if-nez v0, :cond_1d

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 29
    :cond_1d
    iput-object p2, p0, Lcom/vungle/publisher/inject/l;->c:Ljavax/inject/Provider;

    .line 30
    sget-boolean v0, Lcom/vungle/publisher/inject/l;->a:Z

    if-nez v0, :cond_2b

    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 31
    :cond_2b
    iput-object p3, p0, Lcom/vungle/publisher/inject/l;->d:Ljavax/inject/Provider;

    .line 32
    return-void
.end method

.method public static a(Lcom/vungle/publisher/inject/a;Ljavax/inject/Provider;Ljavax/inject/Provider;)Ldagger/internal/Factory;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/inject/a;",
            "Ljavax/inject/Provider",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/env/WrapperFramework;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/vungle/publisher/env/n;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/vungle/publisher/inject/l;

    invoke-direct {v0, p0, p1, p2}, Lcom/vungle/publisher/inject/l;-><init>(Lcom/vungle/publisher/inject/a;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/env/n;
    .registers 4

    .prologue
    .line 36
    iget-object v2, p0, Lcom/vungle/publisher/inject/l;->b:Lcom/vungle/publisher/inject/a;

    iget-object v0, p0, Lcom/vungle/publisher/inject/l;->c:Ljavax/inject/Provider;

    .line 37
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/vungle/publisher/inject/l;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/env/WrapperFramework;

    invoke-virtual {v2, v0, v1}, Lcom/vungle/publisher/inject/a;->a(Landroid/content/Context;Lcom/vungle/publisher/env/WrapperFramework;)Lcom/vungle/publisher/env/n;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 36
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/env/n;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/l;->a()Lcom/vungle/publisher/env/n;

    move-result-object v0

    return-object v0
.end method
