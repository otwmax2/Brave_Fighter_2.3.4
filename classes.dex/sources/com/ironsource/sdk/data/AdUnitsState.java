package com.ironsource.sdk.data;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class AdUnitsState implements Parcelable {
    public static final Parcelable.Creator<AdUnitsState> CREATOR = new Parcelable.Creator<AdUnitsState>() { // from class: com.ironsource.sdk.data.AdUnitsState.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdUnitsState createFromParcel(Parcel source) {
            return new AdUnitsState(source);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public AdUnitsState[] newArray(int size) {
            return new AdUnitsState[size];
        }
    };
    private String mDisplayedDemandSourceName;
    private int mDisplayedProduct;
    private String mInterstitialAppKey;
    private Map<String, String> mInterstitialExtraParams;
    private ArrayList<String> mInterstitialInitSuccess;
    private ArrayList<String> mInterstitialLoadSuccess;
    private ArrayList<String> mInterstitialReportInit;
    private ArrayList<String> mInterstitialReportLoad;
    private String mInterstitialUserId;
    private Map<String, String> mOfferWallExtraParams;
    private boolean mOfferwallInitSuccess;
    private boolean mOfferwallReportInit;
    private String mRVAppKey;
    private String mRVUserId;
    private boolean mShouldRestore;

    public AdUnitsState() {
        initialize();
    }

    private AdUnitsState(Parcel source) {
        initialize();
        try {
            this.mShouldRestore = source.readByte() != 0;
            this.mDisplayedProduct = source.readInt();
            this.mRVAppKey = source.readString();
            this.mRVUserId = source.readString();
            this.mDisplayedDemandSourceName = source.readString();
            this.mInterstitialAppKey = source.readString();
            this.mInterstitialUserId = source.readString();
            this.mInterstitialExtraParams = getMapFromJsonString(source.readString());
            this.mOfferwallInitSuccess = source.readByte() != 0;
            this.mOfferwallReportInit = source.readByte() != 0;
            this.mOfferWallExtraParams = getMapFromJsonString(source.readString());
        } catch (Throwable th) {
            initialize();
        }
    }

    private void initialize() {
        this.mShouldRestore = false;
        this.mDisplayedProduct = -1;
        this.mInterstitialReportInit = new ArrayList<>();
        this.mInterstitialInitSuccess = new ArrayList<>();
        this.mInterstitialReportLoad = new ArrayList<>();
        this.mInterstitialLoadSuccess = new ArrayList<>();
        this.mOfferwallReportInit = true;
        this.mOfferwallInitSuccess = false;
        this.mInterstitialUserId = "";
        this.mInterstitialAppKey = "";
        this.mInterstitialExtraParams = new HashMap();
        this.mOfferWallExtraParams = new HashMap();
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel dest, int flags) {
        try {
            dest.writeByte((byte) (this.mShouldRestore ? 1 : 0));
            dest.writeInt(this.mDisplayedProduct);
            dest.writeString(this.mRVAppKey);
            dest.writeString(this.mRVUserId);
            dest.writeString(this.mDisplayedDemandSourceName);
            dest.writeString(this.mInterstitialAppKey);
            dest.writeString(this.mInterstitialUserId);
            dest.writeString(new JSONObject(this.mInterstitialExtraParams).toString());
            dest.writeByte((byte) (this.mOfferwallInitSuccess ? 1 : 0));
            dest.writeByte((byte) (this.mOfferwallReportInit ? 1 : 0));
            dest.writeString(new JSONObject(this.mOfferWallExtraParams).toString());
        } catch (Throwable th) {
        }
    }

    public boolean isInterstitialInitSuccess(String demandSourceName) {
        return !TextUtils.isEmpty(demandSourceName) && this.mInterstitialInitSuccess.indexOf(demandSourceName) > -1;
    }

    public boolean isInterstitialLoadSuccess(String demandSourceName) {
        return !TextUtils.isEmpty(demandSourceName) && this.mInterstitialLoadSuccess.indexOf(demandSourceName) > -1;
    }

    public String getInterstitialAppKey() {
        return this.mInterstitialAppKey;
    }

    public String getInterstitialUserId() {
        return this.mInterstitialUserId;
    }

    public Map<String, String> getInterstitialExtraParams() {
        return this.mInterstitialExtraParams;
    }

    public boolean reportInitInterstitial(String demandSourceName) {
        return !TextUtils.isEmpty(demandSourceName) && this.mInterstitialReportInit.indexOf(demandSourceName) > -1;
    }

    public boolean reportLoadInterstitial(String demandSourceName) {
        return !TextUtils.isEmpty(demandSourceName) && this.mInterstitialReportLoad.indexOf(demandSourceName) > -1;
    }

    public boolean shouldRestore() {
        return this.mShouldRestore;
    }

    public int getDisplayedProduct() {
        return this.mDisplayedProduct;
    }

    public String getDisplayedDemandSourceName() {
        return this.mDisplayedDemandSourceName;
    }

    public boolean getOfferwallInitSuccess() {
        return this.mOfferwallInitSuccess;
    }

    public Map<String, String> getOfferWallExtraParams() {
        return this.mOfferWallExtraParams;
    }

    public boolean reportInitOfferwall() {
        return this.mOfferwallReportInit;
    }

    public void setOfferWallExtraParams(Map<String, String> offerWallExtraParams) {
        this.mOfferWallExtraParams = offerWallExtraParams;
    }

    public void setInterstitialInitSuccess(String demandSourceName, boolean interstitialInitSuccess) {
        if (!TextUtils.isEmpty(demandSourceName)) {
            if (interstitialInitSuccess) {
                if (this.mInterstitialInitSuccess.indexOf(demandSourceName) == -1) {
                    this.mInterstitialInitSuccess.add(demandSourceName);
                    return;
                }
                return;
            }
            this.mInterstitialInitSuccess.remove(demandSourceName);
        }
    }

    public void setInterstitialLoadSuccess(String demandSourceName, boolean interstitialLoadSuccess) {
        if (!TextUtils.isEmpty(demandSourceName)) {
            if (interstitialLoadSuccess) {
                if (this.mInterstitialLoadSuccess.indexOf(demandSourceName) == -1) {
                    this.mInterstitialLoadSuccess.add(demandSourceName);
                    return;
                }
                return;
            }
            this.mInterstitialLoadSuccess.remove(demandSourceName);
        }
    }

    public void setInterstitialAppKey(String mInterstitialAppKey) {
        this.mInterstitialAppKey = mInterstitialAppKey;
    }

    public void setInterstitialUserId(String mInterstitialUserId) {
        this.mInterstitialUserId = mInterstitialUserId;
    }

    public void setInterstitialExtraParams(Map<String, String> mInterstitialExtraParams) {
        this.mInterstitialExtraParams = mInterstitialExtraParams;
    }

    public void setReportInitInterstitial(String demandSourceName, boolean shouldReport) {
        if (!TextUtils.isEmpty(demandSourceName)) {
            if (shouldReport) {
                if (this.mInterstitialReportInit.indexOf(demandSourceName) == -1) {
                    this.mInterstitialReportInit.add(demandSourceName);
                    return;
                }
                return;
            }
            this.mInterstitialReportInit.remove(demandSourceName);
        }
    }

    public void setReportLoadInterstitial(String demandSourceName, boolean shouldReport) {
        if (!TextUtils.isEmpty(demandSourceName)) {
            if (shouldReport) {
                if (this.mInterstitialReportLoad.indexOf(demandSourceName) == -1) {
                    this.mInterstitialReportLoad.add(demandSourceName);
                    return;
                }
                return;
            }
            this.mInterstitialReportLoad.remove(demandSourceName);
        }
    }

    public void setShouldRestore(boolean mShouldRestore) {
        this.mShouldRestore = mShouldRestore;
    }

    public void adOpened(int product) {
        this.mDisplayedProduct = product;
    }

    public void adClosed() {
        this.mDisplayedProduct = -1;
    }

    public void setOfferwallInitSuccess(boolean offerwallInitSuccess) {
        this.mOfferwallInitSuccess = offerwallInitSuccess;
    }

    public void setOfferwallReportInit(boolean offerwallReportInit) {
        this.mOfferwallReportInit = offerwallReportInit;
    }

    public String getRVAppKey() {
        return this.mRVAppKey;
    }

    public void setRVAppKey(String mRVAppKey) {
        this.mRVAppKey = mRVAppKey;
    }

    public String getRVUserId() {
        return this.mRVUserId;
    }

    public void setDisplayedDemandSourceName(String displayedDemandSourceName) {
        this.mDisplayedDemandSourceName = displayedDemandSourceName;
    }

    public void setRVUserId(String mRVUserId) {
        this.mRVUserId = mRVUserId;
    }

    private Map<String, String> getMapFromJsonString(String jsonString) {
        Map<String, String> result = new HashMap<>();
        try {
            JSONObject json = new JSONObject(jsonString);
            Iterator<String> keys = json.keys();
            while (keys.hasNext()) {
                String key = keys.next();
                String value = json.getString(key);
                result.put(key, value);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        } catch (Throwable e2) {
            e2.printStackTrace();
        }
        return result;
    }

    public String toString() {
        StringBuilder builder = new StringBuilder();
        try {
            builder.append("shouldRestore:").append(this.mShouldRestore).append(", ");
            builder.append("displayedProduct:").append(this.mDisplayedProduct).append(", ");
            builder.append("ISReportInit:").append(this.mInterstitialReportInit).append(", ");
            builder.append("ISInitSuccess:").append(this.mInterstitialInitSuccess).append(", ");
            builder.append("ISAppKey").append(this.mInterstitialAppKey).append(", ");
            builder.append("ISUserId").append(this.mInterstitialUserId).append(", ");
            builder.append("ISExtraParams").append(this.mInterstitialExtraParams).append(", ");
            builder.append("OWReportInit").append(this.mOfferwallReportInit).append(", ");
            builder.append("OWInitSuccess").append(this.mOfferwallInitSuccess).append(", ");
            builder.append("OWExtraParams").append(this.mOfferWallExtraParams).append(", ");
        } catch (Throwable th) {
        }
        return builder.toString();
    }
}
