package com.google.android.gms.awareness.fence;

import android.app.PendingIntent;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.contextmanager.fence.internal.ContextFenceStub;
import com.google.android.gms.contextmanager.fence.internal.FenceUpdateRequestImpl;
import com.google.android.gms.contextmanager.fence.internal.UpdateFenceOperation;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public interface FenceUpdateRequest {

    public static class Builder {
        private final ArrayList<UpdateFenceOperation> fE = new ArrayList<>();

        public Builder addFence(String str, AwarenessFence awarenessFence, PendingIntent pendingIntent) {
            zzab.zzhs(str);
            zzab.zzaa(awarenessFence);
            zzab.zzaa(pendingIntent);
            this.fE.add(UpdateFenceOperation.zza(str, (ContextFenceStub) awarenessFence, pendingIntent));
            return this;
        }

        public FenceUpdateRequest build() {
            return new FenceUpdateRequestImpl(this.fE);
        }

        public Builder removeFence(PendingIntent pendingIntent) {
            zzab.zzaa(pendingIntent);
            this.fE.add(UpdateFenceOperation.zza(pendingIntent));
            return this;
        }

        public Builder removeFence(String str) {
            zzab.zzhs(str);
            this.fE.add(UpdateFenceOperation.zzie(str));
            return this;
        }
    }
}
