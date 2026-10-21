package com.ironsource.sdk.controller;

import com.ironsource.sdk.data.ProductParameters;
import com.ironsource.sdk.data.SSAEnums;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ProductParametersCollection {
    private Map<SSAEnums.ProductType, ProductParameters> mProductParameters = new HashMap();

    public ProductParameters setProductParameters(SSAEnums.ProductType type, String appKey, String userId) {
        ProductParameters productParameters = new ProductParameters(appKey, userId);
        this.mProductParameters.put(type, productParameters);
        return productParameters;
    }

    public ProductParameters getProductParameters(SSAEnums.ProductType type) {
        if (type == null) {
            return null;
        }
        ProductParameters productParameters = this.mProductParameters.get(type);
        return productParameters;
    }
}
