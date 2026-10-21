package com.google.android.gms.internal;

import java.io.IOException;
import java.io.Writer;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class zzaog extends zzaor {
    private static final Writer bfM = new Writer() { // from class: com.google.android.gms.internal.zzaog.1
        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i, int i2) {
            throw new AssertionError();
        }
    };
    private static final zzane bfN = new zzane("closed");
    private final List<zzamy> bfL;
    private String bfO;
    private zzamy bfP;

    public zzaog() {
        super(bfM);
        this.bfL = new ArrayList();
        this.bfP = zzana.bes;
    }

    private zzamy m() {
        return this.bfL.get(this.bfL.size() - 1);
    }

    private void zzd(zzamy zzamyVar) {
        if (this.bfO != null) {
            if (!zzamyVar.zzczp() || E()) {
                ((zzanb) m()).zza(this.bfO, zzamyVar);
            }
            this.bfO = null;
            return;
        }
        if (this.bfL.isEmpty()) {
            this.bfP = zzamyVar;
            return;
        }
        zzamy zzamyVarM = m();
        if (!(zzamyVarM instanceof zzamv)) {
            throw new IllegalStateException();
        }
        ((zzamv) zzamyVarM).zzc(zzamyVar);
    }

    @Override // com.google.android.gms.internal.zzaor, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.bfL.isEmpty()) {
            throw new IOException("Incomplete document");
        }
        this.bfL.add(bfN);
    }

    @Override // com.google.android.gms.internal.zzaor, java.io.Flushable
    public void flush() throws IOException {
    }

    public zzamy l() {
        if (this.bfL.isEmpty()) {
            return this.bfP;
        }
        String strValueOf = String.valueOf(this.bfL);
        throw new IllegalStateException(new StringBuilder(String.valueOf(strValueOf).length() + 34).append("Expected one JSON element but was ").append(strValueOf).toString());
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor n() throws IOException {
        zzamv zzamvVar = new zzamv();
        zzd(zzamvVar);
        this.bfL.add(zzamvVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor o() throws IOException {
        if (this.bfL.isEmpty() || this.bfO != null) {
            throw new IllegalStateException();
        }
        if (!(m() instanceof zzamv)) {
            throw new IllegalStateException();
        }
        this.bfL.remove(this.bfL.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor p() throws IOException {
        zzanb zzanbVar = new zzanb();
        zzd(zzanbVar);
        this.bfL.add(zzanbVar);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor q() throws IOException {
        if (this.bfL.isEmpty() || this.bfO != null) {
            throw new IllegalStateException();
        }
        if (!(m() instanceof zzanb)) {
            throw new IllegalStateException();
        }
        this.bfL.remove(this.bfL.size() - 1);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor r() throws IOException {
        zzd(zzana.bes);
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor zza(Number number) throws IOException {
        if (number == null) {
            return r();
        }
        if (!isLenient()) {
            double dDoubleValue = number.doubleValue();
            if (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue)) {
                String strValueOf = String.valueOf(number);
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(strValueOf).length() + 33).append("JSON forbids NaN and infinities: ").append(strValueOf).toString());
            }
        }
        zzd(new zzane(number));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor zzcp(long j) throws IOException {
        zzd(new zzane(Long.valueOf(j)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor zzcz(boolean z) throws IOException {
        zzd(new zzane(Boolean.valueOf(z)));
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor zzta(String str) throws IOException {
        if (this.bfL.isEmpty() || this.bfO != null) {
            throw new IllegalStateException();
        }
        if (!(m() instanceof zzanb)) {
            throw new IllegalStateException();
        }
        this.bfO = str;
        return this;
    }

    @Override // com.google.android.gms.internal.zzaor
    public zzaor zztb(String str) throws IOException {
        if (str == null) {
            return r();
        }
        zzd(new zzane(str));
        return this;
    }
}
