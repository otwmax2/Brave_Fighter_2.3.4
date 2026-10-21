package com.facebook.internal;

import java.util.EnumSet;

/* JADX INFO: loaded from: classes.dex */
public enum SmartLoginOption {
    None(0),
    Enabled(1),
    RequireConfirm(2);

    public static final EnumSet<SmartLoginOption> ALL = EnumSet.allOf(SmartLoginOption.class);
    private final long mValue;

    public static EnumSet<SmartLoginOption> parseOptions(long bitmask) {
        EnumSet<SmartLoginOption> result = EnumSet.noneOf(SmartLoginOption.class);
        for (SmartLoginOption opt : ALL) {
            if ((opt.getValue() & bitmask) != 0) {
                result.add(opt);
            }
        }
        return result;
    }

    SmartLoginOption(long value) {
        this.mValue = value;
    }

    public long getValue() {
        return this.mValue;
    }
}
