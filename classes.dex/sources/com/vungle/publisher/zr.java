package com.vungle.publisher;

import com.vungle.publisher.image.AssetBitmapFactory;
import dagger.MembersInjector;
import javax.inject.Provider;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes2.dex */
public final class zr implements MembersInjector<zo> {
    static final /* synthetic */ boolean a;
    private final Provider<AssetBitmapFactory> b;

    static {
        a = !zr.class.desiredAssertionStatus();
    }

    public zr(Provider<AssetBitmapFactory> provider) {
        if (!a && provider == null) {
            throw new AssertionError();
        }
        this.b = provider;
    }

    public static MembersInjector<zo> a(Provider<AssetBitmapFactory> provider) {
        return new zr(provider);
    }

    @Override // dagger.MembersInjector
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public void injectMembers(zo zoVar) {
        if (zoVar == null) {
            throw new NullPointerException("Cannot inject members into a null reference");
        }
        zoVar.a = this.b.get();
    }
}
