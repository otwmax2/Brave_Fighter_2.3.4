###### Class android.support.v4.app.RemoteInputCompatBase (android.support.v4.app.RemoteInputCompatBase)
.class Landroid/support/v4/app/RemoteInputCompatBase;
.super Ljava/lang/Object;
.source "RemoteInputCompatBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

###### Class android.support.v4.app.RemoteInputCompatBase.RemoteInput (android.support.v4.app.RemoteInputCompatBase$RemoteInput)
.class public abstract Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.super Ljava/lang/Object;
.source "RemoteInputCompatBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/RemoteInputCompatBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RemoteInput"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract getAllowFreeFormInput()Z
.end method

.method protected abstract getChoices()[Ljava/lang/CharSequence;
.end method

.method protected abstract getExtras()Landroid/os/Bundle;
.end method

.method protected abstract getLabel()Ljava/lang/CharSequence;
.end method

.method protected abstract getResultKey()Ljava/lang/String;
.end method

###### Class android.support.v4.app.RemoteInputCompatBase.RemoteInput.Factory (android.support.v4.app.RemoteInputCompatBase$RemoteInput$Factory)
.class public interface abstract Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput$Factory;
.super Ljava/lang/Object;
.source "RemoteInputCompatBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract build(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method

.method public abstract newArray(I)[Landroid/support/v4/app/RemoteInputCompatBase$RemoteInput;
.end method
