###### Class com.google.android.gms.internal.zzff (com.google.android.gms.internal.zzff)
.class public Lcom/google/android/gms/internal/zzff;
.super Lcom/google/android/gms/internal/zzkg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field final zzbgj:Lcom/google/android/gms/internal/zzll;

.field final zzbjf:Lcom/google/android/gms/internal/zzfh;

.field private final zzbjg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzll;Lcom/google/android/gms/internal/zzfh;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzkg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzff;->zzbjf:Lcom/google/android/gms/internal/zzfh;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzff;->zzbjg:Ljava/lang/String;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzfg;->zza(Lcom/google/android/gms/internal/zzff;)V

    return-void
.end method


# virtual methods
.method public onStop()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzbjf:Lcom/google/android/gms/internal/zzfh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfh;->abort()V

    return-void
.end method

.method public zzew()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzff;->zzbjf:Lcom/google/android/gms/internal/zzfh;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff;->zzbjg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfh;->zzba(Ljava/lang/String;)Z
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_12

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzff$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzff$1;-><init>(Lcom/google/android/gms/internal/zzff;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_12
    move-exception v0

    sget-object v1, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/internal/zzff$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzff$1;-><init>(Lcom/google/android/gms/internal/zzff;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    throw v0
.end method

###### Class com.google.android.gms.internal.zzff.AnonymousClass1 (com.google.android.gms.internal.zzff$1)
.class Lcom/google/android/gms/internal/zzff$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzff;->zzew()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbjh:Lcom/google/android/gms/internal/zzff;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzff;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzff$1;->zzbjh:Lcom/google/android/gms/internal/zzff;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgj()Lcom/google/android/gms/internal/zzfg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzff$1;->zzbjh:Lcom/google/android/gms/internal/zzff;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzfg;->zzb(Lcom/google/android/gms/internal/zzff;)V

    return-void
.end method
