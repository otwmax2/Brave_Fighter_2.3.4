###### Class com.vungle.publisher.sh (com.vungle.publisher.sh)
.class public abstract Lcom/vungle/publisher/sh;
.super Lcom/vungle/publisher/ph;
.source "vungle"


# instance fields
.field private final a:Lcom/vungle/publisher/jf;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/jf;)V
    .registers 2

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/vungle/publisher/ph;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/vungle/publisher/sh;->a:Lcom/vungle/publisher/jf;

    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/vungle/publisher/jf;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/sh;->a:Lcom/vungle/publisher/jf;

    return-object v0
.end method
