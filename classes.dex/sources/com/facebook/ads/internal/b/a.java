package com.facebook.ads.internal.b;

import android.os.Bundle;
import android.os.Parcelable;
import android.view.View;
import com.facebook.ads.internal.q.a.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class a implements o<Bundle> {
    private final View a;
    private final List<d> b;
    private c c;

    public a(View view, List<b> list) {
        this.a = view;
        this.b = new ArrayList(list.size());
        Iterator<b> it = list.iterator();
        while (it.hasNext()) {
            this.b.add(new d(it.next()));
        }
        this.c = new c();
    }

    public a(View view, List<b> list, Bundle bundle) {
        this.a = view;
        this.b = new ArrayList(list.size());
        ArrayList parcelableArrayList = bundle.getParcelableArrayList("TESTS");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= list.size()) {
                this.c = (c) bundle.getSerializable("STATISTICS");
                return;
            } else {
                this.b.add(new d(list.get(i2), (Bundle) parcelableArrayList.get(i2)));
                i = i2 + 1;
            }
        }
    }

    public void a() {
        this.c.a();
    }

    public void a(double d, double d2) {
        if (d2 >= 0.0d) {
            this.c.b(d, d2);
        }
        double dC = com.facebook.ads.internal.r.a.a(this.a, 0).c();
        this.c.a(d, dC);
        Iterator<d> it = this.b.iterator();
        while (it.hasNext()) {
            it.next().a(d, dC);
        }
    }

    public c b() {
        return this.c;
    }

    @Override // com.facebook.ads.internal.q.a.o
    public Bundle g() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("STATISTICS", this.c);
        ArrayList<? extends Parcelable> arrayList = new ArrayList<>(this.b.size());
        Iterator<d> it = this.b.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().g());
        }
        bundle.putParcelableArrayList("TESTS", arrayList);
        return bundle;
    }
}
