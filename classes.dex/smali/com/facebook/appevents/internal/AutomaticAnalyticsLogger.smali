###### Class com.facebook.appevents.internal.AutomaticAnalyticsLogger (com.facebook.appevents.internal.AutomaticAnalyticsLogger)
.class Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static logActivityTimeSpentEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "timeSpentInSeconds"    # J

    .prologue
    .line 37
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v0

    .line 38
    .local v0, "l":Lcom/facebook/appevents/AppEventsLogger;
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    .line 39
    .local v2, "settings":Lcom/facebook/internal/FetchedAppSettings;
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_26

    const-wide/16 v4, 0x0

    cmp-long v3, p3, v4

    if-lez v3, :cond_26

    .line 40
    new-instance v1, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 41
    .local v1, "params":Landroid/os/Bundle;
    const-string v3, "fb_aa_time_spent_view_name"

    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 42
    const-string v3, "fb_aa_time_spent_on_view"

    long-to-double v4, p3

    invoke-virtual {v0, v3, v4, v5, v1}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 44
    .end local v1    # "params":Landroid/os/Bundle;
    :cond_26
    return-void
.end method
