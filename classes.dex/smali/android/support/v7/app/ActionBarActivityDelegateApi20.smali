###### Class android.support.v7.app.ActionBarActivityDelegateApi20 (android.support.v7.app.ActionBarActivityDelegateApi20)
.class Landroid/support/v7/app/ActionBarActivityDelegateApi20;
.super Landroid/support/v7/app/ActionBarActivityDelegateJBMR2;
.source "ActionBarActivityDelegateApi20.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .registers 2
    .param p1, "activity"    # Landroid/support/v7/app/ActionBarActivity;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateJBMR2;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 25
    return-void
.end method


# virtual methods
.method createWindowCallbackWrapper(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .registers 3
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 29
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateApi20;Landroid/view/Window$Callback;)V

    return-object v0
.end method

###### Class android.support.v7.app.ActionBarActivityDelegateApi20.WindowCallbackWrapperApi20 (android.support.v7.app.ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20)
.class Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;
.super Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;
.source "ActionBarActivityDelegateApi20.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ActionBarActivityDelegateApi20;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowCallbackWrapperApi20"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ActionBarActivityDelegateApi20;


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateApi20;Landroid/view/Window$Callback;)V
    .registers 3
    .param p2, "wrapped"    # Landroid/view/Window$Callback;

    .prologue
    .line 34
    iput-object p1, p0, Landroid/support/v7/app/ActionBarActivityDelegateApi20$WindowCallbackWrapperApi20;->this$0:Landroid/support/v7/app/ActionBarActivityDelegateApi20;

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/support/v7/app/ActionBarActivityDelegateICS$WindowCallbackWrapper;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateICS;Landroid/view/Window$Callback;)V

    .line 36
    return-void
.end method
