package com.ironsource.sdk.controller;

import android.text.TextUtils;
import com.ironsource.sdk.data.DemandSource;
import com.ironsource.sdk.data.SSAEnums;
import com.ironsource.sdk.listeners.OnAdProductListener;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DemandSourceManager {
    private Map<String, DemandSource> mRewardedVideoDemandSourceMap = new LinkedHashMap();
    private Map<String, DemandSource> mInterstitialDemandSourceMap = new LinkedHashMap();

    private Map<String, DemandSource> getMapByProductType(SSAEnums.ProductType productType) {
        if (productType.name().equalsIgnoreCase(SSAEnums.ProductType.RewardedVideo.name())) {
            return this.mRewardedVideoDemandSourceMap;
        }
        if (productType.name().equalsIgnoreCase(SSAEnums.ProductType.Interstitial.name())) {
            return this.mInterstitialDemandSourceMap;
        }
        return null;
    }

    public Collection<DemandSource> getDemandSources(SSAEnums.ProductType productType) {
        Map<String, DemandSource> productDemandMap = getMapByProductType(productType);
        return productDemandMap != null ? productDemandMap.values() : new ArrayList();
    }

    public DemandSource getDemandSourceByName(SSAEnums.ProductType productType, String demandSourceName) {
        Map<String, DemandSource> productDemandMap;
        if (TextUtils.isEmpty(demandSourceName) || (productDemandMap = getMapByProductType(productType)) == null) {
            return null;
        }
        return productDemandMap.get(demandSourceName);
    }

    private void put(SSAEnums.ProductType productType, String demandSourceName, DemandSource demandSource) {
        Map<String, DemandSource> productDemandMap;
        if (!TextUtils.isEmpty(demandSourceName) && demandSource != null && (productDemandMap = getMapByProductType(productType)) != null) {
            productDemandMap.put(demandSourceName, demandSource);
        }
    }

    public DemandSource createDemandSource(SSAEnums.ProductType type, String demandSourceName, Map<String, String> demandExtParam, OnAdProductListener listener) {
        DemandSource demandSource = new DemandSource(demandSourceName, demandExtParam, listener);
        put(type, demandSourceName, demandSource);
        return demandSource;
    }
}
