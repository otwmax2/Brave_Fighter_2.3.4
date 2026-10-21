###### Class com.google.android.gms.ads.internal.formats.zzk (com.google.android.gms.ads.internal.formats.zzk)
.class public Lcom/google/android/gms/ads/internal/formats/zzk;
.super Lcom/google/android/gms/internal/zzdw$zza;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final zzail:Ljava/lang/Object;

.field private zzaiz:Landroid/widget/FrameLayout;

.field private zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

.field private final zzbgx:Landroid/widget/FrameLayout;

.field private zzbgy:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

.field zzbha:Z

.field zzbhb:I

.field zzbhc:I


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzdw$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbha:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/internal/zzlg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzlg;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzgk()Lcom/google/android/gms/internal/zzlg;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0}, Lcom/google/android/gms/internal/zzlg;->zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method getMeasuredHeight()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getMeasuredWidth()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_9

    monitor-exit v6

    :goto_8
    return-void

    :cond_9
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_18

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzi(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_3b
    .catchall {:try_start_3 .. :try_end_3b} :catchall_90

    :try_start_3b
    const-string v7, "width"

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "height"

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "x"

    iget v7, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p0, v7}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "y"

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v4}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v4

    invoke-virtual {v5, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_74
    .catch Lorg/json/JSONException; {:try_start_3b .. :try_end_74} :catch_75
    .catchall {:try_start_3b .. :try_end_74} :catchall_90

    goto :goto_18

    :catch_75
    move-exception v1

    :try_start_76
    const-string v1, "Unable to get view rectangle for view "

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_93

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_8c
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_18

    :catchall_90
    move-exception v0

    monitor-exit v6
    :try_end_92
    .catchall {:try_start_76 .. :try_end_92} :catchall_90

    throw v0

    :cond_93
    :try_start_93
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_8c

    :cond_99
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_9e
    .catchall {:try_start_93 .. :try_end_9e} :catchall_90

    :try_start_9e
    const-string v0, "x"

    iget v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbhb:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "y"

    iget v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbhc:I

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b4
    .catch Lorg/json/JSONException; {:try_start_9e .. :try_end_b4} :catch_ed
    .catchall {:try_start_9e .. :try_end_b4} :catchall_90

    :goto_b4
    :try_start_b4
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_b9
    .catchall {:try_start_b4 .. :try_end_b9} :catchall_90

    :try_start_b9
    const-string v0, "width"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "height"

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzx(I)I

    move-result v1

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_d3
    .catch Lorg/json/JSONException; {:try_start_b9 .. :try_end_d3} :catch_f4
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_90

    :goto_d3
    :try_start_d3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzku()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fb

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    const-string v1, "1007"

    invoke-interface {v0, v1, v3, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :goto_ea
    monitor-exit v6

    goto/16 :goto_8

    :catch_ed
    move-exception v0

    const-string v0, "Unable to get click location"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_b4

    :catch_f4
    move-exception v0

    const-string v0, "Unable to get native ad view bounding box"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    goto :goto_d3

    :cond_fb
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    :try_end_103
    .catchall {:try_start_d3 .. :try_end_103} :catchall_90

    goto :goto_ea
.end method

.method public onGlobalLayout()V
    .registers 6

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbha:Z

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzk;->getMeasuredHeight()I

    move-result v2

    if-eqz v0, :cond_24

    if-eqz v2, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_24

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbha:Z

    :cond_24
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzg(Landroid/view/View;)V

    :cond_2f
    monitor-exit v1

    return-void

    :catchall_31
    move-exception v0

    monitor-exit v1
    :try_end_33
    .catchall {:try_start_3 .. :try_end_33} :catchall_31

    throw v0
.end method

.method public onScrollChanged()V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzg(Landroid/view/View;)V

    :cond_e
    monitor-exit v1

    return-void

    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_a

    monitor-exit v1

    :goto_9
    return v4

    :cond_a
    invoke-virtual {p0, p2}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzc(Landroid/view/MotionEvent;)Landroid/graphics/Point;

    move-result-object v0

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbhb:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbhc:I

    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    iget v3, v0, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v0, v2}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzb(Landroid/view/MotionEvent;)V

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    monitor-exit v1

    goto :goto_9

    :catchall_2d
    move-exception v0

    monitor-exit v1
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public zzap(Ljava/lang/String;)Lcom/google/android/gms/dynamic/zzd;
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_14

    const/4 v0, 0x0

    :goto_e
    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzae(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :cond_14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_e

    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method zzc(Landroid/view/MotionEvent;)Landroid/graphics/Point;
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    const/4 v2, 0x0

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-float v0, v0

    sub-float v0, v2, v0

    new-instance v2, Landroid/graphics/Point;

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method zzc(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .registers 3

    invoke-virtual {p1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Ljava/lang/String;Lcom/google/android/gms/dynamic/zzd;)V
    .registers 7

    invoke-static {p2}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_12

    :try_start_b
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    monitor-exit v1

    return-void

    :cond_12
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_10

    :catchall_27
    move-exception v0

    monitor-exit v1
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw v0
.end method

.method public zze(Lcom/google/android/gms/dynamic/zzd;)V
    .registers 9

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzail:Ljava/lang/Object;

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzh(Landroid/view/View;)V

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzad(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/ads/internal/formats/zzi;

    if-nez v2, :cond_16

    const-string v1, "Not an instance of native engine. This is most likely a transient error"

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    monitor-exit v3

    :goto_15
    return-void

    :cond_16
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_2b

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2b
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbha:Z

    check-cast v1, Lcom/google/android/gms/ads/internal/formats/zzi;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v2, :cond_4b

    sget-object v2, Lcom/google/android/gms/internal/zzdc;->zzbcf:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzb(Landroid/view/View;Ljava/util/Map;)V

    :cond_4b
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v2, v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v2}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzlb()Z

    move-result v2

    if-eqz v2, :cond_ba

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v2, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    :cond_62
    :goto_62
    sget-object v2, Lcom/google/android/gms/internal/zzdc;->zzbcf:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_76

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    :cond_76
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzc(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/ads/internal/formats/zzb;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v2, :cond_9e

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    const-string v4, "1007"

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v6}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzku()Landroid/view/ViewGroup;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzaiz:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_9e
    sget-object v2, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v4, Lcom/google/android/gms/ads/internal/formats/zzk$1;

    invoke-direct {v4, p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzk;Lcom/google/android/gms/ads/internal/formats/zzi;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgy:Ljava/util/Map;

    invoke-virtual {v1, v2, v4, p0, p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zzh(Landroid/view/View;)V

    monitor-exit v3

    goto/16 :goto_15

    :catchall_b7
    move-exception v1

    monitor-exit v3
    :try_end_b9
    .catchall {:try_start_4 .. :try_end_b9} :catchall_b7

    throw v1

    :cond_ba
    :try_start_ba
    iput-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v2, v1, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v2, :cond_62

    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzc(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    :try_end_c8
    .catchall {:try_start_ba .. :try_end_c8} :catchall_b7

    goto :goto_62
.end method

.method zzh(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    instance-of v0, v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzg;->zzlc()Lcom/google/android/gms/ads/internal/formats/zzh;

    move-result-object v0

    :goto_12
    if-eqz v0, :cond_17

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzh(Landroid/view/View;)V

    :cond_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    goto :goto_12
.end method

.method zzi(Landroid/view/View;)Landroid/graphics/Point;
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgz:Lcom/google/android/gms/ads/internal/formats/zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzku()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbgx:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/widget/FrameLayout;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    new-instance v0, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v1

    invoke-direct {v0, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    :goto_3c
    return-object v0

    :cond_3d
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    goto :goto_3c
.end method

.method zzx(I)I
    .registers 4

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzm;->zziw()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk;->zzbft:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/formats/zzh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzb(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

###### Class com.google.android.gms.ads.internal.formats.zzk.AnonymousClass1 (com.google.android.gms.ads.internal.formats.zzk$1)
.class Lcom/google/android/gms/ads/internal/formats/zzk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzk;->zze(Lcom/google/android/gms/dynamic/zzd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbhd:Lcom/google/android/gms/ads/internal/formats/zzi;

.field final synthetic zzbhe:Lcom/google/android/gms/ads/internal/formats/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzk;Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbhe:Lcom/google/android/gms/ads/internal/formats/zzk;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbhd:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbhd:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzld()Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbhe:Lcom/google/android/gms/ads/internal/formats/zzk;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;

    move-result-object v1

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzk$1;->zzbhe:Lcom/google/android/gms/ads/internal/formats/zzk;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/formats/zzk;->zza(Lcom/google/android/gms/ads/internal/formats/zzk;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_1d
    return-void
.end method
