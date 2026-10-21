###### Class com.google.android.gms.internal.zzco (com.google.android.gms.internal.zzco)
.class public Lcom/google/android/gms/internal/zzco;
.super Ljava/lang/Thread;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation

.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzco$zza;
    }
.end annotation


# instance fields
.field private mStarted:Z

.field private final zzail:Ljava/lang/Object;

.field private final zzart:I

.field private final zzarv:I

.field private zzash:Z

.field private final zzasi:Lcom/google/android/gms/internal/zzcn;

.field private final zzasj:Lcom/google/android/gms/internal/zzcm;

.field private final zzask:Lcom/google/android/gms/internal/zziq;

.field private final zzasl:I

.field private final zzasm:I

.field private final zzasn:I

.field private zzbl:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzcn;Lcom/google/android/gms/internal/zzcm;Lcom/google/android/gms/internal/zziq;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->mStarted:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzash:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzbl:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco;->zzasi:Lcom/google/android/gms/internal/zzcn;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzco;->zzasj:Lcom/google/android/gms/internal/zzcm;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzco;->zzask:Lcom/google/android/gms/internal/zziq;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzazg:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzco;->zzart:I

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzazh:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzco;->zzasm:I

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzazi:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzco;->zzarv:I

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzazj:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzco;->zzasn:I

    sget-object v0, Lcom/google/android/gms/internal/zzdc;->zzazk:Lcom/google/android/gms/internal/zzcy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzco;->zzasl:I

    const-string v0, "ContentFetchTask"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzco;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzco;->zzia()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzasi:Lcom/google/android/gms/internal/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcn;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_32

    const-string v0, "ContentFetchThread: no activity. Sleeping."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzco;->zzic()V

    :goto_16
    iget v0, p0, Lcom/google/android/gms/internal/zzco;->zzasl:I

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1e} :catch_36

    :goto_1e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :goto_21
    :try_start_21
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzash:Z
    :try_end_23
    .catchall {:try_start_21 .. :try_end_23} :catchall_4e

    if-eqz v0, :cond_4c

    :try_start_25
    const-string v0, "ContentFetchTask: waiting"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_2f} :catch_30
    .catchall {:try_start_25 .. :try_end_2f} :catchall_4e

    goto :goto_21

    :catch_30
    move-exception v0

    goto :goto_21

    :cond_32
    :try_start_32
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzco;->zza(Landroid/app/Activity;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_35} :catch_36

    goto :goto_16

    :catch_36
    move-exception v0

    const-string v1, "Error in ContentFetchTask"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzask:Lcom/google/android/gms/internal/zziq;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_1e

    :cond_43
    :try_start_43
    const-string v0, "ContentFetchTask: sleeping"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzco;->zzic()V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_4b} :catch_36

    goto :goto_16

    :cond_4c
    :try_start_4c
    monitor-exit v1

    goto :goto_0

    :catchall_4e
    move-exception v0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_4e

    throw v0
.end method

.method public wakeup()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzash:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    const-string v0, "ContentFetchThread: wakeup"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v0
.end method

.method zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcl;)Lcom/google/android/gms/internal/zzco$zza;
    .registers 8

    const/4 v4, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_b

    new-instance v1, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    move-object v0, v1

    :goto_a
    return-object v0

    :cond_b
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_3d

    instance-of v2, p1, Landroid/widget/EditText;

    if-nez v2, :cond_3d

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_36

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2, v1}, Lcom/google/android/gms/internal/zzcl;->zze(Ljava/lang/String;Z)V

    new-instance v1, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v1, p0, v4, v0}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    move-object v0, v1

    goto :goto_a

    :cond_36
    new-instance v1, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    move-object v0, v1

    goto :goto_a

    :cond_3d
    instance-of v2, p1, Landroid/webkit/WebView;

    if-eqz v2, :cond_5e

    instance-of v2, p1, Lcom/google/android/gms/internal/zzll;

    if-nez v2, :cond_5e

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcl;->zzhv()V

    check-cast p1, Landroid/webkit/WebView;

    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/gms/internal/zzco;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzcl;Z)Z

    move-result v1

    if-eqz v1, :cond_57

    new-instance v1, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v1, p0, v0, v4}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    move-object v0, v1

    goto :goto_a

    :cond_57
    new-instance v1, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    move-object v0, v1

    goto :goto_a

    :cond_5e
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_83

    check-cast p1, Landroid/view/ViewGroup;

    move v1, v0

    move v2, v0

    :goto_66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_7d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/google/android/gms/internal/zzco;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcl;)Lcom/google/android/gms/internal/zzco$zza;

    move-result-object v3

    iget v4, v3, Lcom/google/android/gms/internal/zzco$zza;->zzasv:I

    add-int/2addr v2, v4

    iget v3, v3, Lcom/google/android/gms/internal/zzco$zza;->zzasw:I

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_7d
    new-instance v0, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v0, p0, v2, v1}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    goto :goto_a

    :cond_83
    new-instance v1, Lcom/google/android/gms/internal/zzco$zza;

    invoke-direct {v1, p0, v0, v0}, Lcom/google/android/gms/internal/zzco$zza;-><init>(Lcom/google/android/gms/internal/zzco;II)V

    move-object v0, v1

    goto :goto_a
.end method

.method zza(Landroid/app/Activity;)V
    .registers 5

    if-nez p1, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_22} :catch_29

    move-result-object v0

    :cond_23
    :goto_23
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzco;->zze(Landroid/view/View;)Z

    goto :goto_2

    :catch_29
    move-exception v1

    const-string v1, "Failed getting root view of activity. Content not extracted."

    invoke-static {v1}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    goto :goto_23
.end method

.method zza(Lcom/google/android/gms/internal/zzcl;Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .registers 10

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcl;->zzhu()V

    :try_start_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_53

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5f

    invoke-virtual {p2}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Lcom/google/android/gms/internal/zzcl;->zzd(Ljava/lang/String;Z)V

    :cond_53
    :goto_53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzcl;->zzhq()Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzasj:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzcm;->zzb(Lcom/google/android/gms/internal/zzcl;)Z

    :cond_5e
    :goto_5e
    return-void

    :cond_5f
    invoke-virtual {p1, v0, p4}, Lcom/google/android/gms/internal/zzcl;->zzd(Ljava/lang/String;Z)V
    :try_end_62
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_62} :catch_63
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_62} :catch_6a

    goto :goto_53

    :catch_63
    move-exception v0

    const-string v0, "Json string may be malformed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    goto :goto_5e

    :catch_6a
    move-exception v0

    const-string v1, "Failed to get webview content."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzask:Lcom/google/android/gms/internal/zziq;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_5e
.end method

.method zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .registers 4

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzcl;Z)Z
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    invoke-static {}, Lcom/google/android/gms/common/util/zzs;->zzavq()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzcl;->zzhv()V

    new-instance v0, Lcom/google/android/gms/internal/zzco$2;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/google/android/gms/internal/zzco$2;-><init>(Lcom/google/android/gms/internal/zzco;Lcom/google/android/gms/internal/zzcl;Landroid/webkit/WebView;Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_7
.end method

.method zze(Landroid/view/View;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/zzco$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/zzco$1;-><init>(Lcom/google/android/gms/internal/zzco;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_3
.end method

.method zzf(Landroid/view/View;)V
    .registers 7

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzcl;

    iget v1, p0, Lcom/google/android/gms/internal/zzco;->zzart:I

    iget v2, p0, Lcom/google/android/gms/internal/zzco;->zzasm:I

    iget v3, p0, Lcom/google/android/gms/internal/zzco;->zzarv:I

    iget v4, p0, Lcom/google/android/gms/internal/zzco;->zzasn:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzcl;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzco;->zza(Landroid/view/View;Lcom/google/android/gms/internal/zzcl;)Lcom/google/android/gms/internal/zzco$zza;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcl;->zzhw()V

    iget v2, v1, Lcom/google/android/gms/internal/zzco$zza;->zzasv:I

    if-nez v2, :cond_1d

    iget v2, v1, Lcom/google/android/gms/internal/zzco$zza;->zzasw:I

    if-nez v2, :cond_1d

    :cond_1c
    :goto_1c
    return-void

    :cond_1d
    iget v2, v1, Lcom/google/android/gms/internal/zzco$zza;->zzasw:I

    if-nez v2, :cond_27

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcl;->zzhx()I

    move-result v2

    if-eqz v2, :cond_1c

    :cond_27
    iget v1, v1, Lcom/google/android/gms/internal/zzco$zza;->zzasw:I

    if-nez v1, :cond_33

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzasj:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcm;->zza(Lcom/google/android/gms/internal/zzcl;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_33
    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzasj:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzcm;->zzc(Lcom/google/android/gms/internal/zzcl;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_1c

    :catch_39
    move-exception v0

    const-string v1, "Exception in fetchContentOnUIThread"

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/zzkh;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzask:Lcom/google/android/gms/internal/zziq;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zziq;->zza(Ljava/lang/Throwable;Z)V

    goto :goto_1c
.end method

.method public zzhz()V
    .registers 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->mStarted:Z

    if-eqz v0, :cond_e

    const-string v0, "Content hash thread already started, quiting..."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    monitor-exit v1

    :goto_d
    return-void

    :cond_e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->mStarted:Z

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzco;->start()V

    goto :goto_d

    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method zzia()Z
    .registers 8

    const/4 v2, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzasi:Lcom/google/android/gms/internal/zzcn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcn;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_b

    move v0, v2

    :goto_a
    return v0

    :cond_b
    const-string v0, "activity"

    invoke-virtual {v3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "keyguard"

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1f

    if-nez v1, :cond_21

    :cond_1f
    move v0, v2

    goto :goto_a

    :cond_21
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_29

    move v0, v2

    goto :goto_a

    :cond_29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    iget v6, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, v6, :cond_2d

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzco;->zza(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v0

    if-eqz v0, :cond_55

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-nez v0, :cond_55

    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/zzco;->zzj(Landroid/content/Context;)Z
    :try_end_50
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_50} :catch_57

    move-result v0

    if-eqz v0, :cond_55

    const/4 v0, 0x1

    goto :goto_a

    :cond_55
    move v0, v2

    goto :goto_a

    :catch_57
    move-exception v0

    move v0, v2

    goto :goto_a
.end method

.method public zzib()Lcom/google/android/gms/internal/zzcl;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco;->zzasj:Lcom/google/android/gms/internal/zzcm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcm;->zzhy()Lcom/google/android/gms/internal/zzcl;

    move-result-object v0

    return-object v0
.end method

.method public zzic()V
    .registers 5

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco;->zzail:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzash:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzash:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "ContentFetchThread: paused, mPause = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_22
    move-exception v0

    monitor-exit v1
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_22

    throw v0
.end method

.method public zzid()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzco;->zzash:Z

    return v0
.end method

.method zzj(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_c

    const/4 v0, 0x0

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    goto :goto_b
.end method

###### Class com.google.android.gms.internal.zzco.AnonymousClass1 (com.google.android.gms.internal.zzco$1)
.class Lcom/google/android/gms/internal/zzco$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzco;->zze(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaso:Landroid/view/View;

.field final synthetic zzasp:Lcom/google/android/gms/internal/zzco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzco;Landroid/view/View;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco$1;->zzasp:Lcom/google/android/gms/internal/zzco;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzco$1;->zzaso:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$1;->zzasp:Lcom/google/android/gms/internal/zzco;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco$1;->zzaso:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzco;->zzf(Landroid/view/View;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzco.AnonymousClass2 (com.google.android.gms.internal.zzco$2)
.class Lcom/google/android/gms/internal/zzco$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzco;->zza(Landroid/webkit/WebView;Lcom/google/android/gms/internal/zzcl;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzasp:Lcom/google/android/gms/internal/zzco;

.field zzasq:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic zzasr:Lcom/google/android/gms/internal/zzcl;

.field final synthetic zzass:Landroid/webkit/WebView;

.field final synthetic zzast:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzco;Lcom/google/android/gms/internal/zzcl;Landroid/webkit/WebView;Z)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco$2;->zzasp:Lcom/google/android/gms/internal/zzco;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzco$2;->zzasr:Lcom/google/android/gms/internal/zzcl;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzco$2;->zzass:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzco$2;->zzast:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzco$2$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzco$2$1;-><init>(Lcom/google/android/gms/internal/zzco$2;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzco$2;->zzasq:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$2;->zzass:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$2;->zzass:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzco$2;->zzasq:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_16

    :cond_15
    :goto_15
    return-void

    :catch_16
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$2;->zzasq:Landroid/webkit/ValueCallback;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_15
.end method

###### Class com.google.android.gms.internal.zzco.AnonymousClass2.AnonymousClass1 (com.google.android.gms.internal.zzco$2$1)
.class Lcom/google/android/gms/internal/zzco$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzco$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzasu:Lcom/google/android/gms/internal/zzco$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzco$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasu:Lcom/google/android/gms/internal/zzco$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzco$2$1;->zzz(Ljava/lang/String;)V

    return-void
.end method

.method public zzz(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasu:Lcom/google/android/gms/internal/zzco$2;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzco$2;->zzasp:Lcom/google/android/gms/internal/zzco;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasu:Lcom/google/android/gms/internal/zzco$2;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzco$2;->zzasr:Lcom/google/android/gms/internal/zzcl;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasu:Lcom/google/android/gms/internal/zzco$2;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzco$2;->zzass:Landroid/webkit/WebView;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzco$2$1;->zzasu:Lcom/google/android/gms/internal/zzco$2;

    iget-boolean v3, v3, Lcom/google/android/gms/internal/zzco$2;->zzast:Z

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/zzco;->zza(Lcom/google/android/gms/internal/zzcl;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzco.zza (com.google.android.gms.internal.zzco$zza)
.class Lcom/google/android/gms/internal/zzco$zza;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzco;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzasp:Lcom/google/android/gms/internal/zzco;

.field final zzasv:I

.field final zzasw:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzco;II)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzco$zza;->zzasp:Lcom/google/android/gms/internal/zzco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/internal/zzco$zza;->zzasv:I

    iput p3, p0, Lcom/google/android/gms/internal/zzco$zza;->zzasw:I

    return-void
.end method
