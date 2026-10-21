###### Class com.google.android.gms.identity.intents.UserAddressRequest (com.google.android.gms.identity.intents.UserAddressRequest)
.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/identity/intents/UserAddressRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field abz:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;"
        }
    .end annotation
.end field

.field private final mVersionCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/identity/intents/zza;

    invoke-direct {v0}, Lcom/google/android/gms/identity/intents/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->mVersionCode:I

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->mVersionCode:I

    iput-object p2, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    return-void
.end method

.method public static newBuilder()Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;

    new-instance v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;

    invoke-direct {v1}, Lcom/google/android/gms/identity/intents/UserAddressRequest;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V

    return-object v0
.end method


# virtual methods
.method public getVersionCode()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->mVersionCode:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/identity/intents/zza;->zza(Lcom/google/android/gms/identity/intents/UserAddressRequest;Landroid/os/Parcel;I)V

    return-void
.end method

###### Class com.google.android.gms.identity.intents.UserAddressRequest.AnonymousClass1 (com.google.android.gms.identity.intents.UserAddressRequest$1)
.class synthetic Lcom/google/android/gms/identity/intents/UserAddressRequest$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/UserAddressRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.identity.intents.UserAddressRequest.Builder (com.google.android.gms.identity.intents.UserAddressRequest$Builder)
.class public final Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/identity/intents/UserAddressRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Builder"
.end annotation


# instance fields
.field final synthetic abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;Lcom/google/android/gms/identity/intents/UserAddressRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;-><init>(Lcom/google/android/gms/identity/intents/UserAddressRequest;)V

    return-void
.end method


# virtual methods
.method public addAllowedCountrySpecification(Lcom/google/android/gms/identity/intents/model/CountrySpecification;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAllowedCountrySpecifications(Ljava/util/Collection;)Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/gms/identity/intents/model/CountrySpecification;",
            ">;)",
            "Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/identity/intents/UserAddressRequest;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v0, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    iget-object v1, v1, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/identity/intents/UserAddressRequest;->abz:Ljava/util/List;

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/identity/intents/UserAddressRequest$Builder;->abA:Lcom/google/android/gms/identity/intents/UserAddressRequest;

    return-object v0
.end method
