###### Class com.google.android.gms.internal.zzbv (com.google.android.gms.internal.zzbv)
.class public Lcom/google/android/gms/internal/zzbv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbv$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "W::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzahv:Landroid/os/Looper;

.field private final zzahw:Lcom/google/android/gms/internal/zzbv$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbv$zza",
            "<T",
            "L;",
            "TW;>;"
        }
    .end annotation
.end field

.field private final zzahx:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<T",
            "L;",
            "TW;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/google/android/gms/internal/zzbv$zza;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzbv$zza",
            "<T",
            "L;",
            "TW;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbv;->zzahv:Landroid/os/Looper;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbv;->zzahw:Lcom/google/android/gms/internal/zzbv$zza;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzahx:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public zzc(Ljava/lang/Object;)Landroid/os/IInterface;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            ")TW;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzahx:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IInterface;

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbv;->zzahw:Lcom/google/android/gms/internal/zzbv$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbv;->zzahv:Landroid/os/Looper;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbv$zza;->zza(Ljava/lang/Object;Landroid/os/Looper;)Landroid/os/IInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbv;->zzahx:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-object v0
.end method

###### Class com.google.android.gms.internal.zzbv.zza (com.google.android.gms.internal.zzbv$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzbv$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<",
        "L:Ljava/lang/Object;",
        "W::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract zza(Ljava/lang/Object;Landroid/os/Looper;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(T",
            "L;",
            "Landroid/os/Looper;",
            ")TW;"
        }
    .end annotation
.end method
