###### Class com.google.android.gms.common.data.DataHolder (com.google.android.gms.common.data.DataHolder)
.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/data/DataHolder$zzb;,
        Lcom/google/android/gms/common/data/DataHolder$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;"
        }
    .end annotation
.end field

.field private static final vW:Lcom/google/android/gms/common/data/DataHolder$zza;


# instance fields
.field mClosed:Z

.field private final mVersionCode:I

.field private final ob:I

.field private final vO:[Ljava/lang/String;

.field vP:Landroid/os/Bundle;

.field private final vQ:[Landroid/database/CursorWindow;

.field private final vR:Landroid/os/Bundle;

.field vS:[I

.field vT:I

.field private vU:Ljava/lang/Object;

.field private vV:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/data/zze;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/zze;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/DataHolder$1;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->vW:Lcom/google/android/gms/common/data/DataHolder$zza;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vV:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->vO:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->ob:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->vR:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;)V
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/google/android/gms/common/data/DataHolder;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;I)[Landroid/database/CursorWindow;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .registers 7

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vV:Z

    iput v1, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vO:[Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    iput p3, p0, Lcom/google/android/gms/common/data/DataHolder;->ob:I

    iput-object p4, p0, Lcom/google/android/gms/common/data/DataHolder;->vR:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->zzard()V

    return-void
.end method

.method public static zza(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    sget-object v1, Lcom/google/android/gms/common/data/DataHolder;->vW:Lcom/google/android/gms/common/data/DataHolder$zza;

    invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;)V

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/common/data/DataHolder$zza;I)[Landroid/database/CursorWindow;
    .registers 15

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_c

    new-array v0, v5, [Landroid/database/CursorWindow;

    :goto_b
    return-object v0

    :cond_c
    if-ltz p1, :cond_18

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_92

    :cond_18
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;

    move-result-object v0

    move-object v2, v0

    :goto_1d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-instance v6, Landroid/database/CursorWindow;

    invoke-direct {v6, v5}, Landroid/database/CursorWindow;-><init>(Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v6, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    move v3, v5

    move v10, v5

    :goto_38
    if-ge v3, v11, :cond_1cb

    :try_start_3a
    invoke-virtual {v6}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v6, 0x48

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Allocating additional cursor window for large data set (row "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v6, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v6, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v0

    if-nez v0, :cond_9c

    const-string v0, "DataHolder"

    const-string v1, "Unable to allocate row to hold data."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_3a .. :try_end_90} :catch_164

    goto/16 :goto_b

    :cond_92
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v5, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    goto :goto_1d

    :cond_9c
    :try_start_9c
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    move v7, v5

    move v1, v4

    :goto_a4
    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v8

    array-length v8, v8

    if-ge v7, v8, :cond_178

    if-eqz v1, :cond_178

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v1

    aget-object v8, v1, v7

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c0

    invoke-virtual {v6, v3, v7}, Landroid/database/CursorWindow;->putNull(II)Z

    move-result v1

    :goto_bd
    add-int/lit8 v7, v7, 0x1

    goto :goto_a4

    :cond_c0
    instance-of v9, v1, Ljava/lang/String;

    if-eqz v9, :cond_cb

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1, v3, v7}, Landroid/database/CursorWindow;->putString(Ljava/lang/String;II)Z

    move-result v1

    goto :goto_bd

    :cond_cb
    instance-of v9, v1, Ljava/lang/Long;

    if-eqz v9, :cond_da

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_bd

    :cond_da
    instance-of v9, v1, Ljava/lang/Integer;

    if-eqz v9, :cond_ea

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_bd

    :cond_ea
    instance-of v9, v1, Ljava/lang/Boolean;

    if-eqz v9, :cond_100

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_fd

    const-wide/16 v8, 0x1

    :goto_f8
    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putLong(JII)Z

    move-result v1

    goto :goto_bd

    :cond_fd
    const-wide/16 v8, 0x0

    goto :goto_f8

    :cond_100
    instance-of v9, v1, [B

    if-eqz v9, :cond_10b

    check-cast v1, [B

    invoke-virtual {v6, v1, v3, v7}, Landroid/database/CursorWindow;->putBlob([BII)Z

    move-result v1

    goto :goto_bd

    :cond_10b
    instance-of v9, v1, Ljava/lang/Double;

    if-eqz v9, :cond_11a

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_bd

    :cond_11a
    instance-of v9, v1, Ljava/lang/Float;

    if-eqz v9, :cond_12a

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    float-to-double v8, v1

    invoke-virtual {v6, v8, v9, v3, v7}, Landroid/database/CursorWindow;->putDouble(DII)Z

    move-result v1

    goto :goto_bd

    :cond_12a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unsupported object for column "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_164
    .catch Ljava/lang/RuntimeException; {:try_start_9c .. :try_end_164} :catch_164

    :catch_164
    move-exception v0

    move-object v1, v0

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_16a
    if-ge v5, v2, :cond_1ca

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16a

    :cond_178
    if-nez v1, :cond_1c6

    if-eqz v10, :cond_184

    :try_start_17c
    const-string v0, "Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle."

    new-instance v1, Lcom/google/android/gms/common/data/DataHolder$zzb;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/data/DataHolder$zzb;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_184
    const-string v0, "DataHolder"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v7, 0x4a

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Couldn\'t populate window data for row "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " - allocating new window."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/database/CursorWindow;->freeLastRow()V

    new-instance v1, Landroid/database/CursorWindow;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Landroid/database/CursorWindow;-><init>(Z)V

    invoke-virtual {v1, v3}, Landroid/database/CursorWindow;->setStartPosition(I)V

    invoke-static {p0}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v1, v0}, Landroid/database/CursorWindow;->setNumColumns(I)Z

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1bb
    .catch Ljava/lang/RuntimeException; {:try_start_17c .. :try_end_1bb} :catch_164

    add-int/lit8 v0, v3, -0x1

    move-object v3, v1

    move v1, v4

    :goto_1bf
    add-int/lit8 v0, v0, 0x1

    move v10, v1

    move-object v6, v3

    move v3, v0

    goto/16 :goto_38

    :cond_1c6
    move v0, v3

    move v1, v5

    move-object v3, v6

    goto :goto_1bf

    :cond_1ca
    throw v1

    :cond_1cb
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroid/database/CursorWindow;

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/database/CursorWindow;

    goto/16 :goto_b
.end method

.method public static zzb([Ljava/lang/String;)Lcom/google/android/gms/common/data/DataHolder$zza;
    .registers 3

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder$zza;

    invoke-direct {v0, p0, v1, v1}, Lcom/google/android/gms/common/data/DataHolder$zza;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method public static zzfp(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/common/data/DataHolder;->zza(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    return-object v0
.end method

.method private zzh(Ljava/lang/String;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "No such column: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_22

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1e
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_22
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1e

    :cond_28
    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    if-ltz p2, :cond_3c

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vT:I

    if-lt p2, v0, :cond_44

    :cond_3c
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vT:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_44
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    if-nez v0, :cond_18

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    const/4 v0, 0x0

    :goto_9
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method protected finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vV:Z

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_52

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->isClosed()Z

    move-result v0

    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vU:Ljava/lang/Object;

    if-nez v0, :cond_61

    const-string v1, "internal object: "

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    const-string v1, "DataBuffer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0xa1

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V
    :try_end_52
    .catchall {:try_start_0 .. :try_end_52} :catchall_5c

    :cond_52
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_56
    :try_start_56
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_5b
    .catchall {:try_start_56 .. :try_end_5b} :catchall_5c

    goto :goto_27

    :catchall_5c
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0

    :cond_61
    :try_start_61
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vU:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_66
    .catchall {:try_start_61 .. :try_end_66} :catchall_5c

    move-result-object v0

    goto :goto_27
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vT:I

    return v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ob:I

    return v0
.end method

.method getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mVersionCode:I

    return v0
.end method

.method public isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->mClosed:Z

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/zze;->zza(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zza(Ljava/lang/String;IILandroid/database/CharArrayBuffer;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1, p4}, Landroid/database/CursorWindow;->copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V

    return-void
.end method

.method public zzaqy()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vR:Landroid/os/Bundle;

    return-object v0
.end method

.method public zzard()V
    .registers 5

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    move v0, v1

    :goto_9
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->vO:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1a

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->vO:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1a
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vS:[I

    move v0, v1

    :goto_22
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-ge v1, v2, :cond_43

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->vS:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    :cond_43
    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vT:I

    return-void
.end method

.method zzare()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vO:[Ljava/lang/String;

    return-object v0
.end method

.method zzarf()[Landroid/database/CursorWindow;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    return-object v0
.end method

.method public zzb(Ljava/lang/String;II)J
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public zzc(Ljava/lang/String;II)I
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getInt(II)I

    move-result v0

    return v0
.end method

.method public zzd(Ljava/lang/String;II)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zze(Ljava/lang/String;II)Z
    .registers 8

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getLong(II)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_21

    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public zzf(Ljava/lang/String;II)F
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getFloat(II)F

    move-result v0

    return v0
.end method

.method public zzfo(I)I
    .registers 4

    const/4 v1, 0x0

    if-ltz p1, :cond_20

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vT:I

    if-ge p1, v0, :cond_20

    const/4 v0, 0x1

    :goto_8
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzbm(Z)V

    :goto_b
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vS:[I

    array-length v0, v0

    if-ge v1, v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vS:[I

    aget v0, v0, v1

    if-ge p1, v0, :cond_22

    add-int/lit8 v1, v1, -0x1

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vS:[I

    array-length v0, v0

    if-ne v1, v0, :cond_1f

    add-int/lit8 v1, v1, -0x1

    :cond_1f
    return v1

    :cond_20
    move v0, v1

    goto :goto_8

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_b
.end method

.method public zzg(Ljava/lang/String;II)[B
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getBlob(II)[B

    move-result-object v0

    return-object v0
.end method

.method public zzh(Ljava/lang/String;II)Landroid/net/Uri;
    .registers 5

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_7
.end method

.method public zzhf(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public zzi(Ljava/lang/String;II)Z
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->zzh(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->vQ:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->vP:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->isNull(II)Z

    move-result v0

    return v0
.end method

.method public zzv(Ljava/lang/Object;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/common/data/DataHolder;->vU:Ljava/lang/Object;

    return-void
.end method

###### Class com.google.android.gms.common.data.DataHolder.AnonymousClass1 (com.google.android.gms.common.data.DataHolder$1)
.class final Lcom/google/android/gms/common/data/DataHolder$1;
.super Lcom/google/android/gms/common/data/DataHolder$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder$zza;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-void
.end method


# virtual methods
.method public zza(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$zza;
    .registers 4

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add data to empty builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/common/data/DataHolder$zza;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot add data to empty builder"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class com.google.android.gms.common.data.DataHolder.zza (com.google.android.gms.common.data.DataHolder$zza)
.class public Lcom/google/android/gms/common/data/DataHolder$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final vO:[Ljava/lang/String;

.field private final vX:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final vY:Ljava/lang/String;

.field private final vZ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private wa:Z

.field private wb:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vO:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vX:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vY:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vZ:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->wa:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->wb:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder$zza;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/data/DataHolder$zza;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vO:[Ljava/lang/String;

    return-object v0
.end method

.method private zzb(Ljava/util/HashMap;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vY:Ljava/lang/String;

    if-nez v0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_11

    move v0, v1

    goto :goto_6

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vZ:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vZ:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vX:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    goto :goto_6

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_6
.end method

.method static synthetic zzb(Lcom/google/android/gms/common/data/DataHolder$zza;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vX:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$zza;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_2e
    invoke-virtual {p0, v2}, Lcom/google/android/gms/common/data/DataHolder$zza;->zza(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$zza;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/google/android/gms/common/data/DataHolder$zza;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataHolder$zza;->zzb(Ljava/util/HashMap;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_f
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->wa:Z

    return-object p0

    :cond_13
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder$zza;->vX:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_f
.end method

.method public zzfq(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/DataHolder$zza;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

###### Class com.google.android.gms.common.data.DataHolder.zzb (com.google.android.gms.common.data.DataHolder$zzb)
.class public Lcom/google/android/gms/common/data/DataHolder$zzb;
.super Ljava/lang/RuntimeException;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/data/DataHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method
