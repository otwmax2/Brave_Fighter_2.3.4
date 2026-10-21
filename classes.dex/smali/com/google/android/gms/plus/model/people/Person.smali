###### Class com.google.android.gms.plus.model.people.Person (com.google.android.gms.plus.model.people.Person)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Urls;,
        Lcom/google/android/gms/plus/model/people/Person$PlacesLived;,
        Lcom/google/android/gms/plus/model/people/Person$Organizations;,
        Lcom/google/android/gms/plus/model/people/Person$Name;,
        Lcom/google/android/gms/plus/model/people/Person$Image;,
        Lcom/google/android/gms/plus/model/people/Person$Cover;,
        Lcom/google/android/gms/plus/model/people/Person$AgeRange;,
        Lcom/google/android/gms/plus/model/people/Person$RelationshipStatus;,
        Lcom/google/android/gms/plus/model/people/Person$ObjectType;,
        Lcom/google/android/gms/plus/model/people/Person$Gender;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getAboutMe()Ljava/lang/String;
.end method

.method public abstract getAgeRange()Lcom/google/android/gms/plus/model/people/Person$AgeRange;
.end method

.method public abstract getBirthday()Ljava/lang/String;
.end method

.method public abstract getBraggingRights()Ljava/lang/String;
.end method

.method public abstract getCircledByCount()I
.end method

.method public abstract getCover()Lcom/google/android/gms/plus/model/people/Person$Cover;
.end method

.method public abstract getCurrentLocation()Ljava/lang/String;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getGender()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getImage()Lcom/google/android/gms/plus/model/people/Person$Image;
.end method

.method public abstract getLanguage()Ljava/lang/String;
.end method

.method public abstract getName()Lcom/google/android/gms/plus/model/people/Person$Name;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getObjectType()I
.end method

.method public abstract getOrganizations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlacesLived()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlusOneCount()I
.end method

.method public abstract getRelationshipStatus()I
.end method

.method public abstract getTagline()Ljava/lang/String;
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getUrls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/plus/model/people/Person$Urls;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAboutMe()Z
.end method

.method public abstract hasAgeRange()Z
.end method

.method public abstract hasBirthday()Z
.end method

.method public abstract hasBraggingRights()Z
.end method

.method public abstract hasCircledByCount()Z
.end method

.method public abstract hasCover()Z
.end method

.method public abstract hasCurrentLocation()Z
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hasGender()Z
.end method

.method public abstract hasId()Z
.end method

.method public abstract hasImage()Z
.end method

.method public abstract hasIsPlusUser()Z
.end method

.method public abstract hasLanguage()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasNickname()Z
.end method

.method public abstract hasObjectType()Z
.end method

.method public abstract hasOrganizations()Z
.end method

.method public abstract hasPlacesLived()Z
.end method

.method public abstract hasPlusOneCount()Z
.end method

.method public abstract hasRelationshipStatus()Z
.end method

.method public abstract hasTagline()Z
.end method

.method public abstract hasUrl()Z
.end method

.method public abstract hasUrls()Z
.end method

.method public abstract hasVerified()Z
.end method

.method public abstract isPlusUser()Z
.end method

.method public abstract isVerified()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.AgeRange (com.google.android.gms.plus.model.people.Person$AgeRange)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$AgeRange;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AgeRange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$AgeRange;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getMax()I
.end method

.method public abstract getMin()I
.end method

.method public abstract hasMax()Z
.end method

.method public abstract hasMin()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Cover (com.google.android.gms.plus.model.people.Person$Cover)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Cover;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Cover"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;,
        Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;,
        Lcom/google/android/gms/plus/model/people/Person$Cover$Layout;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Cover;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getCoverInfo()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;
.end method

.method public abstract getCoverPhoto()Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
.end method

.method public abstract getLayout()I
.end method

.method public abstract hasCoverInfo()Z
.end method

.method public abstract hasCoverPhoto()Z
.end method

.method public abstract hasLayout()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Cover.CoverInfo (com.google.android.gms.plus.model.people.Person$Cover$CoverInfo)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person$Cover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoverInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Cover$CoverInfo;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getLeftImageOffset()I
.end method

.method public abstract getTopImageOffset()I
.end method

.method public abstract hasLeftImageOffset()Z
.end method

.method public abstract hasTopImageOffset()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto (com.google.android.gms.plus.model.people.Person$Cover$CoverPhoto)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person$Cover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CoverPhoto"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Cover$CoverPhoto;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getHeight()I
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract getWidth()I
.end method

.method public abstract hasHeight()Z
.end method

.method public abstract hasUrl()Z
.end method

.method public abstract hasWidth()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Cover.Layout (com.google.android.gms.plus.model.people.Person$Cover$Layout)
.class public final Lcom/google/android/gms/plus/model/people/Person$Cover$Layout;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person$Cover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Layout"
.end annotation


# static fields
.field public static final BANNER:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.plus.model.people.Person.Gender (com.google.android.gms.plus.model.people.Person$Gender)
.class public final Lcom/google/android/gms/plus/model/people/Person$Gender;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Gender"
.end annotation


# static fields
.field public static final FEMALE:I = 0x1

.field public static final MALE:I = 0x0

.field public static final OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.plus.model.people.Person.Image (com.google.android.gms.plus.model.people.Person$Image)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Image;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Image"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Image;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getUrl()Ljava/lang/String;
.end method

.method public abstract hasUrl()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Name (com.google.android.gms.plus.model.people.Person$Name)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Name;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Name;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getFamilyName()Ljava/lang/String;
.end method

.method public abstract getFormatted()Ljava/lang/String;
.end method

.method public abstract getGivenName()Ljava/lang/String;
.end method

.method public abstract getHonorificPrefix()Ljava/lang/String;
.end method

.method public abstract getHonorificSuffix()Ljava/lang/String;
.end method

.method public abstract getMiddleName()Ljava/lang/String;
.end method

.method public abstract hasFamilyName()Z
.end method

.method public abstract hasFormatted()Z
.end method

.method public abstract hasGivenName()Z
.end method

.method public abstract hasHonorificPrefix()Z
.end method

.method public abstract hasHonorificSuffix()Z
.end method

.method public abstract hasMiddleName()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.ObjectType (com.google.android.gms.plus.model.people.Person$ObjectType)
.class public final Lcom/google/android/gms/plus/model/people/Person$ObjectType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ObjectType"
.end annotation


# static fields
.field public static final PAGE:I = 0x1

.field public static final PERSON:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.plus.model.people.Person.Organizations (com.google.android.gms.plus.model.people.Person$Organizations)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Organizations;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Organizations"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Organizations$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Organizations;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getDepartment()Ljava/lang/String;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getEndDate()Ljava/lang/String;
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getStartDate()Ljava/lang/String;
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract hasDepartment()Z
.end method

.method public abstract hasDescription()Z
.end method

.method public abstract hasEndDate()Z
.end method

.method public abstract hasLocation()Z
.end method

.method public abstract hasName()Z
.end method

.method public abstract hasPrimary()Z
.end method

.method public abstract hasStartDate()Z
.end method

.method public abstract hasTitle()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract isPrimary()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Organizations.Type (com.google.android.gms.plus.model.people.Person$Organizations$Type)
.class public final Lcom/google/android/gms/plus/model/people/Person$Organizations$Type;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person$Organizations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation


# static fields
.field public static final SCHOOL:I = 0x1

.field public static final WORK:I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.plus.model.people.Person.PlacesLived (com.google.android.gms.plus.model.people.Person$PlacesLived)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$PlacesLived;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlacesLived"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$PlacesLived;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasPrimary()Z
.end method

.method public abstract hasValue()Z
.end method

.method public abstract isPrimary()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.RelationshipStatus (com.google.android.gms.plus.model.people.Person$RelationshipStatus)
.class public final Lcom/google/android/gms/plus/model/people/Person$RelationshipStatus;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelationshipStatus"
.end annotation


# static fields
.field public static final ENGAGED:I = 0x2

.field public static final IN_A_RELATIONSHIP:I = 0x1

.field public static final IN_CIVIL_UNION:I = 0x8

.field public static final IN_DOMESTIC_PARTNERSHIP:I = 0x7

.field public static final ITS_COMPLICATED:I = 0x4

.field public static final MARRIED:I = 0x3

.field public static final OPEN_RELATIONSHIP:I = 0x5

.field public static final SINGLE:I = 0x0

.field public static final WIDOWED:I = 0x6


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.plus.model.people.Person.Urls (com.google.android.gms.plus.model.people.Person$Urls)
.class public interface abstract Lcom/google/android/gms/plus/model/people/Person$Urls;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/Freezable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Urls"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/plus/model/people/Person$Urls$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/Freezable",
        "<",
        "Lcom/google/android/gms/plus/model/people/Person$Urls;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getLabel()Ljava/lang/String;
.end method

.method public abstract getType()I
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract hasLabel()Z
.end method

.method public abstract hasType()Z
.end method

.method public abstract hasValue()Z
.end method

###### Class com.google.android.gms.plus.model.people.Person.Urls.Type (com.google.android.gms.plus.model.people.Person$Urls$Type)
.class public final Lcom/google/android/gms/plus/model/people/Person$Urls$Type;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/plus/model/people/Person$Urls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation


# static fields
.field public static final CONTRIBUTOR:I = 0x6

.field public static final OTHER:I = 0x4

.field public static final OTHER_PROFILE:I = 0x5

.field public static final WEBSITE:I = 0x7


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
