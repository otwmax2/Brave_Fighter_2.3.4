###### Class com.vungle.publisher.q (com.vungle.publisher.q)
.class public abstract Lcom/vungle/publisher/q;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method public a(Lcom/vungle/publisher/cn;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cn;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/vungle/publisher/cn;->a_()Lcom/vungle/publisher/m;

    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/q;->a(Lcom/vungle/publisher/m;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/m;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/m;",
            ")TR;"
        }
    .end annotation

    .prologue
    .line 12
    sget-object v0, Lcom/vungle/publisher/q$1;->a:[I

    invoke-virtual {p1}, Lcom/vungle/publisher/m;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    .line 22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ad type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 14
    :pswitch_24
    invoke-virtual {p0}, Lcom/vungle/publisher/q;->a()Ljava/lang/Object;

    move-result-object v0

    .line 20
    :goto_28
    return-object v0

    .line 16
    :pswitch_29
    invoke-virtual {p0}, Lcom/vungle/publisher/q;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_28

    .line 18
    :pswitch_2e
    invoke-virtual {p0}, Lcom/vungle/publisher/q;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_28

    .line 20
    :pswitch_33
    invoke-virtual {p0}, Lcom/vungle/publisher/q;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_28

    .line 12
    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_24
        :pswitch_29
        :pswitch_2e
        :pswitch_33
    .end packed-switch
.end method

.method protected abstract b()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

.method protected abstract d()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation
.end method

###### Class com.vungle.publisher.q.AnonymousClass1 (com.vungle.publisher.q$1)
.class synthetic Lcom/vungle/publisher/q$1;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 12
    invoke-static {}, Lcom/vungle/publisher/m;->values()[Lcom/vungle/publisher/m;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/vungle/publisher/q$1;->a:[I

    :try_start_9
    sget-object v0, Lcom/vungle/publisher/q$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/m;->a:Lcom/vungle/publisher/m;

    invoke-virtual {v1}, Lcom/vungle/publisher/m;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_14} :catch_3c

    :goto_14
    :try_start_14
    sget-object v0, Lcom/vungle/publisher/q$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/m;->b:Lcom/vungle/publisher/m;

    invoke-virtual {v1}, Lcom/vungle/publisher/m;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_3a

    :goto_1f
    :try_start_1f
    sget-object v0, Lcom/vungle/publisher/q$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/m;->c:Lcom/vungle/publisher/m;

    invoke-virtual {v1}, Lcom/vungle/publisher/m;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_2a} :catch_38

    :goto_2a
    :try_start_2a
    sget-object v0, Lcom/vungle/publisher/q$1;->a:[I

    sget-object v1, Lcom/vungle/publisher/m;->d:Lcom/vungle/publisher/m;

    invoke-virtual {v1}, Lcom/vungle/publisher/m;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_35} :catch_36

    :goto_35
    return-void

    :catch_36
    move-exception v0

    goto :goto_35

    :catch_38
    move-exception v0

    goto :goto_2a

    :catch_3a
    move-exception v0

    goto :goto_1f

    :catch_3c
    move-exception v0

    goto :goto_14
.end method
