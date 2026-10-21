package com.chartboost.sdk.InPlay;

import android.graphics.Bitmap;
import android.os.Handler;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Model.CBError;
import com.chartboost.sdk.Tracking.a;
import com.chartboost.sdk.b;
import com.chartboost.sdk.h;
import com.chartboost.sdk.impl.ah;
import com.chartboost.sdk.impl.aj;
import com.chartboost.sdk.impl.ak;
import com.chartboost.sdk.impl.ap;
import com.chartboost.sdk.impl.bg;
import com.chartboost.sdk.impl.c;
import com.chartboost.sdk.impl.c.a;
import com.chartboost.sdk.impl.e;
import com.chartboost.sdk.impl.e.a;
import com.chartboost.sdk.impl.g;
import com.chartboost.sdk.impl.s;
import com.facebook.internal.AnalyticsEvents;
import java.io.File;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public final class CBInPlay {
    private final e a;
    public final String appName;
    private final ah b;
    private final ap c;
    private final a d;
    private final ak e;
    private final com.chartboost.sdk.Model.a f;
    private Bitmap g;
    public final File largeAppIconFile;
    public final String largeAppIconUrl;
    public final String location;

    private CBInPlay(e adUnitManager, ah networkService, ap requestBodyFields, a track, ak urlOpener, com.chartboost.sdk.Model.a adUnit, String largeAppIconUrl, File largeAppIconFile, String location) {
        this.a = adUnitManager;
        this.b = networkService;
        this.c = requestBodyFields;
        this.d = track;
        this.e = urlOpener;
        this.f = adUnit;
        this.appName = adUnit.q;
        this.largeAppIconUrl = largeAppIconUrl;
        this.largeAppIconFile = largeAppIconFile;
        this.location = location;
    }

    public void show() {
        aj ajVar = new aj("/inplay/show", this.c, this.d, 2, new g(this.a, this.location));
        ajVar.j = 1;
        ajVar.a("inplay-dictionary", this.f.a);
        ajVar.a("location", this.location);
        this.b.a(ajVar);
    }

    public void click() {
        String str = this.f.j;
        String str2 = this.f.i;
        if (str2.isEmpty() || !this.e.a(str2)) {
            str2 = str;
        }
        aj ajVar = new aj("/api/click", this.c, this.d, 2, null);
        ajVar.a("location", this.location);
        ajVar.a("to", this.f.m);
        ajVar.a("cgn", this.f.g);
        ajVar.a("creative", this.f.h);
        ajVar.a("ad_id", this.f.f);
        ajVar.a("type", AnalyticsEvents.PARAMETER_SHARE_DIALOG_SHOW_NATIVE);
        if (str2 != null && !str2.isEmpty()) {
            this.e.a(null, str2, ajVar);
        } else {
            this.e.a(null, false, str2, CBError.CBClickError.URI_INVALID, ajVar);
        }
    }

    public String getLocation() {
        return this.location;
    }

    public Bitmap getAppIcon() throws Exception {
        if (this.g == null) {
            try {
                byte[] bArrB = bg.b(this.largeAppIconFile);
                if (bArrB != null) {
                    this.g = s.a().a(bArrB);
                }
                if (this.g == null) {
                    CBLogging.b("CBInPlay", "Error decoding inplay bitmap " + this.largeAppIconFile.getAbsolutePath());
                    if (!this.largeAppIconFile.delete()) {
                        CBLogging.b("CBInPlay", "Unable to delete corrupt inplay bitmap " + this.largeAppIconFile.getAbsolutePath());
                    }
                    throw new Exception("decodeByteArrayToBitmap returned null");
                }
            } catch (OutOfMemoryError e) {
                CBLogging.b("CBInPlay", "Out of memory decoding inplay bitmap " + this.largeAppIconFile.getAbsolutePath());
                throw new Exception(e);
            }
        }
        return this.g;
    }

    public String getAppName() {
        return this.appName;
    }

    public static void cacheInPlay(String location) {
        h hVarA = h.a();
        if (hVarA != null && b.a()) {
            if (s.a().a(location)) {
                CBLogging.b("CBInPlay", "cacheInPlay location cannot be empty");
                Handler handler = hVarA.p;
                c cVar = hVarA.e;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
                return;
            }
            com.chartboost.sdk.Model.e eVar = hVarA.m.get();
            if ((eVar.y && eVar.z) || (eVar.e && eVar.f)) {
                e eVar2 = hVarA.d;
                eVar2.getClass();
                hVarA.a.execute(eVar2.new a(3, location, null, null));
                return;
            }
            Handler handler2 = hVarA.p;
            c cVar2 = hVarA.e;
            cVar2.getClass();
            handler2.post(cVar2.new a(4, location, CBError.CBImpressionError.END_POINT_DISABLED));
        }
    }

    public static boolean hasInPlay(String location) {
        h hVarA = h.a();
        if (hVarA == null || !b.a()) {
            return false;
        }
        if (!s.a().a(location)) {
            return hVarA.d.a(location) != null;
        }
        CBLogging.b("CBInPlay", "hasInPlay location cannot be empty");
        Handler handler = hVarA.p;
        c cVar = hVarA.e;
        cVar.getClass();
        handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
        return false;
    }

    public static CBInPlay getInPlay(String location) {
        CBInPlay cBInPlay;
        CBError.CBImpressionError cBImpressionError;
        CBInPlay cBInPlay2;
        CBInPlay cBInPlay3 = null;
        h hVarA = h.a();
        if (hVarA != null && b.a()) {
            if (s.a().a(location)) {
                CBLogging.b("CBInPlay", "Inplay location cannot be empty");
                Handler handler = hVarA.p;
                c cVar = hVarA.e;
                cVar.getClass();
                handler.post(cVar.new a(4, location, CBError.CBImpressionError.INVALID_LOCATION));
            } else {
                com.chartboost.sdk.Model.e eVar = hVarA.m.get();
                CBError.CBImpressionError cBImpressionError2 = CBError.CBImpressionError.NO_AD_FOUND;
                if ((eVar.y && eVar.z) || (eVar.e && eVar.f)) {
                    com.chartboost.sdk.Model.a aVarA = hVarA.d.a(location);
                    if (aVarA != null) {
                        com.chartboost.sdk.Model.b bVar = aVarA.c.get("lg");
                        if (bVar != null) {
                            File fileA = bVar.a(hVarA.d.b.d().a);
                            if (!fileA.exists()) {
                                cBImpressionError = CBError.CBImpressionError.ASSET_MISSING;
                                cBInPlay2 = null;
                            } else {
                                CBInPlay cBInPlay4 = new CBInPlay(hVarA.d, hVarA.h, hVarA.j, hVarA.o, hVarA.r, aVarA, bVar.c, fileA, location);
                                cBImpressionError = cBImpressionError2;
                                cBInPlay2 = cBInPlay4;
                            }
                        } else {
                            cBImpressionError = cBImpressionError2;
                            cBInPlay2 = null;
                        }
                        Executor executor = hVarA.a;
                        e eVar2 = hVarA.d;
                        eVar2.getClass();
                        executor.execute(eVar2.new a(8, location, null, null));
                        cBImpressionError2 = cBImpressionError;
                        cBInPlay = cBInPlay2;
                    } else {
                        cBInPlay = null;
                    }
                    if (cBInPlay == null) {
                        Executor executor2 = hVarA.a;
                        e eVar3 = hVarA.d;
                        eVar3.getClass();
                        executor2.execute(eVar3.new a(3, location, null, null));
                    }
                    cBInPlay3 = cBInPlay;
                }
                if (cBInPlay3 == null) {
                    Handler handler2 = hVarA.p;
                    c cVar2 = hVarA.e;
                    cVar2.getClass();
                    handler2.post(cVar2.new a(4, location, cBImpressionError2));
                }
            }
        }
        return cBInPlay3;
    }
}
