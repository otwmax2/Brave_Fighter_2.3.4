###### Class com.facebook.ads.internal.c.c (com.facebook.ads.internal.c.c)
.class public Lcom/facebook/ads/internal/c/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/internal/c/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/ContentResolver;)Lcom/facebook/ads/internal/c/c$a;
    .registers 8

    const/4 v6, 0x0

    const/4 v0, 0x3

    :try_start_2
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "aid"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "androidid"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "limit_tracking"

    aput-object v1, v2, v0

    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_20} :catch_68
    .catchall {:try_start_2 .. :try_end_20} :catchall_78

    move-result-object v1

    if-eqz v1, :cond_29

    :try_start_23
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_37

    :cond_29
    new-instance v0, Lcom/facebook/ads/internal/c/c$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/internal/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_31} :catch_82
    .catchall {:try_start_23 .. :try_end_31} :catchall_80

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_36
    :goto_36
    return-object v0

    :cond_37
    :try_start_37
    const-string v0, "aid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "androidid"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "limit_tracking"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    new-instance v0, Lcom/facebook/ads/internal/c/c$a;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/internal/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_62} :catch_82
    .catchall {:try_start_37 .. :try_end_62} :catchall_80

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_36

    :catch_68
    move-exception v0

    move-object v1, v6

    :goto_6a
    :try_start_6a
    new-instance v0, Lcom/facebook/ads/internal/c/c$a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4}, Lcom/facebook/ads/internal/c/c$a;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_72
    .catchall {:try_start_6a .. :try_end_72} :catchall_80

    if-eqz v1, :cond_36

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_36

    :catchall_78
    move-exception v0

    move-object v1, v6

    :goto_7a
    if-eqz v1, :cond_7f

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7f
    throw v0

    :catchall_80
    move-exception v0

    goto :goto_7a

    :catch_82
    move-exception v0

    goto :goto_6a
.end method

###### Class com.facebook.ads.internal.c.c.a (com.facebook.ads.internal.c.c$a)
.class public Lcom/facebook/ads/internal/c/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/internal/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/ads/internal/c/c$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/ads/internal/c/c$a;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/facebook/ads/internal/c/c$a;->c:Z

    return-void
.end method
