package com.google.android.gms.games.internal.request;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.games.internal.constants.RequestUpdateResultOutcome;
import java.util.HashMap;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class RequestUpdateOutcomes {
    private static final String[] XJ = {"requestId", "outcome"};
    private final HashMap<String, Integer> XK;
    private final int ob;

    public static final class Builder {
        private HashMap<String, Integer> XK = new HashMap<>();
        private int ob = 0;

        public RequestUpdateOutcomes zzbky() {
            return new RequestUpdateOutcomes(this.ob, this.XK);
        }

        public Builder zzrg(int i) {
            this.ob = i;
            return this;
        }

        public Builder zzv(String str, int i) {
            if (RequestUpdateResultOutcome.isValid(i)) {
                this.XK.put(str, Integer.valueOf(i));
            }
            return this;
        }
    }

    private RequestUpdateOutcomes(int i, HashMap<String, Integer> map) {
        this.ob = i;
        this.XK = map;
    }

    public static RequestUpdateOutcomes zzbl(DataHolder dataHolder) {
        Builder builder = new Builder();
        builder.zzrg(dataHolder.getStatusCode());
        int count = dataHolder.getCount();
        for (int i = 0; i < count; i++) {
            int iZzfo = dataHolder.zzfo(i);
            builder.zzv(dataHolder.zzd("requestId", i, iZzfo), dataHolder.zzc("outcome", i, iZzfo));
        }
        return builder.zzbky();
    }

    public Set<String> getRequestIds() {
        return this.XK.keySet();
    }

    public int getRequestOutcome(String str) {
        zzab.zzb(this.XK.containsKey(str), new StringBuilder(String.valueOf(str).length() + 46).append("Request ").append(str).append(" was not part of the update operation!").toString());
        return this.XK.get(str).intValue();
    }
}
