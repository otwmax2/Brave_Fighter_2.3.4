###### Class com.google.android.gms.common.internal.zzi (com.google.android.gms.common.internal.zzi)
.class public abstract Lcom/google/android/gms/common/internal/zzi;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
    .registers 4

    new-instance v0, Lcom/google/android/gms/common/internal/zzi$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzi$1;-><init>(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public static zza(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
    .registers 4
    .param p0    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/internal/zzi$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzi$2;-><init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    return-object v0
.end method

.method public static zza(Lcom/google/android/gms/internal/zzqp;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
    .registers 4
    .param p0    # Lcom/google/android/gms/internal/zzqp;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/google/android/gms/common/internal/zzi$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/common/internal/zzi$3;-><init>(Lcom/google/android/gms/internal/zzqp;Landroid/content/Intent;I)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/zzi;->zzasn()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_6} :catch_7

    :goto_6
    return-void

    :catch_7
    move-exception v0

    const-string v0, "DialogRedirect"

    const-string v1, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public abstract zzasn()V
.end method

###### Class com.google.android.gms.common.internal.zzi.AnonymousClass1 (com.google.android.gms.common.internal.zzi$1)
.class final Lcom/google/android/gms/common/internal/zzi$1;
.super Lcom/google/android/gms/common/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzi;->zza(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzi$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzi$1;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public zzasn()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi$1;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzi$1;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.google.android.gms.common.internal.zzi.AnonymousClass2 (com.google.android.gms.common.internal.zzi$2)
.class final Lcom/google/android/gms/common/internal/zzi$2;
.super Lcom/google/android/gms/common/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzi;->zza(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fragment:Landroid/support/v4/app/Fragment;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi$2;->val$fragment:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzi$2;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzi$2;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public zzasn()V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi$2;->val$fragment:Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi$2;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzi$2;->val$requestCode:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

###### Class com.google.android.gms.common.internal.zzi.AnonymousClass3 (com.google.android.gms.common.internal.zzi$3)
.class final Lcom/google/android/gms/common/internal/zzi$3;
.super Lcom/google/android/gms/common/internal/zzi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/common/internal/zzi;->zza(Lcom/google/android/gms/internal/zzqp;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/zzi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I

.field final synthetic yd:Lcom/google/android/gms/internal/zzqp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqp;Landroid/content/Intent;I)V
    .registers 4

    iput-object p1, p0, Lcom/google/android/gms/common/internal/zzi$3;->yd:Lcom/google/android/gms/internal/zzqp;

    iput-object p2, p0, Lcom/google/android/gms/common/internal/zzi$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/google/android/gms/common/internal/zzi$3;->val$requestCode:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zzi;-><init>()V

    return-void
.end method


# virtual methods
.method public zzasn()V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/zzi$3;->yd:Lcom/google/android/gms/internal/zzqp;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/zzi$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Lcom/google/android/gms/common/internal/zzi$3;->val$requestCode:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzqp;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
