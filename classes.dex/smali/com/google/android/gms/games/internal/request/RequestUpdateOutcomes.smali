###### Class com.google.android.gms.games.internal.request.RequestUpdateOutcomes (com.google.android.gms.games.internal.request.RequestUpdateOutcomes)
.class public final Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
    }
.end annotation


# static fields
.field private static final XJ:[Ljava/lang/String;


# instance fields
.field private final XK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ob:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "requestId"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "outcome"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->XJ:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILjava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->ob:I

    iput-object p2, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->XK:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(ILjava/util/HashMap;Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;-><init>(ILjava/util/HashMap;)V

    return-void
.end method

.method public static zzbl(Lcom/google/android/gms/common/data/DataHolder;)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
    .registers 7

    new-instance v1, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getStatusCode()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzrg(I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_11
    if-ge v0, v2, :cond_29

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->zzfo(I)I

    move-result v3

    const-string v4, "requestId"

    invoke-virtual {p0, v4, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "outcome"

    invoke-virtual {p0, v5, v0, v3}, Lcom/google/android/gms/common/data/DataHolder;->zzc(Ljava/lang/String;II)I

    move-result v3

    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzv(Ljava/lang/String;I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_29
    invoke-virtual {v1}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->zzbky()Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRequestIds()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->XK:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRequestOutcome(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->XK:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2e

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Request "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not part of the update operation!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;->XK:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.games.internal.request.RequestUpdateOutcomes.AnonymousClass1 (com.google.android.gms.games.internal.request.RequestUpdateOutcomes$1)
.class synthetic Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.games.internal.request.RequestUpdateOutcomes.Builder (com.google.android.gms.games.internal.request.RequestUpdateOutcomes$Builder)
.class public final Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private XK:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private ob:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->XK:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->ob:I

    return-void
.end method


# virtual methods
.method public zzbky()Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;
    .registers 5

    new-instance v0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;

    iget v1, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->ob:I

    iget-object v2, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->XK:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes;-><init>(ILjava/util/HashMap;Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$1;)V

    return-object v0
.end method

.method public zzrg(I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->ob:I

    return-object p0
.end method

.method public zzv(Ljava/lang/String;I)Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;
    .registers 5

    invoke-static {p2}, Lcom/google/android/gms/games/internal/constants/RequestUpdateResultOutcome;->isValid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/games/internal/request/RequestUpdateOutcomes$Builder;->XK:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-object p0
.end method
