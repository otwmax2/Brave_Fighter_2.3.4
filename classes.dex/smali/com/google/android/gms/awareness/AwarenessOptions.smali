###### Class com.google.android.gms.awareness.AwarenessOptions (com.google.android.gms.awareness.AwarenessOptions)
.class public Lcom/google/android/gms/awareness/AwarenessOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# static fields
.field public static final NO_UID:I = -0x1


# instance fields
.field private final fA:I

.field private final fB:Ljava/lang/String;

.field private final fC:Ljava/lang/String;

.field private final fD:I

.field private final fz:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fz:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fA:I

    iput-object p3, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fB:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fC:Ljava/lang/String;

    iput p5, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fD:I

    return-void
.end method

.method public static create1p(Ljava/lang/String;)Lcom/google/android/gms/awareness/AwarenessOptions;
    .registers 7

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/awareness/AwarenessOptions;

    const/4 v2, 0x1

    const/4 v5, -0x1

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/awareness/AwarenessOptions;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public zzagm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fz:Ljava/lang/String;

    return-object v0
.end method

.method public zzagn()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fA:I

    return v0
.end method

.method public zzago()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fB:Ljava/lang/String;

    return-object v0
.end method

.method public zzagp()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fC:Ljava/lang/String;

    return-object v0
.end method

.method public zzagq()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/awareness/AwarenessOptions;->fD:I

    return v0
.end method
