###### Class android.support.v7.app.ActionBarImplHC (android.support.v7.app.ActionBarImplHC)
.class Landroid/support/v7/app/ActionBarImplHC;
.super Landroid/support/v7/app/ActionBarImplBase;
.source "ActionBarImplHC.java"

# interfaces
.implements Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;
    }
.end annotation


# instance fields
.field private mCurActionMode:Landroid/view/ActionMode;

.field final mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V
    .registers 4
    .param p1, "activity"    # Landroid/support/v7/app/ActionBarActivity;
    .param p2, "callback"    # Landroid/support/v7/app/ActionBar$Callback;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarImplBase;-><init>(Landroid/support/v7/app/ActionBarActivity;Landroid/support/v7/app/ActionBar$Callback;)V

    .line 35
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_root:I

    invoke-virtual {p1, v0}, Landroid/support/v7/app/ActionBarActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    iput-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    .line 39
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    if-eqz v0, :cond_16

    .line 40
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mNativeActionModeAwareLayout:Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/NativeActionModeAwareLayout;->setActionModeForChildListener(Landroid/support/v7/internal/widget/NativeActionModeAwareLayout$OnActionModeForChildListener;)V

    .line 42
    :cond_16
    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/app/ActionBarImplHC;
    .param p1, "x1"    # Landroid/view/ActionMode;

    .prologue
    .line 25
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;

    return-object p1
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/support/v7/app/ActionBarImplBase;->hide()V

    .line 61
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 62
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 64
    :cond_c
    return-void
.end method

.method isShowHideAnimationEnabled()Z
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_c

    invoke-super {p0}, Landroid/support/v7/app/ActionBarImplBase;->isShowHideAnimationEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public onActionModeForChild(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .registers 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 47
    new-instance v0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode$Callback;)V

    return-object v0
.end method

.method public show()V
    .registers 2

    .prologue
    .line 52
    invoke-super {p0}, Landroid/support/v7/app/ActionBarImplBase;->show()V

    .line 53
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_c

    .line 54
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC;->mCurActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 56
    :cond_c
    return-void
.end method

###### Class android.support.v7.app.ActionBarImplHC.CallbackWrapper (android.support.v7.app.ActionBarImplHC$CallbackWrapper)
.class Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;
.super Ljava/lang/Object;
.source "ActionBarImplHC.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarImplHC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mWrappedCallback:Landroid/view/ActionMode$Callback;

.field final synthetic this$0:Landroid/support/v7/app/ActionBarImplHC;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode$Callback;)V
    .registers 3
    .param p2, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 75
    iput-object p1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p2, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    .line 77
    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 81
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 82
    .local v0, "wrappedResult":Z
    if-eqz v0, :cond_12

    .line 84
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-static {v1, p1}, Landroid/support/v7/app/ActionBarImplHC;->access$002(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 86
    iget-object v1, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBarImplHC;->showForActionMode()V

    .line 88
    :cond_12
    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 106
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarImplHC;->hideForActionMode()V

    .line 108
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->this$0:Landroid/support/v7/app/ActionBarImplHC;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v7/app/ActionBarImplHC;->access$002(Landroid/support/v7/app/ActionBarImplHC;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 109
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v7/app/ActionBarImplHC$CallbackWrapper;->mWrappedCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method
