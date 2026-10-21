###### Class com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus (com.google.android.gms.games.internal.constants.TurnBasedMatchTurnStatus)
.class public final Lcom/google/android/gms/games/internal/constants/TurnBasedMatchTurnStatus;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzqs(I)Ljava/lang/String;
    .registers 4

    packed-switch p0, :pswitch_data_2c

    const-string v0, "MatchTurnStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x26

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unknown match turn status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/games/internal/GamesLog;->zzag(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TURN_STATUS_UNKNOWN"

    :goto_1f
    return-object v0

    :pswitch_20
    const-string v0, "TURN_STATUS_INVITED"

    goto :goto_1f

    :pswitch_23
    const-string v0, "TURN_STATUS_MY_TURN"

    goto :goto_1f

    :pswitch_26
    const-string v0, "TURN_STATUS_THEIR_TURN"

    goto :goto_1f

    :pswitch_29
    const-string v0, "TURN_STATUS_COMPLETE"

    goto :goto_1f

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method
