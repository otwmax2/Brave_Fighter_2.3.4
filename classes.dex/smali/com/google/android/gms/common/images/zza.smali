###### Class com.google.android.gms.common.images.zza (com.google.android.gms.common.images.zza)
.class public abstract Lcom/google/android/gms/common/images/zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/images/zza$zza;,
        Lcom/google/android/gms/common/images/zza$zzc;,
        Lcom/google/android/gms/common/images/zza$zzb;
    }
.end annotation


# instance fields
.field private wA:Z

.field final wu:Lcom/google/android/gms/common/images/zza$zza;

.field protected wv:I

.field protected ww:I

.field protected wx:Z

.field private wy:Z

.field private wz:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;I)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/common/images/zza;->wv:I

    iput v0, p0, Lcom/google/android/gms/common/images/zza;->ww:I

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->wx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zza;->wy:Z

    iput-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->wz:Z

    iput-boolean v1, p0, Lcom/google/android/gms/common/images/zza;->wA:Z

    new-instance v0, Lcom/google/android/gms/common/images/zza$zza;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/images/zza$zza;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza;->wu:Lcom/google/android/gms/common/images/zza$zza;

    iput p2, p0, Lcom/google/android/gms/common/images/zza;->ww:I

    return-void
.end method

.method private zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrh;I)Landroid/graphics/drawable/Drawable;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected zza(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/zzrf;
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    instance-of v0, p1, Lcom/google/android/gms/internal/zzrf;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/google/android/gms/internal/zzrf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzrf;->zzarm()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_d
    :goto_d
    new-instance v0, Lcom/google/android/gms/internal/zzrf;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzrf;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_13
    move-object p1, v0

    goto :goto_d
.end method

.method zza(Landroid/content/Context;Landroid/graphics/Bitmap;Z)V
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrh;)V
    .registers 6

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->wA:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_a
    return-void
.end method

.method zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrh;Z)V
    .registers 7

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/images/zza;->ww:I

    if-eqz v1, :cond_c

    iget v0, p0, Lcom/google/android/gms/common/images/zza;->ww:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/zzrh;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_c
    invoke-virtual {p0, v0, p3, v2, v2}, Lcom/google/android/gms/common/images/zza;->zza(Landroid/graphics/drawable/Drawable;ZZZ)V

    return-void
.end method

.method protected abstract zza(Landroid/graphics/drawable/Drawable;ZZZ)V
.end method

.method protected zzc(ZZ)Z
    .registers 4

    iget-boolean v0, p0, Lcom/google/android/gms/common/images/zza;->wy:Z

    if-eqz v0, :cond_8

    if-nez p2, :cond_8

    if-eqz p1, :cond_a

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public zzfu(I)V
    .registers 2

    iput p1, p0, Lcom/google/android/gms/common/images/zza;->ww:I

    return-void
.end method

###### Class com.google.android.gms.common.images.zza.C0070zza (com.google.android.gms.common.images.zza$zza)
.class final Lcom/google/android/gms/common/images/zza$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "zza"
.end annotation


# instance fields
.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/android/gms/common/images/zza$zza;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    if-ne p0, p1, :cond_a

    const/4 v0, 0x1

    goto :goto_5

    :cond_a
    check-cast p1, Lcom/google/android/gms/common/images/zza$zza;

    iget-object v0, p1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.common.images.zza.zzb (com.google.android.gms.common.images.zza$zzb)
.class public final Lcom/google/android/gms/common/images/zza$zzb;
.super Lcom/google/android/gms/common/images/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzb"
.end annotation


# instance fields
.field private wB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->wB:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->wB:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private zza(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    const/4 v2, 0x0

    if-nez p4, :cond_1d

    if-nez p5, :cond_1d

    const/4 v0, 0x1

    move v3, v0

    :goto_7
    if-eqz v3, :cond_1f

    instance-of v0, p1, Lcom/google/android/gms/internal/zzrg;

    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/zzrg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrg;->zzaro()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->ww:I

    if-eqz v1, :cond_1f

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->ww:I

    if-ne v0, v1, :cond_1f

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    move v3, v2

    goto :goto_7

    :cond_1f
    invoke-virtual {p0, p3, p4}, Lcom/google/android/gms/common/images/zza$zzb;->zzc(ZZ)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/images/zza$zzb;->zza(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/google/android/gms/internal/zzrf;

    move-result-object v0

    :goto_2d
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    instance-of v1, p1, Lcom/google/android/gms/internal/zzrg;

    if-eqz v1, :cond_46

    check-cast p1, Lcom/google/android/gms/internal/zzrg;

    if-eqz p5, :cond_50

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->wu:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    :goto_3c
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrg;->zzp(Landroid/net/Uri;)V

    if-eqz v3, :cond_52

    iget v1, p0, Lcom/google/android/gms/common/images/zza$zzb;->ww:I

    :goto_43
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzrg;->zzfw(I)V

    :cond_46
    if-eqz v4, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzrf;

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrf;->startTransition(I)V

    goto :goto_1c

    :cond_50
    const/4 v1, 0x0

    goto :goto_3c

    :cond_52
    move v1, v2

    goto :goto_43

    :cond_54
    move-object v0, p2

    goto :goto_2d
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/zza$zzb;

    if-nez v0, :cond_7

    :goto_6
    return v3

    :cond_7
    if-ne p0, p1, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/images/zza$zzb;

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->wB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zza$zzb;->wB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2a

    if-eqz v0, :cond_2a

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    move v0, v2

    :goto_28
    move v3, v0

    goto :goto_6

    :cond_2a
    move v0, v3

    goto :goto_28
.end method

.method public hashCode()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected zza(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 11

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzb;->wB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_12

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/images/zza$zzb;->zza(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;ZZZ)V

    :cond_12
    return-void
.end method

###### Class com.google.android.gms.common.images.zza.zzc (com.google.android.gms.common.images.zza$zzc)
.class public final Lcom/google/android/gms/common/images/zza$zzc;
.super Lcom/google/android/gms/common/images/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/images/zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zzc"
.end annotation


# instance fields
.field private wC:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;Landroid/net/Uri;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/common/images/zza;-><init>(Landroid/net/Uri;I)V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzw(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/images/zza$zzc;->wC:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    instance-of v0, p1, Lcom/google/android/gms/common/images/zza$zzc;

    if-nez v0, :cond_7

    :goto_6
    return v3

    :cond_7
    if-ne p0, p1, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    check-cast p1, Lcom/google/android/gms/common/images/zza$zzc;

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzc;->wC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    iget-object v1, p1, Lcom/google/android/gms/common/images/zza$zzc;->wC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v1, :cond_34

    if-eqz v0, :cond_34

    invoke-static {v1, v0}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p1, Lcom/google/android/gms/common/images/zza$zzc;->wu:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzc;->wu:Lcom/google/android/gms/common/images/zza$zza;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    move v0, v2

    :goto_32
    move v3, v0

    goto :goto_6

    :cond_34
    move v0, v3

    goto :goto_32
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/images/zza$zzc;->wu:Lcom/google/android/gms/common/images/zza$zza;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected zza(Landroid/graphics/drawable/Drawable;ZZZ)V
    .registers 7

    if-nez p3, :cond_13

    iget-object v0, p0, Lcom/google/android/gms/common/images/zza$zzc;->wC:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/google/android/gms/common/images/zza$zzc;->wu:Lcom/google/android/gms/common/images/zza$zza;

    iget-object v1, v1, Lcom/google/android/gms/common/images/zza$zza;->uri:Landroid/net/Uri;

    invoke-interface {v0, v1, p1, p4}, Lcom/google/android/gms/common/images/ImageManager$OnImageLoadedListener;->onImageLoaded(Landroid/net/Uri;Landroid/graphics/drawable/Drawable;Z)V

    :cond_13
    return-void
.end method
