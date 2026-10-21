###### Class com.vungle.publisher.ar (com.vungle.publisher.ar)
.class public Lcom/vungle/publisher/ar;
.super Lcom/vungle/publisher/ph;
.source "vungle"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/vungle/publisher/ph;-><init>()V

    .line 9
    iput p1, p0, Lcom/vungle/publisher/ar;->a:I

    .line 10
    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 13
    iget v0, p0, Lcom/vungle/publisher/ar;->a:I

    return v0
.end method
