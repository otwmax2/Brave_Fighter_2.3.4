package com.vungle.publisher;

import android.app.AlertDialog;
import android.app.Fragment;
import android.view.KeyEvent;
import android.widget.ImageView;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public abstract class mf extends Fragment {
    AlertDialog a;
    p b;
    boolean c;

    @Inject
    mq d;

    public abstract void a();

    public abstract String b();

    public boolean a(int i, KeyEvent keyEvent) {
        return false;
    }

    public void a(boolean z) {
        Logger.v(Logger.AD_TAG, (z ? "gained" : "lost") + " window focus");
    }

    void a(ImageView imageView) {
        imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
    }
}
