###### Class com.google.android.gms.games.internal.GamesLog (com.google.android.gms.games.internal.GamesLog)
.class public final Lcom/google/android/gms/games/internal/GamesLog;
.super Ljava/lang/Object;


# static fields
.field private static final Um:Lcom/google/android/gms/common/internal/zzp;

.field private static final Un:Lcom/google/android/gms/internal/zzre;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzre",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/common/internal/zzp;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/internal/zzp;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->Um:Lcom/google/android/gms/common/internal/zzp;

    const-string v0, "games.play_games_dogfood"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzre;->zzm(Ljava/lang/String;Z)Lcom/google/android/gms/internal/zzre;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/games/internal/GamesLog;->Un:Lcom/google/android/gms/internal/zzre;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzaf(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->Um:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzp;->zzaf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->Um:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/common/internal/zzp;->zzag(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->Um:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzp;->zzb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    sget-object v0, Lcom/google/android/gms/games/internal/GamesLog;->Um:Lcom/google/android/gms/common/internal/zzp;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzp;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
