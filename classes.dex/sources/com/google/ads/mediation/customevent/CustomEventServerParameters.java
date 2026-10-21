package com.google.ads.mediation.customevent;

import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.reward.mediation.MediationRewardedVideoAdAdapter;
import com.google.android.gms.plus.PlusShare;
import com.yunva.monsterhunter.Base64;

/* JADX INFO: loaded from: classes.dex */
public final class CustomEventServerParameters extends MediationServerParameters {

    @MediationServerParameters.Parameter(name = "class_name", required = Base64.ENCODE)
    public String className;

    @MediationServerParameters.Parameter(name = PlusShare.KEY_CALL_TO_ACTION_LABEL, required = Base64.ENCODE)
    public String label;

    @MediationServerParameters.Parameter(name = MediationRewardedVideoAdAdapter.CUSTOM_EVENT_SERVER_PARAMETER_FIELD, required = false)
    public String parameter = null;
}
