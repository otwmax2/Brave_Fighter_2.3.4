###### Class com.google.android.gms.games.appcontent.AppContentTupleEntity (com.google.android.gms.games.appcontent.AppContentTupleEntity)
.class public final Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentTuple;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/games/appcontent/AppContentTupleEntityCreator;


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntityCreator;

    invoke-direct {v0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntityCreator;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->CREATOR:Lcom/google/android/gms/games/appcontent/AppContentTupleEntityCreator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mName:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mValue:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/games/appcontent/AppContentTuple;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mVersionCode:I

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mValue:Ljava/lang/String;

    return-void
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentTuple;)I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static zza(Lcom/google/android/gms/games/appcontent/AppContentTuple;Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lcom/google/android/gms/games/appcontent/AppContentTuple;

    if-nez v2, :cond_8

    move v0, v1

    :cond_7
    :goto_7
    return v0

    :cond_8
    if-eq p0, p1, :cond_7

    check-cast p1, Lcom/google/android/gms/games/appcontent/AppContentTuple;

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p1}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_28
    move v0, v1

    goto :goto_7
.end method

.method static zzb(Lcom/google/android/gms/games/appcontent/AppContentTuple;)Ljava/lang/String;
    .registers 4

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzz(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Name"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "Value"

    invoke-interface {p0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentTuple;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zzbhw()Lcom/google/android/gms/games/appcontent/AppContentTuple;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->mVersionCode:I

    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentTuple;)I

    move-result v0

    return v0
.end method

.method public isDataValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentTuple;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntityCreator;->zza(Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbhw()Lcom/google/android/gms/games/appcontent/AppContentTuple;
    .registers 1

    return-object p0
.end method
