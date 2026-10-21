package com.moat.analytics.mobile.iro;

import android.support.annotation.NonNull;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.iro.base.functional.Optional;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
final class v {

    /* JADX INFO: renamed from: ˎ, reason: contains not printable characters */
    private static LinkedHashSet<String> f426 = new LinkedHashSet<>();

    v() {
    }

    @NonNull
    /* JADX INFO: renamed from: ˋ, reason: contains not printable characters */
    static Optional<WebView> m354(ViewGroup viewGroup, boolean z) {
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
                        b.m203(3, "WebViewHound", childAt, "Found WebView");
                        if (z || m355(String.valueOf(childAt.hashCode()))) {
                            if (webView == null) {
                                webView = (WebView) childAt;
                            } else {
                                b.m203(3, "WebViewHound", childAt, "Ambiguous ad container: multiple WebViews reside within it.");
                                b.m201("[ERROR] ", "WebAdTracker not created, ambiguous ad container: multiple WebViews reside within it");
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

    /* JADX INFO: renamed from: ॱ, reason: contains not printable characters */
    private static boolean m355(String str) {
        try {
            boolean zAdd = f426.add(str);
            if (f426.size() > 50) {
                Iterator<String> it = f426.iterator();
                for (int i = 0; i < 25 && it.hasNext(); i++) {
                    it.next();
                    it.remove();
                }
            }
            b.m203(3, "WebViewHound", null, zAdd ? "Newly Found WebView" : "Already Found WebView");
            return zAdd;
        } catch (Exception e) {
            o.m311(e);
            return false;
        }
    }
}
