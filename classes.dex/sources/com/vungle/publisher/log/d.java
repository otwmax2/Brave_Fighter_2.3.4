package com.vungle.publisher.log;

import com.ironsource.sdk.constants.Constants;
import com.vungle.publisher.env.r;
import com.vungle.publisher.zk;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.logging.Formatter;
import java.util.logging.Level;
import java.util.logging.LogRecord;
import javax.inject.Inject;
import javax.inject.Singleton;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
@Singleton
public class d extends Formatter {
    SimpleDateFormat a = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS");

    @Inject
    r b;

    @Inject
    public d() {
    }

    @Override // java.util.logging.Formatter
    public String format(LogRecord record) {
        String str = "";
        Object[] parameters = record.getParameters();
        if (parameters != null && parameters.length > 0 && parameters[0] != null) {
            str = (String) parameters[0];
        }
        return zk.a(";", this.a.format(new Date(record.getMillis())), TimeZone.getDefault().getID(), record.getLoggerName(), a(record.getLevel()), str, this.b.r(), record.getMessage()) + "\n";
    }

    private String a(Level level) {
        switch (level.getName()) {
        }
        return Constants.RequestParameters.DEBUG;
    }
}
