package com.google.android.gms.common.data;

import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzf<T> extends AbstractDataBuffer<T> {
    private boolean wc;
    private ArrayList<Integer> wd;

    protected zzf(DataHolder dataHolder) {
        super(dataHolder);
        this.wc = false;
    }

    private void zzarh() {
        synchronized (this) {
            if (!this.wc) {
                int count = this.tk.getCount();
                this.wd = new ArrayList<>();
                if (count > 0) {
                    this.wd.add(0);
                    String strZzarg = zzarg();
                    String strZzd = this.tk.zzd(strZzarg, 0, this.tk.zzfo(0));
                    int i = 1;
                    while (i < count) {
                        int iZzfo = this.tk.zzfo(i);
                        String strZzd2 = this.tk.zzd(strZzarg, i, iZzfo);
                        if (strZzd2 == null) {
                            throw new NullPointerException(new StringBuilder(String.valueOf(strZzarg).length() + 78).append("Missing value for markerColumn: ").append(strZzarg).append(", at row: ").append(i).append(", for window: ").append(iZzfo).toString());
                        }
                        if (strZzd2.equals(strZzd)) {
                            strZzd2 = strZzd;
                        } else {
                            this.wd.add(Integer.valueOf(i));
                        }
                        i++;
                        strZzd = strZzd2;
                    }
                }
                this.wc = true;
            }
        }
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public final T get(int i) {
        zzarh();
        return zzl(zzfs(i), zzft(i));
    }

    @Override // com.google.android.gms.common.data.AbstractDataBuffer, com.google.android.gms.common.data.DataBuffer
    public int getCount() {
        zzarh();
        return this.wd.size();
    }

    protected abstract String zzarg();

    protected String zzari() {
        return null;
    }

    int zzfs(int i) {
        if (i < 0 || i >= this.wd.size()) {
            throw new IllegalArgumentException(new StringBuilder(53).append("Position ").append(i).append(" is out of bounds for this buffer").toString());
        }
        return this.wd.get(i).intValue();
    }

    protected int zzft(int i) {
        if (i < 0 || i == this.wd.size()) {
            return 0;
        }
        int count = i == this.wd.size() + (-1) ? this.tk.getCount() - this.wd.get(i).intValue() : this.wd.get(i + 1).intValue() - this.wd.get(i).intValue();
        if (count != 1) {
            return count;
        }
        int iZzfs = zzfs(i);
        int iZzfo = this.tk.zzfo(iZzfs);
        String strZzari = zzari();
        if (strZzari == null || this.tk.zzd(strZzari, iZzfs, iZzfo) != null) {
            return count;
        }
        return 0;
    }

    protected abstract T zzl(int i, int i2);
}
