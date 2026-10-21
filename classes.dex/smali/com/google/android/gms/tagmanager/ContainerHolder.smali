###### Class com.google.android.gms.tagmanager.ContainerHolder (com.google.android.gms.tagmanager.ContainerHolder)
.class public interface abstract Lcom/google/android/gms/tagmanager/ContainerHolder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Releasable;
.implements Lcom/google/android/gms/common/api/Result;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;
    }
.end annotation


# virtual methods
.method public abstract getContainer()Lcom/google/android/gms/tagmanager/Container;
.end method

.method public abstract refresh()V
.end method

.method public abstract setContainerAvailableListener(Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;)V
.end method

###### Class com.google.android.gms.tagmanager.ContainerHolder.ContainerAvailableListener (com.google.android.gms.tagmanager.ContainerHolder$ContainerAvailableListener)
.class public interface abstract Lcom/google/android/gms/tagmanager/ContainerHolder$ContainerAvailableListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/ContainerHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ContainerAvailableListener"
.end annotation


# virtual methods
.method public abstract onContainerAvailable(Lcom/google/android/gms/tagmanager/ContainerHolder;Ljava/lang/String;)V
.end method
