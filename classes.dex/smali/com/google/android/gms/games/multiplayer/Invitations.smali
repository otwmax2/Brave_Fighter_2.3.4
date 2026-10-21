###### Class com.google.android.gms.games.multiplayer.Invitations (com.google.android.gms.games.multiplayer.Invitations)
.class public interface abstract Lcom/google/android/gms/games/multiplayer/Invitations;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;
    }
.end annotation


# virtual methods
.method public abstract getInvitationInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadInvitations(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract registerInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/multiplayer/OnInvitationReceivedListener;)V
.end method

.method public abstract unregisterInvitationListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.end method

###### Class com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult (com.google.android.gms.games.multiplayer.Invitations$LoadInvitationsResult)
.class public interface abstract Lcom/google/android/gms/games/multiplayer/Invitations$LoadInvitationsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/Invitations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadInvitationsResult"
.end annotation


# virtual methods
.method public abstract getInvitations()Lcom/google/android/gms/games/multiplayer/InvitationBuffer;
.end method
