package com.mod.menu;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.widget.Toast;

/**
 * Activity launcher transparan — meminta izin overlay lalu meluncurkan activity game asli
 * (com.yunva.monsterhunter.MonsterHunter).
 */
public class MainActivity extends Activity {

    private static final int OVERLAY_PERMISSION_CODE = 1001;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        // Minta izin SYSTEM_ALERT_WINDOW jika belum diberikan (Android 6.0+)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && !Settings.canDrawOverlays(this)) {
            Intent intent = new Intent(Settings.ACTION_MANAGE_OVERLAY_PERMISSION,
                    Uri.parse("package:" + getPackageName()));
            startActivityForResult(intent, OVERLAY_PERMISSION_CODE);
            Toast.makeText(this, "Berikan izin tampil di atas aplikasi untuk mod menu", Toast.LENGTH_LONG).show();
            return;
        }
        launchGame();
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == OVERLAY_PERMISSION_CODE) {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M && Settings.canDrawOverlays(this)) {
                launchGame();
            } else {
                Toast.makeText(this, "Izin overlay dibutuhkan untuk mod menu", Toast.LENGTH_LONG).show();
                finish();
            }
        }
    }

    private void launchGame() {
        try {
            // Launch activity game asli
            Intent intent = new Intent();
            intent.setClassName(getPackageName(), "com.yunva.monsterhunter.MonsterHunter");
            startActivity(intent);
        } catch (Exception e) {
            Toast.makeText(this, "Gagal meluncurkan game: " + e.getMessage(), Toast.LENGTH_LONG).show();
        }
        finish();
    }
}
