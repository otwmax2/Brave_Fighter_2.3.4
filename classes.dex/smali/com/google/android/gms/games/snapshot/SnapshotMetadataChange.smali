###### Class com.google.android.gms.games.snapshot.SnapshotMetadataChange (com.google.android.gms.games.snapshot.SnapshotMetadataChange)
.class public interface abstract Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    }
.end annotation


# static fields
.field public static final EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    invoke-direct {v0}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>()V

    sput-object v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;->EMPTY_CHANGE:Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;

    return-void
.end method


# virtual methods
.method public abstract getCoverImage()Landroid/graphics/Bitmap;
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPlayedTimeMillis()Ljava/lang/Long;
.end method

.method public abstract getProgressValue()Ljava/lang/Long;
.end method

.method public abstract zzbll()Lcom/google/android/gms/common/data/BitmapTeleporter;
.end method

###### Class com.google.android.gms.games.snapshot.SnapshotMetadataChange.Builder (com.google.android.gms.games.snapshot.SnapshotMetadataChange$Builder)
.class public final Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ZA:Landroid/net/Uri;

.field private Zx:Ljava/lang/Long;

.field private Zy:Ljava/lang/Long;

.field private Zz:Lcom/google/android/gms/common/data/BitmapTeleporter;

.field private zzcvi:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange;
    .registers 7

    new-instance v0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;

    iget-object v1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzcvi:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zx:Ljava/lang/Long;

    iget-object v3, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zz:Lcom/google/android/gms/common/data/BitmapTeleporter;

    iget-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->ZA:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zy:Ljava/lang/Long;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChangeEntity;-><init>(Ljava/lang/String;Ljava/lang/Long;Lcom/google/android/gms/common/data/BitmapTeleporter;Landroid/net/Uri;Ljava/lang/Long;)V

    return-object v0
.end method

.method public fromMetadata(Lcom/google/android/gms/games/snapshot/SnapshotMetadata;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 7

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getDescription()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzcvi:Ljava/lang/String;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getPlayedTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zx:Ljava/lang/Long;

    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getProgressValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zy:Ljava/lang/Long;

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zx:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_29

    iput-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zx:Ljava/lang/Long;

    :cond_29
    invoke-interface {p1}, Lcom/google/android/gms/games/snapshot/SnapshotMetadata;->getCoverImageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->ZA:Landroid/net/Uri;

    iget-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->ZA:Landroid/net/Uri;

    if-eqz v0, :cond_35

    iput-object v4, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zz:Lcom/google/android/gms/common/data/BitmapTeleporter;

    :cond_35
    return-object p0
.end method

.method public setCoverImage(Landroid/graphics/Bitmap;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 3

    new-instance v0, Lcom/google/android/gms/common/data/BitmapTeleporter;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/data/BitmapTeleporter;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zz:Lcom/google/android/gms/common/data/BitmapTeleporter;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->ZA:Landroid/net/Uri;

    return-object p0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->zzcvi:Ljava/lang/String;

    return-object p0
.end method

.method public setPlayedTimeMillis(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zx:Ljava/lang/Long;

    return-object p0
.end method

.method public setProgressValue(J)Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;
    .registers 4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/snapshot/SnapshotMetadataChange$Builder;->Zy:Ljava/lang/Long;

    return-object p0
.end method
