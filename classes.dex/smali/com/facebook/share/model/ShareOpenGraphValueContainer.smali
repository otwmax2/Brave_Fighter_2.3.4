###### Class com.facebook.share.model.ShareOpenGraphValueContainer (com.facebook.share.model.ShareOpenGraphValueContainer)
.class public abstract Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.super Ljava/lang/Object;
.source "ShareOpenGraphValueContainer.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer;",
        "E:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModel;"
    }
.end annotation


# instance fields
.field private final bundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 47
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-class v0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    .line 49
    return-void
.end method

.method protected constructor <init>(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder",
            "<TP;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    .local p1, "builder":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->access$000(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    .line 45
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 239
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 58
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 68
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 78
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getBundle()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 227
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # D

    .prologue
    .line 88
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 98
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 108
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 118
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .prologue
    .line 128
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 138
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphObject;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 147
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v1, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local v0    # "value":Ljava/lang/Object;
    :goto_c
    return-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getObjectArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v3, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 159
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez v1, :cond_a

    .line 160
    const/4 v2, 0x0

    .line 168
    :cond_9
    return-object v2

    .line 162
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/ShareOpenGraphObject;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 164
    .local v0, "item":Landroid/os/Parcelable;
    instance-of v4, v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    if-eqz v4, :cond_13

    .line 165
    check-cast v0, Lcom/facebook/share/model/ShareOpenGraphObject;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public getPhoto(Ljava/lang/String;)Lcom/facebook/share/model/SharePhoto;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v1, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 179
    .local v0, "value":Landroid/os/Parcelable;
    instance-of v1, v0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v1, :cond_d

    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .end local v0    # "value":Landroid/os/Parcelable;
    :goto_c
    return-object v0

    .restart local v0    # "value":Landroid/os/Parcelable;
    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getPhotoArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v3, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v3, p1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 190
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez v1, :cond_a

    .line 191
    const/4 v2, 0x0

    .line 199
    :cond_9
    return-object v2

    .line 193
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/SharePhoto;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 195
    .local v0, "item":Landroid/os/Parcelable;
    instance-of v4, v0, Lcom/facebook/share/model/SharePhoto;

    if-eqz v4, :cond_13

    .line 196
    check-cast v0, Lcom/facebook/share/model/SharePhoto;

    .end local v0    # "item":Landroid/os/Parcelable;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 209
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
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

    .prologue
    .line 235
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 243
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 244
    return-void
.end method

###### Class com.facebook.share.model.ShareOpenGraphValueContainer.Builder (com.facebook.share.model.ShareOpenGraphValueContainer$Builder)
.class public abstract Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
.super Ljava/lang/Object;
.source "ShareOpenGraphValueContainer.java"

# interfaces
.implements Lcom/facebook/share/model/ShareModelBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/share/model/ShareOpenGraphValueContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer;",
        "E:",
        "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/share/model/ShareModelBuilder",
        "<TP;TE;>;"
    }
.end annotation


# instance fields
.field private bundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 249
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;)Landroid/os/Bundle;
    .registers 2
    .param p0, "x0"    # Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    return-object v0
.end method


# virtual methods
.method public putBoolean(Ljava/lang/String;Z)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)TE;"
        }
    .end annotation

    .prologue
    .line 261
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 262
    return-object p0
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Z
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[Z)TE;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 273
    return-object p0
.end method

.method public putDouble(Ljava/lang/String;D)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)TE;"
        }
    .end annotation

    .prologue
    .line 283
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 284
    return-object p0
.end method

.method public putDoubleArray(Ljava/lang/String;[D)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [D
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[D)TE;"
        }
    .end annotation

    .prologue
    .line 294
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 295
    return-object p0
.end method

.method public putInt(Ljava/lang/String;I)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)TE;"
        }
    .end annotation

    .prologue
    .line 305
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    return-object p0
.end method

.method public putIntArray(Ljava/lang/String;[I)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[I)TE;"
        }
    .end annotation

    .prologue
    .line 316
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 317
    return-object p0
.end method

.method public putLong(Ljava/lang/String;J)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)TE;"
        }
    .end annotation

    .prologue
    .line 327
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 328
    return-object p0
.end method

.method public putLongArray(Ljava/lang/String;[J)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [J
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)TE;"
        }
    .end annotation

    .prologue
    .line 338
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 339
    return-object p0
.end method

.method public putObject(Ljava/lang/String;Lcom/facebook/share/model/ShareOpenGraphObject;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/facebook/share/model/ShareOpenGraphObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 349
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 350
    return-object p0
.end method

.method public putObjectArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/share/model/ShareOpenGraphObject;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/ShareOpenGraphObject;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 363
    return-object p0
.end method

.method public putPhoto(Ljava/lang/String;Lcom/facebook/share/model/SharePhoto;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/facebook/share/model/SharePhoto;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/share/model/SharePhoto;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 373
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    return-object p0
.end method

.method public putPhotoArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/facebook/share/model/SharePhoto;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 384
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/share/model/SharePhoto;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 385
    return-object p0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TE;"
        }
    .end annotation

    .prologue
    .line 395
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    return-object p0
.end method

.method public putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2    # Ljava/util/ArrayList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)TE;"
        }
    .end annotation

    .prologue
    .line 406
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p2, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 407
    return-object p0
.end method

.method public bridge synthetic readFrom(Lcom/facebook/share/model/ShareModel;)Lcom/facebook/share/model/ShareModelBuilder;
    .registers 3

    .prologue
    .line 249
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    check-cast p1, Lcom/facebook/share/model/ShareOpenGraphValueContainer;

    invoke-virtual {p0, p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public readFrom(Lcom/facebook/share/model/ShareOpenGraphValueContainer;)Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TE;"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, "this":Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;, "Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder<TP;TE;>;"
    .local p1, "model":Lcom/facebook/share/model/ShareOpenGraphValueContainer;, "TP;"
    if-eqz p1, :cond_b

    .line 413
    iget-object v0, p0, Lcom/facebook/share/model/ShareOpenGraphValueContainer$Builder;->bundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/facebook/share/model/ShareOpenGraphValueContainer;->getBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 415
    :cond_b
    return-object p0
.end method
