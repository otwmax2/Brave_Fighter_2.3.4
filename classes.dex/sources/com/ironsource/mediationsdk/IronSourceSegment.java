package com.ironsource.mediationsdk;

import android.text.TextUtils;
import android.util.Pair;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.Vector;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public class IronSourceSegment {
    public static final String AGE = "age";
    public static final String GENDER = "gen";
    public static final String IAPT = "iapt";
    public static final String LEVEL = "lvl";
    public static final String PAYING = "pay";
    private static final String SEGMENT_NAME = "segName";
    public static final String USER_CREATION_DATE = "ucd";
    private String mGender;
    private String mSegmentName;
    private int MAX_LEVEL = 999999;
    private double MAX_IAPT = 999999.99d;
    private final String CUSTOM = "custom";
    private final int MAX_CUSTOMS = 5;
    private int mAge = -1;
    private int mLevel = -1;
    private AtomicBoolean mIsPaying = null;
    private double mIapt = -1.0d;
    private long mUcd = 0;
    private Vector<Pair<String, String>> mCustoms = new Vector<>();

    public String getSegmentName() {
        return this.mSegmentName;
    }

    public int getAge() {
        return this.mAge;
    }

    public String getGender() {
        return this.mGender;
    }

    public int getLevel() {
        return this.mLevel;
    }

    public AtomicBoolean getIsPaying() {
        return this.mIsPaying;
    }

    public double getIapt() {
        return this.mIapt;
    }

    public long getUcd() {
        return this.mUcd;
    }

    public void setAge(int age) {
        if (age > 0 && age <= 199) {
            this.mAge = age;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setAge( " + age + " ) age must be between 1-199", 2);
        }
    }

    public void setGender(String gender) {
        if (!TextUtils.isEmpty(gender) && (gender.toLowerCase().equals(IronSourceConstants.Gender.MALE) || gender.toLowerCase().equals(IronSourceConstants.Gender.FEMALE))) {
            this.mGender = gender;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setGender( " + gender + " ) is invalid", 2);
        }
    }

    public void setLevel(int level) {
        if (level > 0 && level < this.MAX_LEVEL) {
            this.mLevel = level;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setLevel( " + level + " ) level must be between 1-" + this.MAX_LEVEL, 2);
        }
    }

    public void setIsPaying(boolean isPaying) {
        if (this.mIsPaying == null) {
            this.mIsPaying = new AtomicBoolean();
        }
        this.mIsPaying.set(isPaying);
    }

    public void setIAPTotal(double iAPTotal) {
        if (iAPTotal > 0.0d && iAPTotal < this.MAX_IAPT) {
            this.mIapt = Math.floor(iAPTotal * 100.0d) / 100.0d;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setIAPTotal( " + iAPTotal + " ) iapt must be between 0-" + this.MAX_IAPT, 2);
        }
    }

    public void setUserCreationDate(long ucd) {
        if (ucd > 0) {
            this.mUcd = ucd;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setUserCreationDate( " + ucd + " ) is an invalid timestamp", 2);
        }
    }

    public void setSegmentName(String segmentName) {
        if (validateAlphanumeric(segmentName) && validateLength(segmentName, 1, 32)) {
            this.mSegmentName = segmentName;
        } else {
            IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setSegmentName( " + segmentName + " ) segment name must be alphanumeric and 1-32 in length", 2);
        }
    }

    public void setCustom(String key, String value) {
        try {
            if (validateAlphanumeric(key) && validateAlphanumeric(value) && validateLength(key, 1, 32) && validateLength(value, 1, 32)) {
                String newKey = "custom_" + key;
                if (this.mCustoms.size() < 5) {
                    this.mCustoms.add(new Pair<>(newKey, value));
                } else {
                    this.mCustoms.remove(0);
                    this.mCustoms.add(new Pair<>(newKey, value));
                }
            } else {
                IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "setCustom( " + key + " , " + value + " ) key and value must be alphanumeric and 1-32 in length", 2);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    Vector<Pair<String, String>> getSegmentData() {
        Vector<Pair<String, String>> res = new Vector<>();
        if (this.mAge != -1) {
            res.add(new Pair<>("age", this.mAge + ""));
        }
        if (!TextUtils.isEmpty(this.mGender)) {
            res.add(new Pair<>(GENDER, this.mGender));
        }
        if (this.mLevel != -1) {
            res.add(new Pair<>(LEVEL, this.mLevel + ""));
        }
        if (this.mIsPaying != null) {
            res.add(new Pair<>(PAYING, this.mIsPaying + ""));
        }
        if (this.mIapt != -1.0d) {
            res.add(new Pair<>(IAPT, this.mIapt + ""));
        }
        if (this.mUcd != 0) {
            res.add(new Pair<>(USER_CREATION_DATE, this.mUcd + ""));
        }
        if (!TextUtils.isEmpty(this.mSegmentName)) {
            res.add(new Pair<>(SEGMENT_NAME, this.mSegmentName));
        }
        res.addAll(this.mCustoms);
        return res;
    }

    private boolean validateAlphanumeric(String key) {
        if (key == null) {
            return false;
        }
        return key.matches("^[a-zA-Z0-9]*$");
    }

    private boolean validateLength(String key, int minLength, int maxLength) {
        return key != null && key.length() >= minLength && key.length() <= maxLength;
    }
}
