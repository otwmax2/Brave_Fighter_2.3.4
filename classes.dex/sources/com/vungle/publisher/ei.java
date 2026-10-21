package com.vungle.publisher;

import com.vungle.publisher.cn;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public interface ei<A extends cn> extends gj<Integer> {

    /* JADX INFO: compiled from: vungle */
    public enum a {
        aware,
        downloaded,
        ready,
        failed
    }

    /* JADX INFO: compiled from: vungle */
    public enum b {
        localVideo,
        postRoll,
        streamingVideo,
        template,
        asset
    }

    void a(a aVar);

    void b(a aVar);

    String d();

    String f();

    a j();

    b o();
}
