###### Class com.google.android.gms.awareness.state.HeadphoneState (com.google.android.gms.awareness.state.HeadphoneState)
.class public interface abstract Lcom/google/android/gms/awareness/state/HeadphoneState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/awareness/state/HeadphoneState$State;
    }
.end annotation


# static fields
.field public static final PLUGGED_IN:I = 0x1

.field public static final UNPLUGGED:I = 0x2


# virtual methods
.method public abstract getState()I
.end method

###### Class com.google.android.gms.awareness.state.HeadphoneState.State (com.google.android.gms.awareness.state.HeadphoneState$State)
.class public interface abstract annotation Lcom/google/android/gms/awareness/state/HeadphoneState$State;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/awareness/state/HeadphoneState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "State"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation
