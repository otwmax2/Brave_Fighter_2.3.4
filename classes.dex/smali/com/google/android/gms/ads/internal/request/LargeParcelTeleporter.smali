###### Class com.google.android.gms.ads.internal.request.LargeParcelTeleporter (com.google.android.gms.ads.internal.request.LargeParcelTeleporter)
.class public final Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mVersionCode:I

.field zzcdd:Landroid/os/ParcelFileDescriptor;

.field private zzcde:Landroid/os/Parcelable;

.field private zzcdf:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/ads/internal/request/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/request/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/os/ParcelFileDescriptor;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdd:Landroid/os/ParcelFileDescriptor;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcde:Landroid/os/Parcelable;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdf:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;)V
    .registers 3

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->mVersionCode:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdd:Landroid/os/ParcelFileDescriptor;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcde:Landroid/os/Parcelable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdf:Z

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1b

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcde:Landroid/os/Parcelable;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_1f

    move-result-object v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzi([B)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdd:Landroid/os/ParcelFileDescriptor;

    :cond_1b
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/request/zzm;->zza(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Landroid/os/Parcel;I)V

    return-void

    :catchall_1f
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method public zza(Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;",
            ">(",
            "Landroid/os/Parcelable$Creator",
            "<TT;>;)TT;"
        }
    .end annotation

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdf:Z

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdd:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_10

    const-string v0, "File descriptor is empty, returning null."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_f
    return-object v0

    :cond_10
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdd:Landroid/os/ParcelFileDescriptor;

    invoke-direct {v0, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_1c
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v0, v0, [B

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_27} :catch_49
    .catchall {:try_start_1c .. :try_end_27} :catchall_52

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_2f
    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-interface {p1, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcde:Landroid/os/Parcelable;
    :try_end_3f
    .catchall {:try_start_2f .. :try_end_3f} :catchall_57

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcdf:Z

    :cond_44
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzcde:Landroid/os/Parcelable;

    check-cast v0, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    goto :goto_f

    :catch_49
    move-exception v0

    :try_start_4a
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read from parcel file descriptor"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_52
    .catchall {:try_start_4a .. :try_end_52} :catchall_52

    :catchall_52
    move-exception v0

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    throw v0

    :catchall_57
    move-exception v0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v0
.end method

.method protected zzi([B)Landroid/os/ParcelFileDescriptor;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v3, v1, v2

    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v2, v3}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_1f

    :try_start_e
    new-instance v3, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;

    invoke-direct {v3, p0, v2, p1}, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;-><init>(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/io/OutputStream;[B)V

    new-instance v4, Ljava/lang/Thread;

    invoke-direct {v4, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    const/4 v3, 0x0

    aget-object v0, v1, v3
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_31

    :goto_1e
    return-object v0

    :catch_1f
    move-exception v1

    move-object v2, v0

    :goto_21
    const-string v3, "Error transporting the ad response"

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v3

    invoke-virtual {v3, v1, v5}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V

    invoke-static {v2}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_1e

    :catch_31
    move-exception v1

    goto :goto_21
.end method

###### Class com.google.android.gms.ads.internal.request.LargeParcelTeleporter.AnonymousClass1 (com.google.android.gms.ads.internal.request.LargeParcelTeleporter$1)
.class Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;->zzi([B)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcdg:Ljava/io/OutputStream;

.field final synthetic zzcdh:[B

.field final synthetic zzcdi:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;Ljava/io/OutputStream;[B)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdi:Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdg:Ljava/io/OutputStream;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdh:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v2, 0x0

    :try_start_1
    new-instance v1, Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdg:Ljava/io/OutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_17
    .catchall {:try_start_1 .. :try_end_8} :catchall_32

    :try_start_8
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdh:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdh:[B

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_42
    .catchall {:try_start_8 .. :try_end_13} :catchall_40

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :goto_16
    return-void

    :catch_17
    move-exception v0

    move-object v1, v2

    :goto_19
    :try_start_19
    const-string v2, "Error transporting the ad response"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V
    :try_end_26
    .catchall {:try_start_19 .. :try_end_26} :catchall_40

    if-nez v1, :cond_2e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdg:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_16

    :cond_2e
    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_16

    :catchall_32
    move-exception v0

    move-object v1, v2

    :goto_34
    if-nez v1, :cond_3c

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/request/LargeParcelTeleporter$1;->zzcdg:Ljava/io/OutputStream;

    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    :goto_3b
    throw v0

    :cond_3c
    invoke-static {v1}, Lcom/google/android/gms/common/util/zzo;->zzb(Ljava/io/Closeable;)V

    goto :goto_3b

    :catchall_40
    move-exception v0

    goto :goto_34

    :catch_42
    move-exception v0

    goto :goto_19
.end method
