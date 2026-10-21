package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.LifecycleDelegate;
import java.util.Iterator;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes.dex */
public abstract class zza<T extends LifecycleDelegate> {
    private T LQ;
    private Bundle LR;
    private LinkedList<InterfaceC0087zza> LS;
    private final zzf<T> LT = (zzf<T>) new zzf<T>() { // from class: com.google.android.gms.dynamic.zza.1
        @Override // com.google.android.gms.dynamic.zzf
        public void zza(T t) {
            zza.this.LQ = t;
            Iterator it = zza.this.LS.iterator();
            while (it.hasNext()) {
                ((InterfaceC0087zza) it.next()).zzb(zza.this.LQ);
            }
            zza.this.LS.clear();
            zza.this.LR = null;
        }
    };

    /* JADX INFO: renamed from: com.google.android.gms.dynamic.zza$zza, reason: collision with other inner class name */
    private interface InterfaceC0087zza {
        int getState();

        void zzb(LifecycleDelegate lifecycleDelegate);
    }

    private void zza(Bundle bundle, InterfaceC0087zza interfaceC0087zza) {
        if (this.LQ != null) {
            interfaceC0087zza.zzb(this.LQ);
            return;
        }
        if (this.LS == null) {
            this.LS = new LinkedList<>();
        }
        this.LS.add(interfaceC0087zza);
        if (bundle != null) {
            if (this.LR == null) {
                this.LR = (Bundle) bundle.clone();
            } else {
                this.LR.putAll(bundle);
            }
        }
        zza(this.LT);
    }

    public static void zzb(FrameLayout frameLayout) {
        final Context context = frameLayout.getContext();
        final int iIsGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(context);
        String strZzc = com.google.android.gms.common.internal.zzh.zzc(context, iIsGooglePlayServicesAvailable, GooglePlayServicesUtil.zzbv(context));
        String strZzh = com.google.android.gms.common.internal.zzh.zzh(context, iIsGooglePlayServicesAvailable);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(strZzc);
        linearLayout.addView(textView);
        if (strZzh != null) {
            Button button = new Button(context);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(strZzh);
            linearLayout.addView(button);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.gms.dynamic.zza.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    context.startActivity(GooglePlayServicesUtil.zzfb(iIsGooglePlayServicesAvailable));
                }
            });
        }
    }

    private void zzmz(int i) {
        while (!this.LS.isEmpty() && this.LS.getLast().getState() >= i) {
            this.LS.removeLast();
        }
    }

    public void onCreate(final Bundle bundle) {
        zza(bundle, new InterfaceC0087zza() { // from class: com.google.android.gms.dynamic.zza.3
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public int getState() {
                return 1;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.LQ.onCreate(bundle);
            }
        });
    }

    public View onCreateView(final LayoutInflater layoutInflater, final ViewGroup viewGroup, final Bundle bundle) {
        final FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        zza(bundle, new InterfaceC0087zza() { // from class: com.google.android.gms.dynamic.zza.4
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public int getState() {
                return 2;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                frameLayout.removeAllViews();
                frameLayout.addView(zza.this.LQ.onCreateView(layoutInflater, viewGroup, bundle));
            }
        });
        if (this.LQ == null) {
            zza(frameLayout);
        }
        return frameLayout;
    }

    public void onDestroy() {
        if (this.LQ != null) {
            this.LQ.onDestroy();
        } else {
            zzmz(1);
        }
    }

    public void onDestroyView() {
        if (this.LQ != null) {
            this.LQ.onDestroyView();
        } else {
            zzmz(2);
        }
    }

    public void onInflate(final Activity activity, final Bundle bundle, final Bundle bundle2) {
        zza(bundle2, new InterfaceC0087zza() { // from class: com.google.android.gms.dynamic.zza.2
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public int getState() {
                return 0;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.LQ.onInflate(activity, bundle, bundle2);
            }
        });
    }

    public void onLowMemory() {
        if (this.LQ != null) {
            this.LQ.onLowMemory();
        }
    }

    public void onPause() {
        if (this.LQ != null) {
            this.LQ.onPause();
        } else {
            zzmz(5);
        }
    }

    public void onResume() {
        zza((Bundle) null, new InterfaceC0087zza() { // from class: com.google.android.gms.dynamic.zza.7
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public int getState() {
                return 5;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.LQ.onResume();
            }
        });
    }

    public void onSaveInstanceState(Bundle bundle) {
        if (this.LQ != null) {
            this.LQ.onSaveInstanceState(bundle);
        } else if (this.LR != null) {
            bundle.putAll(this.LR);
        }
    }

    public void onStart() {
        zza((Bundle) null, new InterfaceC0087zza() { // from class: com.google.android.gms.dynamic.zza.6
            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public int getState() {
                return 4;
            }

            @Override // com.google.android.gms.dynamic.zza.InterfaceC0087zza
            public void zzb(LifecycleDelegate lifecycleDelegate) {
                zza.this.LQ.onStart();
            }
        });
    }

    public void onStop() {
        if (this.LQ != null) {
            this.LQ.onStop();
        } else {
            zzmz(4);
        }
    }

    protected void zza(FrameLayout frameLayout) {
        zzb(frameLayout);
    }

    protected abstract void zza(zzf<T> zzfVar);

    public T zzbcr() {
        return this.LQ;
    }
}
