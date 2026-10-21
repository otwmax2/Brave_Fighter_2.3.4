###### Class com.google.android.gms.plus.internal.zzg (com.google.android.gms.plus.internal.zzg)
.class public final Lcom/google/android/gms/plus/internal/zzg;
.super Lcom/google/android/gms/dynamic/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/dynamic/zzg",
        "<",
        "Lcom/google/android/gms/plus/internal/zzc;",
        ">;"
    }
.end annotation


# static fields
.field private static final asH:Lcom/google/android/gms/plus/internal/zzg;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/plus/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/plus/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/plus/internal/zzg;->asH:Lcom/google/android/gms/plus/internal/zzg;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const-string v0, "com.google.android.gms.plus.plusone.PlusOneButtonCreatorImpl"

    invoke-direct {p0, v0}, Lcom/google/android/gms/dynamic/zzg;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static zza(Landroid/content/Context;IILjava/lang/String;I)Landroid/view/View;
    .registers 11

    if-nez p3, :cond_f

    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_8

    :catch_8
    move-exception v0

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView;-><init>(Landroid/content/Context;I)V

    :goto_e
    return-object v0

    :cond_f
    :try_start_f
    sget-object v0, Lcom/google/android/gms/plus/internal/zzg;->asH:Lcom/google/android/gms/plus/internal/zzg;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/plus/internal/zzg;->zzcr(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/plus/internal/zzc;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/plus/internal/zzc;->zza(Lcom/google/android/gms/dynamic/zzd;IILjava/lang/String;I)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_29} :catch_8

    goto :goto_e
.end method


# virtual methods
.method protected synthetic zzc(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/plus/internal/zzg;->zzka(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method protected zzka(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzc;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/plus/internal/zzc$zza;->zzjx(Landroid/os/IBinder;)Lcom/google/android/gms/plus/internal/zzc;

    move-result-object v0

    return-object v0
.end method
