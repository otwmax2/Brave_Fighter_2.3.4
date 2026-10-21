###### Class com.google.android.gms.games.appcontent.AppContentUtils (com.google.android.gms.games.appcontent.AppContentUtils)
.class public final Lcom/google/android/gms/games/appcontent/AppContentUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAction;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;

    invoke-direct {v5, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    const-string v3, "action_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method private static zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-virtual {p0, p4}, Lcom/google/android/gms/common/data/DataHolder;->zzfo(I)I

    move-result v1

    invoke-virtual {p0, p2, p4, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v0}, Lcom/google/android/gms/common/data/DataHolder;->getCount()I

    move-result v2

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    :goto_1f
    if-ge v1, v2, :cond_3b

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->zzfo(I)I

    move-result v4

    invoke-virtual {v0, p3, v1, v4}, Lcom/google/android/gms/common/data/DataHolder;->zzd(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38

    invoke-static {v3, v4}, Lcom/google/android/gms/common/util/zzb;->zzb([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    invoke-interface {p5, p6, v1}, Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;->zzb(Ljava/util/ArrayList;I)V

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    :cond_3b
    return-void
.end method

.method public static zzb(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentAnnotation;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$2;

    invoke-direct {v5, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$2;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x2

    const-string v3, "annotation_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public static zzc(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/games/appcontent/AppContentCondition;",
            ">;"
        }
    .end annotation

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$3;

    invoke-direct {v5, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$3;-><init>(Ljava/util/ArrayList;)V

    const/4 v1, 0x4

    const-string v3, "condition_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

.method public static zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const/4 v1, 0x3

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/data/DataHolder;

    new-instance v5, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;

    invoke-direct {v5, v0, v7}, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;-><init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Bundle;)V

    const-string v3, "tuple_id"

    move-object v0, p0

    move-object v2, p2

    move v4, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;Ljava/lang/String;ILcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;Ljava/util/ArrayList;)V

    return-object v7
.end method

###### Class com.google.android.gms.games.appcontent.AppContentUtils.AnonymousClass1 (com.google.android.gms.games.appcontent.AppContentUtils$1)
.class final Lcom/google/android/gms/games/appcontent/AppContentUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/appcontent/AppContentUtils;->zza(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;->Sr:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$1;->Sr:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/games/appcontent/AppContentActionRef;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentActionRef;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.google.android.gms.games.appcontent.AppContentUtils.AnonymousClass2 (com.google.android.gms.games.appcontent.AppContentUtils$2)
.class final Lcom/google/android/gms/games/appcontent/AppContentUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzb(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$2;->Sr:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$2;->Sr:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentAnnotationRef;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.google.android.gms.games.appcontent.AppContentUtils.AnonymousClass3 (com.google.android.gms.games.appcontent.AppContentUtils$3)
.class final Lcom/google/android/gms/games/appcontent/AppContentUtils$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzc(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Sr:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$3;->Sr:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/util/ArrayList;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$3;->Sr:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/games/appcontent/AppContentConditionRef;-><init>(Ljava/util/ArrayList;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

###### Class com.google.android.gms.games.appcontent.AppContentUtils.AnonymousClass4 (com.google.android.gms.games.appcontent.AppContentUtils$4)
.class final Lcom/google/android/gms/games/appcontent/AppContentUtils$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/appcontent/AppContentUtils;->zzd(Lcom/google/android/gms/common/data/DataHolder;Ljava/util/ArrayList;Ljava/lang/String;I)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Ss:Lcom/google/android/gms/common/data/DataHolder;

.field final synthetic St:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;->Ss:Lcom/google/android/gms/common/data/DataHolder;

    iput-object p2, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;->St:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzb(Ljava/util/ArrayList;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/games/appcontent/AppContentTupleRef;

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;->Ss:Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/games/appcontent/AppContentTupleRef;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    iget-object v1, p0, Lcom/google/android/gms/games/appcontent/AppContentUtils$4;->St:Landroid/os/Bundle;

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/google/android/gms/games/appcontent/AppContentTuple;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

###### Class com.google.android.gms.games.appcontent.AppContentUtils.AppContentRunner (com.google.android.gms.games.appcontent.AppContentUtils$AppContentRunner)
.class interface abstract Lcom/google/android/gms/games/appcontent/AppContentUtils$AppContentRunner;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/appcontent/AppContentUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AppContentRunner"
.end annotation


# virtual methods
.method public abstract zzb(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/common/data/DataHolder;",
            ">;I)V"
        }
    .end annotation
.end method
