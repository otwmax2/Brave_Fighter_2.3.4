###### Class com.google.android.gms.games.appcontent.AppContentTupleRef (com.google.android.gms.games.appcontent.AppContentTupleRef)
.class public final Lcom/google/android/gms/games/appcontent/AppContentTupleRef;
.super Lcom/google/android/gms/common/data/zzc;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentTuple;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/zzc;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-static {p0, p1}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentTuple;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic freeze()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleRef;->zzbhw()Lcom/google/android/gms/games/appcontent/AppContentTuple;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "tuple_name"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentTupleRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    const-string v0, "tuple_value"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/games/appcontent/AppContentTupleRef;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zza(Lcom/google/android/gms/games/appcontent/AppContentTuple;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->zzb(Lcom/google/android/gms/games/appcontent/AppContentTuple;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleRef;->freeze()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentTuple;

    check-cast v0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzbhw()Lcom/google/android/gms/games/appcontent/AppContentTuple;
    .registers 2

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;

    invoke-direct {v0, p0}, Lcom/google/android/gms/games/appcontent/AppContentTupleEntity;-><init>(Lcom/google/android/gms/games/appcontent/AppContentTuple;)V

    return-object v0
.end method
