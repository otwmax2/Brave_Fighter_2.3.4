###### Class com.google.android.gms.ads.internal.formats.zzi (com.google.android.gms.ads.internal.formats.zzi)
.class public Lcom/google/android/gms/ads/internal/formats/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzh;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzail:Ljava/lang/Object;

.field private final zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzbgb:Lcom/google/android/gms/ads/internal/zzq;

.field private final zzbge:Lorg/json/JSONObject;

.field private final zzbgf:Lcom/google/android/gms/internal/zzil;

.field private final zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

.field private final zzbgh:Lcom/google/android/gms/internal/zzas;

.field private zzbgi:Z

.field private zzbgj:Lcom/google/android/gms/internal/zzll;

.field private zzbgk:Ljava/lang/String;

.field private zzbgl:Ljava/lang/String;

.field private zzbgm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzq;Lcom/google/android/gms/internal/zzil;Lcom/google/android/gms/internal/zzas;Lorg/json/JSONObject;Lcom/google/android/gms/ads/internal/formats/zzh$zza;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzail:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgm:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgf:Lcom/google/android/gms/internal/zzil;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgh:Lcom/google/android/gms/internal/zzas;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbge:Lorg/json/JSONObject;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgl:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/formats/zzi;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgk:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/formats/zzi;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgj:Lcom/google/android/gms/internal/zzll;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public recordImpression()V
    .registers 4

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzq(Z)V

    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ad"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbge:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgf:Lcom/google/android/gms/internal/zzil;

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi$2;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/ads/internal/formats/zzi$2;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzil;->zza(Lcom/google/android/gms/internal/zzil$zza;)V
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_26} :catch_2c

    :goto_26
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/ads/internal/zzq;->zza(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    return-void

    :catch_2c
    move-exception v0

    const-string v1, "Unable to create impression JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26
.end method

.method public zza(Landroid/view/View$OnClickListener;)Lcom/google/android/gms/ads/internal/formats/zzb;
    .registers 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zzkz()Lcom/google/android/gms/ads/internal/formats/zza;

    move-result-object v1

    if-nez v1, :cond_b

    const/4 v0, 0x0

    :goto_a
    return-object v0

    :cond_b
    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzb;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/ads/internal/formats/zzb;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/formats/zza;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/formats/zzb;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzku()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/formats/zzb;->zzku()Landroid/view/ViewGroup;

    move-result-object v1

    const-string v2, "Ad attribution icon"

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_a
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x1

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzbcg:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    :cond_f
    return-void

    :cond_10
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_21

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_21
.end method

.method public zza(Landroid/view/View;Ljava/util/Map;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    :cond_34
    :goto_34
    return-void

    :cond_35
    const-string v0, "2"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zzky()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string v0, "2099"

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_34

    :cond_49
    const-string v0, "1"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    invoke-interface {v1}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zzky()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "1099"

    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    goto :goto_34
.end method

.method public zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 9

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzab;->zzhj(Ljava/lang/String;)V

    :try_start_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "asset"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "template"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->zzky()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "ad"

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbge:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "click"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "has_custom_click_handler"

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgb:Lcom/google/android/gms/ads/internal/zzq;

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgg:Lcom/google/android/gms/ads/internal/formats/zzh$zza;

    invoke-interface {v3}, Lcom/google/android/gms/ads/internal/formats/zzh$zza;->getCustomTemplateId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/ads/internal/zzq;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/zzeg;

    move-result-object v0

    if-eqz v0, :cond_66

    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p2, :cond_46

    const-string v0, "view_rectangles"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_46
    if-eqz p3, :cond_4d

    const-string v0, "click_point"

    invoke-virtual {v1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4d
    if-eqz p4, :cond_54

    const-string v0, "native_view_rectangle"

    invoke-virtual {v1, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_54
    const-string v0, "ads_id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgl:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgf:Lcom/google/android/gms/internal/zzil;

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi$1;

    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/ads/internal/formats/zzi$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzil;->zza(Lcom/google/android/gms/internal/zzil$zza;)V
    :try_end_65
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_65} :catch_68

    :goto_65
    return-void

    :cond_66
    const/4 v0, 0x0

    goto :goto_3c

    :catch_68
    move-exception v0

    const-string v1, "Unable to create click JSON."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_65
.end method

.method public zzb(Landroid/view/MotionEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgh:Lcom/google/android/gms/internal/zzas;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzas;->zza(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public zzb(Landroid/view/View;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_13

    :cond_37
    return-void
.end method

.method public zzg(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgi:Z

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_14

    monitor-exit v1

    goto :goto_8

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0

    :cond_14
    :try_start_14
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_22

    monitor-exit v1

    goto :goto_8

    :cond_22
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->recordImpression()V

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    goto :goto_8
.end method

.method public zzh(Landroid/view/View;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgm:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public zzld()Lcom/google/android/gms/internal/zzll;
    .registers 3

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzlf()Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgj:Lcom/google/android/gms/internal/zzll;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgj:Lcom/google/android/gms/internal/zzll;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi;)V

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgf:Lcom/google/android/gms/internal/zzil;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzil;->zza(Lcom/google/android/gms/internal/zzil$zza;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgj:Lcom/google/android/gms/internal/zzll;

    return-object v0
.end method

.method public zzle()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgm:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgm:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method zzlf()Lcom/google/android/gms/internal/zzll;
    .registers 8

    const/4 v3, 0x0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfr()Lcom/google/android/gms/internal/zzln;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzk(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgh:Lcom/google/android/gms/internal/zzas;

    iget-object v6, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzalm:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/zzln;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;ZZLcom/google/android/gms/internal/zzas;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    return-object v0
.end method

.method protected zzq(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi;->zzbgi:Z

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass1 (com.google.android.gms.ads.internal.formats.zzi$1)
.class Lcom/google/android/gms/ads/internal/formats/zzi$1;
.super Lcom/google/android/gms/internal/zzil$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgn:Lorg/json/JSONObject;

.field final synthetic zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$1;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$1;->zzbgn:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzil$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfx;)V
    .registers 4

    const-string v0, "google.afma.nativeAds.handleClickGmsg"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$1;->zzbgn:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass2 (com.google.android.gms.ads.internal.formats.zzi$2)
.class Lcom/google/android/gms/ads/internal/formats/zzi$2;
.super Lcom/google/android/gms/internal/zzil$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi;->recordImpression()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgn:Lorg/json/JSONObject;

.field final synthetic zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi;Lorg/json/JSONObject;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$2;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$2;->zzbgn:Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzil$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfx;)V
    .registers 4

    const-string v0, "google.afma.nativeAds.handleImpressionPing"

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$2;->zzbgn:Lorg/json/JSONObject;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3 (com.google.android.gms.ads.internal.formats.zzi$3)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3;
.super Lcom/google/android/gms/internal/zzil$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi;->zzld()Lcom/google/android/gms/internal/zzll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzil$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zze(Lcom/google/android/gms/internal/zzfx;)V
    .registers 5

    const-string v0, "/loadHtml"

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzfx;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/showOverlay"

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3$2;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/hideOverlay"

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$3;

    invoke-direct {v1, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3$3;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    const-string v1, "/hideOverlay"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi$3$4;

    invoke-direct {v2, p0}, Lcom/google/android/gms/ads/internal/formats/zzi$3$4;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    const-string v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzfx;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzlm;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3.AnonymousClass1 (com.google.android.gms.ads.internal.formats.zzi$3$1)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzfx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgp:Lcom/google/android/gms/internal/zzfx;

.field final synthetic zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzfx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgp:Lcom/google/android/gms/internal/zzfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->zzuk()Lcom/google/android/gms/internal/zzlm;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;-><init>(Lcom/google/android/gms/ads/internal/formats/zzi$3$1;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlm;->zza(Lcom/google/android/gms/internal/zzlm$zza;)V

    const-string v0, "overlayHtml"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v0, "baseUrl"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    const-string v1, "text/html"

    const-string v3, "UTF-8"

    invoke-interface {v0, v2, v1, v3}, Lcom/google/android/gms/internal/zzll;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void

    :cond_3a
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/zzll;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3.AnonymousClass1.C00411 (com.google.android.gms.ads.internal.formats.zzi$3$1$1)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzlm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgr:Ljava/util/Map;

.field final synthetic zzbgs:Lcom/google/android/gms/ads/internal/formats/zzi$3$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3$1;Ljava/util/Map;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;->zzbgs:Lcom/google/android/gms/ads/internal/formats/zzi$3$1;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;->zzbgr:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Z)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;->zzbgs:Lcom/google/android/gms/ads/internal/formats/zzi$3$1;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v1, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;->zzbgr:Ljava/util/Map;

    const-string v2, "id"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Lcom/google/android/gms/ads/internal/formats/zzi;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_18
    const-string v1, "messageType"

    const-string v2, "htmlLoaded"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;->zzbgs:Lcom/google/android/gms/ads/internal/formats/zzi$3$1;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Lcom/google/android/gms/ads/internal/formats/zzi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$1$1;->zzbgs:Lcom/google/android/gms/ads/internal/formats/zzi$3$1;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/formats/zzi$3$1;->zzbgp:Lcom/google/android/gms/internal/zzfx;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3.AnonymousClass2 (com.google.android.gms.ads.internal.formats.zzi$3$2)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzfx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$2;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$2;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3.C00423 (com.google.android.gms.ads.internal.formats.zzi$3$3)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzfx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$3;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$3;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3.AnonymousClass4 (com.google.android.gms.ads.internal.formats.zzi$3$4)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzfx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$4;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$4;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/formats/zzi;->zzb(Lcom/google/android/gms/ads/internal/formats/zzi;)Lcom/google/android/gms/internal/zzll;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

###### Class com.google.android.gms.ads.internal.formats.zzi.AnonymousClass3.AnonymousClass5 (com.google.android.gms.ads.internal.formats.zzi$3$5)
.class Lcom/google/android/gms/ads/internal/formats/zzi$3$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/ads/internal/formats/zzi$3;->zze(Lcom/google/android/gms/internal/zzfx;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbgp:Lcom/google/android/gms/internal/zzfx;

.field final synthetic zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzi$3;Lcom/google/android/gms/internal/zzfx;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgp:Lcom/google/android/gms/internal/zzfx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzll;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_d

    :catch_21
    move-exception v0

    const-string v1, "Unable to dispatch sendMessageToNativeJs event"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_27
    return-void

    :cond_28
    :try_start_28
    const-string v0, "id"

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgq:Lcom/google/android/gms/ads/internal/formats/zzi$3;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/formats/zzi$3;->zzbgo:Lcom/google/android/gms/ads/internal/formats/zzi;

    invoke-static {v2}, Lcom/google/android/gms/ads/internal/formats/zzi;->zza(Lcom/google/android/gms/ads/internal/formats/zzi;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzi$3$5;->zzbgp:Lcom/google/android/gms/internal/zzfx;

    const-string v2, "sendMessageToNativeJs"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_3c} :catch_21

    goto :goto_27
.end method
