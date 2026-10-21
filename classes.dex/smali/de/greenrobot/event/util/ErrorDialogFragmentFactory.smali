###### Class de.greenrobot.event.util.ErrorDialogFragmentFactory (de.greenrobot.event.util.ErrorDialogFragmentFactory)
.class public abstract Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;,
        Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Support;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final config:Lde/greenrobot/event/util/ErrorDialogConfig;


# direct methods
.method protected constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/event/util/ErrorDialogConfig;

    .prologue
    .line 15
    .local p0, "this":Lde/greenrobot/event/util/ErrorDialogFragmentFactory;, "Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    .line 17
    return-void
.end method


# virtual methods
.method protected abstract createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/ThrowableFailureEvent;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method protected getMessageFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 69
    .local p0, "this":Lde/greenrobot/event/util/ErrorDialogFragmentFactory;, "Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v2, p1, Lde/greenrobot/event/util/ThrowableFailureEvent;->throwable:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Lde/greenrobot/event/util/ErrorDialogConfig;->getMessageIdForThrowable(Ljava/lang/Throwable;)I

    move-result v0

    .line 70
    .local v0, "msgResId":I
    iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getTitleFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 64
    .local p0, "this":Lde/greenrobot/event/util/ErrorDialogFragmentFactory;, "Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    iget-object v0, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v0, v0, Lde/greenrobot/event/util/ErrorDialogConfig;->resources:Landroid/content/res/Resources;

    iget-object v1, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget v1, v1, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultTitleId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;ZLandroid/os/Bundle;)Ljava/lang/Object;
    .registers 9
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "finishAfterDialog"    # Z
    .param p3, "argumentsForErrorDialog"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/ThrowableFailureEvent;",
            "Z",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, "this":Lde/greenrobot/event/util/ErrorDialogFragmentFactory;, "Lde/greenrobot/event/util/ErrorDialogFragmentFactory<TT;>;"
    invoke-virtual {p1}, Lde/greenrobot/event/util/ThrowableFailureEvent;->isSuppressErrorUi()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 29
    const/4 v3, 0x0

    .line 56
    :goto_7
    return-object v3

    .line 32
    :cond_8
    if-eqz p3, :cond_72

    .line 33
    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_10
    const-string v3, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 39
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->getTitleFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    .line 40
    .local v2, "title":Ljava/lang/String;
    const-string v3, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .end local v2    # "title":Ljava/lang/String;
    :cond_21
    const-string v3, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 43
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->getMessageFor(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "message":Ljava/lang/String;
    const-string v3, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .end local v1    # "message":Ljava/lang/String;
    :cond_32
    const-string v3, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 47
    const-string v3, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    :cond_3f
    const-string v3, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_56

    iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v3, v3, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    if-eqz v3, :cond_56

    .line 51
    const-string v3, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget-object v4, v4, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultEventTypeOnDialogClosed:Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    :cond_56
    const-string v3, "de.greenrobot.eventbus.errordialog.icon_id"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6d

    iget-object v3, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget v3, v3, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I

    if-eqz v3, :cond_6d

    .line 54
    const-string v3, "de.greenrobot.eventbus.errordialog.icon_id"

    iget-object v4, p0, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->config:Lde/greenrobot/event/util/ErrorDialogConfig;

    iget v4, v4, Lde/greenrobot/event/util/ErrorDialogConfig;->defaultDialogIconId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    :cond_6d
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_7

    .line 35
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_72
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "bundle":Landroid/os/Bundle;
    goto :goto_10
.end method

###### Class de.greenrobot.event.util.ErrorDialogFragmentFactory.Honeycomb (de.greenrobot.event.util.ErrorDialogFragmentFactory$Honeycomb)
.class public Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;
.super Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Honeycomb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/event/util/ErrorDialogFragmentFactory",
        "<",
        "Landroid/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/event/util/ErrorDialogConfig;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;-><init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;
    .registers 4
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 95
    new-instance v0, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;

    invoke-direct {v0}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;-><init>()V

    .line 96
    .local v0, "errorFragment":Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;
    invoke-virtual {v0, p2}, Lde/greenrobot/event/util/ErrorDialogFragments$Honeycomb;->setArguments(Landroid/os/Bundle;)V

    .line 97
    return-object v0
.end method

.method protected bridge synthetic createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Honeycomb;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    return-object v0
.end method

###### Class de.greenrobot.event.util.ErrorDialogFragmentFactory.Support (de.greenrobot.event.util.ErrorDialogFragmentFactory$Support)
.class public Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Support;
.super Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/greenrobot/event/util/ErrorDialogFragmentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Support"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lde/greenrobot/event/util/ErrorDialogFragmentFactory",
        "<",
        "Landroid/support/v4/app/Fragment;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V
    .registers 2
    .param p1, "config"    # Lde/greenrobot/event/util/ErrorDialogConfig;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory;-><init>(Lde/greenrobot/event/util/ErrorDialogConfig;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .registers 4
    .param p1, "event"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    .line 80
    new-instance v0, Lde/greenrobot/event/util/ErrorDialogFragments$Support;

    invoke-direct {v0}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;-><init>()V

    .line 81
    .local v0, "errorFragment":Lde/greenrobot/event/util/ErrorDialogFragments$Support;
    invoke-virtual {v0, p2}, Lde/greenrobot/event/util/ErrorDialogFragments$Support;->setArguments(Landroid/os/Bundle;)V

    .line 82
    return-object v0
.end method

.method protected bridge synthetic createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 4
    .param p1, "x0"    # Lde/greenrobot/event/util/ThrowableFailureEvent;
    .param p2, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-virtual {p0, p1, p2}, Lde/greenrobot/event/util/ErrorDialogFragmentFactory$Support;->createErrorFragment(Lde/greenrobot/event/util/ThrowableFailureEvent;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method
