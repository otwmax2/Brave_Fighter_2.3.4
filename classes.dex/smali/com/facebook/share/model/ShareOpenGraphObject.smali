###### Class com.facebook.share.model.ShareOpenGraphObject (com.facebook.share.model.ShareOpenGraphObject)
.class public final Lcom/facebook/share/model/ShareOpenGraphObject;
.super Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.source "ShareOpenGraphObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphObject;",
        "Lcom/facebook/share/model/ShareOpenGraphObject$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphObject$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphObject$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareOpenGraphObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Landroid/os/Parcel;)V

    .line 44
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareOpenGraphObject$Builder;)V
    .registers 2
    .param p1, "builder"    # Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V

    .line 40
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareOpenGraphObject$Builder;Lcom/facebook/share/model/ShareOpenGraphObject$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareOpenGraphObject$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphObject;-><init>(Lcom/facebook/share/model/ShareOpenGraphObject$Builder;)V

    return-void
.end method

###### Class com.facebook.share.model.ShareOpenGraphObject.AnonymousClass1 (com.facebook.share.model.ShareOpenGraphObject$1)
.class final Lcom/facebook/share/model/ShareOpenGraphObject$1;
.super Ljava/lang/Object;
.source "ShareOpenGraphObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphObject;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareOpenGraphObject;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareOpenGraphObject;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 54
    new-array v0, p1, [Lcom/facebook/share/model/ShareOpenGraphObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 48
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphObject$1;->newArray(I)[Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.ShareOpenGraphObject.Builder (com.facebook.share.model.ShareOpenGraphObject$Builder)
.class public final Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
.super Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
.source "ShareOpenGraphObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphObject;",
        "Lcom/facebook/share/model/ShareOpenGraphObject$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;-><init>()V

    .line 65
    const-string v0, "fbsdk:create_object"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->putBoolean(Ljava/lang/String;Z)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 66
    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareOpenGraphObject;
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphObject;-><init>(Lcom/facebook/share/model/ShareOpenGraphObject$Builder;Lcom/facebook/share/model/ShareOpenGraphObject$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphObject;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphObject$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 74
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 76
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 75
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .line 74
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject$Builder;

    return-object v0
.end method
