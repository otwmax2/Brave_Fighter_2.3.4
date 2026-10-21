###### Class com.vungle.publisher.env.h (com.vungle.publisher.env.h)
.class public Lcom/vungle/publisher/env/h;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/env/n;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/vungle/publisher/env/WrapperFramework;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/vungle/publisher/env/WrapperFramework;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/vungle/publisher/env/h;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/vungle/publisher/env/h;->b:Ljava/lang/String;

    .line 13
    iput-object p3, p0, Lcom/vungle/publisher/env/h;->c:Lcom/vungle/publisher/env/WrapperFramework;

    .line 14
    iput-object p4, p0, Lcom/vungle/publisher/env/h;->d:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/env/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/env/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/vungle/publisher/env/h;->d:Ljava/lang/String;

    return-object v0
.end method
