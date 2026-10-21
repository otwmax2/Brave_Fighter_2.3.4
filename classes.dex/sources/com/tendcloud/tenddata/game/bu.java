package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TalkingDataGA;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public final class bu implements v {
    @Override // com.tendcloud.tenddata.game.v
    public void a(Object obj, Method method, Object[] objArr) {
        String name = method.getName();
        if (name.equalsIgnoreCase("activityPaused")) {
            TalkingDataGA.b(TalkingDataGA.a, "", 2);
        } else if (name.equalsIgnoreCase("activityIdle")) {
            TalkingDataGA.b(TalkingDataGA.a, "", 1);
        }
    }

    @Override // com.tendcloud.tenddata.game.v
    public void a(Object obj, Method method, Object[] objArr, Object obj2) {
    }
}
