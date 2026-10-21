package com.google.android.gms.identity.intents;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.identity.intents.model.CountrySpecification;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class UserAddressRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<UserAddressRequest> CREATOR = new zza();
    List<CountrySpecification> abz;
    private final int mVersionCode;

    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCountrySpecification(CountrySpecification countrySpecification) {
            if (UserAddressRequest.this.abz == null) {
                UserAddressRequest.this.abz = new ArrayList();
            }
            UserAddressRequest.this.abz.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecifications(Collection<CountrySpecification> collection) {
            if (UserAddressRequest.this.abz == null) {
                UserAddressRequest.this.abz = new ArrayList();
            }
            UserAddressRequest.this.abz.addAll(collection);
            return this;
        }

        public UserAddressRequest build() {
            if (UserAddressRequest.this.abz != null) {
                UserAddressRequest.this.abz = Collections.unmodifiableList(UserAddressRequest.this.abz);
            }
            return UserAddressRequest.this;
        }
    }

    UserAddressRequest() {
        this.mVersionCode = 1;
    }

    UserAddressRequest(int i, List<CountrySpecification> list) {
        this.mVersionCode = i;
        this.abz = list;
    }

    public static Builder newBuilder() {
        UserAddressRequest userAddressRequest = new UserAddressRequest();
        userAddressRequest.getClass();
        return new Builder();
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
