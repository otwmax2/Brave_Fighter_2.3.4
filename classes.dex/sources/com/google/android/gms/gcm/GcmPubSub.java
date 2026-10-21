package com.google.android.gms.gcm;

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes.dex */
public class GcmPubSub {
    private static GcmPubSub aaD;
    private static final Pattern aaF = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    private InstanceID aaE;

    private GcmPubSub(Context context) {
        this.aaE = InstanceID.getInstance(context);
    }

    public static synchronized GcmPubSub getInstance(Context context) {
        if (aaD == null) {
            aaD = new GcmPubSub(context);
        }
        return aaD;
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void subscribe(String str, String str2, Bundle bundle) throws IOException {
        if (str == null || str.isEmpty()) {
            String strValueOf = String.valueOf(str);
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Invalid appInstanceToken: ".concat(strValueOf) : new String("Invalid appInstanceToken: "));
        }
        if (str2 == null || !aaF.matcher(str2).matches()) {
            String strValueOf2 = String.valueOf(str2);
            throw new IllegalArgumentException(strValueOf2.length() != 0 ? "Invalid topic name: ".concat(strValueOf2) : new String("Invalid topic name: "));
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("gcm.topic", str2);
        this.aaE.getToken(str, str2, bundle);
    }

    @RequiresPermission("com.google.android.c2dm.permission.RECEIVE")
    public void unsubscribe(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", str2);
        this.aaE.zzb(str, str2, bundle);
    }
}
