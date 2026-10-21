###### Class com.facebook.share.model.ShareHashtag (com.facebook.share.model.ShareHashtag)
.class public Lcom/facebook/share/model/ShareHashtag;
.super Ljava/lang/Object;
.source "ShareHashtag.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareHashtag$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareHashtag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final hashtag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 60
    new-instance v0, Lcom/facebook/share/model/ShareHashtag$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareHashtag$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareHashtag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    .line 40
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareHashtag$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/ShareHashtag$Builder;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-static {p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->access$000(Lcom/facebook/share/model/ShareHashtag$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    .line 36
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareHashtag$Builder;Lcom/facebook/share/model/ShareHashtag$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareHashtag$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareHashtag$1;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareHashtag;-><init>(Lcom/facebook/share/model/ShareHashtag$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getHashtag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag;->hashtag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method

###### Class com.facebook.share.model.ShareHashtag.AnonymousClass1 (com.facebook.share.model.ShareHashtag$1)
.class final Lcom/facebook/share/model/ShareHashtag$1;
.super Ljava/lang/Object;
.source "ShareHashtag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareHashtag;
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
        "Lcom/facebook/share/model/ShareHashtag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareHashtag;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 62
    new-instance v0, Lcom/facebook/share/model/ShareHashtag;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareHashtag;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareHashtag$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareHashtag;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 66
    new-array v0, p1, [Lcom/facebook/share/model/ShareHashtag;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 60
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareHashtag$1;->newArray(I)[Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.ShareHashtag.Builder (com.facebook.share.model.ShareHashtag$Builder)
.class public Lcom/facebook/share/model/ShareHashtag$Builder;
.super Ljava/lang/Object;
.source "ShareHashtag.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareHashtag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/model/ShareHashtag;",
        "Lcom/facebook/share/model/ShareHashtag$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private hashtag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareHashtag$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareHashtag$Builder;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareHashtag;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Lcom/facebook/share/model/ShareHashtag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareHashtag;-><init>(Lcom/facebook/share/model/ShareHashtag$Builder;Lcom/facebook/share/model/ShareHashtag$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareHashtag$Builder;->build()Lcom/facebook/share/model/ShareHashtag;

    move-result-object v0

    return-object v0
.end method

.method public getHashtag()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareHashtag$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 104
    const-class v0, Lcom/facebook/share/model/ShareHashtag;

    .line 105
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareHashtag;

    .line 104
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareHashtag$Builder;->readFrom(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;
    .registers 3
    .param p1, "model"    # Lcom/facebook/share/model/ShareHashtag;

    .prologue
    .line 96
    if-nez p1, :cond_3

    .line 100
    .end local p0    # "this":Lcom/facebook/share/model/ShareHashtag$Builder;
    :goto_2
    return-object p0

    .restart local p0    # "this":Lcom/facebook/share/model/ShareHashtag$Builder;
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareHashtag;->getHashtag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareHashtag$Builder;->setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 73
    check-cast p1, Lcom/facebook/share/model/ShareHashtag;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareHashtag$Builder;->readFrom(Lcom/facebook/share/model/ShareHashtag;)Lcom/facebook/share/model/ShareHashtag$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setHashtag(Ljava/lang/String;)Lcom/facebook/share/model/ShareHashtag$Builder;
    .registers 2
    .param p1, "hashtag"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/facebook/share/model/ShareHashtag$Builder;->hashtag:Ljava/lang/String;

    .line 84
    return-object p0
.end method
