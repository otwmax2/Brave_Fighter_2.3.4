###### Class com.facebook.Profile (com.facebook.Profile)
.class public final Lcom/facebook/Profile;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_NAME_KEY:Ljava/lang/String; = "first_name"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final LAST_NAME_KEY:Ljava/lang/String; = "last_name"

.field private static final LINK_URI_KEY:Ljava/lang/String; = "link_uri"

.field private static final MIDDLE_NAME_KEY:Ljava/lang/String; = "middle_name"

.field private static final NAME_KEY:Ljava/lang/String; = "name"


# instance fields
.field private final firstName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final lastName:Ljava/lang/String;

.field private final linkUri:Landroid/net/Uri;

.field private final middleName:Ljava/lang/String;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 300
    new-instance v0, Lcom/facebook/Profile$2;

    invoke-direct {v0}, Lcom/facebook/Profile$2;-><init>()V

    sput-object v0, Lcom/facebook/Profile;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 282
    .local v0, "linkUriString":Ljava/lang/String;
    if-nez v0, :cond_2b

    const/4 v1, 0x0

    :goto_28
    iput-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 283
    return-void

    .line 282
    :cond_2b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_28
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/facebook/Profile$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/facebook/Profile$1;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 8
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "middleName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "lastName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "linkUri"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "id"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iput-object p1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 136
    iput-object p2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 137
    iput-object p3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 138
    iput-object p4, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 139
    iput-object p5, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 140
    iput-object p6, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 141
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    const-string v2, "id"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    .line 267
    const-string v2, "first_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 268
    const-string v2, "middle_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 269
    const-string v2, "last_name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 270
    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 271
    const-string v2, "link_uri"

    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "linkUriString":Ljava/lang/String;
    if-nez v0, :cond_37

    :goto_34
    iput-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 273
    return-void

    .line 272
    :cond_37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_34
.end method

.method public static fetchProfileForCurrentAccessToken()V
    .registers 3

    .prologue
    .line 79
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v0

    .line 80
    .local v0, "accessToken":Lcom/facebook/AccessToken;
    if-nez v0, :cond_b

    .line 81
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 110
    :goto_a
    return-void

    .line 85
    :cond_b
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/Profile$1;

    invoke-direct {v2}, Lcom/facebook/Profile$1;-><init>()V

    invoke-static {v1, v2}, Lcom/facebook/internal/Utility;->getGraphMeRequestWithCacheAsync(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V

    goto :goto_a
.end method

.method public static getCurrentProfile()Lcom/facebook/Profile;
    .registers 1

    .prologue
    .line 59
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ProfileManager;->getCurrentProfile()Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public static setCurrentProfile(Lcom/facebook/Profile;)V
    .registers 2
    .param p0, "profile"    # Lcom/facebook/Profile;

    .prologue
    .line 70
    invoke-static {}, Lcom/facebook/ProfileManager;->getInstance()Lcom/facebook/ProfileManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/facebook/ProfileManager;->setCurrentProfile(Lcom/facebook/Profile;)V

    .line 71
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 287
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-ne p0, p1, :cond_5

    .line 221
    :cond_4
    :goto_4
    return v1

    .line 210
    :cond_5
    instance-of v3, p1, Lcom/facebook/Profile;

    if-nez v3, :cond_b

    move v1, v2

    .line 211
    goto :goto_4

    :cond_b
    move-object v0, p1

    .line 214
    check-cast v0, Lcom/facebook/Profile;

    .line 216
    .local v0, "o":Lcom/facebook/Profile;
    iget-object v3, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v3, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_22
    iget-object v3, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget-object v3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-nez v3, :cond_36

    iget-object v3, v0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_36
    iget-object v3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    .line 218
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget-object v3, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-nez v3, :cond_4a

    iget-object v3, v0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_4a
    iget-object v3, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-nez v3, :cond_5e

    iget-object v3, v0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_5e
    iget-object v3, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    .line 220
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    iget-object v3, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez v3, :cond_72

    iget-object v3, v0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v3, :cond_4

    move v1, v2

    goto :goto_4

    :cond_72
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    iget-object v2, v0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    .line 221
    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_4
.end method

.method public getFirstName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProfilePictureUri(II)Landroid/net/Uri;
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/facebook/internal/ImageRequest;->getProfilePictureUri(Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 226
    const/16 v0, 0x11

    .line 228
    .local v0, "result":I
    iget-object v1, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 229
    iget-object v1, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    if-eqz v1, :cond_18

    .line 230
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 232
    :cond_18
    iget-object v1, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 233
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 235
    :cond_26
    iget-object v1, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 236
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 238
    :cond_34
    iget-object v1, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    if-eqz v1, :cond_42

    .line 239
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 241
    :cond_42
    iget-object v1, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v1, :cond_50

    .line 242
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 245
    :cond_50
    return v0
.end method

.method toJSONObject()Lorg/json/JSONObject;
    .registers 5

    .prologue
    .line 249
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 251
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v2, "id"

    iget-object v3, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 252
    const-string v2, "first_name"

    iget-object v3, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 253
    const-string v2, "middle_name"

    iget-object v3, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v2, "last_name"

    iget-object v3, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 255
    const-string v2, "name"

    iget-object v3, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    iget-object v2, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-eqz v2, :cond_37

    .line 257
    const-string v2, "link_uri"

    iget-object v3, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_37
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_37} :catch_38

    .line 262
    :cond_37
    :goto_37
    return-object v0

    .line 259
    :catch_38
    move-exception v1

    .line 260
    .local v1, "object":Lorg/json/JSONException;
    const/4 v0, 0x0

    goto :goto_37
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcom/facebook/Profile;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/facebook/Profile;->firstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/facebook/Profile;->middleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/facebook/Profile;->lastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/Profile;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    if-nez v0, :cond_22

    const/4 v0, 0x0

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    return-void

    .line 297
    :cond_22
    iget-object v0, p0, Lcom/facebook/Profile;->linkUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1e
.end method

###### Class com.facebook.Profile.AnonymousClass1 (com.facebook.Profile$1)
.class final Lcom/facebook/Profile$1;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Profile;->fetchProfileForCurrentAccessToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .registers 2
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 107
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 10
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .prologue
    .line 89
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, "id":Ljava/lang/String;
    if-nez v1, :cond_9

    .line 103
    :goto_8
    return-void

    .line 93
    :cond_9
    const-string v2, "link"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "link":Ljava/lang/String;
    new-instance v0, Lcom/facebook/Profile;

    const-string v2, "first_name"

    .line 96
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "middle_name"

    .line 97
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "last_name"

    .line 98
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    .line 99
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v7, :cond_36

    .line 100
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    :goto_2f
    invoke-direct/range {v0 .. v6}, Lcom/facebook/Profile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 102
    .local v0, "profile":Lcom/facebook/Profile;
    invoke-static {v0}, Lcom/facebook/Profile;->setCurrentProfile(Lcom/facebook/Profile;)V

    goto :goto_8

    .line 100
    .end local v0    # "profile":Lcom/facebook/Profile;
    :cond_36
    const/4 v6, 0x0

    goto :goto_2f
.end method

###### Class com.facebook.Profile.AnonymousClass2 (com.facebook.Profile$2)
.class final Lcom/facebook/Profile$2;
.super Ljava/lang/Object;
.source "Profile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/Profile;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 304
    new-instance v0, Lcom/facebook/Profile;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/Profile;-><init>(Landroid/os/Parcel;Lcom/facebook/Profile$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/facebook/Profile$2;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/Profile;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 309
    new-array v0, p1, [Lcom/facebook/Profile;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 300
    invoke-virtual {p0, p1}, Lcom/facebook/Profile$2;->newArray(I)[Lcom/facebook/Profile;

    move-result-object v0

    return-object v0
.end method
