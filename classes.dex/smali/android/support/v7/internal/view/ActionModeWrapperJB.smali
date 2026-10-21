###### Class android.support.v7.internal.view.ActionModeWrapperJB (android.support.v7.internal.view.ActionModeWrapperJB)
.class public Landroid/support/v7/internal/view/ActionModeWrapperJB;
.super Landroid/support/v7/internal/view/ActionModeWrapper;
.source "ActionModeWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/ActionModeWrapperJB$CallbackWrapper;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ActionMode;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameworkActionMode"    # Landroid/view/ActionMode;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapper;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getTitleOptionalHint()Z
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapperJB;->mWrappedObject:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->getTitleOptionalHint()Z

    move-result v0

    return v0
.end method

.method public isTitleOptional()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapperJB;->mWrappedObject:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->isTitleOptional()Z

    move-result v0

    return v0
.end method

.method public setTitleOptionalHint(Z)V
    .registers 3
    .param p1, "titleOptional"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Landroid/support/v7/internal/view/ActionModeWrapperJB;->mWrappedObject:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 39
    return-void
.end method

###### Class android.support.v7.internal.view.ActionModeWrapperJB.CallbackWrapper (android.support.v7.internal.view.ActionModeWrapperJB$CallbackWrapper)
.class public Landroid/support/v7/internal/view/ActionModeWrapperJB$CallbackWrapper;
.super Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;
.source "ActionModeWrapperJB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/view/ActionModeWrapperJB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallbackWrapper"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "supportCallback"    # Landroid/support/v7/view/ActionMode$Callback;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapper$CallbackWrapper;-><init>(Landroid/content/Context;Landroid/support/v7/view/ActionMode$Callback;)V

    .line 53
    return-void
.end method


# virtual methods
.method protected createActionModeWrapper(Landroid/content/Context;Landroid/view/ActionMode;)Landroid/support/v7/internal/view/ActionModeWrapper;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 57
    new-instance v0, Landroid/support/v7/internal/view/ActionModeWrapperJB;

    invoke-direct {v0, p1, p2}, Landroid/support/v7/internal/view/ActionModeWrapperJB;-><init>(Landroid/content/Context;Landroid/view/ActionMode;)V

    return-object v0
.end method
