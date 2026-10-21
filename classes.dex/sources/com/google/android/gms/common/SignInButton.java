package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.R;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzaf;
import com.google.android.gms.common.internal.zzag;
import com.google.android.gms.dynamic.zzg;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: loaded from: classes.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {
    public static final int COLOR_AUTO = 2;
    public static final int COLOR_DARK = 0;
    public static final int COLOR_LIGHT = 1;
    public static final int SIZE_ICON_ONLY = 2;
    public static final int SIZE_STANDARD = 0;
    public static final int SIZE_WIDE = 1;
    private int mColor;
    private int mSize;
    private Scope[] ro;
    private View rp;
    private View.OnClickListener rq;

    @Retention(RetentionPolicy.SOURCE)
    public @interface ButtonSize {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface ColorScheme {
    }

    public SignInButton(Context context) {
        this(context, null);
    }

    public SignInButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.rq = null;
        zza(context, attributeSet);
        setStyle(this.mSize, this.mColor, this.ro);
    }

    private static Button zza(Context context, int i, int i2, Scope[] scopeArr) {
        zzag zzagVar = new zzag(context);
        zzagVar.zza(context.getResources(), i, i2, scopeArr);
        return zzagVar;
    }

    private void zza(Context context, AttributeSet attributeSet) {
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.SignInButton, 0, 0);
        try {
            this.mSize = typedArrayObtainStyledAttributes.getInt(R.styleable.SignInButton_buttonSize, 0);
            this.mColor = typedArrayObtainStyledAttributes.getInt(R.styleable.SignInButton_colorScheme, 2);
            String string = typedArrayObtainStyledAttributes.getString(R.styleable.SignInButton_scopeUris);
            if (string == null) {
                this.ro = null;
            } else {
                String[] strArrSplit = string.trim().split("\\s+");
                this.ro = new Scope[strArrSplit.length];
                for (int i = 0; i < strArrSplit.length; i++) {
                    this.ro[i] = new Scope(strArrSplit[i].toString());
                }
            }
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    private void zzca(Context context) {
        if (this.rp != null) {
            removeView(this.rp);
        }
        try {
            this.rp = zzaf.zzb(context, this.mSize, this.mColor, this.ro);
        } catch (zzg.zza e) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            this.rp = zza(context, this.mSize, this.mColor, this.ro);
        }
        addView(this.rp);
        this.rp.setEnabled(isEnabled());
        this.rp.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (this.rq == null || view != this.rp) {
            return;
        }
        this.rq.onClick(this);
    }

    public void setColorScheme(int i) {
        setStyle(this.mSize, i, this.ro);
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.rp.setEnabled(z);
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        this.rq = onClickListener;
        if (this.rp != null) {
            this.rp.setOnClickListener(this);
        }
    }

    public void setScopes(Scope[] scopeArr) {
        setStyle(this.mSize, this.mColor, scopeArr);
    }

    public void setSize(int i) {
        setStyle(i, this.mColor, this.ro);
    }

    public void setStyle(int i, int i2) {
        setStyle(i, i2, this.ro);
    }

    public void setStyle(int i, int i2, Scope[] scopeArr) {
        this.mSize = i;
        this.mColor = i2;
        this.ro = scopeArr;
        zzca(getContext());
    }
}
