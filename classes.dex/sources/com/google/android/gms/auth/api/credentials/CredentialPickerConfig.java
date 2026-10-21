package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;

/* JADX INFO: loaded from: classes.dex */
public final class CredentialPickerConfig extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CredentialPickerConfig> CREATOR = new zzb();
    private final boolean cU;
    private final boolean cV;
    private final boolean mShowCancelButton;
    final int mVersionCode;

    public static class Builder {
        private boolean cU = false;
        private boolean mShowCancelButton = true;
        private boolean cV = false;

        public CredentialPickerConfig build() {
            return new CredentialPickerConfig(this);
        }

        public Builder setForNewAccount(boolean z) {
            this.cV = z;
            return this;
        }

        public Builder setShowAddAccountButton(boolean z) {
            this.cU = z;
            return this;
        }

        public Builder setShowCancelButton(boolean z) {
            this.mShowCancelButton = z;
            return this;
        }
    }

    CredentialPickerConfig(int i, boolean z, boolean z2, boolean z3) {
        this.mVersionCode = i;
        this.cU = z;
        this.mShowCancelButton = z2;
        this.cV = z3;
    }

    private CredentialPickerConfig(Builder builder) {
        this(1, builder.cU, builder.mShowCancelButton, builder.cV);
    }

    public boolean isForNewAccount() {
        return this.cV;
    }

    public boolean shouldShowAddAccountButton() {
        return this.cU;
    }

    public boolean shouldShowCancelButton() {
        return this.mShowCancelButton;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
