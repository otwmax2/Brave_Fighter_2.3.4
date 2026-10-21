package com.ironsource.sdk.data;

/* JADX INFO: loaded from: classes.dex */
public class SSAEnums {

    public enum BackButtonState {
        None,
        Device,
        Controller
    }

    public enum ControllerState {
        None,
        FailedToDownload,
        FailedToLoad,
        Loaded,
        Ready,
        Failed
    }

    public enum ProductType {
        OfferWall,
        Interstitial,
        OfferWallCredits,
        RewardedVideo
    }

    public enum DebugMode {
        MODE_0(0),
        MODE_1(1),
        MODE_2(2),
        MODE_3(3);

        private int value;

        DebugMode(int value) {
            this.value = value;
        }

        public int getValue() {
            return this.value;
        }
    }
}
