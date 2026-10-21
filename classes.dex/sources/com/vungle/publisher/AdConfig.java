package com.vungle.publisher;

import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class AdConfig implements p {
    private final o a = new o();

    @Inject
    public AdConfig() {
        setTransitionAnimationEnabled(true);
    }

    public o getDelegateAdConfig() {
        return this.a;
    }

    @Override // com.vungle.publisher.p
    public boolean isBackButtonImmediatelyEnabled() {
        return this.a.isBackButtonImmediatelyEnabled();
    }

    public void setBackButtonImmediatelyEnabled(boolean isBackButtonImmediatelyEnabled) {
        this.a.a(isBackButtonImmediatelyEnabled);
    }

    @Override // com.vungle.publisher.p
    public boolean isImmersiveMode() {
        return this.a.isImmersiveMode();
    }

    public void setImmersiveMode(boolean isImmersiveMode) {
        this.a.b(isImmersiveMode);
    }

    @Override // com.vungle.publisher.p
    public String getIncentivizedCancelDialogBodyText() {
        return this.a.getIncentivizedCancelDialogBodyText();
    }

    public void setIncentivizedCancelDialogBodyText(String bodyText) {
        this.a.a(bodyText);
    }

    @Override // com.vungle.publisher.p
    public String getIncentivizedCancelDialogCloseButtonText() {
        return this.a.getIncentivizedCancelDialogCloseButtonText();
    }

    public void setIncentivizedCancelDialogCloseButtonText(String closeButtonText) {
        this.a.b(closeButtonText);
    }

    @Override // com.vungle.publisher.p
    public String getIncentivizedCancelDialogKeepWatchingButtonText() {
        return this.a.getIncentivizedCancelDialogKeepWatchingButtonText();
    }

    public void setIncentivizedCancelDialogKeepWatchingButtonText(String keepWatchingButtonText) {
        this.a.c(keepWatchingButtonText);
    }

    @Override // com.vungle.publisher.p
    public String getIncentivizedCancelDialogTitle() {
        return this.a.getIncentivizedCancelDialogTitle();
    }

    public void setIncentivizedCancelDialogTitle(String title) {
        this.a.d(title);
    }

    @Override // com.vungle.publisher.p
    public String getIncentivizedUserId() {
        return this.a.getIncentivizedUserId();
    }

    public void setIncentivizedUserId(String incentivizedUserId) {
        this.a.e(incentivizedUserId);
    }

    @Override // com.vungle.publisher.p
    public Orientation getOrientation() {
        return this.a.getOrientation();
    }

    public void setOrientation(Orientation orientation) {
        this.a.a(orientation);
    }

    @Override // com.vungle.publisher.p
    public boolean isSoundEnabled() {
        return this.a.isSoundEnabled();
    }

    public void setSoundEnabled(boolean isSoundEnabled) {
        this.a.c(isSoundEnabled);
    }

    @Override // com.vungle.publisher.p
    public boolean isTransitionAnimationEnabled() {
        return this.a.isTransitionAnimationEnabled();
    }

    public void setTransitionAnimationEnabled(boolean isTransitionAnimationEnabled) {
        this.a.d(isTransitionAnimationEnabled);
    }

    public void setFlexViewCloseTimeInSec(int flexViewCloseTimeInSec) {
        this.a.a(flexViewCloseTimeInSec);
    }

    @Override // com.vungle.publisher.p
    public int getFlexViewCloseTimeInSec() {
        return this.a.getFlexViewCloseTimeInSec();
    }

    public void setOrdinalViewCount(int ordinalViewCount) {
        this.a.b(ordinalViewCount);
    }

    @Override // com.vungle.publisher.p
    public int getOrdinalViewCount() {
        return this.a.getOrdinalViewCount();
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public boolean equals(Object obj) {
        return this.a.equals(obj);
    }

    public String toString() {
        return this.a.toString();
    }
}
