###### Class com.google.android.gms.awareness.fence.FenceUpdateRequest (com.google.android.gms.awareness.fence.FenceUpdateRequest)
.class public interface abstract Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;
    }
.end annotation

###### Class com.google.android.gms.awareness.fence.FenceUpdateRequest.Builder (com.google.android.gms.awareness.fence.FenceUpdateRequest$Builder)
.class public Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final fE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;->fE:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addFence(Ljava/lang/String;Lcom/google/android/gms/awareness/fence/AwarenessFence;Landroid/app/PendingIntent;)Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;->fE:Ljava/util/ArrayList;

    check-cast p2, Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->zza(Ljava/lang/String;Lcom/google/android/gms/contextmanager/fence/internal/ContextFenceStub;Landroid/app/PendingIntent;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/awareness/fence/FenceUpdateRequest;
    .registers 3

    new-instance v0, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;

    iget-object v1, p0, Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;->fE:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Lcom/google/android/gms/contextmanager/fence/internal/FenceUpdateRequestImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public removeFence(Landroid/app/PendingIntent;)Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzaa(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;->fE:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->zza(Landroid/app/PendingIntent;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public removeFence(Ljava/lang/String;)Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzab;->zzhs(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/awareness/fence/FenceUpdateRequest$Builder;->fE:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;->zzie(Ljava/lang/String;)Lcom/google/android/gms/contextmanager/fence/internal/UpdateFenceOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
