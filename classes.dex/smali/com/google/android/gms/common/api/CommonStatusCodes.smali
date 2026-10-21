###### Class com.google.android.gms.common.api.CommonStatusCodes (com.google.android.gms.common.api.CommonStatusCodes)
.class public Lcom/google/android/gms/common/api/CommonStatusCodes;
.super Ljava/lang/Object;


# static fields
.field public static final API_NOT_CONNECTED:I = 0x11

.field public static final CANCELED:I = 0x10

.field public static final DEAD_CLIENT:I = 0x12

.field public static final DEVELOPER_ERROR:I = 0xa

.field public static final ERROR:I = 0xd

.field public static final INTERNAL_ERROR:I = 0x8

.field public static final INTERRUPTED:I = 0xe

.field public static final INVALID_ACCOUNT:I = 0x5

.field public static final NETWORK_ERROR:I = 0x7

.field public static final RESOLUTION_REQUIRED:I = 0x6

.field public static final SERVICE_DISABLED:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SERVICE_VERSION_UPDATE_REQUIRED:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SIGN_IN_REQUIRED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field public static final SUCCESS_CACHE:I = -0x1

.field public static final TIMEOUT:I = 0xf


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusCodeString(I)Ljava/lang/String;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    packed-switch p0, :pswitch_data_4a

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "unknown status code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    :pswitch_19
    const-string v0, "SUCCESS_CACHE"

    goto :goto_18

    :pswitch_1c
    const-string v0, "SUCCESS"

    goto :goto_18

    :pswitch_1f
    const-string v0, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_18

    :pswitch_22
    const-string v0, "SERVICE_DISABLED"

    goto :goto_18

    :pswitch_25
    const-string v0, "SIGN_IN_REQUIRED"

    goto :goto_18

    :pswitch_28
    const-string v0, "INVALID_ACCOUNT"

    goto :goto_18

    :pswitch_2b
    const-string v0, "RESOLUTION_REQUIRED"

    goto :goto_18

    :pswitch_2e
    const-string v0, "NETWORK_ERROR"

    goto :goto_18

    :pswitch_31
    const-string v0, "INTERNAL_ERROR"

    goto :goto_18

    :pswitch_34
    const-string v0, "DEVELOPER_ERROR"

    goto :goto_18

    :pswitch_37
    const-string v0, "ERROR"

    goto :goto_18

    :pswitch_3a
    const-string v0, "INTERRUPTED"

    goto :goto_18

    :pswitch_3d
    const-string v0, "TIMEOUT"

    goto :goto_18

    :pswitch_40
    const-string v0, "CANCELED"

    goto :goto_18

    :pswitch_43
    const-string v0, "API_NOT_CONNECTED"

    goto :goto_18

    :pswitch_46
    const-string v0, "DEAD_CLIENT"

    goto :goto_18

    nop

    :pswitch_data_4a
    .packed-switch -0x1
        :pswitch_19
        :pswitch_1c
        :pswitch_3
        :pswitch_1f
        :pswitch_22
        :pswitch_25
        :pswitch_28
        :pswitch_2b
        :pswitch_2e
        :pswitch_31
        :pswitch_3
        :pswitch_34
        :pswitch_3
        :pswitch_3
        :pswitch_37
        :pswitch_3a
        :pswitch_3d
        :pswitch_40
        :pswitch_43
        :pswitch_46
    .end packed-switch
.end method
