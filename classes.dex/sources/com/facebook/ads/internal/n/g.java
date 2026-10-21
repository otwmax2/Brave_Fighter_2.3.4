package com.facebook.ads.internal.n;

import android.support.annotation.Nullable;
import com.ironsource.sdk.constants.Constants;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class g {
    private final double a;
    private final double b;

    public g(double d, double d2) {
        this.a = d;
        this.b = d2;
    }

    @Nullable
    public static g a(JSONObject jSONObject) {
        if (jSONObject == null) {
            return null;
        }
        double dOptDouble = jSONObject.optDouble(Constants.ParametersKeys.VALUE, 0.0d);
        double dOptDouble2 = jSONObject.optDouble("scale", 0.0d);
        if (dOptDouble == 0.0d || dOptDouble2 == 0.0d) {
            return null;
        }
        return new g(dOptDouble, dOptDouble2);
    }

    public double a() {
        return this.a;
    }

    public double b() {
        return this.b;
    }
}
