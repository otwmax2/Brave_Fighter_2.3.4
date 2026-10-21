package com.vungle.publisher;

import android.content.Context;
import android.widget.ImageView;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class oa extends ImageView {
    public oa(Context context) {
        super(context);
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }
}
