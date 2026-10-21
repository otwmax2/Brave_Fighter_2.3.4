package com.google.android.gms.awareness.state;

import com.google.android.gms.awareness.snapshot.internal.BeaconStateImpl;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface BeaconState {

    public interface BeaconInfo {
        byte[] getContent();

        String getNamespace();

        String getType();
    }

    public static abstract class TypeFilter extends AbstractSafeParcelable {
        protected TypeFilter() {
        }

        public static TypeFilter with(String str, String str2) {
            return new BeaconStateImpl.TypeFilterImpl(str, str2);
        }

        public static TypeFilter with(String str, String str2, byte[] bArr) {
            return new BeaconStateImpl.TypeFilterImpl(str, str2, bArr);
        }
    }

    List<BeaconInfo> getBeaconInfo();
}
