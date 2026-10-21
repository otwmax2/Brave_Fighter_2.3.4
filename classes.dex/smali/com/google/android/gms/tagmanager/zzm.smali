###### Class com.google.android.gms.tagmanager.zzm (com.google.android.gms.tagmanager.zzm)
.class Lcom/google/android/gms/tagmanager/zzm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/zzm$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final auX:Lcom/google/android/gms/tagmanager/zzm$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tagmanager/zzm$zza",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/tagmanager/zzm$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzm$1;-><init>(Lcom/google/android/gms/tagmanager/zzm;)V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzm;->auX:Lcom/google/android/gms/tagmanager/zzm$zza;

    return-void
.end method


# virtual methods
.method public zza(ILcom/google/android/gms/tagmanager/zzm$zza;)Lcom/google/android/gms/tagmanager/zzl;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/gms/tagmanager/zzm$zza",
            "<TK;TV;>;)",
            "Lcom/google/android/gms/tagmanager/zzl",
            "<TK;TV;>;"
        }
    .end annotation

    if-gtz p1, :cond_a

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    invoke-virtual {p0}, Lcom/google/android/gms/tagmanager/zzm;->zzcae()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_18

    new-instance v0, Lcom/google/android/gms/tagmanager/zzdd;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzdd;-><init>(ILcom/google/android/gms/tagmanager/zzm$zza;)V

    :goto_17
    return-object v0

    :cond_18
    new-instance v0, Lcom/google/android/gms/tagmanager/zzbh;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/tagmanager/zzbh;-><init>(ILcom/google/android/gms/tagmanager/zzm$zza;)V

    goto :goto_17
.end method

.method zzcae()I
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

###### Class com.google.android.gms.tagmanager.zzm.AnonymousClass1 (com.google.android.gms.tagmanager.zzm$1)
.class Lcom/google/android/gms/tagmanager/zzm$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzm$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzm;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzm$zza",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic auY:Lcom/google/android/gms/tagmanager/zzm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzm;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzm$1;->auY:Lcom/google/android/gms/tagmanager/zzm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

###### Class com.google.android.gms.tagmanager.zzm.zza (com.google.android.gms.tagmanager.zzm$zza)
.class public interface abstract Lcom/google/android/gms/tagmanager/zzm$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation
.end method
