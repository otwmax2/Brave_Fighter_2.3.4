package com.mod.menu;

import android.app.Service;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Build;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.*;
import android.content.Context;

/**
 * Floating mod menu UI — tombol logo + panel expand yang berisi toggle setiap cheat.
 */
public class Menu {

    private Service service;
    private WindowManager wm;
    private View floatButton;
    private LinearLayout menuPanel;
    private boolean panelVisible = false;

    // Layout params
    private WindowManager.LayoutParams buttonParams, panelParams;

    public Menu(Service svc) {
        this.service = svc;
        Preferences.init(svc);
        wm = (WindowManager) svc.getSystemService(Context.WINDOW_SERVICE);
    }

    public void ShowMenu() {
        // --- Floating button ---
        floatButton = new android.widget.Button(service);
        ((Button) floatButton).setText("★ MOD");
        ((Button) floatButton).setTextColor(Color.WHITE);
        ((Button) floatButton).setBackgroundColor(Color.argb(200, 200, 30, 30));
        ((Button) floatButton).setPadding(20, 10, 20, 10);

        int overlayType;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
            overlayType = WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY;
        else
            overlayType = WindowManager.LayoutParams.TYPE_PHONE;

        buttonParams = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                overlayType,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        buttonParams.gravity = Gravity.TOP | Gravity.START;
        buttonParams.x = 50;
        buttonParams.y = 200;
        wm.addView(floatButton, buttonParams);

        setupButtonDrag();

        floatButton.setOnClickListener(v -> {
            if (panelVisible) hidePanel(); else showPanel();
        });

        buildPanel(overlayType);
    }

    private void buildPanel(int overlayType) {
        menuPanel = new LinearLayout(service);
        menuPanel.setOrientation(LinearLayout.VERTICAL);
        menuPanel.setBackgroundColor(Color.argb(220, 30, 30, 30));
        menuPanel.setPadding(30, 30, 30, 30);

        // Title
        TextView title = new TextView(service);
        title.setText("Brave Fighter v2.3.4 MOD\n——— LGLModMenu v5 ———");
        title.setTextColor(Color.YELLOW);
        title.setTextSize(16);
        title.setGravity(Gravity.CENTER);
        menuPanel.addView(title);

        // Add toggles
        addToggle("Unlimited Gold", Preferences.KEY_UNLIMITED_GOLD);
        addToggle("Unlimited Crystals", Preferences.KEY_UNLIMITED_CRYSTALS);
        addToggle("God Mode (No Death)", Preferences.KEY_GOD_MODE);
        addToggle("One Hit Kill", Preferences.KEY_ONE_HIT_KILL);
        addToggle("Free Shopping / Beli Gratis", Preferences.KEY_FREE_SHOP);
        addToggle("No Ads / Tanpa Iklan", Preferences.KEY_NO_ADS);
        addToggle("Max Hero Level (99)", Preferences.KEY_MAX_LEVEL);
        addToggle("Unlock All Heroes", Preferences.KEY_UNLOCK_ALL);
        addToggle("x10 EXP", Preferences.KEY_XP_X10);
        addToggle("x10 Gold Drop", Preferences.KEY_GOLD_DROP_X10);
        addToggle("No Skill Cooldown", Preferences.KEY_NO_CD);
        addToggle("Speed Hack x2", Preferences.KEY_SPEED_X2);

        // Close button
        Button close = new Button(service);
        close.setText("Sembunyikan Menu");
        close.setOnClickListener(v -> hidePanel());
        menuPanel.addView(close);

        panelParams = new WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                overlayType,
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT);
        panelParams.gravity = Gravity.CENTER;
    }

    private void addToggle(String label, String key) {
        CheckBox cb = new CheckBox(service);
        cb.setText(label);
        cb.setTextColor(Color.WHITE);
        cb.setChecked(Preferences.getBoolean(key, false));
        cb.setOnCheckedChangeListener((btn, checked) -> Preferences.setBoolean(key, checked));
        menuPanel.addView(cb);
    }

    private void showPanel() {
        panelVisible = true;
        try { wm.addView(menuPanel, panelParams); } catch (Exception e) { /* already added */ }
    }

    private void hidePanel() {
        panelVisible = false;
        try { wm.removeView(menuPanel); } catch (Exception e) {}
    }

    private void setupButtonDrag() {
        floatButton.setOnTouchListener(new View.OnTouchListener() {
            private int initX, initY;
            private float touchX, touchY;
            private long downTime;

            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        initX = buttonParams.x; initY = buttonParams.y;
                        touchX = event.getRawX(); touchY = event.getRawY();
                        downTime = System.currentTimeMillis();
                        return false;
                    case MotionEvent.ACTION_MOVE:
                        buttonParams.x = initX + (int)(event.getRawX() - touchX);
                        buttonParams.y = initY + (int)(event.getRawY() - touchY);
                        wm.updateViewLayout(floatButton, buttonParams);
                        return true;
                    case MotionEvent.ACTION_UP:
                        // consider click if no move & short press
                        return (System.currentTimeMillis() - downTime) < 200 &&
                               Math.abs(event.getRawX()-touchX) < 10 &&
                               Math.abs(event.getRawY()-touchY) < 10;
                }
                return false;
            }
        });
    }

    public void setVisibility(int visibility) {
        if (floatButton != null) floatButton.setVisibility(visibility);
    }

    public void onDestroy() {
        try { if (floatButton != null) wm.removeView(floatButton); } catch (Exception e) {}
        try { if (panelVisible) wm.removeView(menuPanel); } catch (Exception e) {}
    }
}
