package com.vungle.publisher;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.vungle.publisher.log.Logger;
import java.io.IOException;
import java.net.SocketTimeoutException;
import javax.inject.Inject;
import org.json.JSONException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class tx {

    @Inject
    protected uj a;

    protected void a(ub ubVar, tw twVar) {
        try {
            if (a(twVar.b())) {
                try {
                    try {
                        c(ubVar, twVar);
                        return;
                    } catch (IOException e) {
                        Logger.e(Logger.NETWORK_TAG, "IOException while handling response: " + twVar, e);
                        twVar.a(IronSourceError.BANNER_INIT_FAILED);
                    }
                } catch (SocketTimeoutException e2) {
                    Logger.d(Logger.NETWORK_TAG, e2);
                    twVar.a(603);
                } catch (JSONException e3) {
                    Logger.e(Logger.NETWORK_TAG, "JSONException while handling response: " + twVar, e3);
                    twVar.a(IronSourceError.BANNER_NO_ADS_TO_SHOW2);
                }
            }
            b(ubVar, twVar);
        } catch (Exception e4) {
            a(ubVar, twVar, e4);
        }
    }

    protected void b(ub ubVar, tw twVar) {
        d(ubVar, twVar);
    }

    protected void c(ub ubVar, tw twVar) throws JSONException, IOException {
    }

    protected void a(ub ubVar, tw twVar, Exception exc) {
        Logger.e(Logger.NETWORK_TAG, "error while handling response: " + twVar, exc);
        d(ubVar, twVar);
    }

    protected void d(ub ubVar, tw twVar) {
        Logger.w(Logger.NETWORK_TAG, ubVar.a() + " failed permanently with response code " + twVar.b());
    }

    protected boolean a(int i) {
        return i == 200;
    }

    protected boolean b(int i) {
        return (i == 408 || i == 603) ? false : true;
    }
}
