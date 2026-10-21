###### Class com.google.android.gms.internal.zzhg (com.google.android.gms.internal.zzhg)
.class public Lcom/google/android/gms/internal/zzhg;
.super Lcom/google/android/gms/internal/zzhj;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbee:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzll;Ljava/util/Map;)V
    .registers 4
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

    const-string v0, "storePicture"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/zzhj;-><init>(Lcom/google/android/gms/internal/zzll;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhg;->zzbee:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/internal/zzll;->zzuf()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhg;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public execute()V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->mContext:Landroid/content/Context;

    if-nez v0, :cond_a

    const-string v0, "Activity context is not available"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    :goto_9
    return-void

    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzkl;->zzag(Landroid/content/Context;)Lcom/google/android/gms/internal/zzcu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzcu;->zzjr()Z

    move-result v0

    if-nez v0, :cond_20

    const-string v0, "Feature is not supported by the device."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    goto :goto_9

    :cond_20
    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzbee:Ljava/util/Map;

    const-string v1, "iurl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_36

    const-string v0, "Image url cannot be empty."

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    goto :goto_9

    :cond_36
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_56

    const-string v1, "Invalid image url: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_50

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4c
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    goto :goto_9

    :cond_50
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_4c

    :cond_56
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzbt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzkl;->zzcr(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7e

    const-string v1, "Image type not recognized: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_78

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_74
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    goto :goto_9

    :cond_78
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_74

    :cond_7e
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzft()Lcom/google/android/gms/internal/zzkb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzkb;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfq()Lcom/google/android/gms/internal/zzkl;

    move-result-object v1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzhg;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/zzkl;->zzaf(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v3, :cond_cf

    sget v1, Lcom/google/android/gms/R$string;->store_picture_title:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_98
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_d2

    sget v1, Lcom/google/android/gms/R$string;->store_picture_message:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_a3
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_d5

    sget v1, Lcom/google/android/gms/R$string;->accept:I

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_ae
    new-instance v5, Lcom/google/android/gms/internal/zzhg$1;

    invoke-direct {v5, p0, v0, v2}, Lcom/google/android/gms/internal/zzhg$1;-><init>(Lcom/google/android/gms/internal/zzhg;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v1, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz v3, :cond_d8

    sget v0, Lcom/google/android/gms/R$string;->decline:I

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_be
    new-instance v1, Lcom/google/android/gms/internal/zzhg$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzhg$2;-><init>(Lcom/google/android/gms/internal/zzhg;)V

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_9

    :cond_cf
    const-string v1, "Save image"

    goto :goto_98

    :cond_d2
    const-string v1, "Allow Ad to store image in Picture gallery?"

    goto :goto_a3

    :cond_d5
    const-string v1, "Accept"

    goto :goto_ae

    :cond_d8
    const-string v0, "Decline"

    goto :goto_be
.end method

.method zzbt(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzk(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;
    .registers 5

    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzu;->zzfs()Lcom/google/android/gms/internal/zzkm;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzkm;->zza(Landroid/app/DownloadManager$Request;)Z

    return-object v0
.end method

###### Class com.google.android.gms.internal.zzhg.AnonymousClass1 (com.google.android.gms.internal.zzhg$1)
.class Lcom/google/android/gms/internal/zzhg$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhg;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbqy:Ljava/lang/String;

.field final synthetic zzbqz:Ljava/lang/String;

.field final synthetic zzbra:Lcom/google/android/gms/internal/zzhg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhg;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbra:Lcom/google/android/gms/internal/zzhg;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbqy:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbqz:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbra:Lcom/google/android/gms/internal/zzhg;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzhg;->zza(Lcom/google/android/gms/internal/zzhg;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "download"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    :try_start_e
    iget-object v1, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbra:Lcom/google/android/gms/internal/zzhg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbqy:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbqz:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/zzhg;->zzk(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J
    :try_end_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_1b} :catch_1c

    :goto_1b
    return-void

    :catch_1c
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg$1;->zzbra:Lcom/google/android/gms/internal/zzhg;

    const-string v1, "Could not store picture."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    goto :goto_1b
.end method

###### Class com.google.android.gms.internal.zzhg.AnonymousClass2 (com.google.android.gms.internal.zzhg$2)
.class Lcom/google/android/gms/internal/zzhg$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzhg;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbra:Lcom/google/android/gms/internal/zzhg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzhg;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg$2;->zzbra:Lcom/google/android/gms/internal/zzhg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg$2;->zzbra:Lcom/google/android/gms/internal/zzhg;

    const-string v1, "User canceled the download."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhg;->zzbu(Ljava/lang/String;)V

    return-void
.end method
