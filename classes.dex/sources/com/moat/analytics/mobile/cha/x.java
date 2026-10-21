package com.moat.analytics.mobile.cha;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.cha.base.functional.Optional;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
final class x {

    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    private static final LinkedHashSet<String> f225 = new LinkedHashSet<>();

    x() {
    }

    @NonNull
    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    static Optional<WebView> m186(ViewGroup viewGroup, boolean z) {
        try {
            if (viewGroup == null) {
                return Optional.empty();
            }
            if (viewGroup instanceof WebView) {
                return Optional.of((WebView) viewGroup);
            }
            LinkedList linkedList = new LinkedList();
            linkedList.add(viewGroup);
            int i = 0;
            WebView webView = null;
            while (!linkedList.isEmpty() && i < 100) {
                int i2 = i + 1;
                ViewGroup viewGroup2 = (ViewGroup) linkedList.poll();
                int childCount = viewGroup2.getChildCount();
                int i3 = 0;
                while (true) {
                    if (i3 >= childCount) {
                        i = i2;
                        break;
                    }
                    View childAt = viewGroup2.getChildAt(i3);
                    if (childAt instanceof WebView) {
                        a.m15(3, "WebViewHound", childAt, "Found WebView");
                        if (z || m187(String.valueOf(childAt.hashCode()))) {
                            if (webView == null) {
                                webView = (WebView) childAt;
                            } else {
                                a.m15(3, "WebViewHound", childAt, "Ambiguous ad container: multiple WebViews reside within it.");
                                a.m12("[ERROR] ", "WebAdTracker not created, ambiguous ad container: multiple WebViews reside within it");
                                i = i2;
                                webView = null;
                                break;
                            }
                        }
                    }
                    if (childAt instanceof ViewGroup) {
                        linkedList.add((ViewGroup) childAt);
                    }
                    i3++;
                }
            }
            return Optional.ofNullable(webView);
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    /* JADX INFO: renamed from: ˊ, reason: contains not printable characters */
    private static boolean m187(String str) {
        try {
            boolean zAdd = f225.add(str);
            if (f225.size() > 50) {
                Iterator<String> it = f225.iterator();
                for (int i = 0; i < 25 && it.hasNext(); i++) {
                    it.next();
                    it.remove();
                }
            }
            a.m15(3, "WebViewHound", null, zAdd ? "Newly Found WebView" : "Already Found WebView");
            return zAdd;
        } catch (Exception e) {
            o.m131(e);
            return false;
        }
    }
}
