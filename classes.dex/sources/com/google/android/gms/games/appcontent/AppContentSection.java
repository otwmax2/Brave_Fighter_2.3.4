package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcelable;
import com.google.android.gms.common.data.Freezable;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface AppContentSection extends Parcelable, Freezable<AppContentSection> {
    List<AppContentAction> getActions();

    Bundle getExtras();

    String getId();

    String getTitle();

    String getType();

    String zzbgw();

    List<AppContentAnnotation> zzbhg();

    String zzbhi();

    List<AppContentCard> zzbhq();

    String zzbhr();
}
