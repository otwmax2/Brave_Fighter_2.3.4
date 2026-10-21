package com.facebook.ads;

import com.facebook.ads.internal.n.j;

/* JADX INFO: loaded from: classes.dex */
public enum VideoAutoplayBehavior {
    DEFAULT,
    ON,
    OFF;

    public static VideoAutoplayBehavior fromInternalAutoplayBehavior(j jVar) {
        if (jVar == null) {
            return DEFAULT;
        }
        switch (jVar) {
        }
        return DEFAULT;
    }
}
