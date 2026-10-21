###### Class com.vungle.publisher.mn (com.vungle.publisher.mn)
.class public final Lcom/vungle/publisher/mn;
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
        "Lcom/vungle/publisher/mj$a;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private final b:Ldagger/MembersInjector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/mj$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-class v0, Lcom/vungle/publisher/mn;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/vungle/publisher/mn;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Ldagger/MembersInjector;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/mj$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    sget-boolean v0, Lcom/vungle/publisher/mn;->a:Z

    if-nez v0, :cond_f

    if-nez p1, :cond_f

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 19
    :cond_f
    iput-object p1, p0, Lcom/vungle/publisher/mn;->b:Ldagger/MembersInjector;

    .line 20
    return-void
.end method

.method public static a(Ldagger/MembersInjector;)Ldagger/internal/Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/MembersInjector",
            "<",
            "Lcom/vungle/publisher/mj$a;",
            ">;)",
            "Ldagger/internal/Factory",
            "<",
            "Lcom/vungle/publisher/mj$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v0, Lcom/vungle/publisher/mn;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/mn;-><init>(Ldagger/MembersInjector;)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/mj$a;
    .registers 3

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/mn;->b:Ldagger/MembersInjector;

    new-instance v1, Lcom/vungle/publisher/mj$a;

    invoke-direct {v1}, Lcom/vungle/publisher/mj$a;-><init>()V

    invoke-static {v0, v1}, Ldagger/internal/MembersInjectors;->injectMembers(Ldagger/MembersInjector;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/mj$a;

    return-object v0
.end method

.method public synthetic get()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 8
    invoke-virtual {p0}, Lcom/vungle/publisher/mn;->a()Lcom/vungle/publisher/mj$a;

    move-result-object v0

    return-object v0
.end method
