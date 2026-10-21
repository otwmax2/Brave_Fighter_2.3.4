###### Class com.google.android.gms.games.Players (com.google.android.gms.games.Players)
.class public interface abstract Lcom/google/android/gms/games/Players;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;,
        Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;,
        Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;,
        Lcom/google/android/gms/games/Players$LoadXpStreamResult;,
        Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;,
        Lcom/google/android/gms/games/Players$LoadXpForGamesResult;,
        Lcom/google/android/gms/games/Players$LoadPlayersResult;
    }
.end annotation


# static fields
.field public static final EXTRA_PLAYER_SEARCH_RESULTS:Ljava/lang/String; = "player_search_results"


# virtual methods
.method public abstract getCompareProfileIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/Player;)Landroid/content/Intent;
.end method

.method public abstract getCurrentPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Player;
.end method

.method public abstract getCurrentPlayerId(Lcom/google/android/gms/common/api/GoogleApiClient;)Ljava/lang/String;
.end method

.method public abstract getPlayerSearchIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.end method

.method public abstract loadConnectedPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "IZ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadMoreInvitablePlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadMoreRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;I)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "I)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadPlayer(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

.method public abstract loadRecentlyPlayedWithPlayers(Lcom/google/android/gms/common/api/GoogleApiClient;IZ)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "IZ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/Players$LoadPlayersResult;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.games.Players.LoadPlayersResult (com.google.android.gms.games.Players$LoadPlayersResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadPlayersResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadPlayersResult"
.end annotation


# virtual methods
.method public abstract getPlayers()Lcom/google/android/gms/games/PlayerBuffer;
.end method

###### Class com.google.android.gms.games.Players.LoadProfileSettingsResult (com.google.android.gms.games.Players$LoadProfileSettingsResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadProfileSettingsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadProfileSettingsResult"
.end annotation


# virtual methods
.method public abstract zzbgd()Ljava/lang/String;
.end method

.method public abstract zzbgg()Z
.end method

.method public abstract zzbgl()Z
.end method

.method public abstract zzbgm()Lcom/google/android/gms/games/internal/player/StockProfileImage;
.end method

.method public abstract zzbgn()Z
.end method

.method public abstract zzbgo()Z
.end method

.method public abstract zzbgp()Z
.end method

###### Class com.google.android.gms.games.Players.LoadStockProfileImagesResult (com.google.android.gms.games.Players$LoadStockProfileImagesResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadStockProfileImagesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadStockProfileImagesResult"
.end annotation

###### Class com.google.android.gms.games.Players.LoadXpForGameCategoriesResult (com.google.android.gms.games.Players$LoadXpForGameCategoriesResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadXpForGameCategoriesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadXpForGameCategoriesResult"
.end annotation

###### Class com.google.android.gms.games.Players.LoadXpForGamesResult (com.google.android.gms.games.Players$LoadXpForGamesResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadXpForGamesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadXpForGamesResult"
.end annotation

###### Class com.google.android.gms.games.Players.LoadXpStreamResult (com.google.android.gms.games.Players$LoadXpStreamResult)
.class public interface abstract Lcom/google/android/gms/games/Players$LoadXpStreamResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadXpStreamResult"
.end annotation

###### Class com.google.android.gms.games.Players.UpdateGamerProfileResult (com.google.android.gms.games.Players$UpdateGamerProfileResult)
.class public interface abstract Lcom/google/android/gms/games/Players$UpdateGamerProfileResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/Players;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateGamerProfileResult"
.end annotation
