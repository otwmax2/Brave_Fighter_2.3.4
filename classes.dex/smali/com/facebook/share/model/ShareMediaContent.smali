###### Class com.facebook.share.model.ShareMediaContent (com.facebook.share.model.ShareMediaContent)
.class public final Lcom/facebook/share/model/ShareMediaContent;
.super Lcom/facebook/share/model/ShareContent;
.source "ShareMediaContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareMediaContent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent",
        "<",
        "Lcom/facebook/share/model/ShareMediaContent;",
        "Lcom/facebook/share/model/ShareMediaContent$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareMediaContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 67
    new-instance v0, Lcom/facebook/share/model/ShareMediaContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareMediaContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareMediaContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Landroid/os/Parcel;)V

    .line 42
    const-class v1, Lcom/facebook/share/model/ShareMedia;

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 42
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Lcom/facebook/share/model/ShareMedia;

    move-object v0, v1

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    .line 44
    .local v0, "shareMedia":[Lcom/facebook/share/model/ShareMedia;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/ShareMediaContent;->media:Ljava/util/List;

    .line 45
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareMediaContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareMediaContent$Builder;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareContent;-><init>(Lcom/facebook/share/model/ShareContent$Builder;)V

    .line 37
    invoke-static {p1}, Lcom/facebook/share/model/ShareMediaContent$Builder;->access$000(Lcom/facebook/share/model/ShareMediaContent$Builder;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareMediaContent;->media:Ljava/util/List;

    .line 38
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareMediaContent$Builder;Lcom/facebook/share/model/ShareMediaContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareMediaContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareMediaContent$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareMediaContent;-><init>(Lcom/facebook/share/model/ShareMediaContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getMedia()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/share/model/ShareMediaContent;->media:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 62
    invoke-super {p0, p1, p2}, Lcom/facebook/share/model/ShareContent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 63
    iget-object v0, p0, Lcom/facebook/share/model/ShareMediaContent;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    check-cast v0, [Lcom/facebook/share/model/ShareMedia;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 64
    return-void
.end method

###### Class com.facebook.share.model.ShareMediaContent.AnonymousClass1 (com.facebook.share.model.ShareMediaContent$1)
.class final Lcom/facebook/share/model/ShareMediaContent$1;
.super Ljava/lang/Object;
.source "ShareMediaContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMediaContent;
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
        "Lcom/facebook/share/model/ShareMediaContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMediaContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    new-instance v0, Lcom/facebook/share/model/ShareMediaContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareMediaContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMediaContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareMediaContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 73
    new-array v0, p1, [Lcom/facebook/share/model/ShareMediaContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 67
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMediaContent$1;->newArray(I)[Lcom/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.ShareMediaContent.Builder (com.facebook.share.model.ShareMediaContent$Builder)
.class public Lcom/facebook/share/model/ShareMediaContent$Builder;
.super Lcom/facebook/share/model/ShareContent$Builder;
.source "ShareMediaContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareMediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareContent$Builder",
        "<",
        "Lcom/facebook/share/model/ShareMediaContent;",
        "Lcom/facebook/share/model/ShareMediaContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private final media:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/share/model/ShareMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/facebook/share/model/ShareContent$Builder;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareMediaContent$Builder;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareMediaContent$Builder;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addMedia(Ljava/util/List;)Lcom/facebook/share/model/ShareMediaContent$Builder;
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
            "Lcom/facebook/share/model/ShareMedia;",
            ">;)",
            "Lcom/facebook/share/model/ShareMediaContent$Builder;"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    if-eqz p1, :cond_16

    .line 114
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMedia;

    .line 115
    .local v0, "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareMediaContent$Builder;->addMedium(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMediaContent$Builder;

    goto :goto_6

    .line 118
    .end local v0    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_16
    return-object p0
.end method

.method public addMedium(Lcom/facebook/share/model/ShareMedia;)Lcom/facebook/share/model/ShareMediaContent$Builder;
    .registers 5
    .param p1, "medium"    # Lcom/facebook/share/model/ShareMedia;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 90
    if-eqz p1, :cond_1a

    .line 92
    instance-of v1, p1, Lcom/facebook/share/model/SharePhoto;

    if-eqz v1, :cond_1b

    .line 93
    new-instance v1, Lcom/facebook/share/model/SharePhoto$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/SharePhoto$Builder;-><init>()V

    check-cast p1, Lcom/facebook/share/model/SharePhoto;

    .end local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {v1, p1}, Lcom/facebook/share/model/SharePhoto$Builder;->readFrom(Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/SharePhoto$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/SharePhoto$Builder;->build()Lcom/facebook/share/model/SharePhoto;

    move-result-object v0

    .line 100
    .local v0, "mediumToAdd":Lcom/facebook/share/model/ShareMedia;
    :goto_15
    iget-object v1, p0, Lcom/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .end local v0    # "mediumToAdd":Lcom/facebook/share/model/ShareMedia;
    :cond_1a
    return-object p0

    .line 94
    .restart local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_1b
    instance-of v1, p1, Lcom/facebook/share/model/ShareVideo;

    if-eqz v1, :cond_2f

    .line 95
    new-instance v1, Lcom/facebook/share/model/ShareVideo$Builder;

    invoke-direct {v1}, Lcom/facebook/share/model/ShareVideo$Builder;-><init>()V

    check-cast p1, Lcom/facebook/share/model/ShareVideo;

    .end local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    invoke-virtual {v1, p1}, Lcom/facebook/share/model/ShareVideo$Builder;->readFrom(Lcom/facebook/share/model/ShareVideo;)Lcom/facebook/share/model/ShareVideo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/share/model/ShareVideo$Builder;->build()Lcom/facebook/share/model/ShareVideo;

    move-result-object v0

    .restart local v0    # "mediumToAdd":Lcom/facebook/share/model/ShareMedia;
    goto :goto_15

    .line 97
    .end local v0    # "mediumToAdd":Lcom/facebook/share/model/ShareMedia;
    .restart local p1    # "medium":Lcom/facebook/share/model/ShareMedia;
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "medium must be either a SharePhoto or ShareVideo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public build()Lcom/facebook/share/model/ShareMediaContent;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Lcom/facebook/share/model/ShareMediaContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareMediaContent;-><init>(Lcom/facebook/share/model/ShareMediaContent$Builder;Lcom/facebook/share/model/ShareMediaContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareMediaContent$Builder;->build()Lcom/facebook/share/model/ShareMediaContent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;
    .registers 3

    .prologue
    .line 80
    check-cast p1, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMediaContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMediaContent;)Lcom/facebook/share/model/ShareMediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareMediaContent;)Lcom/facebook/share/model/ShareMediaContent$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareMediaContent;

    .prologue
    .line 128
    if-nez p1, :cond_3

    .line 133
    .end local p0    # "this":Lcom/facebook/share/model/ShareMediaContent$Builder;
    :goto_2
    return-object p0

    .line 132
    .restart local p0    # "this":Lcom/facebook/share/model/ShareMediaContent$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareContent$Builder;->readFrom(Lcom/facebook/share/model/ShareContent;)Lcom/facebook/share/model/ShareContent$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareMediaContent$Builder;

    .line 133
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareMediaContent;->getMedia()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareMediaContent$Builder;->addMedia(Ljava/util/List;)Lcom/facebook/share/model/ShareMediaContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 80
    check-cast p1, Lcom/facebook/share/model/ShareMediaContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMediaContent$Builder;->readFrom(Lcom/facebook/share/model/ShareMediaContent;)Lcom/facebook/share/model/ShareMediaContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setMedia(Ljava/util/List;)Lcom/facebook/share/model/ShareMediaContent$Builder;
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
            "Lcom/facebook/share/model/ShareMedia;",
            ">;)",
            "Lcom/facebook/share/model/ShareMediaContent$Builder;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "media":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/share/model/ShareMedia;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareMediaContent$Builder;->media:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareMediaContent$Builder;->addMedia(Ljava/util/List;)Lcom/facebook/share/model/ShareMediaContent$Builder;

    .line 146
    return-object p0
.end method
