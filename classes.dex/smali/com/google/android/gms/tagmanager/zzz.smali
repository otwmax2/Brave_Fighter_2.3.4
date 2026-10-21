###### Class com.google.android.gms.tagmanager.zzz (com.google.android.gms.tagmanager.zzz)
.class public Lcom/google/android/gms/tagmanager/zzz;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzas;


# static fields
.field private static final auM:Ljava/lang/Object;

.field private static avZ:Lcom/google/android/gms/tagmanager/zzz;


# instance fields
.field private avp:Lcom/google/android/gms/tagmanager/zzck;

.field private awa:Lcom/google/android/gms/tagmanager/zzat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzz;->auM:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/zzau;->zzdz(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzau;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/tagmanager/zzcz;

    invoke-direct {v1}, Lcom/google/android/gms/tagmanager/zzcz;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Lcom/google/android/gms/tagmanager/zzat;Lcom/google/android/gms/tagmanager/zzck;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/tagmanager/zzat;Lcom/google/android/gms/tagmanager/zzck;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzz;->awa:Lcom/google/android/gms/tagmanager/zzat;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzz;->avp:Lcom/google/android/gms/tagmanager/zzck;

    return-void
.end method

.method public static zzds(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/zzas;
    .registers 3

    sget-object v1, Lcom/google/android/gms/tagmanager/zzz;->auM:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/google/android/gms/tagmanager/zzz;->avZ:Lcom/google/android/gms/tagmanager/zzz;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/tagmanager/zzz;

    invoke-direct {v0, p0}, Lcom/google/android/gms/tagmanager/zzz;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/gms/tagmanager/zzz;->avZ:Lcom/google/android/gms/tagmanager/zzz;

    :cond_e
    sget-object v0, Lcom/google/android/gms/tagmanager/zzz;->avZ:Lcom/google/android/gms/tagmanager/zzz;

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method


# virtual methods
.method public zzob(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->avp:Lcom/google/android/gms/tagmanager/zzck;

    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/zzck;->zzade()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "Too many urls sent too quickly with the TagManagerSender, rate limiting invoked."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzbn;->zzcy(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_e
    return v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzz;->awa:Lcom/google/android/gms/tagmanager/zzat;

    invoke-interface {v0, p1}, Lcom/google/android/gms/tagmanager/zzat;->zzof(Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_e
.end method
