###### Class com.google.example.games.basegameutils.BaseGameUtils (com.google.example.games.basegameutils.BaseGameUtils)
.class public Lcom/google/example/games/basegameutils/BaseGameUtils;
.super Ljava/lang/Object;
.source "BaseGameUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 129
    return-object v0
.end method

.method public static makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Dialog;
    .registers 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 134
    return-object v0
.end method

.method public static resolveConnectionFailure(Landroid/app/Activity;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/common/ConnectionResult;ILjava/lang/String;)Z
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "client"    # Lcom/google/android/gms/common/api/GoogleApiClient;
    .param p2, "result"    # Lcom/google/android/gms/common/ConnectionResult;
    .param p3, "requestCode"    # I
    .param p4, "fallbackErrorMessage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 26
    :try_start_7
    invoke-virtual {p2, p0, p3}, Lcom/google/android/gms/common/ConnectionResult;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_a
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_7 .. :try_end_a} :catch_c

    .line 27
    const/4 v3, 0x1

    .line 45
    :goto_b
    return v3

    .line 28
    :catch_c
    move-exception v1

    .line 31
    .local v1, "e":Landroid/content/IntentSender$SendIntentException;
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/GoogleApiClient;->connect()V

    goto :goto_b

    .line 36
    .end local v1    # "e":Landroid/content/IntentSender$SendIntentException;
    :cond_11
    invoke-virtual {p2}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    .line 37
    .local v2, "errorCode":I
    invoke-static {v2, p0, p3}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    .line 39
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1f

    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_b

    .line 43
    :cond_1f
    invoke-static {p0, p4}, Lcom/google/example/games/basegameutils/BaseGameUtils;->showAlert(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static showActivityResultError(Landroid/app/Activity;IIII)V
    .registers 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I
    .param p2, "actResp"    # I
    .param p3, "errorCode"    # I
    .param p4, "errorDescription"    # I

    .prologue
    .line 89
    if-nez p0, :cond_a

    .line 90
    const-string v1, "BaseGameUtils"

    const-string v2, "*** No Activity. Can\'t show failure dialog!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :goto_9
    return-void

    .line 95
    :cond_a
    packed-switch p2, :pswitch_data_64

    .line 111
    const/4 v1, 0x0

    invoke-static {p3, p0, p1, v1}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    .line 113
    .local v0, "errorDialog":Landroid/app/Dialog;
    if-nez v0, :cond_3e

    .line 115
    const-string v1, "BaseGamesUtils"

    const-string v2, "No standard error dialog available. Making fallback dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 121
    invoke-virtual {p0, p4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/BaseGameUtils;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 125
    :cond_3e
    :goto_3e
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_9

    .line 97
    .end local v0    # "errorDialog":Landroid/app/Dialog;
    :pswitch_42
    sget v1, Lcom/google/example/games/basegameutils/R$string;->gamehelper_app_misconfigured:I

    .line 98
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/BaseGameUtils;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 99
    .restart local v0    # "errorDialog":Landroid/app/Dialog;
    goto :goto_3e

    .line 101
    .end local v0    # "errorDialog":Landroid/app/Dialog;
    :pswitch_4d
    sget v1, Lcom/google/example/games/basegameutils/R$string;->gamehelper_sign_in_failed:I

    .line 102
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/BaseGameUtils;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 103
    .restart local v0    # "errorDialog":Landroid/app/Dialog;
    goto :goto_3e

    .line 105
    .end local v0    # "errorDialog":Landroid/app/Dialog;
    :pswitch_58
    sget v1, Lcom/google/example/games/basegameutils/R$string;->gamehelper_license_failed:I

    .line 106
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {p0, v1}, Lcom/google/example/games/basegameutils/BaseGameUtils;->makeSimpleDialog(Landroid/app/Activity;Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    .line 107
    .restart local v0    # "errorDialog":Landroid/app/Dialog;
    goto :goto_3e

    .line 95
    nop

    :pswitch_data_64
    .packed-switch 0x2712
        :pswitch_4d
        :pswitch_58
        :pswitch_42
    .end packed-switch
.end method

.method public static showAlert(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 16
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 18
    return-void
.end method

.method public static varargs verifySampleSetup(Landroid/app/Activity;[I)Z
    .registers 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "resIds"    # [I

    .prologue
    const/4 v3, 0x0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v2, "problems":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 60
    .local v1, "problemFound":Z
    const-string v4, "The following set up problems were found:\n\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.example.games"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 64
    const/4 v1, 0x1

    .line 65
    const-string v4, "- Package name cannot be com.google.*. You need to change the sample\'s package name to your own package."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    .line 66
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_24
    array-length v5, p1

    move v4, v3

    :goto_26
    if-ge v4, v5, :cond_46

    aget v0, p1, v4

    .line 70
    .local v0, "i":I
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "replaceme"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 71
    const/4 v1, 0x1

    .line 72
    const-string v4, "- You must replace all placeholder IDs in the ids.xml file by your project\'s IDs."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .end local v0    # "i":I
    :cond_46
    if-eqz v1, :cond_58

    .line 79
    const-string v4, "\n\nThese problems may prevent the app from working properly."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/google/example/games/basegameutils/BaseGameUtils;->showAlert(Landroid/app/Activity;Ljava/lang/String;)V

    .line 84
    :goto_54
    return v3

    .line 69
    .restart local v0    # "i":I
    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 84
    .end local v0    # "i":I
    :cond_58
    const/4 v3, 0x1

    goto :goto_54
.end method
