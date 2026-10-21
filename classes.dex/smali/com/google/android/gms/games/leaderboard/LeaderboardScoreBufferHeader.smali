###### Class com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader (com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader)
.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$Builder;
    }
.end annotation


# instance fields
.field private final bM:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_a

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    :cond_a
    iput-object p1, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->bM:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public asBundle()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;->bM:Landroid/os/Bundle;

    return-object v0
.end method

###### Class com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader.AnonymousClass1 (com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader$1)
.class synthetic Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader.Builder (com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader$Builder)
.class public final Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/leaderboard/LeaderboardScoreBufferHeader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
