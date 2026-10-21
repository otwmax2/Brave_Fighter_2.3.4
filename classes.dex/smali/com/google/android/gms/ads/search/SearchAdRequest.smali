###### Class com.google.android.gms.ads.search.SearchAdRequest (com.google.android.gms.ads.search.SearchAdRequest)
.class public final Lcom/google/android/gms/ads/search/SearchAdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    }
.end annotation


# static fields
.field public static final BORDER_TYPE_DASHED:I = 0x1

.field public static final BORDER_TYPE_DOTTED:I = 0x2

.field public static final BORDER_TYPE_NONE:I = 0x0

.field public static final BORDER_TYPE_SOLID:I = 0x3

.field public static final CALL_BUTTON_COLOR_DARK:I = 0x2

.field public static final CALL_BUTTON_COLOR_LIGHT:I = 0x0

.field public static final CALL_BUTTON_COLOR_MEDIUM:I = 0x1

.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String;

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3


# instance fields
.field private final mBackgroundColor:I

.field private final zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

.field private final zzanp:Ljava/lang/String;

.field private final zzcre:I

.field private final zzcrf:I

.field private final zzcrg:I

.field private final zzcrh:I

.field private final zzcri:I

.field private final zzcrj:I

.field private final zzcrk:I

.field private final zzcrl:Ljava/lang/String;

.field private final zzcrm:I

.field private final zzcrn:Ljava/lang/String;

.field private final zzcro:I

.field private final zzcrp:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzad;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/ads/search/SearchAdRequest;->DEVICE_ID_EMULATOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcre:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->mBackgroundColor:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzc(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrf:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzd(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrg:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zze(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrh:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzf(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcri:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzg(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrj:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzh(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrk:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzi(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrl:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzj(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrm:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzk(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrn:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzl(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcro:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzm(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrp:I

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzn(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzanp:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-static {p1}, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzo(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzad$zza;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/ads/internal/client/zzad;-><init>(Lcom/google/android/gms/ads/internal/client/zzad$zza;Lcom/google/android/gms/ads/search/SearchAdRequest;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAnchorTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcre:I

    return v0
.end method

.method public getBackgroundColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->mBackgroundColor:I

    return v0
.end method

.method public getBackgroundGradientBottom()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrf:I

    return v0
.end method

.method public getBackgroundGradientTop()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrg:I

    return v0
.end method

.method public getBorderColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrh:I

    return v0
.end method

.method public getBorderThickness()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcri:I

    return v0
.end method

.method public getBorderType()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrj:I

    return v0
.end method

.method public getCallButtonColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrk:I

    return v0
.end method

.method public getCustomChannels()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrl:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptionTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrm:I

    return v0
.end method

.method public getFontFace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrn:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderTextColor()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcro:I

    return v0
.end method

.method public getHeaderTextSize()I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzcrp:I

    return v0
.end method

.method public getLocation()Landroid/location/Location;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

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

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzanp:Ljava/lang/String;

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method zzdd()Lcom/google/android/gms/ads/internal/client/zzad;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest;->zzaic:Lcom/google/android/gms/ads/internal/client/zzad;

    return-object v0
.end method

###### Class com.google.android.gms.ads.search.SearchAdRequest.AnonymousClass1 (com.google.android.gms.ads.search.SearchAdRequest$1)
.class synthetic Lcom/google/android/gms/ads/search/SearchAdRequest$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.google.android.gms.ads.search.SearchAdRequest.Builder (com.google.android.gms.ads.search.SearchAdRequest$Builder)
.class public final Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/ads/search/SearchAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private final zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

.field private zzanp:Ljava/lang/String;

.field private zzcre:I

.field private zzcrf:I

.field private zzcrg:I

.field private zzcrh:I

.field private zzcri:I

.field private zzcrj:I

.field private zzcrk:I

.field private zzcrl:Ljava/lang/String;

.field private zzcrm:I

.field private zzcrn:Ljava/lang/String;

.field private zzcro:I

.field private zzcrp:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzad$zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrj:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcre:I

    return v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->mBackgroundColor:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrf:I

    return v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrg:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrh:I

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcri:I

    return v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrj:I

    return v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrk:I

    return v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrm:I

    return v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcro:I

    return v0
.end method

.method static synthetic zzm(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)I
    .registers 2

    iget v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrp:I

    return v0
.end method

.method static synthetic zzn(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzanp:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzo(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;)Lcom/google/android/gms/ads/internal/client/zzad$zza;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    return-object v0
.end method


# virtual methods
.method public addCustomEventExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
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
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzb(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addNetworkExtras(Lcom/google/android/gms/ads/mediation/NetworkExtras;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Lcom/google/android/gms/ads/mediation/NetworkExtras;)V

    return-object p0
.end method

.method public addNetworkExtrasBundle(Ljava/lang/Class;Landroid/os/Bundle;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">;",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zza(Ljava/lang/Class;Landroid/os/Bundle;)V

    return-object p0
.end method

.method public addTestDevice(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzag(Ljava/lang/String;)V

    return-object p0
.end method

.method public build()Lcom/google/android/gms/ads/search/SearchAdRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/ads/search/SearchAdRequest;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/search/SearchAdRequest;-><init>(Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;Lcom/google/android/gms/ads/search/SearchAdRequest$1;)V

    return-object v0
.end method

.method public setAnchorTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcre:I

    return-object p0
.end method

.method public setBackgroundColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4

    const/4 v1, 0x0

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->mBackgroundColor:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrf:I

    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrg:I

    return-object p0
.end method

.method public setBackgroundGradient(II)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 4

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->mBackgroundColor:I

    iput p2, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrf:I

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrg:I

    return-object p0
.end method

.method public setBorderColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrh:I

    return-object p0
.end method

.method public setBorderThickness(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcri:I

    return-object p0
.end method

.method public setBorderType(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrj:I

    return-object p0
.end method

.method public setCallButtonColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrk:I

    return-object p0
.end method

.method public setCustomChannels(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrl:Ljava/lang/String;

    return-object p0
.end method

.method public setDescriptionTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrm:I

    return-object p0
.end method

.method public setFontFace(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrn:Ljava/lang/String;

    return-object p0
.end method

.method public setHeaderTextColor(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcro:I

    return-object p0
.end method

.method public setHeaderTextSize(I)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzcrp:I

    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzb(Landroid/location/Location;)V

    return-object p0
.end method

.method public setQuery(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzanp:Ljava/lang/String;

    return-object p0
.end method

.method public setRequestAgent(Ljava/lang/String;)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzak(Ljava/lang/String;)V

    return-object p0
.end method

.method public tagForChildDirectedTreatment(Z)Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/ads/search/SearchAdRequest$Builder;->zzaid:Lcom/google/android/gms/ads/internal/client/zzad$zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/ads/internal/client/zzad$zza;->zzn(Z)V

    return-object p0
.end method
