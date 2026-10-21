package com.vungle.publisher;

import android.content.DialogInterface;
import com.vungle.publisher.mq;
import java.lang.invoke.LambdaForm;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class mt implements DialogInterface.OnCancelListener {
    private final mq.a a;

    private mt(mq.a aVar) {
        this.a = aVar;
    }

    public static DialogInterface.OnCancelListener a(mq.a aVar) {
        return new mt(aVar);
    }

    @Override // android.content.DialogInterface.OnCancelListener
    @LambdaForm.Hidden
    public void onCancel(DialogInterface dialogInterface) {
        mq.a(this.a, dialogInterface);
    }
}
