package com.chartboost.sdk.impl;

/* JADX INFO: loaded from: classes.dex */
public class b {
    public static int[] a(char[] cArr, int[] iArr, boolean z) {
        int i = (cArr[0] << 16) + cArr[1];
        int i2 = cArr[3] + (cArr[2] << 16);
        if (!z) {
            a(iArr);
        }
        int i3 = 0;
        while (i3 < 16) {
            int i4 = i ^ iArr[i3];
            a aVar = a.b;
            i3++;
            i = i2 ^ (aVar.a[3][i4 & 255] + ((aVar.a[0][i4 >>> 24] + aVar.a[1][(i4 >>> 16) & 255]) ^ aVar.a[2][(i4 >>> 8) & 255]));
            i2 = i4;
        }
        int i5 = iArr[16] ^ i;
        int i6 = i2 ^ iArr[17];
        int[] iArr2 = {i6, i5};
        cArr[0] = i6 >>> 16;
        cArr[1] = (char) i6;
        cArr[2] = i5 >>> 16;
        cArr[3] = (char) i5;
        if (!z) {
            a(iArr);
        }
        return iArr2;
    }

    private static void a(int[] iArr) {
        for (int i = 0; i < iArr.length / 2; i++) {
            int i2 = iArr[i];
            iArr[i] = iArr[(iArr.length - i) - 1];
            iArr[(iArr.length - i) - 1] = i2;
        }
    }
}
