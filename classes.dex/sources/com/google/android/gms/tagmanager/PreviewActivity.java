package com.google.android.gms.tagmanager;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;

/* JADX INFO: loaded from: classes.dex */
public class PreviewActivity extends Activity {
    private void zzm(String str, String str2, String str3) {
        AlertDialog alertDialogCreate = new AlertDialog.Builder(this).create();
        alertDialogCreate.setTitle(str);
        alertDialogCreate.setMessage(str2);
        alertDialogCreate.setButton(-1, str3, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.tagmanager.PreviewActivity.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
            }
        });
        alertDialogCreate.show();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        try {
            super.onCreate(bundle);
            zzbn.zzcx("Preview activity");
            Uri data = getIntent().getData();
            if (!TagManager.getInstance(this).zzt(data)) {
                String strValueOf = String.valueOf(data);
                String string = new StringBuilder(String.valueOf(strValueOf).length() + 73).append("Cannot preview the app with the uri: ").append(strValueOf).append(". Launching current version instead.").toString();
                zzbn.zzcy(string);
                zzm("Preview failure", string, "Continue");
            }
            Intent launchIntentForPackage = getPackageManager().getLaunchIntentForPackage(getPackageName());
            if (launchIntentForPackage == null) {
                String strValueOf2 = String.valueOf(getPackageName());
                zzbn.zzcx(strValueOf2.length() != 0 ? "No launch activity found for package name: ".concat(strValueOf2) : new String("No launch activity found for package name: "));
            } else {
                String strValueOf3 = String.valueOf(getPackageName());
                zzbn.zzcx(strValueOf3.length() != 0 ? "Invoke the launch activity for package name: ".concat(strValueOf3) : new String("Invoke the launch activity for package name: "));
                startActivity(launchIntentForPackage);
            }
        } catch (Exception e) {
            String strValueOf4 = String.valueOf(e.getMessage());
            zzbn.e(strValueOf4.length() != 0 ? "Calling preview threw an exception: ".concat(strValueOf4) : new String("Calling preview threw an exception: "));
        }
    }
}
