package com.facebook.ads.internal.q.a;

import android.app.Activity;
import android.support.annotation.Nullable;
import com.ironsource.sdk.constants.Constants;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {
    @Nullable
    public static Activity a() {
        try {
            return b();
        } catch (Exception e) {
            return null;
        }
    }

    private static Activity b() throws IllegalAccessException, NoSuchFieldException, ClassNotFoundException, InvocationTargetException {
        Class<?> cls = Class.forName("android.app.ActivityThread");
        Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
        Field declaredField = cls.getDeclaredField("mActivities");
        declaredField.setAccessible(true);
        Map map = (Map) declaredField.get(objInvoke);
        if (map == null) {
            return null;
        }
        for (Object obj : map.values()) {
            Class<?> cls2 = obj.getClass();
            Field declaredField2 = cls2.getDeclaredField(Constants.ParametersKeys.VIDEO_STATUS_PAUSED);
            declaredField2.setAccessible(true);
            if (!declaredField2.getBoolean(obj)) {
                Field declaredField3 = cls2.getDeclaredField("activity");
                declaredField3.setAccessible(true);
                return (Activity) declaredField3.get(obj);
            }
        }
        return null;
    }
}
