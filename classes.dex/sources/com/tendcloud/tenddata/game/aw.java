package com.tendcloud.tenddata.game;

import com.facebook.ads.AudienceNetworkActivity;
import com.tendcloud.tenddata.TalkingDataGA;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class aw {
    static String b = "tdgadatabase";
    static String c = AudienceNetworkActivity.WEBVIEW_ENCODING;
    static m a = new m(TalkingDataGA.a, "tdandroidgame");

    static synchronized List a() {
        List list;
        File databasePath = TalkingDataGA.a.getDatabasePath("TDGAtcagentgame.db");
        list = null;
        if (databasePath.exists()) {
            List listA = new av().a();
            databasePath.delete();
            if (listA != null && listA.size() > 0) {
                Iterator it = listA.iterator();
                while (it.hasNext()) {
                    try {
                        a.a(((ap) it.next()).b.getBytes(c));
                        a.b();
                    } catch (UnsupportedEncodingException e) {
                    } catch (IOException e2) {
                    }
                }
            }
            list = listA;
        }
        List listA2 = a.a(200);
        if (listA2.size() > 0) {
            ArrayList arrayList = new ArrayList();
            Iterator it2 = listA2.iterator();
            while (it2.hasNext()) {
                try {
                    arrayList.add(new ap(new String((byte[]) it2.next(), c)));
                } catch (UnsupportedEncodingException e3) {
                }
            }
            list = arrayList;
        }
        return list;
    }

    static synchronized boolean a(bz bzVar) {
        boolean z;
        z = false;
        try {
            be.b(bzVar);
            a.a(bzVar.c().getBytes(c));
            a.b();
            z = true;
        } catch (UnsupportedEncodingException e) {
        } catch (IOException e2) {
        }
        return z;
    }

    public static synchronized boolean b() {
        boolean z;
        try {
            a.a();
            z = true;
        } catch (IOException e) {
            e.printStackTrace();
            z = false;
        }
        return z;
    }
}
