###### Class com.google.android.gms.internal.zzcd (com.google.android.gms.internal.zzcd)
.class public abstract Lcom/google/android/gms/internal/zzcd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzcd$zzb;,
        Lcom/google/android/gms/internal/zzcd$zza;,
        Lcom/google/android/gms/internal/zzcd$zzc;,
        Lcom/google/android/gms/internal/zzcd$zzd;
    }
.end annotation


# instance fields
.field protected final zzail:Ljava/lang/Object;

.field private zzanc:Z

.field private zzapz:Lcom/google/android/gms/internal/zzkv;

.field private final zzaqf:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzjy;",
            ">;"
        }
    .end annotation
.end field

.field private zzaqg:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewTreeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaqh:Lcom/google/android/gms/internal/zzck;

.field protected final zzaqi:Lcom/google/android/gms/internal/zzcf;

.field private final zzaqj:Landroid/content/Context;

.field private final zzaqk:Landroid/view/WindowManager;

.field private final zzaql:Landroid/os/PowerManager;

.field private final zzaqm:Landroid/app/KeyguardManager;

.field private zzaqn:Lcom/google/android/gms/internal/zzch;

.field private zzaqo:Z

.field private zzaqp:Z

.field private zzaqq:Z

.field private zzaqr:Z

.field private zzaqs:Z

.field zzaqt:Landroid/content/BroadcastReceiver;

.field private final zzaqu:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzce;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaqv:Lcom/google/android/gms/internal/zzet;

.field private final zzaqw:Lcom/google/android/gms/internal/zzet;

.field private final zzaqx:Lcom/google/android/gms/internal/zzet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Lcom/google/android/gms/internal/zzjy;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzck;)V
    .registers 13

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzanc:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqp:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Ljava/util/HashSet;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcd$2;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Lcom/google/android/gms/internal/zzet;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcd$3;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqw:Lcom/google/android/gms/internal/zzet;

    new-instance v0, Lcom/google/android/gms/internal/zzcd$4;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzcd$4;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqx:Lcom/google/android/gms/internal/zzet;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqf:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzcd;->zzaqh:Lcom/google/android/gms/internal/zzck;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqg:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    new-instance v0, Lcom/google/android/gms/internal/zzkv;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zzkv;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzapz:Lcom/google/android/gms/internal/zzkv;

    new-instance v0, Lcom/google/android/gms/internal/zzcf;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaup:Ljava/lang/String;

    iget-object v4, p3, Lcom/google/android/gms/internal/zzjy;->zzcii:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/zzjy;->zzho()Z

    move-result v5

    iget-boolean v6, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzaus:Z

    move-object v2, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzcf;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lorg/json/JSONObject;ZZ)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Landroid/view/WindowManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/os/PowerManager;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqm:Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected destroy()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhc()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzgx()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzgz()V

    monitor-exit v1

    return-void

    :catchall_11
    move-exception v0

    monitor-exit v1
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v0
.end method

.method isScreenOn()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public onGlobalLayout()V
    .registers 2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

.method public onScrollChanged()V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

.method public pause()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzanc:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public resume()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzanc:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public stop()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqp:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    monitor-exit v1

    return-void

    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_c

    throw v0
.end method

.method protected zza(ILandroid/util/DisplayMetrics;)I
    .registers 5

    iget v0, p2, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    div-float v0, v1, v0

    float-to-int v0, v0

    return v0
.end method

.method protected zza(Landroid/view/View;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzce;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzch;)V
    .registers 4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Lcom/google/android/gms/internal/zzch;

    monitor-exit v1

    return-void

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected zza(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string v2, "units"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzcd;->zzb(Lorg/json/JSONObject;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_16

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string v1, "Skipping active view message."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15
.end method

.method protected abstract zzb(Lorg/json/JSONObject;)V
.end method

.method protected zzb(Ljava/util/Map;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v1, 0x0

    if-nez p1, :cond_4

    :goto_3
    return v1

    :cond_4
    const-string v0, "hashCode"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcf;->zzhn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x1

    :goto_1f
    move v1, v0

    goto :goto_3

    :cond_21
    move v0, v1

    goto :goto_1f
.end method

.method protected zzc(Lcom/google/android/gms/internal/zzfx;)V
    .registers 4

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqw:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqx:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method

.method protected zzd(Landroid/view/View;)Lorg/json/JSONObject;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x2

    if-nez p1, :cond_8

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhf()Lorg/json/JSONObject;

    move-result-object v0

    :goto_7
    return-object v0

    :cond_8
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzkm;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v1

    new-array v2, v3, [I

    new-array v0, v3, [I

    :try_start_14
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1a} :catch_1e2

    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    aget v0, v2, v0

    iput v0, v4, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x1

    aget v0, v2, v0

    iput v0, v4, Landroid/graphics/Rect;->top:I

    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->right:I

    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v4, Landroid/graphics/Rect;->bottom:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqk:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v5, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhd()Lorg/json/JSONObject;

    move-result-object v0

    const-string v10, "windowVisibility"

    invoke-virtual {p1}, Landroid/view/View;->getWindowVisibility()I

    move-result v11

    invoke-virtual {v0, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "isAttachedToWindow"

    invoke-virtual {v10, v11, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v10, "viewBox"

    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "top"

    iget v13, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v13, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "bottom"

    iget v13, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v13, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "left"

    iget v13, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v13, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "right"

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v2

    invoke-virtual {v11, v12, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adBox"

    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-string v11, "top"

    iget v12, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v12, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "bottom"

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v12, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "left"

    iget v12, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v12, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "right"

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v4, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v4

    invoke-virtual {v10, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "globalVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v10, "top"

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v11, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "bottom"

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v11, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "left"

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v11, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v11

    invoke-virtual {v4, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v10, "right"

    iget v5, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v5, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v5

    invoke-virtual {v4, v10, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "globalVisibleBoxVisible"

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "localVisibleBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "top"

    iget v6, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "bottom"

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "left"

    iget v6, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "right"

    iget v6, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "localVisibleBoxVisible"

    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hitBox"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "top"

    iget v6, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "bottom"

    iget v6, v9, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "left"

    iget v6, v9, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "right"

    iget v6, v9, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v6, v3}, Lcom/google/android/gms/internal/zzcd;->zza(ILandroid/util/DisplayMetrics;)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "screenDensity"

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    float-to-double v4, v3

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isVisible"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/os/PowerManager;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcd;->zzaqm:Landroid/app/KeyguardManager;

    invoke-virtual {v3, p1, v4, v5}, Lcom/google/android/gms/internal/zzkl;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_7

    :catch_1e2
    move-exception v0

    const-string v3, "Failure getting view location."

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a
.end method

.method protected zzd(Lcom/google/android/gms/internal/zzfx;)V
    .registers 4

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqx:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqw:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzaqv:Lcom/google/android/gms/internal/zzet;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/zzfx;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/zzet;)V

    return-void
.end method

.method protected zzgw()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    monitor-exit v1

    :goto_8
    return-void

    :cond_9
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/zzcd$1;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzcd$1;-><init>(Lcom/google/android/gms/internal/zzcd;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    monitor-exit v1

    goto :goto_8

    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method protected zzgx()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Landroid/content/BroadcastReceiver;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_1a

    if-eqz v0, :cond_11

    :try_start_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqj:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_e} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_e} :catch_1d
    .catchall {:try_start_7 .. :try_end_e} :catchall_1a

    :goto_e
    const/4 v0, 0x0

    :try_start_f
    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqt:Landroid/content/BroadcastReceiver;

    :cond_11
    monitor-exit v1

    return-void

    :catch_13
    move-exception v0

    const-string v2, "Failed trying to unregister the receiver"

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_e

    :catchall_1a
    move-exception v0

    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_f .. :try_end_1c} :catchall_1a

    throw v0

    :catch_1d
    move-exception v0

    :try_start_1e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/zzkb;->zzb(Ljava/lang/Throwable;Z)V
    :try_end_26
    .catchall {:try_start_1e .. :try_end_26} :catchall_1a

    goto :goto_e
.end method

.method public zzgy()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqr:Z
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_33

    :try_start_a
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhg()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zza(Lorg/json/JSONObject;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_11} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_11} :catch_36
    .catchall {:try_start_a .. :try_end_11} :catchall_33

    :goto_11
    :try_start_11
    const-string v2, "Untracking ad unit: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcf;->zzhn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_27
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    :cond_2a
    monitor-exit v1

    return-void

    :catch_2c
    move-exception v0

    const-string v2, "JSON failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :catchall_33
    move-exception v0

    monitor-exit v1
    :try_end_35
    .catchall {:try_start_11 .. :try_end_35} :catchall_33

    throw v0

    :catch_36
    move-exception v0

    :try_start_37
    const-string v2, "Failure while processing active view data."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_11

    :cond_3d
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_33

    goto :goto_27
.end method

.method protected zzgz()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Lcom/google/android/gms/internal/zzch;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqn:Lcom/google/android/gms/internal/zzch;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzch;->zza(Lcom/google/android/gms/internal/zzcd;)V

    :cond_9
    return-void
.end method

.method public zzha()Z
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    monitor-exit v1

    return v0

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method protected zzhb()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqh:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzck;->zzhj()Lcom/google/android/gms/internal/zzck;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzck;->zzhh()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eq v1, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhc()V

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqo:Z

    if-eqz v2, :cond_2a

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_33

    :cond_2a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqo:Z

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_33
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqg:Ljava/lang/ref/WeakReference;

    goto :goto_c
.end method

.method protected zzhc()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqg:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewTreeObserver;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_11

    :cond_10
    :goto_10
    return-void

    :cond_11
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_10
.end method

.method protected zzhd()Lorg/json/JSONObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "afmaVersion"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzcf;->zzhl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "activeViewJSON"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcf;->zzhm()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfu()Lcom/google/android/gms/common/util/zze;

    move-result-object v3

    invoke-interface {v3}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "adFormat"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcf;->zzhk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "hashCode"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcf;->zzhn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isMraid"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcf;->zzho()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isStopped"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqp:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isPaused"

    iget-boolean v3, p0, Lcom/google/android/gms/internal/zzcd;->zzanc:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isScreenOn"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->isScreenOn()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "isNative"

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzcf;->zzhp()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected abstract zzhe()Z
.end method

.method protected zzhf()Lorg/json/JSONObject;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhd()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isAttachedToWindow"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isScreenOn"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->isScreenOn()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "isVisible"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method protected zzhg()Lorg/json/JSONObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhd()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "doneReasonCode"

    const-string v2, "u"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected zzj(Z)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqu:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzce;

    invoke-interface {v0, p0, p1}, Lcom/google/android/gms/internal/zzce;->zza(Lcom/google/android/gms/internal/zzcd;Z)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method protected zzk(I)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/google/android/gms/internal/zzcd;->zzail:Ljava/lang/Object;

    monitor-enter v3

    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhe()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqq:Z

    if-nez v2, :cond_11

    :cond_f
    monitor-exit v3

    :goto_10
    return-void

    :cond_11
    iget-object v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqh:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzck;->zzhh()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_46

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcd;->zzaql:Landroid/os/PowerManager;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzcd;->zzaqm:Landroid/app/KeyguardManager;

    invoke-virtual {v2, v4, v5, v6}, Lcom/google/android/gms/internal/zzkl;->zza(Landroid/view/View;Landroid/os/PowerManager;Landroid/app/KeyguardManager;)Z

    move-result v2

    if-eqz v2, :cond_46

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_46

    move v2, v1

    :goto_34
    iput-boolean v2, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    iget-object v5, p0, Lcom/google/android/gms/internal/zzcd;->zzaqh:Lcom/google/android/gms/internal/zzck;

    invoke-interface {v5}, Lcom/google/android/gms/internal/zzck;->zzhi()Z

    move-result v5

    if-eqz v5, :cond_48

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzgy()V

    monitor-exit v3

    goto :goto_10

    :catchall_43
    move-exception v0

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_5 .. :try_end_45} :catchall_43

    throw v0

    :cond_46
    move v2, v0

    goto :goto_34

    :cond_48
    if-ne p1, v1, :cond_4b

    move v0, v1

    :cond_4b
    if-eqz v0, :cond_5b

    :try_start_4d
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd;->zzapz:Lcom/google/android/gms/internal/zzkv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzkv;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    if-ne v2, v0, :cond_5b

    monitor-exit v3

    goto :goto_10

    :cond_5b
    if-nez v2, :cond_65

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzcd;->zzaqs:Z

    if-nez v0, :cond_65

    if-ne p1, v1, :cond_65

    monitor-exit v3
    :try_end_64
    .catchall {:try_start_4d .. :try_end_64} :catchall_43

    goto :goto_10

    :cond_65
    :try_start_65
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/zzcd;->zzd(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzcd;->zza(Lorg/json/JSONObject;)V
    :try_end_6c
    .catch Lorg/json/JSONException; {:try_start_65 .. :try_end_6c} :catch_7b
    .catch Ljava/lang/RuntimeException; {:try_start_65 .. :try_end_6c} :catch_74
    .catchall {:try_start_65 .. :try_end_6c} :catchall_43

    :goto_6c
    :try_start_6c
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzhb()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzcd;->zzgz()V

    monitor-exit v3

    goto :goto_10

    :catch_74
    move-exception v0

    :goto_75
    const-string v1, "Active view update failed."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7a
    .catchall {:try_start_6c .. :try_end_7a} :catchall_43

    goto :goto_6c

    :catch_7b
    move-exception v0

    goto :goto_75
.end method

###### Class com.google.android.gms.internal.zzcd.AnonymousClass1 (com.google.android.gms.internal.zzcd$1)
.class Lcom/google/android/gms/internal/zzcd$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzcd;->zzgw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqy:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$1;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$1;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzcd;->zzk(I)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzcd.AnonymousClass2 (com.google.android.gms.internal.zzcd$2)
.class Lcom/google/android/gms/internal/zzcd$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqy:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$2;->zzaqy:Lcom/google/android/gms/internal/zzcd;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$2;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcd;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$2;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/zzcd;->zza(Landroid/view/View;Ljava/util/Map;)V

    goto :goto_8
.end method

###### Class com.google.android.gms.internal.zzcd.AnonymousClass3 (com.google.android.gms.internal.zzcd$3)
.class Lcom/google/android/gms/internal/zzcd$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqy:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$3;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 6
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$3;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcd;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    const-string v1, "Received request to untrack: "

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$3;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzcd;->zzaqi:Lcom/google/android/gms/internal/zzcf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcf;->zzhn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_21
    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$3;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcd;->destroy()V

    goto :goto_8

    :cond_2a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_21
.end method

###### Class com.google.android.gms.internal.zzcd.AnonymousClass4 (com.google.android.gms.internal.zzcd$4)
.class Lcom/google/android/gms/internal/zzcd$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaqy:Lcom/google/android/gms/internal/zzcd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzcd;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$4;->zzaqy:Lcom/google/android/gms/internal/zzcd;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$4;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzcd;->zzb(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const-string v0, "isVisible"

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "1"

    const-string v1, "isVisible"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    const-string v0, "true"

    const-string v1, "isVisible"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    :cond_2d
    const/4 v0, 0x1

    :goto_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd$4;->zzaqy:Lcom/google/android/gms/internal/zzcd;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcd;->zzj(Z)V

    goto :goto_8

    :cond_3c
    const/4 v0, 0x0

    goto :goto_2e
.end method

###### Class com.google.android.gms.internal.zzcd.zza (com.google.android.gms.internal.zzcd$zza)
.class public Lcom/google/android/gms/internal/zzcd$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzaqz:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd$zza;->zzaqz:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzhh()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zza;->zzaqz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzh;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzle()Landroid/view/View;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public zzhi()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zza;->zzaqz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzhj()Lcom/google/android/gms/internal/zzck;
    .registers 3

    new-instance v1, Lcom/google/android/gms/internal/zzcd$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zza;->zzaqz:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzcd$zzb;-><init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V

    return-object v1
.end method

###### Class com.google.android.gms.internal.zzcd.zzb (com.google.android.gms.internal.zzcd$zzb)
.class public Lcom/google/android/gms/internal/zzcd$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private zzara:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$zzb;->zzara:Lcom/google/android/gms/ads/internal/formats/zzh;

    return-void
.end method


# virtual methods
.method public zzhh()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzb;->zzara:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/formats/zzh;->zzle()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public zzhi()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzb;->zzara:Lcom/google/android/gms/ads/internal/formats/zzh;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public zzhj()Lcom/google/android/gms/internal/zzck;
    .registers 1

    return-object p0
.end method

###### Class com.google.android.gms.internal.zzcd.zzc (com.google.android.gms.internal.zzcd$zzc)
.class public Lcom/google/android/gms/internal/zzcd$zzc;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzc"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field private final zzarb:Lcom/google/android/gms/internal/zzjy;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/zzjy;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzcd$zzc;->zzarb:Lcom/google/android/gms/internal/zzjy;

    return-void
.end method


# virtual methods
.method public zzhh()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    return-object v0
.end method

.method public zzhi()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->zzarb:Lcom/google/android/gms/internal/zzjy;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzc;->mView:Landroid/view/View;

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public zzhj()Lcom/google/android/gms/internal/zzck;
    .registers 1

    return-object p0
.end method

###### Class com.google.android.gms.internal.zzcd.zzd (com.google.android.gms.internal.zzcd$zzd)
.class public Lcom/google/android/gms/internal/zzcd$zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzck;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzcd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation


# instance fields
.field private final zzarc:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final zzard:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzjy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/android/gms/internal/zzjy;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzarc:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzard:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzhh()Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzarc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public zzhi()Z
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzarc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzard:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public zzhj()Lcom/google/android/gms/internal/zzck;
    .registers 4

    new-instance v2, Lcom/google/android/gms/internal/zzcd$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzarc:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzcd$zzd;->zzard:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzjy;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzcd$zzc;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/zzjy;)V

    return-object v2
.end method
