package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Reader;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class zzaof extends zzaop {
    private static final Reader bfJ = new Reader() { // from class: com.google.android.gms.internal.zzaof.1
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i, int i2) throws IOException {
            throw new AssertionError();
        }
    };
    private static final Object bfK = new Object();
    private final List<Object> bfL;

    public zzaof(zzamy zzamyVar) {
        super(bfJ);
        this.bfL = new ArrayList();
        this.bfL.add(zzamyVar);
    }

    private Object i() {
        return this.bfL.get(this.bfL.size() - 1);
    }

    private Object j() {
        return this.bfL.remove(this.bfL.size() - 1);
    }

    private void zza(zzaoq zzaoqVar) throws IOException {
        if (h() != zzaoqVar) {
            String strValueOf = String.valueOf(zzaoqVar);
            String strValueOf2 = String.valueOf(h());
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
    }

    @Override // com.google.android.gms.internal.zzaop
    public void beginArray() throws IOException {
        zza(zzaoq.BEGIN_ARRAY);
        this.bfL.add(((zzamv) i()).iterator());
    }

    @Override // com.google.android.gms.internal.zzaop
    public void beginObject() throws IOException {
        zza(zzaoq.BEGIN_OBJECT);
        this.bfL.add(((zzanb) i()).entrySet().iterator());
    }

    @Override // com.google.android.gms.internal.zzaop, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.bfL.clear();
        this.bfL.add(bfK);
    }

    @Override // com.google.android.gms.internal.zzaop
    public void endArray() throws IOException {
        zza(zzaoq.END_ARRAY);
        j();
        j();
    }

    @Override // com.google.android.gms.internal.zzaop
    public void endObject() throws IOException {
        zza(zzaoq.END_OBJECT);
        j();
        j();
    }

    @Override // com.google.android.gms.internal.zzaop
    public zzaoq h() throws IOException {
        if (this.bfL.isEmpty()) {
            return zzaoq.END_DOCUMENT;
        }
        Object objI = i();
        if (objI instanceof Iterator) {
            boolean z = this.bfL.get(this.bfL.size() - 2) instanceof zzanb;
            Iterator it = (Iterator) objI;
            if (!it.hasNext()) {
                return z ? zzaoq.END_OBJECT : zzaoq.END_ARRAY;
            }
            if (z) {
                return zzaoq.NAME;
            }
            this.bfL.add(it.next());
            return h();
        }
        if (objI instanceof zzanb) {
            return zzaoq.BEGIN_OBJECT;
        }
        if (objI instanceof zzamv) {
            return zzaoq.BEGIN_ARRAY;
        }
        if (!(objI instanceof zzane)) {
            if (objI instanceof zzana) {
                return zzaoq.NULL;
            }
            if (objI == bfK) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        zzane zzaneVar = (zzane) objI;
        if (zzaneVar.zzczw()) {
            return zzaoq.STRING;
        }
        if (zzaneVar.zzczu()) {
            return zzaoq.BOOLEAN;
        }
        if (zzaneVar.zzczv()) {
            return zzaoq.NUMBER;
        }
        throw new AssertionError();
    }

    @Override // com.google.android.gms.internal.zzaop
    public boolean hasNext() throws IOException {
        zzaoq zzaoqVarH = h();
        return (zzaoqVarH == zzaoq.END_OBJECT || zzaoqVarH == zzaoq.END_ARRAY) ? false : true;
    }

    public void k() throws IOException {
        zza(zzaoq.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) i()).next();
        this.bfL.add(entry.getValue());
        this.bfL.add(new zzane((String) entry.getKey()));
    }

    @Override // com.google.android.gms.internal.zzaop
    public boolean nextBoolean() throws IOException {
        zza(zzaoq.BOOLEAN);
        return ((zzane) j()).zzczl();
    }

    @Override // com.google.android.gms.internal.zzaop
    public double nextDouble() throws IOException {
        zzaoq zzaoqVarH = h();
        if (zzaoqVarH != zzaoq.NUMBER && zzaoqVarH != zzaoq.STRING) {
            String strValueOf = String.valueOf(zzaoq.NUMBER);
            String strValueOf2 = String.valueOf(zzaoqVarH);
            throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
        }
        double dZzczi = ((zzane) i()).zzczi();
        if (!isLenient() && (Double.isNaN(dZzczi) || Double.isInfinite(dZzczi))) {
            throw new NumberFormatException(new StringBuilder(57).append("JSON forbids NaN and infinities: ").append(dZzczi).toString());
        }
        j();
        return dZzczi;
    }

    @Override // com.google.android.gms.internal.zzaop
    public int nextInt() throws IOException {
        zzaoq zzaoqVarH = h();
        if (zzaoqVarH == zzaoq.NUMBER || zzaoqVarH == zzaoq.STRING) {
            int iZzczk = ((zzane) i()).zzczk();
            j();
            return iZzczk;
        }
        String strValueOf = String.valueOf(zzaoq.NUMBER);
        String strValueOf2 = String.valueOf(zzaoqVarH);
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaop
    public long nextLong() throws IOException {
        zzaoq zzaoqVarH = h();
        if (zzaoqVarH == zzaoq.NUMBER || zzaoqVarH == zzaoq.STRING) {
            long jZzczj = ((zzane) i()).zzczj();
            j();
            return jZzczj;
        }
        String strValueOf = String.valueOf(zzaoq.NUMBER);
        String strValueOf2 = String.valueOf(zzaoqVarH);
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaop
    public String nextName() throws IOException {
        zza(zzaoq.NAME);
        Map.Entry entry = (Map.Entry) ((Iterator) i()).next();
        this.bfL.add(entry.getValue());
        return (String) entry.getKey();
    }

    @Override // com.google.android.gms.internal.zzaop
    public void nextNull() throws IOException {
        zza(zzaoq.NULL);
        j();
    }

    @Override // com.google.android.gms.internal.zzaop
    public String nextString() throws IOException {
        zzaoq zzaoqVarH = h();
        if (zzaoqVarH == zzaoq.STRING || zzaoqVarH == zzaoq.NUMBER) {
            return ((zzane) j()).zzczh();
        }
        String strValueOf = String.valueOf(zzaoq.STRING);
        String strValueOf2 = String.valueOf(zzaoqVarH);
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 18 + String.valueOf(strValueOf2).length()).append("Expected ").append(strValueOf).append(" but was ").append(strValueOf2).toString());
    }

    @Override // com.google.android.gms.internal.zzaop
    public void skipValue() throws IOException {
        if (h() == zzaoq.NAME) {
            nextName();
        } else {
            j();
        }
    }

    @Override // com.google.android.gms.internal.zzaop
    public String toString() {
        return getClass().getSimpleName();
    }
}
