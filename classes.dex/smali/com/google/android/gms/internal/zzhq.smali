###### Class com.google.android.gms.internal.zzhq (com.google.android.gms.internal.zzhq)
.class public Lcom/google/android/gms/internal/zzhq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzho;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field final zzbwl:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhq;->zzbwl:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhq;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Fetching assets for the given html"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzkl;->zzclg:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzhq$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/google/android/gms/internal/zzhq$1;-><init>(Lcom/google/android/gms/internal/zzhq;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzpn()Landroid/webkit/WebView;
    .registers 4

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhq;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzhq.AnonymousClass1 (com.google.android.gms.internal.zzhq$1)
.class Lcom/google/android/gms/internal/zzhq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbwm:Ljava/lang/String;

.field final synthetic zzbwn:Ljava/lang/String;

.field final synthetic zzbwo:Lcom/google/android/gms/internal/zzhq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhq;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwo:Lcom/google/android/gms/internal/zzhq;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwm:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwn:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwo:Lcom/google/android/gms/internal/zzhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzhq;->zzpn()Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzhq$1$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzhq$1$1;-><init>(Lcom/google/android/gms/internal/zzhq$1;Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwo:Lcom/google/android/gms/internal/zzhq;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzhq;->zzbwl:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhq$1;->zzbwn:Ljava/lang/String;

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Fetching assets finished."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.internal.zzhq.AnonymousClass1.C01311 (com.google.android.gms.internal.zzhq$1$1)
.class Lcom/google/android/gms/internal/zzhq$1$1;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzass:Landroid/webkit/WebView;

.field final synthetic zzbwp:Lcom/google/android/gms/internal/zzhq$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhq$1;Landroid/webkit/WebView;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhq$1$1;->zzbwp:Lcom/google/android/gms/internal/zzhq$1;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhq$1$1;->zzass:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Loading assets have finished"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhq$1$1;->zzbwp:Lcom/google/android/gms/internal/zzhq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhq$1;->zzbwo:Lcom/google/android/gms/internal/zzhq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhq;->zzbwl:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhq$1$1;->zzass:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "Loading assets have failed."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzkh;->zzcy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhq$1$1;->zzbwp:Lcom/google/android/gms/internal/zzhq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhq$1;->zzbwo:Lcom/google/android/gms/internal/zzhq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhq;->zzbwl:Ljava/util/Set;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhq$1$1;->zzass:Landroid/webkit/WebView;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method
