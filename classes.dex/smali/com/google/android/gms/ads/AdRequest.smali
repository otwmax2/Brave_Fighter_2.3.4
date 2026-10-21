###### Class com.google.android.gms.ads.AdRequest (com.google.android.gms.ads.AdRequest)
.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200


# instance fields
.field private final zzaic:Lcom/google/android/gms/ads/internal/client/zzad;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzad;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzad$zza;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzad;-><init>(Lcom/google/android/gms/ads/internal/client/zzad$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzad;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzad;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzad;->getGender()I

    move-result v0

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzad;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/client/zzad;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public zzdd()Lcom/google/android/gms/ads/internal/client/zzad;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    return-object v0
.end method

###### Class com.google.android.gms.ads.AdRequest.AnonymousClass1 (com.google.android.gms.ads.AdRequest$1)
.class synthetic Lcom/google/android/gms/ads/AdRequest$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.ads.AdRequest.Builder (com.google.android.gms.ads.AdRequest$Builder)
.class public final Lcom/google/android/gms/ads/AdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzad$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzad$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addKeyword(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzaf(Ljava/lang/String;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/AdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    const-class v0, Lcom/google/ads/mediation/admob/AdMobAdapter;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "_emulatorLiveAds"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    sget-object v1, Lcom/google/android/gms/ads/AdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzah(Ljava/lang/String;)V

    :cond_1c
    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzag(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/AdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/AdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V

    return-object v0
.end method

.method public setBirthday(Ljava/util/Date;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Ljava/util/Date;)V

    return-object p0
.end method

.method public setContentUrl(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 8

    const/16 v5, 0x200

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "Content URL must be non-null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Content URL must be non-empty."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzab;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v5, :cond_33

    move v0, v1

    :goto_15
    const-string v3, "Content URL must not exceed %d in length.  Provided length was %d."

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/android/gms/common/internal/zzab;->zzb(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzai(Ljava/lang/String;)V

    return-object p0

    :cond_33
    move v0, v2

    goto :goto_15
.end method

.method public setGender(I)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzt(I)V

    return-object p0
.end method

.method public setIsDesignedForFamilies(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzo(Z)V

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzak(Ljava/lang/String;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/AdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzn(Z)V

    return-object p0
.end method
