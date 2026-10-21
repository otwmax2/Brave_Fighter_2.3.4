###### Class com.google.android.gms.plus.PlusOneDummyView (com.google.android.gms.plus.PlusOneDummyView)
.class public Lcom/google/android/gms/plus/PlusOneDummyView;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/PlusOneDummyView$zza;,
        Lcom/google/android/gms/plus/PlusOneDummyView$zzc;,
        Lcom/google/android/gms/plus/PlusOneDummyView$zzb;,
        Lcom/google/android/gms/plus/PlusOneDummyView$zzd;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlusOneDummyView"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 8

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->zzbye()Lcom/google/android/gms/plus/PlusOneDummyView$zzd;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/google/android/gms/plus/PlusOneDummyView$zzd;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, p2}, Lcom/google/android/gms/plus/PlusOneDummyView;->zzxa(I)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/16 v4, 0x11

    invoke-direct {v2, v3, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/plus/PlusOneDummyView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private zzbye()Lcom/google/android/gms/plus/PlusOneDummyView$zzd;
    .registers 4

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    invoke-interface {v0}, Lcom/google/android/gms/plus/PlusOneDummyView$zzd;->isValid()Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    :cond_19
    invoke-interface {v0}, Lcom/google/android/gms/plus/PlusOneDummyView$zzd;->isValid()Z

    move-result v1

    if-nez v1, :cond_28

    new-instance v0, Lcom/google/android/gms/plus/PlusOneDummyView$zza;

    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/plus/PlusOneDummyView$zza;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V

    :cond_28
    return-object v0
.end method

.method private zzxa(I)Landroid/graphics/Point;
    .registers 11

    const/16 v1, 0x18

    const/16 v0, 0x14

    const/4 v4, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    packed-switch p1, :pswitch_data_3a

    const/16 v0, 0x26

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/gms/plus/PlusOneDummyView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    int-to-float v1, v1

    invoke-static {v4, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    int-to-float v0, v0

    invoke-static {v4, v0, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-double v4, v1

    add-double/2addr v4, v6

    double-to-int v1, v4

    iput v1, v2, Landroid/graphics/Point;->x:I

    float-to-double v0, v0

    add-double/2addr v0, v6

    double-to-int v0, v0

    iput v0, v2, Landroid/graphics/Point;->y:I

    return-object v2

    :pswitch_31
    const/16 v1, 0x20

    goto :goto_14

    :pswitch_34
    const/16 v0, 0xe

    goto :goto_14

    :pswitch_37
    const/16 v1, 0x32

    goto :goto_14

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_34
        :pswitch_31
        :pswitch_37
    .end packed-switch
.end method

###### Class com.google.android.gms.plus.PlusOneDummyView.AnonymousClass1 (com.google.android.gms.plus.PlusOneDummyView$1)
.class synthetic Lcom/google/android/gms/plus/PlusOneDummyView$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.plus.PlusOneDummyView.zza (com.google.android.gms.plus.PlusOneDummyView$zza)
.class Lcom/google/android/gms/plus/PlusOneDummyView$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zza;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$zza;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zza;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

###### Class com.google.android.gms.plus.PlusOneDummyView.zzb (com.google.android.gms.plus.PlusOneDummyView$zzb)
.class Lcom/google/android/gms/plus/PlusOneDummyView$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.google.android.gms"

    packed-switch p1, :pswitch_data_2c

    const-string v0, "ic_plusone_standard"

    :goto_14
    const-string v3, "drawable"

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_1e
    return-object v0

    :pswitch_1f
    const-string v0, "ic_plusone_small"

    goto :goto_14

    :pswitch_22
    const-string v0, "ic_plusone_medium"

    goto :goto_14

    :pswitch_25
    const-string v0, "ic_plusone_tall"
    :try_end_27
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_14

    :catch_28
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1e

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_22
        :pswitch_25
    .end packed-switch
.end method

.method public isValid()Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzb;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_c} :catch_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :catch_e
    move-exception v0

    const/4 v0, 0x0

    goto :goto_d
.end method

###### Class com.google.android.gms.plus.PlusOneDummyView.zzc (com.google.android.gms.plus.PlusOneDummyView$zzc)
.class Lcom/google/android/gms/plus/PlusOneDummyView$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/plus/PlusOneDummyView$zzd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzc"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/PlusOneDummyView$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 6

    packed-switch p1, :pswitch_data_2c

    const-string v0, "ic_plusone_standard_off_client"

    :goto_5
    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :pswitch_22
    const-string v0, "ic_plusone_small_off_client"

    goto :goto_5

    :pswitch_25
    const-string v0, "ic_plusone_medium_off_client"

    goto :goto_5

    :pswitch_28
    const-string v0, "ic_plusone_tall_off_client"

    goto :goto_5

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_22
        :pswitch_25
        :pswitch_28
    .end packed-switch
.end method

.method public isValid()Z
    .registers 8

    iget-object v0, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "ic_plusone_small_off_client"

    const-string v2, "drawable"

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ic_plusone_medium_off_client"

    const-string v3, "drawable"

    iget-object v4, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "ic_plusone_tall_off_client"

    const-string v4, "drawable"

    iget-object v5, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "ic_plusone_standard_off_client"

    const-string v5, "drawable"

    iget-object v6, p0, Lcom/google/android/gms/plus/PlusOneDummyView$zzc;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v0, :cond_5a

    if-eqz v1, :cond_5a

    if-eqz v2, :cond_5a

    if-eqz v3, :cond_5a

    const/4 v0, 0x1

    :goto_59
    return v0

    :cond_5a
    const/4 v0, 0x0

    goto :goto_59
.end method

###### Class com.google.android.gms.plus.PlusOneDummyView.zzd (com.google.android.gms.plus.PlusOneDummyView$zzd)
.class interface abstract Lcom/google/android/gms/plus/PlusOneDummyView$zzd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/PlusOneDummyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "zzd"
.end annotation


# virtual methods
.method public abstract getDrawable(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract isValid()Z
.end method
