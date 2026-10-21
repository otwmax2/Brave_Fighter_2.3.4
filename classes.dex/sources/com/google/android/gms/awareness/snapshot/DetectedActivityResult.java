package com.google.android.gms.awareness.snapshot;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.location.ActivityRecognitionResult;

/* JADX INFO: loaded from: classes.dex */
public interface DetectedActivityResult extends Result {
    ActivityRecognitionResult getActivityRecognitionResult();
}
