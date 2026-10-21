###### Class com.google.android.gms.internal.zznj (com.google.android.gms.internal.zznj)
.class Lcom/google/android/gms/internal/zznj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/auth/api/proxy/ProxyApi$ProxyResult;


# instance fields
.field private cc:Lcom/google/android/gms/common/api/Status;

.field private dE:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/proxy/ProxyResponse;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznj;->dE:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->sg:Lcom/google/android/gms/common/api/Status;

    iput-object v0, p0, Lcom/google/android/gms/internal/zznj;->cc:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zznj;->cc:Lcom/google/android/gms/common/api/Status;

    return-void
.end method


# virtual methods
.method public getResponse()Lcom/google/android/gms/auth/api/proxy/ProxyResponse;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj;->dE:Lcom/google/android/gms/auth/api/proxy/ProxyResponse;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zznj;->cc:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
