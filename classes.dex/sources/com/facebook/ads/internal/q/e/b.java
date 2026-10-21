package com.facebook.ads.internal.q.e;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.util.Log;
import android.view.Window;
import com.facebook.ads.internal.q.a.x;
import com.facebook.appevents.AppEventsConstants;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {
    private static final String a = b.class.getSimpleName();

    public static Map<String, String> a(Context context) {
        HashMap map = new HashMap();
        if (context == null) {
            Log.v(a, "Null context in window interactive check.");
            return map;
        }
        try {
            map.put("kgr", String.valueOf(c(context)));
            if (context instanceof Activity) {
                Window window = ((Activity) context).getWindow();
                if (window != null) {
                    int i = window.getAttributes().flags;
                    map.put("wt", Integer.toString(window.getAttributes().type));
                    map.put("wfdkg", (4194304 & i) > 0 ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
                    map.put("wfswl", (524288 & i) > 0 ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
                } else {
                    Log.v(a, "Invalid window in window interactive check, assuming interactive.");
                }
            } else {
                Log.v(a, "Invalid Activity context in window interactive check, assuming interactive.");
            }
        } catch (Exception e) {
            Log.e(a, "Exception in window info check", e);
            com.facebook.ads.internal.q.d.a.a(e, context);
        }
        return map;
    }

    public static boolean b(Context context) {
        return !x.b(a(context));
    }

    public static boolean c(Context context) {
        KeyguardManager keyguardManager = (KeyguardManager) context.getSystemService("keyguard");
        return keyguardManager != null && keyguardManager.inKeyguardRestrictedInputMode();
    }
}
