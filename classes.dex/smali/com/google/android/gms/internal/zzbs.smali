###### Class com.google.android.gms.internal.zzbs (com.google.android.gms.internal.zzbs)
.class public interface abstract Lcom/google/android/gms/internal/zzbs;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbs$zza;
    }
.end annotation

###### Class com.google.android.gms.internal.zzbs.zza (com.google.android.gms.internal.zzbs$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzbs$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# static fields
.field public static final zzahq:Lcom/google/android/gms/internal/zzbs$zza;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzbs$zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbs$zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbs$zza;->zzahq:Lcom/google/android/gms/internal/zzbs$zza;

    return-void
.end method


# virtual methods
.method public abstract zza(Landroid/os/Looper;)Landroid/os/Handler;
.end method

###### Class com.google.android.gms.internal.zzbs.zza.AnonymousClass1 (com.google.android.gms.internal.zzbs$zza$1)
.class final Lcom/google/android/gms/internal/zzbs$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbs$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbs$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-object v0
.end method
