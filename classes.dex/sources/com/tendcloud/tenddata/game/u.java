package com.tendcloud.tenddata.game;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class u {
    private u() {
        throw new AssertionError("no instances");
    }

    public static List a() {
        ArrayList arrayList = new ArrayList();
        try {
            for (File file : new File("/proc").listFiles()) {
                if (file.isDirectory()) {
                    try {
                        int i = Integer.parseInt(file.getName());
                        try {
                            a aVar = new a(-1);
                            if ((aVar.b < 1000 || aVar.b > 9999) && !aVar.c.contains(":") && !aVar.c.contains("/")) {
                                arrayList.add(new a(i));
                            }
                        } catch (Throwable th) {
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
        } catch (Throwable th2) {
        }
        return arrayList;
    }

    public static List a(Context context) {
        ArrayList arrayList = new ArrayList();
        try {
            File[] fileArrListFiles = new File("/proc").listFiles();
            context.getPackageManager();
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    try {
                        try {
                            a aVar = new a(Integer.parseInt(file.getName()));
                            if (aVar.a && ((aVar.b < 1000 || aVar.b > 9999) && !aVar.c.contains(":") && !aVar.c.contains("/"))) {
                                arrayList.add(aVar);
                            }
                        } catch (Throwable th) {
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
        } catch (Throwable th2) {
        }
        return arrayList;
    }

    public static List b(Context context) {
        if (Build.VERSION.SDK_INT < 22) {
            return ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        }
        List<a> listA = a();
        ArrayList arrayList = new ArrayList();
        for (a aVar : listA) {
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo(aVar.c, aVar.d, null);
            runningAppProcessInfo.uid = aVar.b;
            arrayList.add(runningAppProcessInfo);
        }
        return arrayList;
    }

    public static boolean b() {
        List<a> listA = a();
        int iMyPid = Process.myPid();
        for (a aVar : listA) {
            if (aVar.d == iMyPid && aVar.a) {
                return true;
            }
        }
        return false;
    }
}
