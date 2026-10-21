package com.ironsource.mediationsdk.model;

/* JADX INFO: loaded from: classes.dex */
public enum PlacementCappingType {
    PER_DAY("d"),
    PER_HOUR("h");

    public String value;

    PlacementCappingType(String value) {
        this.value = value;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.value;
    }
}
