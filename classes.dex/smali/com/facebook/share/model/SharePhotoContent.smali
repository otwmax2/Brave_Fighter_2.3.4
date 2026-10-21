###### Class com.facebook.share.model.SharePhotoContent (com.facebook.share.model.SharePhotoContent)
.class public final Lcom/facebook/share/model/SharePhotoContent;
.super Lcom/facebook/share/model/ShareContent;
.source "SharePhotoContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/SharePhotoContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/SharePhotoContent;",
        "Lcom/facebook/share/model/SharePhotoContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/SharePhotoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhotoContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/SharePhotoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 47
    invoke-static {p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readPhotoListFrom(Landroid/os/Parcel;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    .line 48
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/SharePhotoContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/SharePhotoContent$Builder;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 41
    invoke-static {p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->access$000(Lcom/facebook/share/model/SharePhotoContent$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/SharePhotoContent$Builder;Lcom/facebook/share/model/SharePhotoContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/SharePhotoContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/SharePhotoContent$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/facebook/share/model/SharePhotoContent;-><init>(Lcom/facebook/share/model/SharePhotoContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getPhotos()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 65
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent;->photos:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/facebook/share/model/SharePhoto$Builder;->writePhotoListTo(Landroid/os/Parcel;ILjava/util/List;)V

    .line 66
    return-void
.end method

###### Class com.facebook.share.model.SharePhotoContent.AnonymousClass1 (com.facebook.share.model.SharePhotoContent$1)
.class final Lcom/facebook/share/model/SharePhotoContent$1;
.super Ljava/lang/Object;
.source "SharePhotoContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/SharePhotoContent;
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
        "Lcom/facebook/share/model/SharePhotoContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhotoContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 71
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/SharePhotoContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhotoContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/SharePhotoContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcom/facebook/share/model/SharePhotoContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 69
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhotoContent$1;->newArray(I)[Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.SharePhotoContent.Builder (com.facebook.share.model.SharePhotoContent$Builder)
.class public Lcom/facebook/share/model/SharePhotoContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "SharePhotoContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/SharePhotoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/SharePhotoContent;",
        "Lcom/facebook/share/model/SharePhotoContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/SharePhotoContent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/SharePhotoContent$Builder;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;
    .registers 4
    .param p1, "photo"    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    if-eqz p1, :cond_14

    .line 92
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    new-instance v1, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_14
    return-object p0
.end method

.method public addPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;
    .registers 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)",
            "Lcom/facebook/share/model/SharePhotoContent$Builder;"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    if-eqz p1, :cond_16

    .line 105
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .line 106
    .local v0, "photo":Lcom/facebook/share/model/SharePhoto;
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    goto :goto_6

    .line 109
    .end local v0    # "photo":Lcom/facebook/share/model/SharePhoto;
    :cond_16
    return-object p0
.end method

.method public build()Lcom/facebook/share/model/SharePhotoContent;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Lcom/facebook/share/model/SharePhotoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/SharePhotoContent;-><init>(Lcom/facebook/share/model/SharePhotoContent$Builder;Lcom/facebook/share/model/SharePhotoContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/facebook/share/model/SharePhotoContent$Builder;->build()Lcom/facebook/share/model/SharePhotoContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3

    .prologue
    .line 82
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/facebook/share/model/SharePhotoContent;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 82
    check-cast p1, Lcom/facebook/share/model/SharePhotoContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->readFrom(Lcom/facebook/share/model/SharePhotoContent;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/SharePhotoContent;)Lcom/facebook/share/model/SharePhotoContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/SharePhotoContent;

    .prologue
    .line 119
    if-nez p1, :cond_3

    .line 124
    .end local p0    # "this":Lcom/facebook/share/model/SharePhotoContent$Builder;
    :goto_2
    return-object p0

    .line 123
    .restart local p0    # "this":Lcom/facebook/share/model/SharePhotoContent$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/SharePhotoContent$Builder;

    .line 124
    invoke-virtual {p1}, Lcom/facebook/share/model/SharePhotoContent;->getPhotos()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;
    .registers 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)",
            "Lcom/facebook/share/model/SharePhotoContent$Builder;"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "photos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/SharePhoto;>;"
    iget-object v0, p0, Lcom/facebook/share/model/SharePhotoContent$Builder;->photos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 134
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/SharePhotoContent$Builder;->addPhotos(Ljava/util/List;)Lcom/facebook/share/model/SharePhotoContent$Builder;

    .line 135
    return-object p0
.end method
