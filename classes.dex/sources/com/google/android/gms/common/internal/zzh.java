package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.support.annotation.Nullable;
import android.util.Log;
import com.google.android.gms.R;

/* JADX INFO: loaded from: classes.dex */
public final class zzh {
    public static String zzc(Context context, int i, String str) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return com.google.android.gms.common.util.zzi.zzb(resources) ? resources.getString(R.string.common_google_play_services_install_text_tablet, str) : resources.getString(R.string.common_google_play_services_install_text_phone, str);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_text, str);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_text, str);
            case 5:
                return resources.getString(R.string.common_google_play_services_invalid_account_text);
            case 7:
                return resources.getString(R.string.common_google_play_services_network_error_text);
            case 9:
                return resources.getString(R.string.common_google_play_services_unsupported_text, str);
            case 16:
                return resources.getString(R.string.common_google_play_services_api_unavailable_text, str);
            case 17:
                return resources.getString(R.string.common_google_play_services_sign_in_failed_text);
            case 18:
                return resources.getString(R.string.common_google_play_services_updating_text, str);
            case 20:
                return resources.getString(R.string.common_google_play_services_restricted_profile_text);
            case 42:
                return resources.getString(R.string.common_google_play_services_wear_update_text);
            default:
                return resources.getString(R.string.common_google_play_services_unknown_issue, str);
        }
    }

    public static String zzd(Context context, int i, String str) {
        return i == 6 ? context.getResources().getString(R.string.common_google_play_services_resolution_required_text) : zzc(context, i, str);
    }

    @Nullable
    public static String zzf(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                break;
            case 2:
            case 42:
                break;
            case 3:
                break;
            case 4:
            case 6:
                break;
            case 5:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                break;
            case 7:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                break;
            case 8:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                break;
            case 9:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                break;
            case 10:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                break;
            case 11:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                break;
            case 16:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                break;
            case 17:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                break;
            case 18:
                break;
            case 20:
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                break;
            default:
                Log.e("GoogleApiAvailability", new StringBuilder(33).append("Unexpected error code ").append(i).toString());
                break;
        }
        return null;
    }

    @Nullable
    public static String zzg(Context context, int i) {
        return i == 6 ? context.getResources().getString(R.string.common_google_play_services_resolution_required_title) : zzf(context, i);
    }

    public static String zzh(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case 1:
                return resources.getString(R.string.common_google_play_services_install_button);
            case 2:
                return resources.getString(R.string.common_google_play_services_update_button);
            case 3:
                return resources.getString(R.string.common_google_play_services_enable_button);
            default:
                return resources.getString(android.R.string.ok);
        }
    }
}
