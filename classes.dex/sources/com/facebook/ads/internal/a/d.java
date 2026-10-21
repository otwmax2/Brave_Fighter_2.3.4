package com.facebook.ads.internal.a;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public class d {

    public interface a {
        c a();

        Collection<String> b();

        String c();
    }

    public static Collection<String> a(JSONArray jSONArray) {
        if (jSONArray == null || jSONArray.length() == 0) {
            return null;
        }
        HashSet hashSet = new HashSet();
        for (int i = 0; i < jSONArray.length(); i++) {
            hashSet.add(jSONArray.optString(i));
        }
        return hashSet;
    }

    public static boolean a(Context context, a aVar, com.facebook.ads.internal.m.c cVar) {
        Collection<String> collectionB;
        boolean z;
        c cVarA = aVar.a();
        if (cVarA == null || cVarA == c.NONE || (collectionB = aVar.b()) == null || collectionB.isEmpty()) {
            return false;
        }
        Iterator<String> it = collectionB.iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            if (a(context, it.next())) {
                z = true;
                break;
            }
        }
        if (z != (cVarA == c.INSTALLED)) {
            return false;
        }
        String strC = aVar.c();
        if (TextUtils.isEmpty(strC)) {
            return true;
        }
        cVar.b(strC, null);
        return true;
    }

    public static boolean a(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            return true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        } catch (RuntimeException e2) {
            return false;
        }
    }
}
