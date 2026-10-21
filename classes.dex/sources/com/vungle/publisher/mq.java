package com.vungle.publisher;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.ContextThemeWrapper;
import com.vungle.publisher.log.Logger;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class mq {

    /* JADX INFO: compiled from: vungle */
    /* JADX INFO: loaded from: classes2.dex */
    public interface a {
        void a();

        void b();

        void c();
    }

    @Inject
    public mq() {
    }

    public AlertDialog a(Context context, p pVar, a aVar) {
        AlertDialog.Builder builder = new AlertDialog.Builder(new ContextThemeWrapper(context, context.getApplicationInfo().theme));
        builder.setTitle(pVar.getIncentivizedCancelDialogTitle());
        builder.setMessage(pVar.getIncentivizedCancelDialogBodyText());
        builder.setPositiveButton(pVar.getIncentivizedCancelDialogKeepWatchingButtonText(), mr.a(aVar));
        builder.setNegativeButton(pVar.getIncentivizedCancelDialogCloseButtonText(), ms.a(aVar));
        builder.setOnCancelListener(mt.a(aVar));
        return builder.create();
    }

    static /* synthetic */ void b(a aVar, DialogInterface dialogInterface, int i) {
        Logger.d(Logger.AD_TAG, "positive click");
        aVar.a();
    }

    static /* synthetic */ void a(a aVar, DialogInterface dialogInterface, int i) {
        Logger.d(Logger.AD_TAG, "negative click");
        aVar.b();
    }

    static /* synthetic */ void a(a aVar, DialogInterface dialogInterface) {
        Logger.d(Logger.AD_TAG, "cancel click");
        aVar.c();
    }
}
