###### Class com.google.android.gms.internal.zzlg (com.google.android.gms.internal.zzlg)
.class public Lcom/google/android/gms/internal/zzlg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzir;
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzlh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzlh;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlh;->zzub()V

    return-void
.end method

.method public zza(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/internal/zzli;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzli;-><init>(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzli;->zzub()V

    return-void
.end method
