###### Class com.facebook.CallbackManager (com.facebook.CallbackManager)
.class public interface abstract Lcom/facebook/CallbackManager;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/CallbackManager$Factory;
    }
.end annotation


# virtual methods
.method public abstract onActivityResult(IILandroid/content/Intent;)Z
.end method

###### Class com.facebook.CallbackManager.Factory (com.facebook.CallbackManager$Factory)
.class public Lcom/facebook/CallbackManager$Factory;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/facebook/CallbackManager;
    .registers 1

    .prologue
    .line 51
    new-instance v0, Lcom/facebook/internal/CallbackManagerImpl;

    invoke-direct {v0}, Lcom/facebook/internal/CallbackManagerImpl;-><init>()V

    return-object v0
.end method
