###### Class com.google.android.gms.games.internal.api.AppContentsImpl (com.google.android.gms.games.internal.api.AppContentsImpl)
.class public final Lcom/google/android/gms/games/internal/api/AppContentsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContents;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.AppContentsImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.AppContentsImpl$1)
.class Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;
.super Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/AppContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AppContentsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v4, v3

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzpr$zzb;ILjava/lang/String;[Ljava/lang/String;Z)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.AppContentsImpl.LoadsImpl (com.google.android.gms.games.internal.api.AppContentsImpl$LoadsImpl)
.class abstract Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/AppContentsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadsImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;",
        ">;"
    }
.end annotation


# virtual methods
.method public zzbn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;->zzbn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;

    move-result-object v0

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.AppContentsImpl.LoadsImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.AppContentsImpl$LoadsImpl$1)
.class Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;->zzbn(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/appcontent/AppContents$LoadAppContentResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UA:Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;->UA:Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/AppContentsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
