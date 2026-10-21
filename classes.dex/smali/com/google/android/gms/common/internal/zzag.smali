###### Class com.google.android.gms.common.internal.zzag (com.google.android.gms.common.internal.zzag)
.class public final Lcom/google/android/gms/common/internal/zzag;
.super Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/zzag;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const v0, 0x1010048

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private zza(Landroid/content/res/Resources;)V
    .registers 6

    const/high16 v3, 0x42400000    # 48.0f

    const/high16 v2, 0x3f000000    # 0.5f

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setTypeface(Landroid/graphics/Typeface;)V

    const/high16 v0, 0x41600000    # 14.0f

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setTextSize(F)V

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v0, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/internal/zzag;->setMinHeight(I)V

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setMinWidth(I)V

    return-void
.end method

.method private zza(Landroid/content/res/Resources;IIZ)V
    .registers 9

    if-eqz p4, :cond_22

    sget v0, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_icon_light:I

    sget v2, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_icon_dark:I

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    sget v1, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_text_dark:I

    sget v2, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_text_light:I

    sget v3, Lcom/google/android/gms/R$drawable;->common_plus_signin_btn_text_dark:I

    invoke-direct {p0, p3, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/gms/common/internal/zzag;->zzd(III)I

    move-result v0

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_22
    sget v0, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_dark:I

    sget v1, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_light:I

    sget v2, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_icon_light:I

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    sget v1, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_dark:I

    sget v2, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_light:I

    sget v3, Lcom/google/android/gms/R$drawable;->common_google_signin_btn_text_light:I

    invoke-direct {p0, p3, v1, v2, v3}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v1

    invoke-direct {p0, p2, v0, v1}, Lcom/google/android/gms/common/internal/zzag;->zzd(III)I

    move-result v0

    goto :goto_1a
.end method

.method private zza([Lcom/google/android/gms/common/api/Scope;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    array-length v3, p1

    move v2, v0

    :goto_7
    if-ge v2, v3, :cond_4

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Scope;->zzaoh()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/plus."

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    const-string v5, "https://www.googleapis.com/auth/plus.me"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_21

    move v0, v1

    goto :goto_4

    :cond_21
    const-string v5, "https://www.googleapis.com/auth/games"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2b

    move v0, v1

    goto :goto_4

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7
.end method

.method private zzb(Landroid/content/res/Resources;IIZ)V
    .registers 9

    const/4 v3, 0x0

    if-eqz p4, :cond_38

    sget v0, Lcom/google/android/gms/R$color;->common_plus_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_plus_signin_btn_text_light:I

    sget v2, Lcom/google/android/gms/R$color;->common_plus_signin_btn_text_dark:I

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    :goto_d
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setTextColor(Landroid/content/res/ColorStateList;)V

    packed-switch p2, :pswitch_data_5e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown button size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_38
    sget v0, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_dark:I

    sget v1, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_light:I

    sget v2, Lcom/google/android/gms/R$color;->common_google_signin_btn_text_light:I

    invoke-direct {p0, p3, v0, v1, v2}, Lcom/google/android/gms/common/internal/zzag;->zzg(IIII)I

    move-result v0

    goto :goto_d

    :pswitch_43
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setText(Ljava/lang/CharSequence;)V

    :goto_4c
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/internal/zzag;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    return-void

    :pswitch_50
    sget v0, Lcom/google/android/gms/R$string;->common_signin_button_text_long:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/zzag;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    :pswitch_5a
    invoke-virtual {p0, v3}, Lcom/google/android/gms/common/internal/zzag;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4c

    :pswitch_data_5e
    .packed-switch 0x0
        :pswitch_43
        :pswitch_50
        :pswitch_5a
    .end packed-switch
.end method

.method private zzd(III)I
    .registers 7

    packed-switch p1, :pswitch_data_20

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown button size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    move p3, p2

    :pswitch_1f
    return p3

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1f
        :pswitch_1e
    .end packed-switch
.end method

.method private zzg(IIII)I
    .registers 8

    packed-switch p1, :pswitch_data_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown color scheme: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1e
    move p2, p3

    :goto_1f
    :pswitch_1f
    return p2

    :pswitch_20
    move p2, p4

    goto :goto_1f

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1e
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public zza(Landroid/content/res/Resources;II[Lcom/google/android/gms/common/api/Scope;)V
    .registers 6

    invoke-direct {p0, p4}, Lcom/google/android/gms/common/internal/zzag;->zza([Lcom/google/android/gms/common/api/Scope;)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/zzag;->zza(Landroid/content/res/Resources;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/zzag;->zza(Landroid/content/res/Resources;IIZ)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/internal/zzag;->zzb(Landroid/content/res/Resources;IIZ)V

    return-void
.end method
