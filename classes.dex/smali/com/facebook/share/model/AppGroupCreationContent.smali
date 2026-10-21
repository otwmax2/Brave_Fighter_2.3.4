###### Class com.facebook.share.model.AppGroupCreationContent (com.facebook.share.model.AppGroupCreationContent)
.class public final Lcom/facebook/share/model/AppGroupCreationContent;
.super Ljava/lang/Object;
.source "AppGroupCreationContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/AppGroupCreationContent$Builder;,
        Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/AppGroupCreationContent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final description:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 83
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$1;

    invoke-direct {v0}, Lcom/facebook/share/model/AppGroupCreationContent$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->name:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->description:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->access$000(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->name:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->access$100(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->description:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->access$200(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 37
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/AppGroupCreationContent$Builder;Lcom/facebook/share/model/AppGroupCreationContent$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/AppGroupCreationContent$1;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent;-><init>(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getAppGroupPrivacy()Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent;->privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 80
    return-void
.end method

###### Class com.facebook.share.model.AppGroupCreationContent.AnonymousClass1 (com.facebook.share.model.AppGroupCreationContent$1)
.class final Lcom/facebook/share/model/AppGroupCreationContent$1;
.super Ljava/lang/Object;
.source "AppGroupCreationContent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppGroupCreationContent;
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
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppGroupCreationContent;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/AppGroupCreationContent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/AppGroupCreationContent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 90
    new-array v0, p1, [Lcom/facebook/share/model/AppGroupCreationContent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent$1;->newArray(I)[Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.AppGroupCreationContent.AppGroupPrivacy (com.facebook.share.model.AppGroupCreationContent$AppGroupPrivacy)
.class public final enum Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
.super Ljava/lang/Enum;
.source "AppGroupCreationContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppGroupCreationContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppGroupPrivacy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

.field public static final enum Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

.field public static final enum Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    const-string v1, "Open"

    invoke-direct {v0, v1, v2}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 106
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    const-string v1, "Closed"

    invoke-direct {v0, v1, v3}, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    sget-object v1, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Open:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->Closed:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    const-class v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object v0
.end method

.method public static values()[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .registers 1

    .prologue
    .line 97
    sget-object v0, Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->$VALUES:[Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    invoke-virtual {v0}, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object v0
.end method

###### Class com.facebook.share.model.AppGroupCreationContent.Builder (com.facebook.share.model.AppGroupCreationContent$Builder)
.class public Lcom/facebook/share/model/AppGroupCreationContent$Builder;
.super Ljava/lang/Object;
.source "AppGroupCreationContent.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/AppGroupCreationContent;
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
        "Lcom/facebook/share/model/AppGroupCreationContent;",
        "Lcom/facebook/share/model/AppGroupCreationContent$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private description:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->description:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/share/model/AppGroupCreationContent$Builder;)Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/AppGroupCreationContent;
    .registers 3

    .prologue
    .line 153
    new-instance v0, Lcom/facebook/share/model/AppGroupCreationContent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/AppGroupCreationContent;-><init>(Lcom/facebook/share/model/AppGroupCreationContent$Builder;Lcom/facebook/share/model/AppGroupCreationContent$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->build()Lcom/facebook/share/model/AppGroupCreationContent;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/AppGroupCreationContent;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    .registers 4
    .param p1, "content"    # Lcom/facebook/share/model/AppGroupCreationContent;

    .prologue
    .line 159
    if-nez p1, :cond_3

    .line 165
    .end local p0    # "this":Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    :goto_2
    return-object p0

    .line 163
    .restart local p0    # "this":Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    :cond_3
    invoke-virtual {p1}, Lcom/facebook/share/model/AppGroupCreationContent;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setName(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {p1}, Lcom/facebook/share/model/AppGroupCreationContent;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setDescription(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/facebook/share/model/AppGroupCreationContent;->getAppGroupPrivacy()Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->setAppGroupPrivacy(Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 112
    check-cast p1, Lcom/facebook/share/model/AppGroupCreationContent;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->readFrom(Lcom/facebook/share/model/AppGroupCreationContent;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setAppGroupPrivacy(Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    .registers 2
    .param p1, "privacy"    # Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->privacy:Lcom/facebook/share/model/AppGroupCreationContent$AppGroupPrivacy;

    .line 148
    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->description:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/share/model/AppGroupCreationContent$Builder;
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/facebook/share/model/AppGroupCreationContent$Builder;->name:Ljava/lang/String;

    .line 126
    return-object p0
.end method
