package com.ironsource.mediationsdk;

/* JADX INFO: loaded from: classes.dex */
public enum EBannerSize {
    BANNER("banner"),
    LARGE("large"),
    RECTANGLE("rectangle"),
    TABLET("tablet"),
    SMART("smart");

    private String mValue;

    EBannerSize(String value) {
        this.mValue = value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.mValue;
    }

    public int getValue() {
        return ordinal() + 1;
    }
}
