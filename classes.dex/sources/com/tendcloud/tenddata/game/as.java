package com.tendcloud.tenddata.game;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class as extends aq {
    private static final int b = -1;
    private List c;

    public as(List list) {
        this.c = list;
    }

    private int a(boolean z) {
        int i = -1;
        Iterator it = this.c.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return i2;
            }
            ap apVar = (ap) it.next();
            i = apVar.a > i2 ? apVar.a : i2;
        }
    }

    private void a() {
        int iA = a(true);
        if (iA != -1) {
            a(iA, "normal_event");
        }
        int iA2 = a(false);
        if (iA2 != -1) {
            a(iA2, "exception_event");
        }
        this.c = null;
    }

    void a(int i, String str) {
        this.a.delete(str, "_id<=?", new String[]{String.valueOf(i)});
    }

    @Override // com.tendcloud.tenddata.game.aq, java.lang.Runnable
    public void run() {
        if (this.c == null) {
            return;
        }
        a();
    }
}
