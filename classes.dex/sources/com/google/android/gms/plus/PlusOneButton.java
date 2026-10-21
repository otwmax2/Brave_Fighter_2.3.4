package com.google.android.gms.plus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.internal.zzak;
import com.google.android.gms.plus.internal.zzg;

/* JADX INFO: loaded from: classes.dex */
public final class PlusOneButton extends FrameLayout {
    public static final int ANNOTATION_BUBBLE = 1;
    public static final int ANNOTATION_INLINE = 2;
    public static final int ANNOTATION_NONE = 0;
    public static final int DEFAULT_ACTIVITY_REQUEST_CODE = -1;
    public static final int SIZE_MEDIUM = 1;
    public static final int SIZE_SMALL = 0;
    public static final int SIZE_STANDARD = 3;
    public static final int SIZE_TALL = 2;
    private View ast;
    private int asu;
    private int asv;
    private OnPlusOneClickListener asw;
    private int mSize;
    private String zzae;

    protected class DefaultOnPlusOneClickListener implements View.OnClickListener, OnPlusOneClickListener {
        private final OnPlusOneClickListener asx;

        public DefaultOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
            this.asx = onPlusOneClickListener;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Intent intent = (Intent) PlusOneButton.this.ast.getTag();
            if (this.asx != null) {
                this.asx.onPlusOneClick(intent);
            } else {
                onPlusOneClick(intent);
            }
        }

        @Override // com.google.android.gms.plus.PlusOneButton.OnPlusOneClickListener
        public void onPlusOneClick(Intent intent) {
            Context context = PlusOneButton.this.getContext();
            if (!(context instanceof Activity) || intent == null) {
                return;
            }
            ((Activity) context).startActivityForResult(intent, PlusOneButton.this.asv);
        }
    }

    public interface OnPlusOneClickListener {
        void onPlusOneClick(Intent intent);
    }

    public PlusOneButton(Context context) {
        this(context, null);
    }

    public PlusOneButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mSize = getSize(context, attributeSet);
        this.asu = getAnnotation(context, attributeSet);
        this.asv = -1;
        zzca(getContext());
        if (isInEditMode()) {
        }
    }

    protected static int getAnnotation(Context context, AttributeSet attributeSet) {
        String strZza = zzak.zza("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", context, attributeSet, true, false, "PlusOneButton");
        if ("INLINE".equalsIgnoreCase(strZza)) {
            return 2;
        }
        return !"NONE".equalsIgnoreCase(strZza) ? 1 : 0;
    }

    protected static int getSize(Context context, AttributeSet attributeSet) {
        String strZza = zzak.zza("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", context, attributeSet, true, false, "PlusOneButton");
        if ("SMALL".equalsIgnoreCase(strZza)) {
            return 0;
        }
        if ("MEDIUM".equalsIgnoreCase(strZza)) {
            return 1;
        }
        return "TALL".equalsIgnoreCase(strZza) ? 2 : 3;
    }

    private void zzca(Context context) {
        if (this.ast != null) {
            removeView(this.ast);
        }
        this.ast = zzg.zza(context, this.mSize, this.asu, this.zzae, this.asv);
        setOnPlusOneClickListener(this.asw);
        addView(this.ast);
    }

    public void initialize(String str, int i) {
        zzab.zza(getContext() instanceof Activity, "To use this method, the PlusOneButton must be placed in an Activity. Use initialize(String, OnPlusOneClickListener).");
        this.zzae = str;
        this.asv = i;
        zzca(getContext());
    }

    public void initialize(String str, OnPlusOneClickListener onPlusOneClickListener) {
        this.zzae = str;
        this.asv = 0;
        zzca(getContext());
        setOnPlusOneClickListener(onPlusOneClickListener);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        this.ast.layout(0, 0, i3 - i, i4 - i2);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        View view = this.ast;
        measureChild(view, i, i2);
        setMeasuredDimension(view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void plusOneClick() {
        this.ast.performClick();
    }

    public void setAnnotation(int i) {
        this.asu = i;
        zzca(getContext());
    }

    public void setIntent(Intent intent) {
        this.ast.setTag(intent);
    }

    public void setOnPlusOneClickListener(OnPlusOneClickListener onPlusOneClickListener) {
        this.asw = onPlusOneClickListener;
        this.ast.setOnClickListener(new DefaultOnPlusOneClickListener(onPlusOneClickListener));
    }

    public void setSize(int i) {
        this.mSize = i;
        zzca(getContext());
    }
}
