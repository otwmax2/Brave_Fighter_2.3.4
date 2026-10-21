###### Class com.google.android.gms.signin.internal.RecordConsentRequest (com.google.android.gms.signin.internal.RecordConsentRequest)
.class public Lcom/google/android/gms/signin/internal/RecordConsentRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/signin/internal/RecordConsentRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final aP:Landroid/accounts/Account;

.field private final auu:[Lcom/google/android/gms/common/api/Scope;

.field private final dW:Ljava/lang/String;

.field final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/signin/internal/zzf;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/zzf;-><init>()V

    sput-object v0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->aP:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->auu:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->dW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->aP:Landroid/accounts/Account;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/signin/internal/zzf;->zza(Lcom/google/android/gms/signin/internal/RecordConsentRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzafu()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->dW:Ljava/lang/String;

    return-object v0
.end method

.method public zzbzs()[Lcom/google/android/gms/common/api/Scope;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/signin/internal/RecordConsentRequest;->auu:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method
