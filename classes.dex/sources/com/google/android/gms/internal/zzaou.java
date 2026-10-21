package com.google.android.gms.internal;

import android.support.v7.internal.widget.ActivityChooserView;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class zzaou {
    private int bhR;
    private int bhS;
    private int bhT;
    private int bhU;
    private int bhV;
    private int bhX;
    private final byte[] buffer;
    private int bhW = ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED;
    private int bhY = 64;
    private int bhZ = 67108864;

    private zzaou(byte[] bArr, int i, int i2) {
        this.buffer = bArr;
        this.bhR = i;
        this.bhS = i + i2;
        this.bhU = i;
    }

    private void W() {
        this.bhS += this.bhT;
        int i = this.bhS;
        if (i <= this.bhW) {
            this.bhT = 0;
        } else {
            this.bhT = i - this.bhW;
            this.bhS -= this.bhT;
        }
    }

    public static int zzaeh(int i) {
        return (i >>> 1) ^ (-(i & 1));
    }

    public static zzaou zzaz(byte[] bArr) {
        return zzb(bArr, 0, bArr.length);
    }

    public static zzaou zzb(byte[] bArr, int i, int i2) {
        return new zzaou(bArr, i, i2);
    }

    public static long zzcq(long j) {
        return (j >>> 1) ^ (-(1 & j));
    }

    public int J() throws IOException {
        if (Y()) {
            this.bhV = 0;
            return 0;
        }
        this.bhV = S();
        if (this.bhV == 0) {
            throw zzapb.aj();
        }
        return this.bhV;
    }

    public void K() throws IOException {
        int iJ;
        do {
            iJ = J();
            if (iJ == 0) {
                return;
            }
        } while (zzaeg(iJ));
    }

    public long L() throws IOException {
        return T();
    }

    public long M() throws IOException {
        return T();
    }

    public int N() throws IOException {
        return S();
    }

    public long O() throws IOException {
        return V();
    }

    public boolean P() throws IOException {
        return S() != 0;
    }

    public int Q() throws IOException {
        return zzaeh(S());
    }

    public long R() throws IOException {
        return zzcq(T());
    }

    public int S() throws IOException {
        byte bZ = Z();
        if (bZ >= 0) {
            return bZ;
        }
        int i = bZ & 127;
        byte bZ2 = Z();
        if (bZ2 >= 0) {
            return i | (bZ2 << 7);
        }
        int i2 = i | ((bZ2 & 127) << 7);
        byte bZ3 = Z();
        if (bZ3 >= 0) {
            return i2 | (bZ3 << 14);
        }
        int i3 = i2 | ((bZ3 & 127) << 14);
        byte bZ4 = Z();
        if (bZ4 >= 0) {
            return i3 | (bZ4 << 21);
        }
        int i4 = i3 | ((bZ4 & 127) << 21);
        byte bZ5 = Z();
        int i5 = i4 | (bZ5 << 28);
        if (bZ5 >= 0) {
            return i5;
        }
        for (int i6 = 0; i6 < 5; i6++) {
            if (Z() >= 0) {
                return i5;
            }
        }
        throw zzapb.ai();
    }

    public long T() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bZ = Z();
            j |= ((long) (bZ & 127)) << i;
            if ((bZ & 128) == 0) {
                return j;
            }
        }
        throw zzapb.ai();
    }

    public int U() throws IOException {
        return (Z() & 255) | ((Z() & 255) << 8) | ((Z() & 255) << 16) | ((Z() & 255) << 24);
    }

    public long V() throws IOException {
        byte bZ = Z();
        return ((((long) Z()) & 255) << 8) | (((long) bZ) & 255) | ((((long) Z()) & 255) << 16) | ((((long) Z()) & 255) << 24) | ((((long) Z()) & 255) << 32) | ((((long) Z()) & 255) << 40) | ((((long) Z()) & 255) << 48) | ((((long) Z()) & 255) << 56);
    }

    public int X() {
        if (this.bhW == Integer.MAX_VALUE) {
            return -1;
        }
        return this.bhW - this.bhU;
    }

    public boolean Y() {
        return this.bhU == this.bhS;
    }

    public byte Z() throws IOException {
        if (this.bhU == this.bhS) {
            throw zzapb.ag();
        }
        byte[] bArr = this.buffer;
        int i = this.bhU;
        this.bhU = i + 1;
        return bArr[i];
    }

    public int getPosition() {
        return this.bhU - this.bhR;
    }

    public byte[] readBytes() throws IOException {
        int iS = S();
        if (iS < 0) {
            throw zzapb.ah();
        }
        if (iS == 0) {
            return zzapf.bit;
        }
        if (iS > this.bhS - this.bhU) {
            throw zzapb.ag();
        }
        byte[] bArr = new byte[iS];
        System.arraycopy(this.buffer, this.bhU, bArr, 0, iS);
        this.bhU = iS + this.bhU;
        return bArr;
    }

    public double readDouble() throws IOException {
        return Double.longBitsToDouble(V());
    }

    public float readFloat() throws IOException {
        return Float.intBitsToFloat(U());
    }

    public String readString() throws IOException {
        int iS = S();
        if (iS < 0) {
            throw zzapb.ah();
        }
        if (iS > this.bhS - this.bhU) {
            throw zzapb.ag();
        }
        String str = new String(this.buffer, this.bhU, iS, zzapa.UTF_8);
        this.bhU = iS + this.bhU;
        return str;
    }

    public void zza(zzapc zzapcVar) throws IOException {
        int iS = S();
        if (this.bhX >= this.bhY) {
            throw zzapb.am();
        }
        int iZzaei = zzaei(iS);
        this.bhX++;
        zzapcVar.zzb(this);
        zzaef(0);
        this.bhX--;
        zzaej(iZzaei);
    }

    public void zza(zzapc zzapcVar, int i) throws IOException {
        if (this.bhX >= this.bhY) {
            throw zzapb.am();
        }
        this.bhX++;
        zzapcVar.zzb(this);
        zzaef(zzapf.zzaj(i, 4));
        this.bhX--;
    }

    public byte[] zzad(int i, int i2) {
        if (i2 == 0) {
            return zzapf.bit;
        }
        byte[] bArr = new byte[i2];
        System.arraycopy(this.buffer, this.bhR + i, bArr, 0, i2);
        return bArr;
    }

    public void zzaef(int i) throws zzapb {
        if (this.bhV != i) {
            throw zzapb.ak();
        }
    }

    public boolean zzaeg(int i) throws IOException {
        switch (zzapf.zzaez(i)) {
            case 0:
                N();
                return true;
            case 1:
                V();
                return true;
            case 2:
                zzael(S());
                return true;
            case 3:
                K();
                zzaef(zzapf.zzaj(zzapf.zzafa(i), 4));
                return true;
            case 4:
                return false;
            case 5:
                U();
                return true;
            default:
                throw zzapb.al();
        }
    }

    public int zzaei(int i) throws zzapb {
        if (i < 0) {
            throw zzapb.ah();
        }
        int i2 = this.bhU + i;
        int i3 = this.bhW;
        if (i2 > i3) {
            throw zzapb.ag();
        }
        this.bhW = i2;
        W();
        return i3;
    }

    public void zzaej(int i) {
        this.bhW = i;
        W();
    }

    public void zzaek(int i) {
        if (i > this.bhU - this.bhR) {
            throw new IllegalArgumentException(new StringBuilder(50).append("Position ").append(i).append(" is beyond current ").append(this.bhU - this.bhR).toString());
        }
        if (i < 0) {
            throw new IllegalArgumentException(new StringBuilder(24).append("Bad position ").append(i).toString());
        }
        this.bhU = this.bhR + i;
    }

    public void zzael(int i) throws IOException {
        if (i < 0) {
            throw zzapb.ah();
        }
        if (this.bhU + i > this.bhW) {
            zzael(this.bhW - this.bhU);
            throw zzapb.ag();
        }
        if (i > this.bhS - this.bhU) {
            throw zzapb.ag();
        }
        this.bhU += i;
    }
}
