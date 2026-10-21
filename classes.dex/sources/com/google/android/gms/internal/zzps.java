package com.google.android.gms.internal;

import android.app.Dialog;
import android.app.PendingIntent;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.MainThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.GoogleApiActivity;
import com.google.android.gms.internal.zzqj;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzps extends zzqo implements DialogInterface.OnCancelListener {
    protected boolean mStarted;
    protected final GoogleApiAvailability rX;
    protected boolean sB;
    private ConnectionResult sC;
    private int sD;
    private final Handler sE;

    private class zza implements Runnable {
        private zza() {
        }

        @Override // java.lang.Runnable
        @MainThread
        public void run() {
            if (zzps.this.mStarted) {
                if (zzps.this.sC.hasResolution()) {
                    zzps.this.va.startActivityForResult(GoogleApiActivity.zzb(zzps.this.getActivity(), zzps.this.sC.getResolution(), zzps.this.sD, false), 1);
                    return;
                }
                if (zzps.this.rX.isUserResolvableError(zzps.this.sC.getErrorCode())) {
                    zzps.this.rX.zza(zzps.this.getActivity(), zzps.this.va, zzps.this.sC.getErrorCode(), 2, zzps.this);
                } else if (zzps.this.sC.getErrorCode() != 18) {
                    zzps.this.zza(zzps.this.sC, zzps.this.sD);
                } else {
                    final Dialog dialogZza = zzps.this.rX.zza(zzps.this.getActivity(), zzps.this);
                    zzps.this.rX.zza(zzps.this.getActivity().getApplicationContext(), new zzqj.zza() { // from class: com.google.android.gms.internal.zzps.zza.1
                        @Override // com.google.android.gms.internal.zzqj.zza
                        public void zzaor() {
                            zzps.this.zzaoq();
                            if (dialogZza.isShowing()) {
                                dialogZza.dismiss();
                            }
                        }
                    });
                }
            }
        }
    }

    protected zzps(zzqp zzqpVar) {
        this(zzqpVar, GoogleApiAvailability.getInstance());
    }

    zzps(zzqp zzqpVar, GoogleApiAvailability googleApiAvailability) {
        super(zzqpVar);
        this.sD = -1;
        this.sE = new Handler(Looper.getMainLooper());
        this.rX = googleApiAvailability;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /* JADX WARN: Removed duplicated region for block: B:6:0x000c  */
    @Override // com.google.android.gms.internal.zzqo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            r4 = 18
            r2 = 13
            r0 = 1
            r1 = 0
            switch(r6) {
                case 1: goto L27;
                case 2: goto L10;
                default: goto L9;
            }
        L9:
            r0 = r1
        La:
            if (r0 == 0) goto L3d
            r5.zzaoq()
        Lf:
            return
        L10:
            com.google.android.gms.common.GoogleApiAvailability r2 = r5.rX
            android.app.Activity r3 = r5.getActivity()
            int r2 = r2.isGooglePlayServicesAvailable(r3)
            if (r2 != 0) goto L47
        L1c:
            com.google.android.gms.common.ConnectionResult r1 = r5.sC
            int r1 = r1.getErrorCode()
            if (r1 != r4) goto La
            if (r2 != r4) goto La
            goto Lf
        L27:
            r3 = -1
            if (r7 == r3) goto La
            if (r7 != 0) goto L9
            if (r8 == 0) goto L45
            java.lang.String r0 = "<<ResolutionFailureErrorDetail>>"
            int r0 = r8.getIntExtra(r0, r2)
        L34:
            com.google.android.gms.common.ConnectionResult r2 = new com.google.android.gms.common.ConnectionResult
            r3 = 0
            r2.<init>(r0, r3)
            r5.sC = r2
            goto L9
        L3d:
            com.google.android.gms.common.ConnectionResult r0 = r5.sC
            int r1 = r5.sD
            r5.zza(r0, r1)
            goto Lf
        L45:
            r0 = r2
            goto L34
        L47:
            r0 = r1
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzps.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        zza(new ConnectionResult(13, null), this.sD);
        zzaoq();
    }

    @Override // com.google.android.gms.internal.zzqo
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.sB = bundle.getBoolean("resolving_error", false);
            if (this.sB) {
                this.sD = bundle.getInt("failed_client_id", -1);
                this.sC = new ConnectionResult(bundle.getInt("failed_status"), (PendingIntent) bundle.getParcelable("failed_resolution"));
            }
        }
    }

    @Override // com.google.android.gms.internal.zzqo
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", this.sB);
        if (this.sB) {
            bundle.putInt("failed_client_id", this.sD);
            bundle.putInt("failed_status", this.sC.getErrorCode());
            bundle.putParcelable("failed_resolution", this.sC.getResolution());
        }
    }

    @Override // com.google.android.gms.internal.zzqo
    public void onStart() {
        super.onStart();
        this.mStarted = true;
    }

    @Override // com.google.android.gms.internal.zzqo
    public void onStop() {
        super.onStop();
        this.mStarted = false;
    }

    protected abstract void zza(ConnectionResult connectionResult, int i);

    protected abstract void zzaol();

    protected void zzaoq() {
        this.sD = -1;
        this.sB = false;
        this.sC = null;
        zzaol();
    }

    public void zzb(ConnectionResult connectionResult, int i) {
        if (this.sB) {
            return;
        }
        this.sB = true;
        this.sD = i;
        this.sC = connectionResult;
        this.sE.post(new zza());
    }
}
