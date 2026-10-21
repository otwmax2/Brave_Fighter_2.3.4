package com.facebook.ads.internal.c;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import android.text.TextUtils;
import com.facebook.ads.internal.c.c;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.ironsource.sdk.constants.Constants;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class a {
    public static final String a = a.class.getSimpleName();
    private final String b;
    private final boolean c;
    private final c d;

    /* JADX INFO: renamed from: com.facebook.ads.internal.c.a$a, reason: collision with other inner class name */
    private static final class C0009a implements IInterface {
        private IBinder a;

        C0009a(IBinder iBinder) {
            this.a = iBinder;
        }

        public String a() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.a.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readString();
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this.a;
        }

        public boolean b() {
            Parcel parcelObtain = Parcel.obtain();
            Parcel parcelObtain2 = Parcel.obtain();
            try {
                parcelObtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                parcelObtain.writeInt(1);
                this.a.transact(2, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                return parcelObtain2.readInt() != 0;
            } finally {
                parcelObtain2.recycle();
                parcelObtain.recycle();
            }
        }
    }

    private static final class b implements ServiceConnection {
        private AtomicBoolean a;
        private final BlockingQueue<IBinder> b;

        private b() {
            this.a = new AtomicBoolean(false);
            this.b = new LinkedBlockingDeque();
        }

        public IBinder a() {
            if (this.a.compareAndSet(true, true)) {
                throw new IllegalStateException("Binder already consumed");
            }
            return this.b.take();
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                this.b.put(iBinder);
            } catch (InterruptedException e) {
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public enum c {
        SHARED_PREFS,
        FB4A,
        DIRECT,
        REFLECTION,
        SERVICE
    }

    private a(String str, boolean z, c cVar) {
        this.b = str;
        this.c = z;
        this.d = cVar;
    }

    private static a a(Context context) {
        try {
            AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
            if (advertisingIdInfo != null) {
                return new a(advertisingIdInfo.getId(), advertisingIdInfo.isLimitAdTrackingEnabled(), c.DIRECT);
            }
        } catch (Throwable th) {
        }
        return null;
    }

    public static a a(Context context, c.a aVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("Cannot get advertising info on main thread.");
        }
        if (com.facebook.ads.internal.q.a.b.a() && com.facebook.ads.internal.q.a.b.b("idfa_override")) {
            return new a(com.facebook.ads.internal.q.a.b.a("idfa_override"), false, c.DIRECT);
        }
        if (aVar != null && !TextUtils.isEmpty(aVar.b)) {
            return new a(aVar.b, aVar.c, c.FB4A);
        }
        a aVarA = a(context);
        if (aVarA == null || TextUtils.isEmpty(aVarA.a())) {
            aVarA = b(context);
        }
        return (aVarA == null || TextUtils.isEmpty(aVarA.a())) ? c(context) : aVarA;
    }

    private static a b(Context context) {
        Object objA;
        Method methodA = d.a("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", (Class<?>[]) new Class[]{Context.class});
        if (methodA == null) {
            return null;
        }
        Object objA2 = d.a((Object) null, methodA, context);
        if (objA2 == null || ((Integer) objA2).intValue() != 0) {
            return null;
        }
        Method methodA2 = d.a("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", (Class<?>[]) new Class[]{Context.class});
        if (methodA2 != null && (objA = d.a((Object) null, methodA2, context)) != null) {
            Method methodA3 = d.a(objA.getClass(), "getId", (Class<?>[]) new Class[0]);
            Method methodA4 = d.a(objA.getClass(), Constants.RequestParameters.isLAT, (Class<?>[]) new Class[0]);
            if (methodA3 == null || methodA4 == null) {
                return null;
            }
            return new a((String) d.a(objA, methodA3, new Object[0]), ((Boolean) d.a(objA, methodA4, new Object[0])).booleanValue(), c.REFLECTION);
        }
        return null;
    }

    private static a c(Context context) {
        b bVar = new b();
        Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, bVar, 1)) {
            try {
                C0009a c0009a = new C0009a(bVar.a());
                return new a(c0009a.a(), c0009a.b(), c.SERVICE);
            } catch (Exception e) {
            } finally {
                context.unbindService(bVar);
            }
        }
        return null;
    }

    public String a() {
        return this.b;
    }

    public boolean b() {
        return this.c;
    }

    public c c() {
        return this.d;
    }
}
