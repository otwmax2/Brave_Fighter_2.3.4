package com.vungle.publisher;

import android.content.Context;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.vungle.publisher.image.AssetBitmapFactory;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public class ro extends RelativeLayout {
    private ImageView a;

    /* JADX INFO: compiled from: vungle */
    public enum b {
        visible,
        invisible,
        gone
    }

    private ro(Context context) {
        super(context);
    }

    public void setCloseVisibility(b visibility) {
        switch (visibility) {
            case visible:
                this.a.setVisibility(0);
                setVisibility(0);
                break;
            case invisible:
                this.a.setVisibility(4);
                setVisibility(0);
                break;
            case gone:
                setVisibility(8);
                break;
        }
    }

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes.dex */
    @Singleton
    public static class a {

        @Inject
        Context a;

        @Inject
        mv b;

        @Inject
        zo c;

        @Inject
        a() {
        }

        public ro a() {
            ro roVar = new ro(this.a);
            ImageView imageView = new ImageView(this.a);
            roVar.a = imageView;
            this.c.a(imageView, AssetBitmapFactory.a.close);
            roVar.addView(imageView);
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
            layoutParams.addRule(11);
            layoutParams.addRule(10);
            roVar.setCloseVisibility(b.gone);
            return roVar;
        }

        public void a(ro roVar) {
            try {
                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) roVar.getLayoutParams();
                int iA = (int) this.b.a(50);
                layoutParams.width = iA;
                layoutParams.height = iA;
            } catch (Exception e) {
                Logger.e(Logger.AD_TAG, "could not set close region dimensions. did you add it to a view yet?");
            }
        }
    }
}
