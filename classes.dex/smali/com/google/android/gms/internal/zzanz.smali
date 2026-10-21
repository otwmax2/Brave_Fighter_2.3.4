###### Class com.google.android.gms.internal.zzanz (com.google.android.gms.internal.zzanz)
.class public final Lcom/google/android/gms/internal/zzanz;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzanz$zza;
    }
.end annotation


# direct methods
.method public static zza(Ljava/lang/Appendable;)Ljava/io/Writer;
    .registers 3

    instance-of v0, p0, Ljava/io/Writer;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/Writer;

    :goto_6
    return-object p0

    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/zzanz$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzanz$zza;-><init>(Ljava/lang/Appendable;Lcom/google/android/gms/internal/zzanz$1;)V

    move-object p0, v0

    goto :goto_6
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzamy;Lcom/google/android/gms/internal/zzaor;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzaon;->bgW:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v0, p1, p0}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    return-void
.end method

.method public static zzh(Lcom/google/android/gms/internal/zzaop;)Lcom/google/android/gms/internal/zzamy;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/zzanc;
        }
    .end annotation

    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzaon;->bgW:Lcom/google/android/gms/internal/zzank;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzank;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzamy;
    :try_end_d
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_d} :catch_e
    .catch Lcom/google/android/gms/internal/zzaos; {:try_start_1 .. :try_end_d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_d} :catch_21
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_d} :catch_28

    :goto_d
    return-object v0

    :catch_e
    move-exception v0

    if-eqz v1, :cond_14

    sget-object v0, Lcom/google/android/gms/internal/zzana;->bes:Lcom/google/android/gms/internal/zzana;

    goto :goto_d

    :cond_14
    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_21
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzamz;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzamz;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_28
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzanh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzanh;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

###### Class com.google.android.gms.internal.zzanz.AnonymousClass1 (com.google.android.gms.internal.zzanz$1)
.class synthetic Lcom/google/android/gms/internal/zzanz$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.internal.zzanz.zza (com.google.android.gms.internal.zzanz$zza)
.class final Lcom/google/android/gms/internal/zzanz$zza;
.super Ljava/io/Writer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzanz$zza$zza;
    }
.end annotation


# instance fields
.field private final bfx:Ljava/lang/Appendable;

.field private final bfy:Lcom/google/android/gms/internal/zzanz$zza$zza;


# direct methods
.method private constructor <init>(Ljava/lang/Appendable;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzanz$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanz$zza$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzanz$zza;->bfy:Lcom/google/android/gms/internal/zzanz$zza$zza;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzanz$zza;->bfx:Ljava/lang/Appendable;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Appendable;Lcom/google/android/gms/internal/zzanz$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzanz$zza;-><init>(Ljava/lang/Appendable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method

.method public flush()V
    .registers 1

    return-void
.end method

.method public write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanz$zza;->bfx:Ljava/lang/Appendable;

    int-to-char v1, p1

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanz$zza;->bfy:Lcom/google/android/gms/internal/zzanz$zza$zza;

    iput-object p1, v0, Lcom/google/android/gms/internal/zzanz$zza$zza;->bfz:[C

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanz$zza;->bfx:Ljava/lang/Appendable;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanz$zza;->bfy:Lcom/google/android/gms/internal/zzanz$zza$zza;

    add-int v2, p2, p3

    invoke-interface {v0, v1, p2, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

###### Class com.google.android.gms.internal.zzanz.zza.C0099zza (com.google.android.gms.internal.zzanz$zza$zza)
.class Lcom/google/android/gms/internal/zzanz$zza$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzanz$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zza"
.end annotation


# instance fields
.field bfz:[C


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanz$zza$zza;->bfz:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public length()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzanz$zza$zza;->bfz:[C

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .registers 6

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzanz$zza$zza;->bfz:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
