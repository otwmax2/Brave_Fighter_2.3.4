package com.google.example.games.basegameutils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.IntentSender;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.games.GamesActivityResultCodes;

/* JADX INFO: loaded from: classes.dex */
public class BaseGameUtils {
    public static void showAlert(Activity activity, String message) {
        new AlertDialog.Builder(activity).setMessage(message).setNeutralButton(android.R.string.ok, (DialogInterface.OnClickListener) null).create().show();
    }

    public static boolean resolveConnectionFailure(Activity activity, GoogleApiClient client, ConnectionResult result, int requestCode, String fallbackErrorMessage) {
        if (result.hasResolution()) {
            try {
                result.startResolutionForResult(activity, requestCode);
                return true;
            } catch (IntentSender.SendIntentException e) {
                client.connect();
                return false;
            }
        }
        int errorCode = result.getErrorCode();
        Dialog dialog = GooglePlayServicesUtil.getErrorDialog(errorCode, activity, requestCode);
        if (dialog != null) {
            dialog.show();
            return false;
        }
        showAlert(activity, fallbackErrorMessage);
        return false;
    }

    public static boolean verifySampleSetup(Activity activity, int... resIds) {
        StringBuilder problems = new StringBuilder();
        boolean problemFound = false;
        problems.append("The following set up problems were found:\n\n");
        if (activity.getPackageName().startsWith("com.google.example.games")) {
            problemFound = true;
            problems.append("- Package name cannot be com.google.*. You need to change the sample's package name to your own package.").append("\n");
        }
        int length = resIds.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            int i2 = resIds[i];
            if (!activity.getString(i2).toLowerCase().contains("replaceme")) {
                i++;
            } else {
                problemFound = true;
                problems.append("- You must replace all placeholder IDs in the ids.xml file by your project's IDs.").append("\n");
                break;
            }
        }
        if (problemFound) {
            problems.append("\n\nThese problems may prevent the app from working properly.");
            showAlert(activity, problems.toString());
            return false;
        }
        return true;
    }

    public static void showActivityResultError(Activity activity, int requestCode, int actResp, int errorCode, int errorDescription) {
        Dialog errorDialog;
        if (activity == null) {
            Log.e("BaseGameUtils", "*** No Activity. Can't show failure dialog!");
            return;
        }
        switch (actResp) {
            case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED /* 10002 */:
                errorDialog = makeSimpleDialog(activity, activity.getString(R.string.gamehelper_sign_in_failed));
                break;
            case GamesActivityResultCodes.RESULT_LICENSE_FAILED /* 10003 */:
                errorDialog = makeSimpleDialog(activity, activity.getString(R.string.gamehelper_license_failed));
                break;
            case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED /* 10004 */:
                errorDialog = makeSimpleDialog(activity, activity.getString(R.string.gamehelper_app_misconfigured));
                break;
            default:
                errorDialog = GooglePlayServicesUtil.getErrorDialog(errorCode, activity, requestCode, null);
                if (errorDialog == null) {
                    Log.e("BaseGamesUtils", "No standard error dialog available. Making fallback dialog.");
                    errorDialog = makeSimpleDialog(activity, activity.getString(errorCode) + " " + activity.getString(errorDescription));
                }
                break;
        }
        errorDialog.show();
    }

    public static Dialog makeSimpleDialog(Activity activity, String text) {
        return new AlertDialog.Builder(activity).setMessage(text).setNeutralButton(android.R.string.ok, (DialogInterface.OnClickListener) null).create();
    }

    public static Dialog makeSimpleDialog(Activity activity, String title, String text) {
        return new AlertDialog.Builder(activity).setTitle(title).setMessage(text).setNeutralButton(android.R.string.ok, (DialogInterface.OnClickListener) null).create();
    }
}
