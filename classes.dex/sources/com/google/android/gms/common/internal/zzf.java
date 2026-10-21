package com.google.android.gms.common.internal;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public abstract class zzf {
    public static final zzf xC = zza("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000 \u180e ").zza(zza(8192, 8202));
    public static final zzf xD = zza("\t\n\u000b\f\r \u0085\u1680\u2028\u2029\u205f\u3000").zza(zza(8192, 8198)).zza(zza(8200, 8202));
    public static final zzf xE = zza(0, 127);
    public static final zzf xF;
    public static final zzf xG;
    public static final zzf xH;
    public static final zzf xI;
    public static final zzf xJ;
    public static final zzf xK;
    public static final zzf xL;
    public static final zzf xM;
    public static final zzf xN;
    public static final zzf xO;
    public static final zzf xP;
    public static final zzf xQ;

    private static class zza extends zzf {
        List<zzf> xX;

        zza(List<zzf> list) {
            this.xX = list;
        }

        @Override // com.google.android.gms.common.internal.zzf
        public zzf zza(zzf zzfVar) {
            ArrayList arrayList = new ArrayList(this.xX);
            arrayList.add((zzf) zzab.zzaa(zzfVar));
            return new zza(arrayList);
        }

        @Override // com.google.android.gms.common.internal.zzf
        public boolean zzd(char c) {
            Iterator<zzf> it = this.xX.iterator();
            while (it.hasNext()) {
                if (it.next().zzd(c)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        zzf zzfVarZza = zza('0', '9');
        zzf zzfVarZza2 = zzfVarZza;
        for (char c : "٠۰߀०০੦૦୦௦౦೦൦๐໐༠၀႐០᠐᥆᧐᭐᮰᱀᱐꘠꣐꤀꩐０".toCharArray()) {
            zzfVarZza2 = zzfVarZza2.zza(zza(c, (char) (c + '\t')));
        }
        xF = zzfVarZza2;
        xG = zza('\t', '\r').zza(zza((char) 28, ' ')).zza(zzc((char) 5760)).zza(zzc((char) 6158)).zza(zza((char) 8192, (char) 8198)).zza(zza((char) 8200, (char) 8203)).zza(zza((char) 8232, (char) 8233)).zza(zzc((char) 8287)).zza(zzc((char) 12288));
        xH = new zzf() { // from class: com.google.android.gms.common.internal.zzf.1
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isDigit(c2);
            }
        };
        xI = new zzf() { // from class: com.google.android.gms.common.internal.zzf.5
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isLetter(c2);
            }
        };
        xJ = new zzf() { // from class: com.google.android.gms.common.internal.zzf.6
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isLetterOrDigit(c2);
            }
        };
        xK = new zzf() { // from class: com.google.android.gms.common.internal.zzf.7
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isUpperCase(c2);
            }
        };
        xL = new zzf() { // from class: com.google.android.gms.common.internal.zzf.8
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return Character.isLowerCase(c2);
            }
        };
        xM = zza((char) 0, (char) 31).zza(zza((char) 127, (char) 159));
        xN = zza((char) 0, ' ').zza(zza((char) 127, (char) 160)).zza(zzc((char) 173)).zza(zza((char) 1536, (char) 1539)).zza(zza("\u06dd\u070f\u1680឴឵\u180e")).zza(zza((char) 8192, (char) 8207)).zza(zza((char) 8232, (char) 8239)).zza(zza((char) 8287, (char) 8292)).zza(zza((char) 8298, (char) 8303)).zza(zzc((char) 12288)).zza(zza((char) 55296, (char) 63743)).zza(zza("\ufeff\ufff9\ufffa\ufffb"));
        xO = zza((char) 0, (char) 1273).zza(zzc((char) 1470)).zza(zza((char) 1488, (char) 1514)).zza(zzc((char) 1523)).zza(zzc((char) 1524)).zza(zza((char) 1536, (char) 1791)).zza(zza((char) 1872, (char) 1919)).zza(zza((char) 3584, (char) 3711)).zza(zza((char) 7680, (char) 8367)).zza(zza((char) 8448, (char) 8506)).zza(zza((char) 64336, (char) 65023)).zza(zza((char) 65136, (char) 65279)).zza(zza((char) 65377, (char) 65500));
        xP = new zzf() { // from class: com.google.android.gms.common.internal.zzf.9
            @Override // com.google.android.gms.common.internal.zzf
            public zzf zza(zzf zzfVar) {
                zzab.zzaa(zzfVar);
                return this;
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzb(CharSequence charSequence) {
                zzab.zzaa(charSequence);
                return true;
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return true;
            }
        };
        xQ = new zzf() { // from class: com.google.android.gms.common.internal.zzf.10
            @Override // com.google.android.gms.common.internal.zzf
            public zzf zza(zzf zzfVar) {
                return (zzf) zzab.zzaa(zzfVar);
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzb(CharSequence charSequence) {
                return charSequence.length() == 0;
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return false;
            }
        };
    }

    public static zzf zza(final char c, final char c2) {
        zzab.zzbn(c2 >= c);
        return new zzf() { // from class: com.google.android.gms.common.internal.zzf.4
            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c3) {
                return c <= c3 && c3 <= c2;
            }
        };
    }

    public static zzf zza(CharSequence charSequence) {
        switch (charSequence.length()) {
            case 0:
                return xQ;
            case 1:
                return zzc(charSequence.charAt(0));
            case 2:
                final char cCharAt = charSequence.charAt(0);
                final char cCharAt2 = charSequence.charAt(1);
                return new zzf() { // from class: com.google.android.gms.common.internal.zzf.2
                    @Override // com.google.android.gms.common.internal.zzf
                    public boolean zzd(char c) {
                        return c == cCharAt || c == cCharAt2;
                    }
                };
            default:
                final char[] charArray = charSequence.toString().toCharArray();
                Arrays.sort(charArray);
                return new zzf() { // from class: com.google.android.gms.common.internal.zzf.3
                    @Override // com.google.android.gms.common.internal.zzf
                    public boolean zzd(char c) {
                        return Arrays.binarySearch(charArray, c) >= 0;
                    }
                };
        }
    }

    public static zzf zzc(final char c) {
        return new zzf() { // from class: com.google.android.gms.common.internal.zzf.11
            @Override // com.google.android.gms.common.internal.zzf
            public zzf zza(zzf zzfVar) {
                return zzfVar.zzd(c) ? zzfVar : super.zza(zzfVar);
            }

            @Override // com.google.android.gms.common.internal.zzf
            public boolean zzd(char c2) {
                return c2 == c;
            }
        };
    }

    public zzf zza(zzf zzfVar) {
        return new zza(Arrays.asList(this, (zzf) zzab.zzaa(zzfVar)));
    }

    public boolean zzb(CharSequence charSequence) {
        for (int length = charSequence.length() - 1; length >= 0; length--) {
            if (!zzd(charSequence.charAt(length))) {
                return false;
            }
        }
        return true;
    }

    public abstract boolean zzd(char c);
}
