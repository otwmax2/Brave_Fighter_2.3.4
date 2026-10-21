###### Class com.google.android.gms.games.internal.api.QuestsImpl (com.google.android.gms.games.internal.api.QuestsImpl)
.class public final Lcom/google/android/gms/games/internal/api/QuestsImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;,
        Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;,
        Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzd(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public getQuestIntent(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzjn(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getQuestsIntent(Lcom/google/android/gms/common/api/GoogleApiClient;[I)Landroid/content/Intent;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/games/Games;->zzi(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc([I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "[IIZ)",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public varargs loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Z[",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzc(Lcom/google/android/gms/internal/zzpr$zza;)Lcom/google/android/gms/internal/zzpr$zza;

    move-result-object v0

    return-object v0
.end method

.method public registerQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/quest/QuestUpdateListener;)V
    .registers 5

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzt(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzqs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzc(Lcom/google/android/gms/internal/zzqs;)V

    :cond_e
    return-void
.end method

.method public showStateChangedPopup(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0, p2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzjo(Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public unregisterQuestUpdateListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/games/Games;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Z)Lcom/google/android/gms/games/internal/GamesClientImpl;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzbil()V

    :cond_a
    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.QuestsImpl$1)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$1;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->accept(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vn:Ljava/lang/String;

.field final synthetic Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->Vn:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$1;->Vn:Ljava/lang/String;

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzh(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AnonymousClass2 (com.google.android.gms.games.internal.api.QuestsImpl$2)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$2;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->claim(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vn:Ljava/lang/String;

.field final synthetic Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Vp:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Vn:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Vp:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Vn:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$2;->Vp:Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AnonymousClass3 (com.google.android.gms.games.internal.api.QuestsImpl$3)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$3;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->load(Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UL:I

.field final synthetic Uv:Z

.field final synthetic Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Vq:[I


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;[IIZ)V
    .registers 7

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-object p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Vq:[I

    iput p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->UL:I

    iput-boolean p5, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Uv:Z

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Vq:[I

    iget v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->UL:I

    iget-boolean v2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$3;->Uv:Z

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzpr$zzb;[IIZ)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AnonymousClass4 (com.google.android.gms.games.internal.api.QuestsImpl$4)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$4;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;->loadByIds(Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Uv:Z

.field final synthetic Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

.field final synthetic Vr:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl;Lcom/google/android/gms/common/api/GoogleApiClient;Z[Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Vo:Lcom/google/android/gms/games/internal/api/QuestsImpl;

    iput-boolean p3, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Uv:Z

    iput-object p4, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Vr:[Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Uv:Z

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$4;->Vr:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zzb(Lcom/google/android/gms/internal/zzpr$zzb;Z[Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AnonymousClass5 (com.google.android.gms.games.internal.api.QuestsImpl$5)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$5;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$5;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;[IIZ)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AnonymousClass6 (com.google.android.gms.games.internal.api.QuestsImpl$6)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$6;
.super Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$6;->zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/games/internal/GamesClientImpl;->zza(Lcom/google/android/gms/internal/zzpr$zzb;Ljava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AcceptImpl (com.google.android.gms.games.internal.api.QuestsImpl$AcceptImpl)
.class abstract Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AcceptImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;->zzch(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;

    move-result-object v0

    return-object v0
.end method

.method public zzch(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.AcceptImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.QuestsImpl$AcceptImpl$1)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;->zzch(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$AcceptQuestResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vs:Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->Vs:Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$AcceptImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.ClaimImpl (com.google.android.gms.games.internal.api.QuestsImpl$ClaimImpl)
.class abstract Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ClaimImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;->zzci(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;

    move-result-object v0

    return-object v0
.end method

.method public zzci(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.ClaimImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.QuestsImpl$ClaimImpl$1)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;->zzci(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$ClaimMilestoneResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vt:Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl$1;->Vt:Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMilestone()Lcom/google/android/gms/games/quest/Milestone;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getQuest()Lcom/google/android/gms/games/quest/Quest;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$ClaimImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.LoadsImpl (com.google.android.gms.games.internal.api.QuestsImpl$LoadsImpl)
.class abstract Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;
.super Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "LoadsImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl",
        "<",
        "Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/Games$BaseGamesApiMethodImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/internal/api/QuestsImpl$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;->zzcj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;

    move-result-object v0

    return-object v0
.end method

.method public zzcj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
    .registers 3

    new-instance v0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;-><init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

###### Class com.google.android.gms.games.internal.api.QuestsImpl.LoadsImpl.AnonymousClass1 (com.google.android.gms.games.internal.api.QuestsImpl$LoadsImpl$1)
.class Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;->zzcj(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/games/quest/Quests$LoadQuestsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Vu:Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;

.field final synthetic gH:Lcom/google/android/gms/common/api/Status;


# direct methods
.method constructor <init>(Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;Lcom/google/android/gms/common/api/Status;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->Vu:Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl;

    iput-object p2, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getQuests()Lcom/google/android/gms/games/quest/QuestBuffer;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result v0

    new-instance v1, Lcom/google/android/gms/games/quest/QuestBuffer;

    invoke-static {v0}, Lcom/google/android/gms/common/data/DataHolder;->zzfp(I)Lcom/google/android/gms/common/data/DataHolder;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/games/quest/QuestBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    return-object v1
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/QuestsImpl$LoadsImpl$1;->gH:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public release()V
    .registers 1

    return-void
.end method
