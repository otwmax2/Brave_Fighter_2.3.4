package com.google.android.gms.tagmanager;

/* JADX INFO: loaded from: classes.dex */
class zzdk extends Number implements Comparable<zzdk> {
    private double ayL;
    private long ayM;
    private boolean ayN = false;

    private zzdk(double d) {
        this.ayL = d;
    }

    private zzdk(long j) {
        this.ayM = j;
    }

    public static zzdk zza(Double d) {
        return new zzdk(d.doubleValue());
    }

    public static zzdk zzbs(long j) {
        return new zzdk(j);
    }

    public static zzdk zzor(String str) throws NumberFormatException {
        try {
            return new zzdk(Long.parseLong(str));
        } catch (NumberFormatException e) {
            try {
                return new zzdk(Double.parseDouble(str));
            } catch (NumberFormatException e2) {
                throw new NumberFormatException(String.valueOf(str).concat(" is not a valid TypedNumber"));
            }
        }
    }

    @Override // java.lang.Number
    public byte byteValue() {
        return (byte) longValue();
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return zzcdg() ? this.ayM : this.ayL;
    }

    public boolean equals(Object obj) {
        return (obj instanceof zzdk) && compareTo((zzdk) obj) == 0;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) doubleValue();
    }

    public int hashCode() {
        return new Long(longValue()).hashCode();
    }

    @Override // java.lang.Number
    public int intValue() {
        return zzcdi();
    }

    @Override // java.lang.Number
    public long longValue() {
        return zzcdh();
    }

    @Override // java.lang.Number
    public short shortValue() {
        return zzcdj();
    }

    public String toString() {
        return zzcdg() ? Long.toString(this.ayM) : Double.toString(this.ayL);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public int compareTo(zzdk zzdkVar) {
        return (zzcdg() && zzdkVar.zzcdg()) ? new Long(this.ayM).compareTo(Long.valueOf(zzdkVar.ayM)) : Double.compare(doubleValue(), zzdkVar.doubleValue());
    }

    public boolean zzcdf() {
        return !zzcdg();
    }

    public boolean zzcdg() {
        return this.ayN;
    }

    public long zzcdh() {
        return zzcdg() ? this.ayM : (long) this.ayL;
    }

    public int zzcdi() {
        return (int) longValue();
    }

    public short zzcdj() {
        return (short) longValue();
    }
}
