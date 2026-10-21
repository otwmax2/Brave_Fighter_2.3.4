package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.support.annotation.NonNull;
import android.support.v4.media.TransportMediator;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes.dex */
public final class PasswordSpecification extends AbstractSafeParcelable {
    public static final zzf CREATOR = new zzf();

    /* JADX INFO: renamed from: de, reason: collision with root package name */
    public static final PasswordSpecification f446de = new zza().zzj(12, 16).zzfm("abcdefghijkmnopqrstxyzABCDEFGHJKLMNPQRSTXY3456789").zze("abcdefghijkmnopqrstxyz", 1).zze("ABCDEFGHJKLMNPQRSTXY", 1).zze("3456789", 1).zzafg();
    public static final PasswordSpecification df = new zza().zzj(12, 16).zzfm("abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890").zze("abcdefghijklmnopqrstuvwxyz", 1).zze("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 1).zze("1234567890", 1).zzafg();
    final String dg;
    final List<String> dh;
    final List<Integer> di;
    final int dj;
    final int dk;
    final int mVersionCode;
    private final int[] dl = zzaff();
    private final Random zzavn = new SecureRandom();

    public static class zza {
        private final TreeSet<Character> dm = new TreeSet<>();
        private final List<String> dh = new ArrayList();
        private final List<Integer> di = new ArrayList();
        private int dj = 12;
        private int dk = 16;

        private void zzafh() {
            int i;
            int iIntValue = 0;
            Iterator<Integer> it = this.di.iterator();
            while (true) {
                i = iIntValue;
                if (!it.hasNext()) {
                    break;
                } else {
                    iIntValue = it.next().intValue() + i;
                }
            }
            if (i > this.dk) {
                throw new zzb("required character count cannot be greater than the max password size");
            }
        }

        private void zzafi() {
            boolean[] zArr = new boolean[95];
            Iterator<String> it = this.dh.iterator();
            while (it.hasNext()) {
                for (char c : it.next().toCharArray()) {
                    if (zArr[c - ' ']) {
                        throw new zzb(new StringBuilder(58).append("character ").append(c).append(" occurs in more than one required character set").toString());
                    }
                    zArr[c - ' '] = true;
                }
            }
        }

        private TreeSet<Character> zzw(String str, String str2) {
            if (TextUtils.isEmpty(str)) {
                throw new zzb(String.valueOf(str2).concat(" cannot be null or empty"));
            }
            TreeSet<Character> treeSet = new TreeSet<>();
            for (char c : str.toCharArray()) {
                if (PasswordSpecification.zzb(c, 32, TransportMediator.KEYCODE_MEDIA_PLAY)) {
                    throw new zzb(String.valueOf(str2).concat(" must only contain ASCII printable characters"));
                }
                treeSet.add(Character.valueOf(c));
            }
            return treeSet;
        }

        public PasswordSpecification zzafg() {
            if (this.dm.isEmpty()) {
                throw new zzb("no allowed characters specified");
            }
            zzafh();
            zzafi();
            return new PasswordSpecification(1, PasswordSpecification.zzb(this.dm), this.dh, this.di, this.dj, this.dk);
        }

        public zza zze(@NonNull String str, int i) {
            if (i < 1) {
                throw new zzb("count must be at least 1");
            }
            this.dh.add(PasswordSpecification.zzb(zzw(str, "requiredChars")));
            this.di.add(Integer.valueOf(i));
            return this;
        }

        public zza zzfm(@NonNull String str) {
            this.dm.addAll(zzw(str, "allowedChars"));
            return this;
        }

        public zza zzj(int i, int i2) {
            if (i < 1) {
                throw new zzb("minimumSize must be at least 1");
            }
            if (i > i2) {
                throw new zzb("maximumSize must be greater than or equal to minimumSize");
            }
            this.dj = i;
            this.dk = i2;
            return this;
        }
    }

    public static class zzb extends Error {
        public zzb(String str) {
            super(str);
        }
    }

    PasswordSpecification(int i, String str, List<String> list, List<Integer> list2, int i2, int i3) {
        this.mVersionCode = i;
        this.dg = str;
        this.dh = Collections.unmodifiableList(list);
        this.di = Collections.unmodifiableList(list2);
        this.dj = i2;
        this.dk = i3;
    }

    private int zza(char c) {
        return c - ' ';
    }

    private int[] zzaff() {
        int[] iArr = new int[95];
        Arrays.fill(iArr, -1);
        Iterator<String> it = this.dh.iterator();
        int i = 0;
        while (it.hasNext()) {
            for (char c : it.next().toCharArray()) {
                iArr[zza(c)] = i;
            }
            i++;
        }
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String zzb(Collection<Character> collection) {
        char[] cArr = new char[collection.size()];
        int i = 0;
        Iterator<Character> it = collection.iterator();
        while (true) {
            int i2 = i;
            if (!it.hasNext()) {
                return new String(cArr);
            }
            i = i2 + 1;
            cArr[i2] = it.next().charValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzb(int i, int i2, int i3) {
        return i < i2 || i > i3;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
