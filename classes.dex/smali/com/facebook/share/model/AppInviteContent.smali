###### Class com.facebook.share.model.AppInviteContent (com.facebook.share.model.AppInviteContent)
.class public final Lcom/facebook/share/model/AppInviteContent;
.super Ljava/lang/Object;
.source "AppInviteContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/AppInviteContent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/AppInviteContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final applinkUrl:Ljava/lang/String;

.field private final destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field private final previewImageUrl:Ljava/lang/String;

.field private final promoCode:Ljava/lang/String;

.field private final promoText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 116
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/AppInviteContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "destinationString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2c

    .line 52
    invoke-static {v0}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/share/model/AppInviteContent;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 57
    :goto_2b
    return-void

    .line 55
    :cond_2c
    sget-object v1, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    iput-object v1, p0, Lcom/facebook/share/model/AppInviteContent;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    goto :goto_2b
.end method

.method private constructor <init>(Lcom/facebook/share/model/AppInviteContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$000(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$100(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    .line 39
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$200(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$300(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->access$400(Lcom/facebook/share/model/AppInviteContent$Builder;)Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 42
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/AppInviteContent$Builder;Lcom/facebook/share/model/AppInviteContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/AppInviteContent$1;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Lcom/facebook/share/model/AppInviteContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public getApplinkUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    if-eqz v0, :cond_7

    .line 97
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 99
    :goto_6
    return-object v0

    :cond_7
    sget-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    goto :goto_6
.end method

.method public getPreviewImageUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotionText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 108
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->applinkUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->previewImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->promoCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    invoke-virtual {v0}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    return-void
.end method

###### Class com.facebook.share.model.AppInviteContent.AnonymousClass1 (com.facebook.share.model.AppInviteContent$1)
.class final Lcom/facebook/share/model/AppInviteContent$1;
.super Ljava/lang/Object;
.source "AppInviteContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent;
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
        "Lcom/facebook/share/model/AppInviteContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppInviteContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 119
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppInviteContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/AppInviteContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 123
    new-array v0, p1, [Lcom/facebook/share/model/AppInviteContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppInviteContent$1;->newArray(I)[Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.AppInviteContent.Builder (com.facebook.share.model.AppInviteContent$Builder)
.class public Lcom/facebook/share/model/AppInviteContent$Builder;
.super Ljava/lang/Object;
.source "AppInviteContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<",
        "Lcom/facebook/share/model/AppInviteContent;",
        "Lcom/facebook/share/model/AppInviteContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private applinkUrl:Ljava/lang/String;

.field private destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field private previewImageUrl:Ljava/lang/String;

.field private promoCode:Ljava/lang/String;

.field private promoText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->applinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->previewImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/share/model/AppInviteContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/share/model/AppInviteContent$Builder;)Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppInviteContent$Builder;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-object v0
.end method

.method private isAlphanumericWithSpaces(Ljava/lang/String;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 255
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 257
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-static {v0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 258
    const/4 v2, 0x0

    .line 261
    .end local v0    # "c":C
    :goto_1e
    return v2

    .line 255
    .restart local v0    # "c":C
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "c":C
    :cond_22
    const/4 v2, 0x1

    goto :goto_1e
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/AppInviteContent;
    .registers 3

    .prologue
    .line 238
    new-instance v0, Lcom/facebook/share/model/AppInviteContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/AppInviteContent;-><init>(Lcom/facebook/share/model/AppInviteContent$Builder;Lcom/facebook/share/model/AppInviteContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/facebook/share/model/AppInviteContent$Builder;->build()Lcom/facebook/share/model/AppInviteContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .registers 5
    .param p1, "content"    # Lcom/facebook/share/model/AppInviteContent;

    .prologue
    .line 244
    if-nez p1, :cond_3

    .line 251
    .end local p0    # "this":Lcom/facebook/share/model/AppInviteContent$Builder;
    :goto_2
    return-object p0

    .line 248
    .restart local p0    # "this":Lcom/facebook/share/model/AppInviteContent$Builder;
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getApplinkUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/AppInviteContent$Builder;->setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 249
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getPreviewImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getPromotionText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getPromotionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/share/model/AppInviteContent$Builder;->setPromotionDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    .line 251
    invoke-virtual {p1}, Lcom/facebook/share/model/AppInviteContent;->getDestination()Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppInviteContent$Builder;->setDestination(Lcom/facebook/share/model/AppInviteContent$Builder$Destination;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 130
    check-cast p1, Lcom/facebook/share/model/AppInviteContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->readFrom(Lcom/facebook/share/model/AppInviteContent;)Lcom/facebook/share/model/AppInviteContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setApplinkUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .registers 2
    .param p1, "applinkUrl"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->applinkUrl:Ljava/lang/String;

    .line 166
    return-object p0
.end method

.method public setDestination(Lcom/facebook/share/model/AppInviteContent$Builder$Destination;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .registers 2
    .param p1, "destination"    # Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->destination:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 232
    return-object p0
.end method

.method public setPreviewImageUrl(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .registers 2
    .param p1, "previewImageUrl"    # Ljava/lang/String;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->previewImageUrl:Ljava/lang/String;

    .line 177
    return-object p0
.end method

.method public setPromotionDetails(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder;
    .registers 5
    .param p1, "promotionText"    # Ljava/lang/String;
    .param p2, "promotionCode"    # Ljava/lang/String;

    .prologue
    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 194
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x50

    if-le v0, v1, :cond_16

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion text, promotionText needs to be between1 and 80 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_16
    invoke-direct {p0, p1}, Lcom/facebook/share/model/AppInviteContent$Builder;->isAlphanumericWithSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion text, promotionText can only contain alphanumericcharacters and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 208
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3a

    .line 209
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion code, promotionCode can be between1 and 10 characters long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_3a
    invoke-direct {p0, p2}, Lcom/facebook/share/model/AppInviteContent$Builder;->isAlphanumericWithSpaces(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 215
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid promotion code, promotionCode can only contain alphanumeric characters and spaces."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "promotionCode cannot be specified without a valid promotionText"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :cond_56
    iput-object p2, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoCode:Ljava/lang/String;

    .line 226
    iput-object p1, p0, Lcom/facebook/share/model/AppInviteContent$Builder;->promoText:Ljava/lang/String;

    .line 227
    return-object p0
.end method

###### Class com.facebook.share.model.AppInviteContent.Builder.Destination (com.facebook.share.model.AppInviteContent$Builder$Destination)
.class public final enum Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
.super Ljava/lang/Enum;
.source "AppInviteContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppInviteContent$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Destination"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/model/AppInviteContent$Builder$Destination;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field public static final enum FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

.field public static final enum MESSENGER:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 140
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    const-string v1, "FACEBOOK"

    const-string v2, "facebook"

    invoke-direct {v0, v1, v3, v2}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 141
    new-instance v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    const-string v1, "MESSENGER"

    const-string v2, "messenger"

    invoke-direct {v0, v1, v4, v2}, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->MESSENGER:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    sget-object v1, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->FACEBOOK:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    aput-object v1, v0, v3

    sget-object v1, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->MESSENGER:Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    aput-object v1, v0, v4

    sput-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->$VALUES:[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 146
    iput-object p3, p0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->name:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 139
    const-class v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;
    .registers 1

    .prologue
    .line 139
    sget-object v0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->$VALUES:[Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    invoke-virtual {v0}, [Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/AppInviteContent$Builder$Destination;

    return-object v0
.end method


# virtual methods
.method public equalsName(Ljava/lang/String;)Z
    .registers 3
    .param p1, "otherName"    # Ljava/lang/String;

    .prologue
    .line 150
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/facebook/share/model/AppInviteContent$Builder$Destination;->name:Ljava/lang/String;

    return-object v0
.end method
