package com.google.android.gms.internal;

import com.facebook.internal.ServerProtocol;
import com.ironsource.sdk.constants.Constants;
import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* JADX INFO: loaded from: classes.dex */
public class zzaor implements Closeable, Flushable {
    private static final String[] bhK = new String[128];
    private static final String[] bhL;
    private boolean bec;
    private boolean bed;
    private String bhM;
    private String bhN;
    private boolean bhn;
    private int[] bhv = new int[32];
    private int bhw = 0;
    private final Writer out;
    private String separator;

    static {
        for (int i = 0; i <= 31; i++) {
            bhK[i] = String.format("\\u%04x", Integer.valueOf(i));
        }
        bhK[34] = "\\\"";
        bhK[92] = "\\\\";
        bhK[9] = "\\t";
        bhK[8] = "\\b";
        bhK[10] = "\\n";
        bhK[13] = "\\r";
        bhK[12] = "\\f";
        bhL = (String[]) bhK.clone();
        bhL[60] = "\\u003c";
        bhL[62] = "\\u003e";
        bhL[38] = "\\u0026";
        bhL[61] = "\\u003d";
        bhL[39] = "\\u0027";
    }

    public zzaor(Writer writer) {
        zzaec(6);
        this.separator = ":";
        this.bec = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.out = writer;
    }

    private int F() {
        if (this.bhw == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        return this.bhv[this.bhw - 1];
    }

    private void G() throws IOException {
        if (this.bhN != null) {
            I();
            zzte(this.bhN);
            this.bhN = null;
        }
    }

    private void H() throws IOException {
        if (this.bhM == null) {
            return;
        }
        this.out.write("\n");
        int i = this.bhw;
        for (int i2 = 1; i2 < i; i2++) {
            this.out.write(this.bhM);
        }
    }

    private void I() throws IOException {
        int iF = F();
        if (iF == 5) {
            this.out.write(44);
        } else if (iF != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        H();
        zzaee(4);
    }

    private void zzaec(int i) {
        if (this.bhw == this.bhv.length) {
            int[] iArr = new int[this.bhw * 2];
            System.arraycopy(this.bhv, 0, iArr, 0, this.bhw);
            this.bhv = iArr;
        }
        int[] iArr2 = this.bhv;
        int i2 = this.bhw;
        this.bhw = i2 + 1;
        iArr2[i2] = i;
    }

    private void zzaee(int i) {
        this.bhv[this.bhw - 1] = i;
    }

    private zzaor zzc(int i, int i2, String str) throws IOException {
        int iF = F();
        if (iF != i2 && iF != i) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.bhN != null) {
            String strValueOf = String.valueOf(this.bhN);
            throw new IllegalStateException(strValueOf.length() != 0 ? "Dangling name: ".concat(strValueOf) : new String("Dangling name: "));
        }
        this.bhw--;
        if (iF == i2) {
            H();
        }
        this.out.write(str);
        return this;
    }

    private void zzdd(boolean z) throws IOException {
        switch (F()) {
            case 1:
                zzaee(2);
                H();
                return;
            case 2:
                this.out.append(',');
                H();
                return;
            case 3:
            case 5:
            default:
                throw new IllegalStateException("Nesting problem.");
            case 4:
                this.out.append((CharSequence) this.separator);
                zzaee(5);
                return;
            case 6:
                break;
            case 7:
                if (!this.bhn) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
                break;
        }
        if (!this.bhn && !z) {
            throw new IllegalStateException("JSON must start with an array or an object.");
        }
        zzaee(7);
    }

    private zzaor zzq(int i, String str) throws IOException {
        zzdd(true);
        zzaec(i);
        this.out.write(str);
        return this;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void zzte(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            r1 = 0
            boolean r0 = r7.bed
            if (r0 == 0) goto L25
            java.lang.String[] r0 = com.google.android.gms.internal.zzaor.bhL
        L7:
            java.io.Writer r2 = r7.out
            java.lang.String r3 = "\""
            r2.write(r3)
            int r4 = r8.length()
            r3 = r1
        L13:
            if (r3 >= r4) goto L46
            char r2 = r8.charAt(r3)
            r5 = 128(0x80, float:1.8E-43)
            if (r2 >= r5) goto L28
            r2 = r0[r2]
            if (r2 != 0) goto L2e
        L21:
            int r2 = r3 + 1
            r3 = r2
            goto L13
        L25:
            java.lang.String[] r0 = com.google.android.gms.internal.zzaor.bhK
            goto L7
        L28:
            r5 = 8232(0x2028, float:1.1535E-41)
            if (r2 != r5) goto L3f
            java.lang.String r2 = "\\u2028"
        L2e:
            if (r1 >= r3) goto L37
            java.io.Writer r5 = r7.out
            int r6 = r3 - r1
            r5.write(r8, r1, r6)
        L37:
            java.io.Writer r1 = r7.out
            r1.write(r2)
            int r1 = r3 + 1
            goto L21
        L3f:
            r5 = 8233(0x2029, float:1.1537E-41)
            if (r2 != r5) goto L21
            java.lang.String r2 = "\\u2029"
            goto L2e
        L46:
            if (r1 >= r4) goto L4f
            java.io.Writer r0 = r7.out
            int r2 = r4 - r1
            r0.write(r8, r1, r2)
        L4f:
            java.io.Writer r0 = r7.out
            java.lang.String r1 = "\""
            r0.write(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaor.zzte(java.lang.String):void");
    }

    public final boolean D() {
        return this.bed;
    }

    public final boolean E() {
        return this.bec;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
        int i = this.bhw;
        if (i > 1 || (i == 1 && this.bhv[i - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.bhw = 0;
    }

    public void flush() throws IOException {
        if (this.bhw == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.out.flush();
    }

    public boolean isLenient() {
        return this.bhn;
    }

    public zzaor n() throws IOException {
        G();
        return zzq(1, Constants.RequestParameters.LEFT_BRACKETS);
    }

    public zzaor o() throws IOException {
        return zzc(1, 2, Constants.RequestParameters.RIGHT_BRACKETS);
    }

    public zzaor p() throws IOException {
        G();
        return zzq(3, "{");
    }

    public zzaor q() throws IOException {
        return zzc(3, 5, "}");
    }

    public zzaor r() throws IOException {
        if (this.bhN == null) {
            zzdd(false);
            this.out.write("null");
        } else if (this.bec) {
            G();
            zzdd(false);
            this.out.write("null");
        } else {
            this.bhN = null;
        }
        return this;
    }

    public final void setIndent(String str) {
        if (str.length() == 0) {
            this.bhM = null;
            this.separator = ":";
        } else {
            this.bhM = str;
            this.separator = ": ";
        }
    }

    public final void setLenient(boolean z) {
        this.bhn = z;
    }

    public zzaor zza(Number number) throws IOException {
        if (number == null) {
            return r();
        }
        G();
        String string = number.toString();
        if (!this.bhn && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            String strValueOf = String.valueOf(number);
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 39).append("Numeric values must be finite, but was ").append(strValueOf).toString());
        }
        zzdd(false);
        this.out.append((CharSequence) string);
        return this;
    }

    public zzaor zzcp(long j) throws IOException {
        G();
        zzdd(false);
        this.out.write(Long.toString(j));
        return this;
    }

    public zzaor zzcz(boolean z) throws IOException {
        G();
        zzdd(false);
        this.out.write(z ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false");
        return this;
    }

    public final void zzdb(boolean z) {
        this.bed = z;
    }

    public final void zzdc(boolean z) {
        this.bec = z;
    }

    public zzaor zzta(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.bhN != null) {
            throw new IllegalStateException();
        }
        if (this.bhw == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.bhN = str;
        return this;
    }

    public zzaor zztb(String str) throws IOException {
        if (str == null) {
            return r();
        }
        G();
        zzdd(false);
        zzte(str);
        return this;
    }
}
