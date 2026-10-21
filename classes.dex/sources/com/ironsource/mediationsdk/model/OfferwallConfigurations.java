package com.ironsource.mediationsdk.model;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class OfferwallConfigurations {
    private static final int DEFAULT_OW_PLACEMENT_ID = 0;
    private OfferwallPlacement mDefaultOWPlacement;
    private ArrayList<OfferwallPlacement> mOWPlacements = new ArrayList<>();

    public void addOfferwallPlacement(OfferwallPlacement placement) {
        if (placement != null) {
            this.mOWPlacements.add(placement);
            if (placement.getPlacementId() == 0) {
                this.mDefaultOWPlacement = placement;
            }
        }
    }

    public OfferwallPlacement getOfferwallPlacement(String placementName) {
        for (OfferwallPlacement placement : this.mOWPlacements) {
            if (placement.getPlacementName().equals(placementName)) {
                return placement;
            }
        }
        return null;
    }

    public OfferwallPlacement getDefaultOfferwallPlacement() {
        return this.mDefaultOWPlacement;
    }
}
