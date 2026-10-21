package com.vungle.publisher;

import android.webkit.JsPromptResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.facebook.internal.NativeProtocol;
import com.facebook.share.internal.ShareConstants;
import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.ji;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class lw extends WebChromeClient {

    @Inject
    qg a;

    @Inject
    public lw() {
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView view, String url, String message, String defaultValue, JsPromptResult result) {
        Logger.v(Logger.AD_TAG, "js prompt: " + message);
        boolean zStartsWith = message.startsWith("vungle:");
        if (zStartsWith) {
            String strSubstring = null;
            try {
                strSubstring = message.substring("vungle:".length());
                JSONObject jSONObject = new JSONObject(strSubstring);
                String string = jSONObject.getString(Constants.ParametersKeys.METHOD);
                jSONObject.getString(NativeProtocol.WEB_DIALOG_PARAMS);
                a(string);
            } catch (IndexOutOfBoundsException e) {
                Logger.w(Logger.AD_TAG, "no javascript method call");
            } catch (JSONException e2) {
                Logger.w(Logger.AD_TAG, "invalid json " + strSubstring, e2);
            } catch (Exception e3) {
                Logger.e(Logger.AD_TAG, e3);
            }
            result.cancel();
        }
        return zStartsWith;
    }

    boolean a(String str) {
        if ("close".equalsIgnoreCase(str)) {
            this.a.a(new ao());
            return true;
        }
        if ("download".equalsIgnoreCase(str)) {
            this.a.a(new aa(ji.a.postroll_click));
            return true;
        }
        if (ShareConstants.WEB_DIALOG_PARAM_PRIVACY.equalsIgnoreCase(str)) {
            this.a.a(new aq());
            return true;
        }
        Logger.w(Logger.AD_TAG, "unknown javascript method: " + str);
        return false;
    }
}
