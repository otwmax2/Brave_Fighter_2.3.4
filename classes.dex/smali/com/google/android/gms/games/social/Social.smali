###### Class com.google.android.gms.games.social.Social (com.google.android.gms.games.social.Social)
.class public interface abstract Lcom/google/android/gms/games/social/Social;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/social/Social$InviteDirection;,
        Lcom/google/android/gms/games/social/Social$InviteType;,
        Lcom/google/android/gms/games/social/Social$InviteUpdateResult;,
        Lcom/google/android/gms/games/social/Social$LoadInvitesResult;
    }
.end annotation

###### Class com.google.android.gms.games.social.Social.InviteDirection (com.google.android.gms.games.social.Social$InviteDirection)
.class public interface abstract annotation Lcom/google/android/gms/games/social/Social$InviteDirection;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/social/Social;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InviteDirection"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.social.Social.InviteType (com.google.android.gms.games.social.Social$InviteType)
.class public interface abstract annotation Lcom/google/android/gms/games/social/Social$InviteType;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/social/Social;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "InviteType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

###### Class com.google.android.gms.games.social.Social.InviteUpdateResult (com.google.android.gms.games.social.Social$InviteUpdateResult)
.class public interface abstract Lcom/google/android/gms/games/social/Social$InviteUpdateResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/social/Social;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InviteUpdateResult"
.end annotation

###### Class com.google.android.gms.games.social.Social.LoadInvitesResult (com.google.android.gms.games.social.Social$LoadInvitesResult)
.class public interface abstract Lcom/google/android/gms/games/social/Social$LoadInvitesResult;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/social/Social;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadInvitesResult"
.end annotation
