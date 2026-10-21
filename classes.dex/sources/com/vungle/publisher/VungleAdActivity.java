package com.vungle.publisher;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import com.vungle.publisher.cn;
import com.vungle.publisher.env.r;
import com.vungle.publisher.inject.Injector;
import com.vungle.publisher.log.Logger;
import com.vungle.publisher.mg;
import java.util.logging.Level;
import javax.inject.Inject;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class VungleAdActivity extends Activity {
    public static final String AD_ID_EXTRA_KEY = "adId";
    public static final String AD_PLACEMENT_REFERENCE_ID_KEY = "placementReferenceId";
    public static final String AD_TYPE_EXTRA_KEY = "adType";
    mg<cn> a;
    String b;

    @Inject
    qg c;

    @Inject
    bz d;

    @Inject
    r e;

    @Inject
    cn.b f;

    @Inject
    lm g;

    @Inject
    mg.a h;

    @Inject
    u i;

    @Inject
    com.vungle.publisher.log.g j;

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        try {
            Logger.d(Logger.AD_TAG, "interstitial ad");
            if (!Injector.getInstance().d()) {
                this.j.b.warning("SDK not initialized");
                finish();
                return;
            }
            Injector.c().a(this);
            zo.a(this);
            Intent intent = getIntent();
            p pVarA = this.i.a(intent);
            String stringExtra = intent.getStringExtra(AD_ID_EXTRA_KEY);
            m mVar = (m) intent.getSerializableExtra(AD_TYPE_EXTRA_KEY);
            String stringExtra2 = intent.getStringExtra(AD_PLACEMENT_REFERENCE_ID_KEY);
            cn cnVarA = this.f.a(mVar, stringExtra);
            if (cnVarA == null) {
                this.j.b.warning("no ad in activity");
                this.c.a(new bq(null, stringExtra2));
                finish();
                return;
            }
            this.j.b.info("creating ad activity with status: " + cnVarA.g());
            String strE = cnVarA.e();
            if (strE != null) {
                try {
                    this.b = ra.f(new JSONObject(strE.substring(3)), "eventID");
                    this.j.b.log(Level.INFO, "extracted event id for the ad", this.b);
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            this.a = this.h.a(cnVarA);
            this.a.a(this, cnVarA, stringExtra2, pVarA, savedInstanceState);
        } catch (Exception e2) {
            Logger.e(Logger.AD_TAG, "error playing ad", e2);
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onSaveInstanceState(Bundle outState) {
        try {
            this.a.a(outState);
            super.onSaveInstanceState(outState);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in onSaveInstanceState", e);
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        this.a.a(newConfig);
        super.onConfigurationChanged(newConfig);
    }

    @Override // android.app.Activity
    protected void onResume() {
        try {
            super.onResume();
            this.e.e();
            this.g.c();
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in onResume()", e);
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        try {
            super.onPause();
            this.e.i();
            this.d.a();
            this.g.d();
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in onPause()", e);
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            this.a.a(this);
            this.e.f();
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in onDestroy()", e);
        }
        if (!isFinishing()) {
            Logger.i(Logger.AD_TAG, "finishing ad that is being destroyed");
            finish();
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        try {
            Logger.v(Logger.AD_TAG, "back button pressed");
            this.c.a(new y());
            this.a.c();
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in onBackPressed", e);
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        this.a.a(keyCode, event);
        return super.onKeyDown(keyCode, event);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean hasFocus) {
        try {
            super.onWindowFocusChanged(hasFocus);
            this.a.a(hasFocus);
        } catch (Exception e) {
            Logger.e(Logger.AD_TAG, "error in onWindowFocusChanged", e);
        }
    }
}
