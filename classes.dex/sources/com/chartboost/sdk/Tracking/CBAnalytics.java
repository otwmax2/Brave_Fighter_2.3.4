package com.chartboost.sdk.Tracking;

import android.text.TextUtils;
import com.chartboost.sdk.Libraries.CBLogging;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.h;
import com.chartboost.sdk.impl.ah;
import com.chartboost.sdk.impl.aj;
import com.chartboost.sdk.impl.ap;
import com.ironsource.eventsmodule.DataBaseEventsStorage;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CBAnalytics {

    public enum CBIAPPurchaseInfo {
        PRODUCT_ID,
        PRODUCT_TITLE,
        PRODUCT_DESCRIPTION,
        PRODUCT_PRICE,
        PRODUCT_CURRENCY_CODE,
        GOOGLE_PURCHASE_DATA,
        GOOGLE_PURCHASE_SIGNATURE,
        AMAZON_PURCHASE_TOKEN,
        AMAZON_USER_ID
    }

    public enum CBIAPType {
        GOOGLE_PLAY,
        AMAZON
    }

    private CBAnalytics() {
    }

    public enum CBLevelType {
        HIGHEST_LEVEL_REACHED(1),
        CURRENT_AREA(2),
        CHARACTER_LEVEL(3),
        OTHER_SEQUENTIAL(4),
        OTHER_NONSEQUENTIAL(5);

        private final int a;

        CBLevelType(int value) {
            this.a = value;
        }

        public int getLevelType() {
            return this.a;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x004b A[Catch: all -> 0x00a1, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0005, B:7:0x0013, B:9:0x0021, B:11:0x002f, B:13:0x003d, B:18:0x0054, B:15:0x004b), top: B:23:0x0005 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized void trackInAppPurchaseEvent(java.util.EnumMap<com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo, java.lang.String> r11, com.chartboost.sdk.Tracking.CBAnalytics.CBIAPType r12) {
        /*
            r10 = this;
            monitor-enter(r10)
            if (r11 == 0) goto L4b
            if (r12 == 0) goto L4b
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_ID     // Catch: java.lang.Throwable -> La1
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Throwable -> La1
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> La1
            if (r0 != 0) goto L4b
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_TITLE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Throwable -> La1
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> La1
            if (r0 != 0) goto L4b
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_DESCRIPTION     // Catch: java.lang.Throwable -> La1
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Throwable -> La1
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> La1
            if (r0 != 0) goto L4b
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_PRICE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Throwable -> La1
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> La1
            if (r0 != 0) goto L4b
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_CURRENCY_CODE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0     // Catch: java.lang.Throwable -> La1
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Throwable -> La1
            if (r0 == 0) goto L54
        L4b:
            java.lang.String r0 = "CBPostInstallTracker"
            java.lang.String r1 = "Null object is passed. Please pass a valid value object"
            com.chartboost.sdk.Libraries.CBLogging.b(r0, r1)     // Catch: java.lang.Throwable -> La1
        L52:
            monitor-exit(r10)
            return
        L54:
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.GOOGLE_PURCHASE_DATA     // Catch: java.lang.Throwable -> La1
            java.lang.Object r5 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.GOOGLE_PURCHASE_SIGNATURE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r6 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.AMAZON_USER_ID     // Catch: java.lang.Throwable -> La1
            java.lang.Object r7 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.String r7 = (java.lang.String) r7     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.AMAZON_PURCHASE_TOKEN     // Catch: java.lang.Throwable -> La1
            java.lang.Object r8 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.String r8 = (java.lang.String) r8     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r0 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_ID     // Catch: java.lang.Throwable -> La1
            java.lang.Object r0 = r11.get(r0)     // Catch: java.lang.Throwable -> La1
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r1 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_TITLE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r1 = r11.get(r1)     // Catch: java.lang.Throwable -> La1
            java.lang.String r1 = (java.lang.String) r1     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r2 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_DESCRIPTION     // Catch: java.lang.Throwable -> La1
            java.lang.Object r2 = r11.get(r2)     // Catch: java.lang.Throwable -> La1
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r3 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_PRICE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r3 = r11.get(r3)     // Catch: java.lang.Throwable -> La1
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Throwable -> La1
            com.chartboost.sdk.Tracking.CBAnalytics$CBIAPPurchaseInfo r4 = com.chartboost.sdk.Tracking.CBAnalytics.CBIAPPurchaseInfo.PRODUCT_CURRENCY_CODE     // Catch: java.lang.Throwable -> La1
            java.lang.Object r4 = r11.get(r4)     // Catch: java.lang.Throwable -> La1
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> La1
            r9 = r12
            a(r0, r1, r2, r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> La1
            goto L52
        La1:
            r0 = move-exception
            monitor-exit(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.Tracking.CBAnalytics.trackInAppPurchaseEvent(java.util.EnumMap, com.chartboost.sdk.Tracking.CBAnalytics$CBIAPType):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00bc A[Catch: all -> 0x001e, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0010, B:11:0x0016, B:16:0x0021, B:18:0x0027, B:20:0x002d, B:22:0x0033, B:24:0x0039, B:28:0x0047, B:30:0x005e, B:35:0x006f, B:37:0x0074, B:39:0x007a, B:41:0x0080, B:44:0x008e, B:46:0x00bc, B:55:0x010f, B:43:0x0086, B:47:0x00c5, B:49:0x00cb, B:51:0x00d1, B:54:0x00e0, B:53:0x00d7, B:33:0x0067, B:26:0x003f), top: B:60:0x0003, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x010f A[Catch: all -> 0x001e, TRY_LEAVE, TryCatch #1 {, blocks: (B:4:0x0003, B:6:0x0007, B:9:0x0010, B:11:0x0016, B:16:0x0021, B:18:0x0027, B:20:0x002d, B:22:0x0033, B:24:0x0039, B:28:0x0047, B:30:0x005e, B:35:0x006f, B:37:0x0074, B:39:0x007a, B:41:0x0080, B:44:0x008e, B:46:0x00bc, B:55:0x010f, B:43:0x0086, B:47:0x00c5, B:49:0x00cb, B:51:0x00d1, B:54:0x00e0, B:53:0x00d7, B:33:0x0067, B:26:0x003f), top: B:60:0x0003, inners: #0 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static synchronized void a(java.lang.String r8, java.lang.String r9, java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, java.lang.String r14, java.lang.String r15, java.lang.String r16, com.chartboost.sdk.Tracking.CBAnalytics.CBIAPType r17) {
        /*
            Method dump skipped, instruction units count: 364
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.chartboost.sdk.Tracking.CBAnalytics.a(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String, com.chartboost.sdk.Tracking.CBAnalytics$CBIAPType):void");
    }

    public static synchronized void trackInAppGooglePlayPurchaseEvent(String title, String description, String price, String currency, String productID, String purchaseData, String purchaseSignature) {
        a(productID, title, description, price, currency, purchaseData, purchaseSignature, null, null, CBIAPType.GOOGLE_PLAY);
    }

    public static synchronized void trackInAppAmazonStorePurchaseEvent(String title, String description, String price, String currency, String productID, String userID, String purchaseToken) {
        a(productID, title, description, price, currency, null, null, userID, purchaseToken, CBIAPType.AMAZON);
    }

    public static synchronized void trackLevelInfo(String eventLabel, CBLevelType type, int mainLevel, String description) {
        trackLevelInfo(eventLabel, type, mainLevel, 0, description);
    }

    public static synchronized void trackLevelInfo(String eventLabel, CBLevelType type, int mainLevel, int subLevel, String description) {
        h hVarA = h.a();
        if (hVarA == null) {
            CBLogging.b("CBPostInstallTracker", "trackLevelInfo: SDK is not initialized");
        } else if (TextUtils.isEmpty(eventLabel)) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: event label cannot be empty or null");
        } else if (type == null) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: level type cannot be empty or null, please choose from one of the CBLevelType enum values");
        } else if (mainLevel < 0 || subLevel < 0) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: Level number should be > 0");
        } else if (description.isEmpty()) {
            CBLogging.b("CBPostInstallTracker", "Invalid value: description cannot be empty or null");
        } else {
            JSONObject jSONObjectA = e.a(e.a("event_label", eventLabel), e.a("event_field", Integer.valueOf(type.getLevelType())), e.a("main_level", Integer.valueOf(mainLevel)), e.a("sub_level", Integer.valueOf(subLevel)), e.a("description", description), e.a(DataBaseEventsStorage.EventEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(System.currentTimeMillis())), e.a("data_type", "level_info"));
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(jSONObjectA);
            a(hVarA.h, hVarA.j, hVarA.o, jSONArray, "tracking");
        }
    }

    private static synchronized void a(ah ahVar, ap apVar, a aVar, JSONObject jSONObject, String str, CBIAPType cBIAPType) {
        aj ajVar = new aj(String.format(Locale.US, "%s%s", "/post-install-event/", str), apVar, aVar, 2, null);
        ajVar.a(str, jSONObject);
        ajVar.l = true;
        ajVar.b(str);
        ahVar.a(ajVar);
    }

    private static synchronized void a(ah ahVar, ap apVar, a aVar, JSONArray jSONArray, String str) {
        aj ajVar = new aj("/post-install-event/".concat("tracking"), apVar, aVar, 2, null);
        ajVar.a("track_info", jSONArray);
        ajVar.l = true;
        ajVar.b(str);
        ahVar.a(ajVar);
    }
}
