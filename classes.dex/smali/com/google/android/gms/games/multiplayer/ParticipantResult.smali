###### Class com.google.android.gms.games.multiplayer.ParticipantResult (com.google.android.gms.games.multiplayer.ParticipantResult)
.class public final Lcom/google/android/gms/games/multiplayer/ParticipantResult;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/games/multiplayer/ParticipantResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_RESULT_DISAGREED:I = 0x5

.field public static final MATCH_RESULT_DISCONNECT:I = 0x4

.field public static final MATCH_RESULT_LOSS:I = 0x1

.field public static final MATCH_RESULT_NONE:I = 0x3

.field public static final MATCH_RESULT_TIE:I = 0x2

.field public static final MATCH_RESULT_UNINITIALIZED:I = -0x1

.field public static final MATCH_RESULT_WIN:I = 0x0

.field public static final PLACING_UNINITIALIZED:I = -0x1


# instance fields
.field private final TH:Ljava/lang/String;

.field private final YA:I

.field private final YB:I

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;II)V
    .registers 6

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->mVersionCode:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->TH:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/games/internal/constants/MatchResult;->isValid(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbm(Z)V

    iput p3, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->YA:I

    iput p4, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->YB:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/google/android/gms/games/multiplayer/ParticipantResult;-><init>(ILjava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public getParticipantId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->TH:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacing()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->YB:I

    return v0
.end method

.method public getResult()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->YA:I

    return v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/multiplayer/ParticipantResult;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/multiplayer/ParticipantResultCreator;->zza(Lcom/google/android/gms/games/multiplayer/ParticipantResult;Landroid/os/Parcel;I)V

    return-void
.end method
