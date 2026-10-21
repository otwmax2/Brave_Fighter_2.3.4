package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
public class cc extends bz implements cp {
    public static final String g = "repeat";
    private static final String k = "appVersionCode";
    private static final String l = "exceptionData";
    private static final String m = "shortHashCode";
    public int h;
    public String i;
    public String j;
    private String n;

    public cc(String str, String str2) {
        super("G13");
        this.h = 1;
        this.i = "";
        this.n = str;
        this.j = str2;
    }

    public static String a(String str) {
        String[] strArrSplit = str.split("\r\n");
        return aa.a(aa.c(strArrSplit.length < 3 ? String.valueOf(System.currentTimeMillis()) : strArrSplit[0] + "\r\n" + strArrSplit[1] + "\r\n" + strArrSplit[2]).getBytes());
    }

    public static String a(Throwable th) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.toString());
        sb.append("\r\n");
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length <= 50 ? stackTrace.length : 50;
        for (int i = 0; i < length; i++) {
            sb.append("\t" + stackTrace[i] + "\r\n");
        }
        Throwable cause = th.getCause();
        if (cause != null) {
            a(sb, stackTrace, cause, 1);
        }
        return sb.toString();
    }

    private static void a(StringBuilder sb, StackTraceElement[] stackTraceElementArr, Throwable th, int i) {
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length - 1;
        int length2 = stackTraceElementArr.length - 1;
        while (length >= 0 && length2 >= 0 && stackTrace[length].equals(stackTraceElementArr[length2])) {
            length2--;
            length--;
        }
        int i2 = length <= 50 ? length : 50;
        sb.append("Caused by : " + th + "\r\n");
        for (int i3 = 0; i3 <= i2; i3++) {
            sb.append("\t" + stackTrace[i3] + "\r\n");
        }
        if (i < 5 && th.getCause() != null) {
            a(sb, stackTrace, th, i + 1);
        }
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        a(g, Integer.valueOf(this.h)).a(k, "").a(l, this.j).a(m, this.n);
    }

    @Override // com.tendcloud.tenddata.game.bz
    public boolean f() {
        return true;
    }

    @Override // com.tendcloud.tenddata.game.cp
    public String g() {
        return this.n;
    }
}
