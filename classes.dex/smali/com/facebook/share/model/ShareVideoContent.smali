###### Class com.facebook.share.model.ShareVideoContent (com.facebook.share.model.ShareVideoContent)
.class public final Lcom/facebook/share/model/ShareVideoContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareVideoContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareVideoContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "Lcom/facebook/share/model/ShareVideoContent$Builder;",
        ">;",
        "Lcom/facebook/share/model/ShareModel;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareVideoContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final contentDescription:Ljava/lang/String;

.field private final contentTitle:Ljava/lang/String;

.field private final previewPhoto:Lcom/facebook/share/model/SharePhoto;

.field private final video:Lcom/facebook/share/model/ShareVideo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 111
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideoContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareVideoContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    .line 53
    new-instance v1, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    .line 54
    .local v0, "previewPhotoBuilder":Lcom/facebook/share/model/SharePhoto$Builder;
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->getImageUrl()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_24

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_3a

    .line 55
    :cond_24
    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    .line 59
    :goto_2a
    new-instance v1, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    .line 60
    return-void

    .line 57
    :cond_3a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    goto :goto_2a
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareVideoContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareVideoContent$Builder;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 43
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$000(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    .line 44
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$100(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$200(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    .line 46
    invoke-static {p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->access$300(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    .line 47
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareVideoContent$Builder;Lcom/facebook/share/model/ShareVideoContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareVideoContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareVideoContent$1;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareVideoContent;-><init>(Lcom/facebook/share/model/ShareVideoContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getContentTitle()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method public getVideo()Lcom/facebook/share/model/ShareVideo;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->contentTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 107
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent;->video:Lcom/facebook/share/model/ShareVideo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 108
    return-void
.end method

###### Class com.facebook.share.model.ShareVideoContent.AnonymousClass1 (com.facebook.share.model.ShareVideoContent$1)
.class final Lcom/facebook/share/model/ShareVideoContent$1;
.super Ljava/lang/Object;
.source "ShareVideoContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareVideoContent;
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
        "Lcom/facebook/share/model/ShareVideoContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideoContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 113
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareVideoContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideoContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareVideoContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 117
    new-array v0, p1, [Lcom/facebook/share/model/ShareVideoContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideoContent$1;->newArray(I)[Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.ShareVideoContent.Builder (com.facebook.share.model.ShareVideoContent$Builder)
.class public final Lcom/facebook/share/model/ShareVideoContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareVideoContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareVideoContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareVideoContent;",
        "Lcom/facebook/share/model/ShareVideoContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private contentTitle:Ljava/lang/String;

.field private previewPhoto:Lcom/facebook/share/model/SharePhoto;

.field private video:Lcom/facebook/share/model/ShareVideo;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent$Builder;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/ShareVideoContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent$Builder;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/SharePhoto;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent$Builder;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/ShareVideoContent$Builder;)Lcom/facebook/share/model/ShareVideo;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareVideoContent$Builder;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/facebook/share/model/ShareVideo;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareVideoContent;
    .registers 3

    .prologue
    .line 180
    new-instance v0, Lcom/facebook/share/model/ShareVideoContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareVideoContent;-><init>(Lcom/facebook/share/model/ShareVideoContent$Builder;Lcom/facebook/share/model/ShareVideoContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareVideoContent$Builder;->build()Lcom/facebook/share/model/ShareVideoContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3

    .prologue
    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->readFrom(Lcom/facebook/share/model/ShareVideoContent;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 124
    check-cast p1, Lcom/facebook/share/model/ShareVideoContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->readFrom(Lcom/facebook/share/model/ShareVideoContent;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareVideoContent;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareVideoContent;

    .prologue
    .line 185
    if-nez p1, :cond_3

    .line 193
    .end local p0    # "this":Lcom/facebook/share/model/ShareVideoContent$Builder;
    :goto_2
    return-object p0

    .line 189
    .restart local p0    # "this":Lcom/facebook/share/model/ShareVideoContent$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareVideoContent$Builder;

    .line 190
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getContentTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getPreviewPhoto()Lcom/facebook/share/model/SharePhoto;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setPreviewPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareVideoContent;->getVideo()Lcom/facebook/share/model/ShareVideo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareVideoContent$Builder;->setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public setContentDescription(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 137
    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentDescription:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/String;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .registers 2
    .param p1, "contentTitle"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->contentTitle:Ljava/lang/String;

    .line 148
    return-object p0
.end method

.method public setPreviewPhoto(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .registers 3
    .param p1, "previewPhoto"    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 157
    if-nez p1, :cond_6

    const/4 v0, 0x0

    .line 160
    :goto_3
    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->previewPhoto:Lcom/facebook/share/model/SharePhoto;

    .line 161
    return-object p0

    .line 157
    :cond_6
    new-instance v0, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    .line 160
    invoke-virtual {v0, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    goto :goto_3
.end method

.method public setVideo(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideoContent$Builder;
    .registers 3
    .param p1, "video"    # Lcom/facebook/share/model/ShareVideo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 170
    if-nez p1, :cond_3

    .line 175
    :goto_2
    return-object p0

    .line 174
    :cond_3
    new-instance v0, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareVideoContent$Builder;->video:Lcom/facebook/share/model/ShareVideo;

    goto :goto_2
.end method
