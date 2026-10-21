###### Class com.google.android.gms.internal.zzun (com.google.android.gms.internal.zzun)
.class public interface abstract Lcom/google/android/gms/internal/zzun;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzun$zzf;,
        Lcom/google/android/gms/internal/zzun$zzd;,
        Lcom/google/android/gms/internal/zzun$zzc;,
        Lcom/google/android/gms/internal/zzun$zze;,
        Lcom/google/android/gms/internal/zzun$zzb;,
        Lcom/google/android/gms/internal/zzun$zza;
    }
.end annotation

###### Class com.google.android.gms.internal.zzun.zza (com.google.android.gms.internal.zzun$zza)
.class public final Lcom/google/android/gms/internal/zzun$zza;
.super Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field private static volatile anV:[Lcom/google/android/gms/internal/zzun$zza;


# instance fields
.field public anW:Ljava/lang/Integer;

.field public anX:[Lcom/google/android/gms/internal/zzun$zze;

.field public anY:[Lcom/google/android/gms/internal/zzun$zzb;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun$zza;->zzbwa()Lcom/google/android/gms/internal/zzun$zza;

    return-void
.end method

.method public static zzbvz()[Lcom/google/android/gms/internal/zzun$zza;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzun$zza;->anV:[Lcom/google/android/gms/internal/zzun$zza;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapa;->bij:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzun$zza;->anV:[Lcom/google/android/gms/internal/zzun$zza;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzun$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzun$zza;->anV:[Lcom/google/android/gms/internal/zzun$zza;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzun$zza;->anV:[Lcom/google/android/gms/internal/zzun$zza;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzun$zza;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzun$zza;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapa;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2f

    move v0, v1

    goto :goto_4

    :cond_2f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapa;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    if-nez v0, :cond_29

    const/4 v0, 0x0

    :goto_15
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapa;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapa;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_15
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    array-length v0, v0

    if-lez v0, :cond_2b

    move v0, v1

    :goto_19
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    array-length v2, v2

    if-ge v0, v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    aget-object v2, v2, v0

    if-eqz v2, :cond_28

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    array-length v0, v0

    if-lez v0, :cond_46

    :goto_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    array-length v0, v0

    if-ge v1, v0, :cond_46

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    aget-object v0, v0, v1

    if-eqz v0, :cond_43

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_46
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zza;->zzbd(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zza;

    move-result-object v0

    return-object v0
.end method

.method public zzbd(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zza;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_9a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzb(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1a
    const/16 v0, 0x12

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzc(Lcom/google/android/gms/internal/zzaou;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    if-nez v0, :cond_46

    move v0, v1

    :goto_25
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzun$zze;

    if-eqz v0, :cond_2f

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2f
    :goto_2f
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4a

    new-instance v3, Lcom/google/android/gms/internal/zzun$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzun$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    array-length v0, v0

    goto :goto_25

    :cond_4a
    new-instance v3, Lcom/google/android/gms/internal/zzun$zze;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzun$zze;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    goto :goto_1

    :sswitch_59
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzc(Lcom/google/android/gms/internal/zzaou;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    if-nez v0, :cond_85

    move v0, v1

    :goto_64
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzun$zzb;

    if-eqz v0, :cond_6e

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6e
    :goto_6e
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_89

    new-instance v3, Lcom/google/android/gms/internal/zzun$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzun$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_6e

    :cond_85
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    array-length v0, v0

    goto :goto_64

    :cond_89
    new-instance v3, Lcom/google/android/gms/internal/zzun$zzb;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzun$zzb;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    goto/16 :goto_1

    nop

    :sswitch_data_9a
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_59
    .end sparse-switch
.end method

.method public zzbwa()Lcom/google/android/gms/internal/zzun$zza;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    invoke-static {}, Lcom/google/android/gms/internal/zzun$zze;->zzbwg()[Lcom/google/android/gms/internal/zzun$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    invoke-static {}, Lcom/google/android/gms/internal/zzun$zzb;->zzbwb()[Lcom/google/android/gms/internal/zzun$zzb;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zza;->bik:I

    return-object p0
.end method

.method protected zzy()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zza;->anW:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    array-length v2, v2

    if-lez v2, :cond_35

    move v2, v0

    move v0, v1

    :goto_20
    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    array-length v3, v3

    if-ge v0, v3, :cond_34

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zza;->anX:[Lcom/google/android/gms/internal/zzun$zze;

    aget-object v3, v3, v0

    if-eqz v3, :cond_31

    const/4 v4, 0x2

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_34
    move v0, v2

    :cond_35
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    if-eqz v2, :cond_52

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    array-length v2, v2

    if-lez v2, :cond_52

    :goto_3e
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    array-length v2, v2

    if-ge v1, v2, :cond_52

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zza;->anY:[Lcom/google/android/gms/internal/zzun$zzb;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4f

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    :cond_52
    return v0
.end method

###### Class com.google.android.gms.internal.zzun.zzb (com.google.android.gms.internal.zzun$zzb)
.class public final Lcom/google/android/gms/internal/zzun$zzb;
.super Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# static fields
.field private static volatile anZ:[Lcom/google/android/gms/internal/zzun$zzb;


# instance fields
.field public aoa:Ljava/lang/Integer;

.field public aob:Ljava/lang/String;

.field public aoc:[Lcom/google/android/gms/internal/zzun$zzc;

.field public aod:Ljava/lang/Boolean;

.field public aoe:Lcom/google/android/gms/internal/zzun$zzd;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun$zzb;->zzbwc()Lcom/google/android/gms/internal/zzun$zzb;

    return-void
.end method

.method public static zzbwb()[Lcom/google/android/gms/internal/zzun$zzb;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzun$zzb;->anZ:[Lcom/google/android/gms/internal/zzun$zzb;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapa;->bij:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzun$zzb;->anZ:[Lcom/google/android/gms/internal/zzun$zzb;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzun$zzb;

    sput-object v0, Lcom/google/android/gms/internal/zzun$zzb;->anZ:[Lcom/google/android/gms/internal/zzun$zzb;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzun$zzb;->anZ:[Lcom/google/android/gms/internal/zzun$zzb;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzun$zzb;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzun$zzb;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapa;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    if-nez v2, :cond_4f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    if-eqz v2, :cond_5b

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    move v0, v1

    goto :goto_4

    :cond_5b
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v2, :cond_65

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzun$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    if-nez v0, :cond_38

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    if-nez v0, :cond_3f

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzapa;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    if-nez v0, :cond_46

    move v0, v1

    :goto_2f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v2, :cond_4d

    :goto_36
    add-int/2addr v0, v1

    return v0

    :cond_38
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_3f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_46
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_2f

    :cond_4d
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzun$zzd;->hashCode()I

    move-result v1

    goto :goto_36
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    array-length v0, v0

    if-lez v0, :cond_34

    const/4 v0, 0x0

    :goto_22
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    array-length v1, v1

    if-ge v0, v1, :cond_34

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    aget-object v1, v1, v0

    if-eqz v1, :cond_31

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_34
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    if-eqz v0, :cond_42

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzj(IZ)V

    :cond_42
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    if-eqz v0, :cond_4c

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_4c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zzb;->zzbe(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzbe(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzb;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_7c

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzb(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    goto :goto_1

    :sswitch_21
    const/16 v0, 0x1a

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzc(Lcom/google/android/gms/internal/zzaou;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v0, :cond_4d

    move v0, v1

    :goto_2c
    add-int/2addr v2, v0

    new-array v2, v2, [Lcom/google/android/gms/internal/zzun$zzc;

    if-eqz v0, :cond_36

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_36
    :goto_36
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_51

    new-instance v3, Lcom/google/android/gms/internal/zzun$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzun$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    :cond_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    array-length v0, v0

    goto :goto_2c

    :cond_51
    new-instance v3, Lcom/google/android/gms/internal/zzun$zzc;

    invoke-direct {v3}, Lcom/google/android/gms/internal/zzun$zzc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    goto :goto_1

    :sswitch_60
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_6b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v0, :cond_76

    new-instance v0, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzun$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    :cond_76
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_1

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1a
        0x1a -> :sswitch_21
        0x20 -> :sswitch_60
        0x2a -> :sswitch_6b
    .end sparse-switch
.end method

.method public zzbwc()Lcom/google/android/gms/internal/zzun$zzb;
    .registers 3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/internal/zzun$zzc;->zzbwd()[Lcom/google/android/gms/internal/zzun$zzc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zzb;->bik:I

    return-object p0
.end method

.method protected zzy()I
    .registers 6

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoa:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aob:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    array-length v1, v1

    if-lez v1, :cond_42

    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    array-length v2, v2

    if-ge v0, v2, :cond_41

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoc:[Lcom/google/android/gms/internal/zzun$zzc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3e

    const/4 v3, 0x3

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_3e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    :cond_41
    move v0, v1

    :cond_42
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    if-eqz v1, :cond_52

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aod:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_52
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    if-eqz v1, :cond_5e

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzb;->aoe:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5e
    return v0
.end method

###### Class com.google.android.gms.internal.zzun.zzc (com.google.android.gms.internal.zzun$zzc)
.class public final Lcom/google/android/gms/internal/zzun$zzc;
.super Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# static fields
.field private static volatile aof:[Lcom/google/android/gms/internal/zzun$zzc;


# instance fields
.field public aog:Lcom/google/android/gms/internal/zzun$zzf;

.field public aoh:Lcom/google/android/gms/internal/zzun$zzd;

.field public aoi:Ljava/lang/Boolean;

.field public aoj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun$zzc;->zzbwe()Lcom/google/android/gms/internal/zzun$zzc;

    return-void
.end method

.method public static zzbwd()[Lcom/google/android/gms/internal/zzun$zzc;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzun$zzc;->aof:[Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapa;->bij:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzun$zzc;->aof:[Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzun$zzc;

    sput-object v0, Lcom/google/android/gms/internal/zzun$zzc;->aof:[Lcom/google/android/gms/internal/zzun$zzc;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzun$zzc;->aof:[Lcom/google/android/gms/internal/zzun$zzc;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzun$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzun$zzf;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzun$zzd;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    if-nez v0, :cond_2f

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v0, :cond_36

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    if-nez v0, :cond_3d

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    if-nez v2, :cond_44

    :goto_2d
    add-int/2addr v0, v1

    return v0

    :cond_2f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzun$zzf;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_36
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzun$zzd;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_44
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2d
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzj(IZ)V

    :cond_22
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    if-eqz v0, :cond_2c

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_2c
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zzc;->zzbf(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzc;

    move-result-object v0

    return-object v0
.end method

.method public zzbf(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_42

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzb(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    if-nez v0, :cond_19

    new-instance v0, Lcom/google/android/gms/internal/zzun$zzf;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzun$zzf;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    :cond_19
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    :sswitch_1f
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v0, :cond_2a

    new-instance v0, Lcom/google/android/gms/internal/zzun$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzun$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    :cond_2a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    :sswitch_30
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_3b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    goto :goto_0

    :sswitch_data_42
    .sparse-switch
        0x0 -> :sswitch_d
        0xa -> :sswitch_e
        0x12 -> :sswitch_1f
        0x18 -> :sswitch_30
        0x22 -> :sswitch_3b
    .end sparse-switch
.end method

.method public zzbwe()Lcom/google/android/gms/internal/zzun$zzc;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zzc;->bik:I

    return-object p0
.end method

.method protected zzy()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aog:Lcom/google/android/gms/internal/zzun$zzf;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    if-eqz v1, :cond_1c

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoh:Lcom/google/android/gms/internal/zzun$zzd;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoi:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    if-eqz v1, :cond_38

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzc;->aoj:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_38
    return v0
.end method

###### Class com.google.android.gms.internal.zzun.zzd (com.google.android.gms.internal.zzun$zzd)
.class public final Lcom/google/android/gms/internal/zzun$zzd;
.super Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzd"
.end annotation


# instance fields
.field public aok:Ljava/lang/Integer;

.field public aol:Ljava/lang/Boolean;

.field public aom:Ljava/lang/String;

.field public aon:Ljava/lang/String;

.field public aoo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun$zzd;->zzbwf()Lcom/google/android/gms/internal/zzun$zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzun$zzd;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzun$zzd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    if-nez v2, :cond_59

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    if-eqz v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_59
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    move v0, v1

    goto :goto_4

    :cond_65
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    if-nez v2, :cond_6f

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_6f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    if-nez v0, :cond_37

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    if-nez v0, :cond_3e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    if-nez v0, :cond_45

    move v0, v1

    :goto_26
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    if-nez v0, :cond_4c

    move v0, v1

    :goto_2e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    if-nez v2, :cond_53

    :goto_35
    add-int/2addr v0, v1

    return v0

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_3e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_45
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_26

    :cond_4c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2e

    :cond_53
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_35
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    if-eqz v0, :cond_1c

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzj(IZ)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    if-eqz v0, :cond_30

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    if-eqz v0, :cond_3a

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_3a
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zzd;->zzbg(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzbg(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzd;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_3e

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzb(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_58

    goto :goto_0

    :pswitch_16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    goto :goto_0

    :sswitch_28
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    goto :goto_0

    :sswitch_2f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    goto :goto_0

    :sswitch_36
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    goto :goto_0

    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x10 -> :sswitch_1d
        0x1a -> :sswitch_28
        0x22 -> :sswitch_2f
        0x2a -> :sswitch_36
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
    .end packed-switch
.end method

.method public zzbwf()Lcom/google/android/gms/internal/zzun$zzd;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zzd;->bik:I

    return-object p0
.end method

.method protected zzy()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aok:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    if-eqz v1, :cond_24

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aol:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzk(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_24
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    if-eqz v1, :cond_30

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aom:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    if-eqz v1, :cond_3c

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aon:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3c
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    if-eqz v1, :cond_48

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzd;->aoo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_48
    return v0
.end method

###### Class com.google.android.gms.internal.zzun.zze (com.google.android.gms.internal.zzun$zze)
.class public final Lcom/google/android/gms/internal/zzun$zze;
.super Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zze"
.end annotation


# static fields
.field private static volatile aop:[Lcom/google/android/gms/internal/zzun$zze;


# instance fields
.field public aoa:Ljava/lang/Integer;

.field public aoq:Ljava/lang/String;

.field public aor:Lcom/google/android/gms/internal/zzun$zzc;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun$zze;->zzbwh()Lcom/google/android/gms/internal/zzun$zze;

    return-void
.end method

.method public static zzbwg()[Lcom/google/android/gms/internal/zzun$zze;
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/zzun$zze;->aop:[Lcom/google/android/gms/internal/zzun$zze;

    if-nez v0, :cond_11

    sget-object v1, Lcom/google/android/gms/internal/zzapa;->bij:Ljava/lang/Object;

    monitor-enter v1

    :try_start_7
    sget-object v0, Lcom/google/android/gms/internal/zzun$zze;->aop:[Lcom/google/android/gms/internal/zzun$zze;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/internal/zzun$zze;

    sput-object v0, Lcom/google/android/gms/internal/zzun$zze;->aop:[Lcom/google/android/gms/internal/zzun$zze;

    :cond_10
    monitor-exit v1
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_14

    :cond_11
    sget-object v0, Lcom/google/android/gms/internal/zzun$zze;->aop:[Lcom/google/android/gms/internal/zzun$zze;

    return-object v0

    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzun$zze;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzun$zze;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzun$zzc;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    if-nez v0, :cond_27

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    if-nez v0, :cond_2e

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v2, :cond_35

    :goto_25
    add-int/2addr v0, v1

    return v0

    :cond_27
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    goto :goto_16

    :cond_2e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_35
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzun$zzc;->hashCode()I

    move-result v1

    goto :goto_25
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    if-eqz v0, :cond_22

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zza(ILcom/google/android/gms/internal/zzapc;)V

    :cond_22
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zze;->zzbh(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zze;

    move-result-object v0

    return-object v0
.end method

.method public zzbh(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zze;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzb(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_d
    return-object p0

    :sswitch_e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    goto :goto_0

    :sswitch_19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    goto :goto_0

    :sswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    if-nez v0, :cond_2b

    new-instance v0, Lcom/google/android/gms/internal/zzun$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzun$zzc;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    :cond_2b
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaou;->zza(Lcom/google/android/gms/internal/zzapc;)V

    goto :goto_0

    nop

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_d
        0x8 -> :sswitch_e
        0x12 -> :sswitch_19
        0x1a -> :sswitch_20
    .end sparse-switch
.end method

.method public zzbwh()Lcom/google/android/gms/internal/zzun$zze;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zze;->bik:I

    return-object p0
.end method

.method protected zzy()I
    .registers 4

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aoa:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aoq:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    if-eqz v1, :cond_2c

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zze;->aor:Lcom/google/android/gms/internal/zzun$zzc;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/zzaov;->zzc(ILcom/google/android/gms/internal/zzapc;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2c
    return v0
.end method

###### Class com.google.android.gms.internal.zzun.zzf (com.google.android.gms.internal.zzun$zzf)
.class public final Lcom/google/android/gms/internal/zzun$zzf;
.super Lcom/google/android/gms/internal/zzapc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzun;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzf"
.end annotation


# instance fields
.field public aos:Ljava/lang/Integer;

.field public aot:Ljava/lang/String;

.field public aou:Ljava/lang/Boolean;

.field public aov:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzapc;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzun$zzf;->zzbwi()Lcom/google/android/gms/internal/zzun$zzf;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    instance-of v2, p1, Lcom/google/android/gms/internal/zzun$zzf;

    if-nez v2, :cond_b

    move v0, v1

    goto :goto_4

    :cond_b
    check-cast p1, Lcom/google/android/gms/internal/zzun$zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    if-nez v2, :cond_17

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    if-eqz v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_17
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    move v0, v1

    goto :goto_4

    :cond_23
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    if-nez v2, :cond_2d

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    if-eqz v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move v0, v1

    goto :goto_4

    :cond_39
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    if-nez v2, :cond_43

    iget-object v2, p1, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    if-eqz v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_43
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v0, v1

    goto :goto_4

    :cond_4f
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzapa;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public hashCode()I
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    if-nez v0, :cond_30

    move v0, v1

    :goto_16
    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    if-nez v0, :cond_37

    move v0, v1

    :goto_1e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    if-nez v2, :cond_3e

    :goto_25
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzapa;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_30
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_16

    :cond_37
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1e

    :cond_3e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    goto :goto_25
.end method

.method public zza(Lcom/google/android/gms/internal/zzaov;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzae(II)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    if-eqz v0, :cond_18

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    if-eqz v0, :cond_26

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzaov;->zzj(IZ)V

    :cond_26
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_42

    const/4 v0, 0x0

    :goto_30
    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_42

    iget-object v1, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3f

    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/zzaov;->zzr(ILjava/lang/String;)V

    :cond_3f
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_42
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzapc;->zza(Lcom/google/android/gms/internal/zzaov;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzapc;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzun$zzf;->zzbi(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzf;

    move-result-object v0

    return-object v0
.end method

.method public zzbi(Lcom/google/android/gms/internal/zzaou;)Lcom/google/android/gms/internal/zzun$zzf;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    move-result v0

    sparse-switch v0, :sswitch_data_64

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzb(Lcom/google/android/gms/internal/zzaou;I)Z

    move-result v0

    if-nez v0, :cond_1

    :sswitch_e
    return-object p0

    :sswitch_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->N()I

    move-result v0

    packed-switch v0, :pswitch_data_7a

    goto :goto_1

    :pswitch_17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    goto :goto_1

    :sswitch_1e
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    goto :goto_1

    :sswitch_25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->P()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    goto :goto_1

    :sswitch_30
    const/16 v0, 0x22

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzapf;->zzc(Lcom/google/android/gms/internal/zzaou;I)I

    move-result v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    if-nez v0, :cond_56

    move v0, v1

    :goto_3b
    add-int/2addr v2, v0

    new-array v2, v2, [Ljava/lang/String;

    if-eqz v0, :cond_45

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_45
    :goto_45
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5a

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->J()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    :cond_56
    iget-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_3b

    :cond_5a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaou;->readString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iput-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    goto :goto_1

    nop

    :sswitch_data_64
    .sparse-switch
        0x0 -> :sswitch_e
        0x8 -> :sswitch_f
        0x12 -> :sswitch_1e
        0x18 -> :sswitch_25
        0x22 -> :sswitch_30
    .end sparse-switch

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method public zzbwi()Lcom/google/android/gms/internal/zzun$zzf;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    sget-object v0, Lcom/google/android/gms/internal/zzapf;->bir:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzun$zzf;->bik:I

    return-object p0
.end method

.method protected zzy()I
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/google/android/gms/internal/zzapc;->zzy()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    if-eqz v2, :cond_15

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zzf;->aos:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzag(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_15
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    if-eqz v2, :cond_21

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zzf;->aot:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzs(ILjava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_21
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    if-eqz v2, :cond_31

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/android/gms/internal/zzun$zzf;->aou:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/zzaov;->zzk(IZ)I

    move-result v2

    add-int/2addr v0, v2

    :cond_31
    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    if-eqz v2, :cond_55

    iget-object v2, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_55

    move v2, v1

    move v3, v1

    :goto_3c
    iget-object v4, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_51

    iget-object v4, p0, Lcom/google/android/gms/internal/zzun$zzf;->aov:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eqz v4, :cond_4e

    add-int/lit8 v3, v3, 0x1

    invoke-static {v4}, Lcom/google/android/gms/internal/zzaov;->zztg(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :cond_4e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3c

    :cond_51
    add-int/2addr v0, v2

    mul-int/lit8 v1, v3, 0x1

    add-int/2addr v0, v1

    :cond_55
    return v0
.end method
