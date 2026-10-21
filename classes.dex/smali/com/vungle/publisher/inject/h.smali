###### Class com.vungle.publisher.inject.h (com.vungle.publisher.inject.h)
.class public final Lcom/vungle/publisher/inject/h;
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
        "Ljava/lang/Class;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Lcom/vungle/publisher/inject/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-class v0, Lcom/vungle/publisher/inject/h;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/inject/h;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Lcom/vungle/publisher/inject/a;)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-boolean v0, Lcom/vungle/publisher/inject/h;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 16
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/inject/h;->b:Lcom/vungle/publisher/inject/a;

    .line 17
    return-void
.end method

.method public static a(Lcom/vungle/publisher/inject/a;)Ldagger/internal/Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/inject/a;",
            ")",
            "Ldagger/internal/Factory",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v0, Lcom/vungle/publisher/inject/h;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/inject/h;-><init>(Lcom/vungle/publisher/inject/a;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 3

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/inject/h;->b:Lcom/vungle/publisher/inject/a;

    .line 22
    invoke-virtual {v0}, Lcom/vungle/publisher/inject/a;->e()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 21
    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 7
    invoke-virtual {p0}, Lcom/vungle/publisher/inject/h;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
