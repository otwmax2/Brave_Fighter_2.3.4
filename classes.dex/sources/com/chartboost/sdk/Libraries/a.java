package com.chartboost.sdk.Libraries;

import android.content.Context;
import com.chartboost.sdk.impl.s;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public int a;
    public String b;

    public a(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException, IOException {
        AdvertisingIdClient.Info infoA;
        this.a = -1;
        this.b = null;
        try {
            infoA = s.a().a(context);
        } catch (GooglePlayServicesNotAvailableException e) {
            infoA = null;
        } catch (GooglePlayServicesRepairableException e2) {
            infoA = null;
        } catch (IOException e3) {
            infoA = null;
        } catch (SecurityException e4) {
            CBLogging.a("ContentValues", "Security Exception when retrieving AD id", e4);
            infoA = null;
        } catch (Throwable th) {
            CBLogging.a("ContentValues", "General Exception when retrieving AD id", th);
            com.chartboost.sdk.Tracking.a.a(getClass(), "getAdvertisingIdClientInfo", new Exception(th));
            infoA = null;
        }
        if (infoA == null) {
            this.a = -1;
            this.b = null;
        } else {
            this.a = infoA.isLimitAdTrackingEnabled() ? 1 : 0;
            this.b = infoA.getId();
        }
    }
}
