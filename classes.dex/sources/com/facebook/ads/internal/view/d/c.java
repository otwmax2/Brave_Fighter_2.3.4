package com.facebook.ads.internal.view.d;

import android.support.v7.widget.RecyclerView;
import android.view.ViewGroup;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class c extends RecyclerView.Adapter<e> {
    private final List<String> a;
    private final int b;

    c(List<String> list, int i) {
        this.a = list;
        this.b = i;
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public e onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new e(new d(viewGroup.getContext()));
    }

    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void onBindViewHolder(e eVar, int i) {
        String str = this.a.get(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = new ViewGroup.MarginLayoutParams(-2, -1);
        marginLayoutParams.setMargins(i == 0 ? this.b * 4 : this.b, 0, i >= getItemCount() + (-1) ? this.b * 4 : this.b, 0);
        eVar.a().setLayoutParams(marginLayoutParams);
        eVar.a().a(str);
    }

    public int getItemCount() {
        return this.a.size();
    }
}
