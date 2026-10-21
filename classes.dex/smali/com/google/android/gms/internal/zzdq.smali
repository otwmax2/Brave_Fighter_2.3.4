###### Class com.google.android.gms.internal.zzdq (com.google.android.gms.internal.zzdq)
.class public Lcom/google/android/gms/internal/zzdq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzapj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzdq$zza;
    }
.end annotation


# instance fields
.field private zzbem:Landroid/support/customtabs/CustomTabsSession;

.field private zzben:Landroid/support/customtabs/CustomTabsClient;

.field private zzbeo:Landroid/support/customtabs/CustomTabsServiceConnection;

.field private zzbep:Lcom/google/android/gms/internal/zzdq$zza;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzo(Landroid/content/Context;)Z
    .registers 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    :goto_7
    return v2

    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    const-string v4, "http://www.example.com"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    if-eqz v3, :cond_7

    move v1, v2

    :goto_24
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaph;->zzeu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_7

    :cond_4b
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_24
.end method


# virtual methods
.method public mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    if-nez v1, :cond_6

    :cond_5
    :goto_5
    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzdq;->zzkl()Landroid/support/customtabs/CustomTabsSession;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1, p1, p2, p3}, Landroid/support/customtabs/CustomTabsSession;->mayLaunchUrl(Landroid/net/Uri;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result v0

    goto :goto_5
.end method

.method public zza(Landroid/support/customtabs/CustomTabsClient;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/support/customtabs/CustomTabsClient;->warmup(J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbep:Lcom/google/android/gms/internal/zzdq$zza;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbep:Lcom/google/android/gms/internal/zzdq$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdq$zza;->zzkn()V

    :cond_12
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzdq$zza;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzdq;->zzbep:Lcom/google/android/gms/internal/zzdq$zza;

    return-void
.end method

.method public zzd(Landroid/app/Activity;)V
    .registers 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbeo:Landroid/support/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbeo:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzbem:Landroid/support/customtabs/CustomTabsSession;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzbeo:Landroid/support/customtabs/CustomTabsServiceConnection;

    goto :goto_5
.end method

.method public zze(Landroid/app/Activity;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    if-eqz v0, :cond_5

    :cond_4
    :goto_4
    return-void

    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/internal/zzaph;->zzeu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/google/android/gms/internal/zzapi;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzapi;-><init>(Lcom/google/android/gms/internal/zzapj;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzbeo:Landroid/support/customtabs/CustomTabsServiceConnection;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzbeo:Landroid/support/customtabs/CustomTabsServiceConnection;

    invoke-static {p1, v0, v1}, Landroid/support/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroid/support/customtabs/CustomTabsServiceConnection;)Z

    goto :goto_4
.end method

.method public zzkl()Landroid/support/customtabs/CustomTabsSession;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    if-nez v0, :cond_a

    iput-object v1, p0, Lcom/google/android/gms/internal/zzdq;->zzbem:Landroid/support/customtabs/CustomTabsSession;

    :cond_7
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbem:Landroid/support/customtabs/CustomTabsSession;

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbem:Landroid/support/customtabs/CustomTabsSession;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    invoke-virtual {v0, v1}, Landroid/support/customtabs/CustomTabsClient;->newSession(Landroid/support/customtabs/CustomTabsCallback;)Landroid/support/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbem:Landroid/support/customtabs/CustomTabsSession;

    goto :goto_7
.end method

.method public zzkm()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzben:Landroid/support/customtabs/CustomTabsClient;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbem:Landroid/support/customtabs/CustomTabsSession;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbep:Lcom/google/android/gms/internal/zzdq$zza;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/google/android/gms/internal/zzdq;->zzbep:Lcom/google/android/gms/internal/zzdq$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzdq$zza;->zzko()V

    :cond_e
    return-void
.end method

###### Class com.google.android.gms.internal.zzdq.zza (com.google.android.gms.internal.zzdq$zza)
.class public interface abstract Lcom/google/android/gms/internal/zzdq$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzdq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation


# virtual methods
.method public abstract zzkn()V
.end method

.method public abstract zzko()V
.end method
