package com.google.android.gms.common.data;

import android.content.ContentValues;
import android.database.CharArrayBuffer;
import android.database.CursorIndexOutOfBoundsException;
import android.database.CursorWindow;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
@KeepName
public final class DataHolder extends AbstractSafeParcelable implements Closeable {
    public static final Parcelable.Creator<DataHolder> CREATOR = new zze();
    private static final zza vW = new zza(new String[0], null) { // from class: com.google.android.gms.common.data.DataHolder.1
        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zza(ContentValues contentValues) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }

        @Override // com.google.android.gms.common.data.DataHolder.zza
        public zza zza(HashMap<String, Object> map) {
            throw new UnsupportedOperationException("Cannot add data to empty builder");
        }
    };
    boolean mClosed;
    private final int mVersionCode;
    private final int ob;
    private final String[] vO;
    Bundle vP;
    private final CursorWindow[] vQ;
    private final Bundle vR;
    int[] vS;
    int vT;
    private Object vU;
    private boolean vV;

    public static class zza {
        private final String[] vO;
        private final ArrayList<HashMap<String, Object>> vX;
        private final String vY;
        private final HashMap<Object, Integer> vZ;
        private boolean wa;
        private String wb;

        private zza(String[] strArr, String str) {
            this.vO = (String[]) zzab.zzaa(strArr);
            this.vX = new ArrayList<>();
            this.vY = str;
            this.vZ = new HashMap<>();
            this.wa = false;
            this.wb = null;
        }

        private int zzb(HashMap<String, Object> map) {
            Object obj;
            if (this.vY != null && (obj = map.get(this.vY)) != null) {
                Integer num = this.vZ.get(obj);
                if (num != null) {
                    return num.intValue();
                }
                this.vZ.put(obj, Integer.valueOf(this.vX.size()));
                return -1;
            }
            return -1;
        }

        public zza zza(ContentValues contentValues) {
            com.google.android.gms.common.internal.zzb.zzw(contentValues);
            HashMap<String, Object> map = new HashMap<>(contentValues.size());
            for (Map.Entry<String, Object> entry : contentValues.valueSet()) {
                map.put(entry.getKey(), entry.getValue());
            }
            return zza(map);
        }

        public zza zza(HashMap<String, Object> map) {
            com.google.android.gms.common.internal.zzb.zzw(map);
            int iZzb = zzb(map);
            if (iZzb == -1) {
                this.vX.add(map);
            } else {
                this.vX.remove(iZzb);
                this.vX.add(iZzb, map);
            }
            this.wa = false;
            return this;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public DataHolder zzfq(int i) {
            return new DataHolder(this, i, (Bundle) null);
        }
    }

    public static class zzb extends RuntimeException {
        public zzb(String str) {
            super(str);
        }
    }

    DataHolder(int i, String[] strArr, CursorWindow[] cursorWindowArr, int i2, Bundle bundle) {
        this.mClosed = false;
        this.vV = true;
        this.mVersionCode = i;
        this.vO = strArr;
        this.vQ = cursorWindowArr;
        this.ob = i2;
        this.vR = bundle;
    }

    private DataHolder(zza zzaVar, int i, Bundle bundle) {
        this(zzaVar.vO, zza(zzaVar, -1), i, bundle);
    }

    public DataHolder(String[] strArr, CursorWindow[] cursorWindowArr, int i, Bundle bundle) {
        this.mClosed = false;
        this.vV = true;
        this.mVersionCode = 1;
        this.vO = (String[]) zzab.zzaa(strArr);
        this.vQ = (CursorWindow[]) zzab.zzaa(cursorWindowArr);
        this.ob = i;
        this.vR = bundle;
        zzard();
    }

    public static DataHolder zza(int i, Bundle bundle) {
        return new DataHolder(vW, i, bundle);
    }

    private static CursorWindow[] zza(zza zzaVar, int i) {
        int i2;
        boolean z;
        CursorWindow cursorWindow;
        if (zzaVar.vO.length == 0) {
            return new CursorWindow[0];
        }
        List listSubList = (i < 0 || i >= zzaVar.vX.size()) ? zzaVar.vX : zzaVar.vX.subList(0, i);
        int size = listSubList.size();
        CursorWindow cursorWindow2 = new CursorWindow(false);
        ArrayList arrayList = new ArrayList();
        arrayList.add(cursorWindow2);
        cursorWindow2.setNumColumns(zzaVar.vO.length);
        int i3 = 0;
        boolean z2 = false;
        while (i3 < size) {
            try {
                if (!cursorWindow2.allocRow()) {
                    Log.d("DataHolder", new StringBuilder(72).append("Allocating additional cursor window for large data set (row ").append(i3).append(")").toString());
                    cursorWindow2 = new CursorWindow(false);
                    cursorWindow2.setStartPosition(i3);
                    cursorWindow2.setNumColumns(zzaVar.vO.length);
                    arrayList.add(cursorWindow2);
                    if (!cursorWindow2.allocRow()) {
                        Log.e("DataHolder", "Unable to allocate row to hold data.");
                        arrayList.remove(cursorWindow2);
                        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
                    }
                }
                Map map = (Map) listSubList.get(i3);
                boolean zPutDouble = true;
                for (int i4 = 0; i4 < zzaVar.vO.length && zPutDouble; i4++) {
                    String str = zzaVar.vO[i4];
                    Object obj = map.get(str);
                    if (obj == null) {
                        zPutDouble = cursorWindow2.putNull(i3, i4);
                    } else if (obj instanceof String) {
                        zPutDouble = cursorWindow2.putString((String) obj, i3, i4);
                    } else if (obj instanceof Long) {
                        zPutDouble = cursorWindow2.putLong(((Long) obj).longValue(), i3, i4);
                    } else if (obj instanceof Integer) {
                        zPutDouble = cursorWindow2.putLong(((Integer) obj).intValue(), i3, i4);
                    } else if (obj instanceof Boolean) {
                        zPutDouble = cursorWindow2.putLong(((Boolean) obj).booleanValue() ? 1L : 0L, i3, i4);
                    } else if (obj instanceof byte[]) {
                        zPutDouble = cursorWindow2.putBlob((byte[]) obj, i3, i4);
                    } else if (obj instanceof Double) {
                        zPutDouble = cursorWindow2.putDouble(((Double) obj).doubleValue(), i3, i4);
                    } else {
                        if (!(obj instanceof Float)) {
                            String strValueOf = String.valueOf(obj);
                            throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 32 + String.valueOf(strValueOf).length()).append("Unsupported object for column ").append(str).append(": ").append(strValueOf).toString());
                        }
                        zPutDouble = cursorWindow2.putDouble(((Float) obj).floatValue(), i3, i4);
                    }
                }
                if (zPutDouble) {
                    i2 = i3;
                    z = false;
                    cursorWindow = cursorWindow2;
                } else {
                    if (z2) {
                        throw new zzb("Could not add the value to a new CursorWindow. The size of value may be larger than what a CursorWindow can handle.");
                    }
                    Log.d("DataHolder", new StringBuilder(74).append("Couldn't populate window data for row ").append(i3).append(" - allocating new window.").toString());
                    cursorWindow2.freeLastRow();
                    CursorWindow cursorWindow3 = new CursorWindow(false);
                    cursorWindow3.setStartPosition(i3);
                    cursorWindow3.setNumColumns(zzaVar.vO.length);
                    arrayList.add(cursorWindow3);
                    i2 = i3 - 1;
                    cursorWindow = cursorWindow3;
                    z = true;
                }
                z2 = z;
                cursorWindow2 = cursorWindow;
                i3 = i2 + 1;
            } catch (RuntimeException e) {
                int size2 = arrayList.size();
                for (int i5 = 0; i5 < size2; i5++) {
                    ((CursorWindow) arrayList.get(i5)).close();
                }
                throw e;
            }
        }
        return (CursorWindow[]) arrayList.toArray(new CursorWindow[arrayList.size()]);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zza zzb(String[] strArr) {
        return new zza(strArr, null);
    }

    public static DataHolder zzfp(int i) {
        return zza(i, (Bundle) null);
    }

    private void zzh(String str, int i) {
        if (this.vP == null || !this.vP.containsKey(str)) {
            String strValueOf = String.valueOf(str);
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "No such column: ".concat(strValueOf) : new String("No such column: "));
        }
        if (isClosed()) {
            throw new IllegalArgumentException("Buffer is closed.");
        }
        if (i < 0 || i >= this.vT) {
            throw new CursorIndexOutOfBoundsException(i, this.vT);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.mClosed) {
                this.mClosed = true;
                for (int i = 0; i < this.vQ.length; i++) {
                    this.vQ[i].close();
                }
            }
        }
    }

    protected void finalize() throws Throwable {
        String string;
        try {
            if (this.vV && this.vQ.length > 0 && !isClosed()) {
                if (this.vU == null) {
                    String strValueOf = String.valueOf(toString());
                    string = strValueOf.length() != 0 ? "internal object: ".concat(strValueOf) : new String("internal object: ");
                } else {
                    string = this.vU.toString();
                }
                Log.e("DataBuffer", new StringBuilder(String.valueOf(string).length() + 161).append("Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (").append(string).append(")").toString());
                close();
            }
        } finally {
            super.finalize();
        }
    }

    public int getCount() {
        return this.vT;
    }

    public int getStatusCode() {
        return this.ob;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean isClosed() {
        boolean z;
        synchronized (this) {
            z = this.mClosed;
        }
        return z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    public void zza(String str, int i, int i2, CharArrayBuffer charArrayBuffer) {
        zzh(str, i);
        this.vQ[i2].copyStringToBuffer(i, this.vP.getInt(str), charArrayBuffer);
    }

    public Bundle zzaqy() {
        return this.vR;
    }

    public void zzard() {
        this.vP = new Bundle();
        for (int i = 0; i < this.vO.length; i++) {
            this.vP.putInt(this.vO[i], i);
        }
        this.vS = new int[this.vQ.length];
        int numRows = 0;
        for (int i2 = 0; i2 < this.vQ.length; i2++) {
            this.vS[i2] = numRows;
            numRows += this.vQ[i2].getNumRows() - (numRows - this.vQ[i2].getStartPosition());
        }
        this.vT = numRows;
    }

    String[] zzare() {
        return this.vO;
    }

    CursorWindow[] zzarf() {
        return this.vQ;
    }

    public long zzb(String str, int i, int i2) {
        zzh(str, i);
        return this.vQ[i2].getLong(i, this.vP.getInt(str));
    }

    public int zzc(String str, int i, int i2) {
        zzh(str, i);
        return this.vQ[i2].getInt(i, this.vP.getInt(str));
    }

    public String zzd(String str, int i, int i2) {
        zzh(str, i);
        return this.vQ[i2].getString(i, this.vP.getInt(str));
    }

    public boolean zze(String str, int i, int i2) {
        zzh(str, i);
        return Long.valueOf(this.vQ[i2].getLong(i, this.vP.getInt(str))).longValue() == 1;
    }

    public float zzf(String str, int i, int i2) {
        zzh(str, i);
        return this.vQ[i2].getFloat(i, this.vP.getInt(str));
    }

    public int zzfo(int i) {
        int i2 = 0;
        zzab.zzbm(i >= 0 && i < this.vT);
        while (true) {
            if (i2 >= this.vS.length) {
                break;
            }
            if (i < this.vS[i2]) {
                i2--;
                break;
            }
            i2++;
        }
        return i2 == this.vS.length ? i2 - 1 : i2;
    }

    public byte[] zzg(String str, int i, int i2) {
        zzh(str, i);
        return this.vQ[i2].getBlob(i, this.vP.getInt(str));
    }

    public Uri zzh(String str, int i, int i2) {
        String strZzd = zzd(str, i, i2);
        if (strZzd == null) {
            return null;
        }
        return Uri.parse(strZzd);
    }

    public boolean zzhf(String str) {
        return this.vP.containsKey(str);
    }

    public boolean zzi(String str, int i, int i2) {
        zzh(str, i);
        return this.vQ[i2].isNull(i, this.vP.getInt(str));
    }

    public void zzv(Object obj) {
        this.vU = obj;
    }
}
