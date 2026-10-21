package com.vungle.publisher;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import com.vungle.publisher.image.AssetBitmapFactory;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class zo {

    @Inject
    AssetBitmapFactory a;

    @Inject
    public zo() {
    }

    public void a(ImageView imageView, AssetBitmapFactory.a aVar) {
        a(imageView, a(aVar));
    }

    public void a(ImageView imageView, Bitmap bitmap) {
        if (bitmap != null) {
            imageView.setImageBitmap(bitmap);
        }
    }

    public Bitmap a(AssetBitmapFactory.a aVar) {
        return this.a.a(aVar);
    }

    public static String a(WebView webView) {
        return webView.getSettings().getUserAgentString();
    }

    public static void a(View view) {
        view.setOnTouchListener(zp.a());
    }

    static /* synthetic */ boolean a(View view, MotionEvent motionEvent) {
        return true;
    }

    public static void b(View view) {
        view.setOnTouchListener(null);
    }

    public static void a(Context context) {
        ((Activity) context).getWindow().setFlags(ViewCompat.MEASURED_STATE_TOO_SMALL, ViewCompat.MEASURED_STATE_TOO_SMALL);
    }
}
