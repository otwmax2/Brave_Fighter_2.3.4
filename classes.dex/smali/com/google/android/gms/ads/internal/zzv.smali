###### Class com.google.android.gms.ads.internal.zzv (com.google.android.gms.ads.internal.zzv)
.class public final Lcom/google/android/gms/ads/internal/zzv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzv$zza;
    }
.end annotation


# instance fields
.field public final zzagf:Landroid/content/Context;

.field zzamc:Z

.field final zzaor:Ljava/lang/String;

.field public zzaos:Ljava/lang/String;

.field final zzaot:Lcom/google/android/gms/internal/zzas;

.field public final zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

.field public zzaow:Lcom/google/android/gms/internal/zzkg;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzaox:Lcom/google/android/gms/internal/zzkn;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public zzaoz:Lcom/google/android/gms/internal/zzjy;

.field public zzapa:Lcom/google/android/gms/internal/zzjy$zza;

.field public zzapb:Lcom/google/android/gms/internal/zzjz;

.field zzapc:Lcom/google/android/gms/ads/internal/client/zzp;

.field zzapd:Lcom/google/android/gms/ads/internal/client/zzq;

.field zzape:Lcom/google/android/gms/ads/internal/client/zzw;

.field zzapf:Lcom/google/android/gms/ads/internal/client/zzy;

.field zzapg:Lcom/google/android/gms/internal/zzhs;

.field zzaph:Lcom/google/android/gms/internal/zzhw;

.field zzapi:Lcom/google/android/gms/internal/zzee;

.field zzapj:Lcom/google/android/gms/internal/zzef;

.field zzapk:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeg;",
            ">;"
        }
    .end annotation
.end field

.field zzapl:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzeh;",
            ">;"
        }
    .end annotation
.end field

.field zzapm:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field zzapn:Lcom/google/android/gms/ads/internal/client/VideoOptionsParcel;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzapo:Lcom/google/android/gms/internal/zzdo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzapp:Lcom/google/android/gms/ads/internal/reward/client/zzd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzapq:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzapr:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field public zzaps:Lcom/google/android/gms/internal/zzke;

.field zzapt:Landroid/view/View;

.field public zzapu:I

.field zzapv:Z

.field private zzapw:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjz;",
            ">;"
        }
    .end annotation
.end field

.field private zzapx:I

.field private zzapy:I

.field private zzapz:Lcom/google/android/gms/internal/zzkv;

.field private zzaqa:Z

.field private zzaqb:Z

.field private zzaqc:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzv;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzas;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzas;)V
    .registers 10

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaps:Lcom/google/android/gms/internal/zzke;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapt:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapu:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzamc:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqb:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzdc;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkb;->zzsm()Lcom/google/android/gms/internal/zzde;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-static {}, Lcom/google/android/gms/internal/zzdc;->zzjy()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcno:I

    if-eqz v1, :cond_3b

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzcno:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkb;->zzsm()Lcom/google/android/gms/internal/zzde;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzde;->zzc(Ljava/util/List;)V

    :cond_46
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaor:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    if-nez v0, :cond_58

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    if-eqz v0, :cond_77

    :cond_58
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    :goto_5a
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaos:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaou:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_93

    :goto_64
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaot:Lcom/google/android/gms/internal/zzas;

    new-instance v0, Lcom/google/android/gms/internal/zzkv;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzkv;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapz:Lcom/google/android/gms/internal/zzkv;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapl:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_77
    new-instance v0, Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/zzv$zza;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->setVisibility(I)V

    goto :goto_5a

    :cond_93
    new-instance p5, Lcom/google/android/gms/internal/zzas;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzi;-><init>(Lcom/google/android/gms/ads/internal/zzv;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/zzas;-><init>(Lcom/google/android/gms/internal/zzan;)V

    goto :goto_64
.end method

.method private zzgs()V
    .registers 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2b

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:Z

    :cond_2b
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_10

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqb:Z

    goto :goto_10
.end method

.method private zzh(Z)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    if-nez v2, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    if-eqz p1, :cond_1b

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapz:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzkv;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_10

    :cond_1b
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzlm;->zzho()Z

    move-result v2

    if-eqz v2, :cond_66

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzv$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzv;->zzagf:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:I

    if-ne v3, v4, :cond_51

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:I

    if-eq v2, v4, :cond_66

    :cond_51
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapx:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapy:I

    if-nez p1, :cond_6a

    :goto_63
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzlm;->zza(IIZ)V

    :cond_66
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgs()V

    goto :goto_10

    :cond_6a
    move v0, v1

    goto :goto_63
.end method


# virtual methods
.method public destroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgr()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapd:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzape:Lcom/google/android/gms/ads/internal/client/zzw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaph:Lcom/google/android/gms/internal/zzhw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapg:Lcom/google/android/gms/internal/zzhs;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapo:Lcom/google/android/gms/internal/zzdo;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapf:Lcom/google/android/gms/ads/internal/client/zzy;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzi(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->removeAllViews()V

    :cond_1d
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgm()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgo()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    return-void
.end method

.method public onGlobalLayout()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzv;->zzh(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    return-void
.end method

.method public zza(Ljava/util/HashSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjz;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:Ljava/util/HashSet;

    return-void
.end method

.method public zzgl()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzjz;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapw:Ljava/util/HashSet;

    return-object v0
.end method

.method public zzgm()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->destroy()V

    :cond_11
    return-void
.end method

.method public zzgn()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzbtq:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->stopLoading()V

    :cond_11
    return-void
.end method

.method public zzgo()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzbos:Lcom/google/android/gms/internal/zzgo;

    if-eqz v0, :cond_11

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjy;->zzbos:Lcom/google/android/gms/internal/zzgo;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzgo;->destroy()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    :cond_11
    :goto_11
    return-void

    :catch_12
    move-exception v0

    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_11
.end method

.method public zzgp()Z
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapu:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzgq()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapu:I

    if-ne v1, v0, :cond_6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzgr()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaov:Lcom/google/android/gms/ads/internal/zzv$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzv$zza;->zzgr()V

    :cond_9
    return-void
.end method

.method public zzgt()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqb:Z

    if-eqz v0, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqa:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    if-eqz v0, :cond_16

    const-string v0, "top-scrollable"

    goto :goto_a

    :cond_16
    const-string v0, "top-locked"

    goto :goto_a

    :cond_19
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqb:Z

    if-eqz v0, :cond_27

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaqc:Z

    if-eqz v0, :cond_24

    const-string v0, "bottom-scrollable"

    goto :goto_a

    :cond_24
    const-string v0, "bottom-locked"

    goto :goto_a

    :cond_27
    const-string v0, ""

    goto :goto_a
.end method

.method public zzgu()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzjz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzjy;->zzcio:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjz;->zzl(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzjz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzjy;->zzcip:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzjz;->zzm(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzjz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoy:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzauq:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjz;->zzac(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapb:Lcom/google/android/gms/internal/zzjz;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzjy;->zzccc:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzjz;->zzad(Z)V

    return-void
.end method

.method public zzi(Z)V
    .registers 3

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzapu:I

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv;->zzgn()V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/internal/zzkg;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaow:Lcom/google/android/gms/internal/zzkg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkg;->cancel()V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/internal/zzkn;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaox:Lcom/google/android/gms/internal/zzkn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzkn;->cancel()V

    :cond_19
    if-eqz p1, :cond_1e

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv;->zzaoz:Lcom/google/android/gms/internal/zzjy;

    :cond_1e
    return-void
.end method

###### Class com.google.android.gms.ads.internal.zzv.zza (com.google.android.gms.ads.internal.zzv$zza)
.class public Lcom/google/android/gms/ads/internal/zzv$zza;
.super Landroid/widget/ViewSwitcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/internal/zzv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private final zzaqd:Lcom/google/android/gms/internal/zzko;

.field private final zzaqe:Lcom/google/android/gms/internal/zzky;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 6

    invoke-direct {p0, p1}, Landroid/widget/ViewSwitcher;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/google/android/gms/internal/zzko;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzko;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqd:Lcom/google/android/gms/internal/zzko;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_1d

    new-instance v0, Lcom/google/android/gms/internal/zzky;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1, p0, p2, p3}, Lcom/google/android/gms/internal/zzky;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    :goto_17
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->zztt()V

    return-void

    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/zzky;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p2, p3}, Lcom/google/android/gms/internal/zzky;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    goto :goto_17
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->onAttachedToWindow()V

    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Landroid/widget/ViewSwitcher;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->onDetachedFromWindow()V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqd:Lcom/google/android/gms/internal/zzko;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzko;->zze(Landroid/view/MotionEvent;)V

    const/4 v0, 0x0

    return v0
.end method

.method public removeAllViews()V
    .registers 5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzv$zza;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_20

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/zzv$zza;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1c

    instance-of v3, v0, Lcom/google/android/gms/internal/zzll;

    if-eqz v3, :cond_1c

    check-cast v0, Lcom/google/android/gms/internal/zzll;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_20
    invoke-super {p0}, Landroid/widget/ViewSwitcher;->removeAllViews()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->destroy()V

    goto :goto_27

    :cond_37
    return-void
.end method

.method public zzgr()V
    .registers 2

    const-string v0, "Disable position monitoring on adFrame."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqe:Lcom/google/android/gms/internal/zzky;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzky;->zztu()V

    :cond_e
    return-void
.end method

.method public zzgv()Lcom/google/android/gms/internal/zzko;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzv$zza;->zzaqd:Lcom/google/android/gms/internal/zzko;

    return-object v0
.end method
