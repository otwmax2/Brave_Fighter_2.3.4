###### Class com.facebook.share.model.ShareOpenGraphAction (com.facebook.share.model.ShareOpenGraphAction)
.class public final Lcom/facebook/share/model/ShareOpenGraphAction;
.super Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.source "ShareOpenGraphAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphAction;",
        "Lcom/facebook/share/model/ShareOpenGraphAction$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/share/model/ShareOpenGraphAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 56
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction$1;

    invoke-direct {v0}, Lcom/facebook/share/model/ShareOpenGraphAction$1;-><init>()V

    sput-object v0, Lcom/facebook/share/model/ShareOpenGraphAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Landroid/os/Parcel;)V

    .line 43
    return-void
.end method

.method private constructor <init>(Lcom/facebook/share/model/ShareOpenGraphAction$Builder;)V
    .registers 2
    .param p1, "builder"    # Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;-><init>(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/share/model/ShareOpenGraphAction$Builder;Lcom/facebook/share/model/ShareOpenGraphAction$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    .param p2, "x1"    # Lcom/facebook/share/model/ShareOpenGraphAction$1;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction;-><init>(Lcom/facebook/share/model/ShareOpenGraphAction$Builder;)V

    return-void
.end method


# virtual methods
.method public getActionType()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const-string v0, "og:type"

    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphAction;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.ShareOpenGraphAction.AnonymousClass1 (com.facebook.share.model.ShareOpenGraphAction$1)
.class final Lcom/facebook/share/model/ShareOpenGraphAction$1;
.super Ljava/lang/Object;
.source "ShareOpenGraphAction.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphAction;
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
        "Lcom/facebook/share/model/ShareOpenGraphAction;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphAction;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 59
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    invoke-direct {v0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/share/model/ShareOpenGraphAction;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Lcom/facebook/share/model/ShareOpenGraphAction;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$1;->newArray(I)[Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    return-object v0
.end method

###### Class com.facebook.share.model.ShareOpenGraphAction.Builder (com.facebook.share.model.ShareOpenGraphAction$Builder)
.class public final Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
.super Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
.source "ShareOpenGraphAction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder",
        "<",
        "Lcom/facebook/share/model/ShareOpenGraphAction;",
        "Lcom/facebook/share/model/ShareOpenGraphAction$Builder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_TYPE_KEY:Ljava/lang/String; = "og:type"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/facebook/share/model/ShareOpenGraphAction;
    .registers 3

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/share/model/ShareOpenGraphAction;-><init>(Lcom/facebook/share/model/ShareOpenGraphAction$Builder;Lcom/facebook/share/model/ShareOpenGraphAction$1;)V

    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->build()Lcom/facebook/share/model/ShareOpenGraphAction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 70
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method readFrom(Landroid/os/Parcel;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 102
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphAction;

    .line 102
    invoke-virtual {p0, v0}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    .registers 4
    .param p1, "model"    # Lcom/facebook/share/model/ShareOpenGraphAction;

    .prologue
    .line 92
    if-nez p1, :cond_3

    .line 97
    .end local p0    # "this":Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    :goto_2
    return-object p0

    .line 96
    .restart local p0    # "this":Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    :cond_3
    invoke-super {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object v0

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    .line 97
    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphAction;->getActionType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->setActionType(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object p0

    goto :goto_2
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 3

    .prologue
    .line 70
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphAction;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphAction;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setActionType(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphAction$Builder;
    .registers 3
    .param p1, "actionType"    # Ljava/lang/String;

    .prologue
    .line 81
    const-string v0, "og:type"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/share/model/ShareOpenGraphAction$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .line 82
    return-object p0
.end method
