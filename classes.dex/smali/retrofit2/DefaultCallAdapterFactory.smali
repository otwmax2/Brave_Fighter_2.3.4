###### Class retrofit2.DefaultCallAdapterFactory (retrofit2.DefaultCallAdapterFactory)
.class final Lretrofit2/DefaultCallAdapterFactory;
.super Lretrofit2/CallAdapter$Factory;
.source "DefaultCallAdapterFactory.java"


# static fields
.field static final INSTANCE:Lretrofit2/CallAdapter$Factory;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lretrofit2/DefaultCallAdapterFactory;

    invoke-direct {v0}, Lretrofit2/DefaultCallAdapterFactory;-><init>()V

    sput-object v0, Lretrofit2/DefaultCallAdapterFactory;->INSTANCE:Lretrofit2/CallAdapter$Factory;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lretrofit2/CallAdapter$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
    .registers 7
    .param p1, "returnType"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/CallAdapter",
            "<**>;"
        }
    .end annotation

    .prologue
    .line 31
    invoke-static {p1}, Lretrofit2/DefaultCallAdapterFactory;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lretrofit2/Call;

    if-eq v1, v2, :cond_a

    .line 32
    const/4 v1, 0x0

    .line 36
    :goto_9
    return-object v1

    .line 35
    :cond_a
    invoke-static {p1}, Lretrofit2/Utils;->getCallResponseType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 36
    .local v0, "responseType":Ljava/lang/reflect/Type;
    new-instance v1, Lretrofit2/DefaultCallAdapterFactory$1;

    invoke-direct {v1, p0, v0}, Lretrofit2/DefaultCallAdapterFactory$1;-><init>(Lretrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;)V

    goto :goto_9
.end method

###### Class retrofit2.DefaultCallAdapterFactory.AnonymousClass1 (retrofit2.DefaultCallAdapterFactory$1)
.class Lretrofit2/DefaultCallAdapterFactory$1;
.super Ljava/lang/Object;
.source "DefaultCallAdapterFactory.java"

# interfaces
.implements Lretrofit2/CallAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/DefaultCallAdapterFactory;->get(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/CallAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/CallAdapter",
        "<",
        "Ljava/lang/Object;",
        "Lretrofit2/Call",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lretrofit2/DefaultCallAdapterFactory;

.field final synthetic val$responseType:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lretrofit2/DefaultCallAdapterFactory;Ljava/lang/reflect/Type;)V
    .registers 3
    .param p1, "this$0"    # Lretrofit2/DefaultCallAdapterFactory;

    .prologue
    .line 36
    iput-object p1, p0, Lretrofit2/DefaultCallAdapterFactory$1;->this$0:Lretrofit2/DefaultCallAdapterFactory;

    iput-object p2, p0, Lretrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapt(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lretrofit2/DefaultCallAdapterFactory$1;->adapt(Lretrofit2/Call;)Lretrofit2/Call;

    move-result-object v0

    return-object v0
.end method

.method public adapt(Lretrofit2/Call;)Lretrofit2/Call;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Lretrofit2/Call",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/Object;>;"
    return-object p1
.end method

.method public responseType()Ljava/lang/reflect/Type;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lretrofit2/DefaultCallAdapterFactory$1;->val$responseType:Ljava/lang/reflect/Type;

    return-object v0
.end method
