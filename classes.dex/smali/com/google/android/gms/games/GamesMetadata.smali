###### Class com.google.android.gms.games.GamesMetadata (com.google.android.gms.games.GamesMetadata)
.class public interface abstract Lcom/google/android/gms/games/GamesMetadata;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;,
        Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;,
        Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;
    }
.end annotation


# virtual methods
.method public abstract getCurrentGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/Game;
.end method

.method public abstract loadGame(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;",
            ">;"
        }
    .end annotation
.end method

###### Class com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult (com.google.android.gms.games.GamesMetadata$LoadGameInstancesResult)
.class public interface abstract Lcom/google/android/gms/games/GamesMetadata$LoadGameInstancesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadGameInstancesResult"
.end annotation

###### Class com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult (com.google.android.gms.games.GamesMetadata$LoadGameSearchSuggestionsResult)
.class public interface abstract Lcom/google/android/gms/games/GamesMetadata$LoadGameSearchSuggestionsResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadGameSearchSuggestionsResult"
.end annotation

###### Class com.google.android.gms.games.GamesMetadata.LoadGamesResult (com.google.android.gms.games.GamesMetadata$LoadGamesResult)
.class public interface abstract Lcom/google/android/gms/games/GamesMetadata$LoadGamesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/GamesMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadGamesResult"
.end annotation


# virtual methods
.method public abstract getGames()Lcom/google/android/gms/games/GameBuffer;
.end method
