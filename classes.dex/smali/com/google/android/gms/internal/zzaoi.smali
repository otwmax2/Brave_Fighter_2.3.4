###### Class com.google.android.gms.internal.zzaoi (com.google.android.gms.internal.zzaoi)
.class public final Lcom/google/android/gms/internal/zzaoi;
.super Lcom/google/android/gms/internal/zzank;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzank",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final bfE:Lcom/google/android/gms/internal/zzanl;


# instance fields
.field private final beA:Lcom/google/android/gms/internal/zzams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/zzaoi$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaoi$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaoi;->bfE:Lcom/google/android/gms/internal/zzanl;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzams;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzank;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaoi;->beA:Lcom/google/android/gms/internal/zzams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoi$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaoi;-><init>(Lcom/google/android/gms/internal/zzams;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->r()Lcom/google/android/gms/internal/zzaor;

    :goto_5
    return-void

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaoi;->beA:Lcom/google/android/gms/internal/zzams;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzams;->zzk(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzank;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzaoi;

    if-eqz v1, :cond_1b

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->p()Lcom/google/android/gms/internal/zzaor;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaor;->q()Lcom/google/android/gms/internal/zzaor;

    goto :goto_5

    :cond_1b
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzank;->zza(Lcom/google/android/gms/internal/zzaor;Ljava/lang/Object;)V

    goto :goto_5
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->h()Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_6a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginArray()V

    :goto_1d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaoi;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_2b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endArray()V

    :goto_2e
    return-object v0

    :pswitch_2f
    new-instance v0, Lcom/google/android/gms/internal/zzanw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzanw;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->beginObject()V

    :goto_37
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaoi;->zzb(Lcom/google/android/gms/internal/zzaop;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_49
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->endObject()V

    goto :goto_2e

    :pswitch_4d
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2e

    :pswitch_52
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2e

    :pswitch_5b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_2e

    :pswitch_64
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzaop;->nextNull()V

    const/4 v0, 0x0

    goto :goto_2e

    nop

    :pswitch_data_6a
    .packed-switch 0x1
        :pswitch_15
        :pswitch_2f
        :pswitch_4d
        :pswitch_52
        :pswitch_5b
        :pswitch_64
    .end packed-switch
.end method

###### Class com.google.android.gms.internal.zzaoi.AnonymousClass1 (com.google.android.gms.internal.zzaoi$1)
.class final Lcom/google/android/gms/internal/zzaoi$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzanl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoo;)Lcom/google/android/gms/internal/zzank;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzams;",
            "Lcom/google/android/gms/internal/zzaoo",
            "<TT;>;)",
            "Lcom/google/android/gms/internal/zzank",
            "<TT;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaoo;->s()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/Object;

    if-ne v0, v2, :cond_f

    new-instance v0, Lcom/google/android/gms/internal/zzaoi;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzaoi;-><init>(Lcom/google/android/gms/internal/zzams;Lcom/google/android/gms/internal/zzaoi$1;)V

    :goto_e
    return-object v0

    :cond_f
    move-object v0, v1

    goto :goto_e
.end method

###### Class com.google.android.gms.internal.zzaoi.AnonymousClass2 (com.google.android.gms.internal.zzaoi$2)
.class synthetic Lcom/google/android/gms/internal/zzaoi$2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaoi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic bfU:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/google/android/gms/internal/zzaoq;->values()[Lcom/google/android/gms/internal/zzaoq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    :try_start_9
    sget-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhz:Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_56

    :goto_14
    :try_start_14
    sget-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhB:Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_54

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhE:Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_52

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhF:Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_50

    :goto_35
    :try_start_35
    sget-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhG:Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_40
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_40} :catch_4e

    :goto_40
    :try_start_40
    sget-object v0, Lcom/google/android/gms/internal/zzaoi$2;->bfU:[I

    sget-object v1, Lcom/google/android/gms/internal/zzaoq;->bhH:Lcom/google/android/gms/internal/zzaoq;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaoq;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_40 .. :try_end_4b} :catch_4c

    :goto_4b
    return-void

    :catch_4c
    move-exception v0

    goto :goto_4b

    :catch_4e
    move-exception v0

    goto :goto_40

    :catch_50
    move-exception v0

    goto :goto_35

    :catch_52
    move-exception v0

    goto :goto_2a

    :catch_54
    move-exception v0

    goto :goto_1f

    :catch_56
    move-exception v0

    goto :goto_14
.end method
