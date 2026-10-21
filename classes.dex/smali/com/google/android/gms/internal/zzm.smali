###### Class com.google.android.gms.internal.zzm (com.google.android.gms.internal.zzm)
.class public Lcom/google/android/gms/internal/zzm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzm$zza;,
        Lcom/google/android/gms/internal/zzm$zzb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final zzbf:Lcom/google/android/gms/internal/zzb$zza;

.field public final zzbg:Lcom/google/android/gms/internal/zzr;

.field public zzbh:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzr;)V
    .registers 4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzm;->zzbh:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/zzm;->result:Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzm;->zzbf:Lcom/google/android/gms/internal/zzb$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzm;->zzbg:Lcom/google/android/gms/internal/zzr;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/android/gms/internal/zzb$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzm;->zzbh:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzm;->result:Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzm;->zzbf:Lcom/google/android/gms/internal/zzb$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzbg:Lcom/google/android/gms/internal/zzr;

    return-void
.end method

.method public static zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)Lcom/google/android/gms/internal/zzm;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/zzb$zza;",
            ")",
            "Lcom/google/android/gms/internal/zzm",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzm;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzm;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzb$zza;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/zzr;)Lcom/google/android/gms/internal/zzm;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzr;",
            ")",
            "Lcom/google/android/gms/internal/zzm",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzm;-><init>(Lcom/google/android/gms/internal/zzr;)V

    return-object v0
.end method


# virtual methods
.method public isSuccess()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzm;->zzbg:Lcom/google/android/gms/internal/zzr;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

###### Class com.google.android.gms.internal.zzm.zza (com.google.android.gms.internal.zzm$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzm$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract zze(Lcom/google/android/gms/internal/zzr;)V
.end method

###### Class com.google.android.gms.internal.zzm.zzb (com.google.android.gms.internal.zzm$zzb)
.class public interface abstract Lcom/google/android/gms/internal/zzm$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zzb(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
