package com.google.android.gms.internal;

import com.ironsource.mediationsdk.logger.IronSourceError;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.yunva.monsterhunter.IabHelper;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public interface zzry {

    public static final class zza extends zzaow<zza> {
        public int Da;
        public long Db;
        public int[] Dc;

        public zza() {
            zzayo();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.Da == zzaVar.Da && this.Db == zzaVar.Db && zzapa.equals(this.Dc, zzaVar.Dc)) {
                return (this.bib == null || this.bib.isEmpty()) ? zzaVar.bib == null || zzaVar.bib.isEmpty() : this.bib.equals(zzaVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + zzapa.hashCode(this.Dc)) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (this.Dc != null && this.Dc.length > 0) {
                for (int i = 0; i < this.Dc.length; i++) {
                    zzaovVar.zzae(3, this.Dc[i]);
                }
            }
            super.zza(zzaovVar);
        }

        public zza zzayo() {
            this.Da = 0;
            this.Db = 0L;
            this.Dc = zzapf.bim;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzu, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzaou zzaouVar) throws IOException {
            int i;
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 24:
                        int iZzc = zzapf.zzc(zzaouVar, 24);
                        int[] iArr = new int[iZzc];
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < iZzc) {
                            if (i2 != 0) {
                                zzaouVar.J();
                            }
                            int iN2 = zzaouVar.N();
                            switch (iN2) {
                                case IabHelper.IABHELPER_ERROR_BASE /* -1000 */:
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                    i = i3 + 1;
                                    iArr[i3] = iN2;
                                    break;
                                default:
                                    i = i3;
                                    break;
                            }
                            i2++;
                            i3 = i;
                        }
                        if (i3 != 0) {
                            int length = this.Dc == null ? 0 : this.Dc.length;
                            if (length == 0 && i3 == iZzc) {
                                this.Dc = iArr;
                            } else {
                                int[] iArr2 = new int[length + i3];
                                if (length != 0) {
                                    System.arraycopy(this.Dc, 0, iArr2, 0, length);
                                }
                                System.arraycopy(iArr, 0, iArr2, length, i3);
                                this.Dc = iArr2;
                            }
                        }
                        break;
                    case 26:
                        int iZzaei = zzaouVar.zzaei(zzaouVar.S());
                        int position = zzaouVar.getPosition();
                        int i4 = 0;
                        while (zzaouVar.X() > 0) {
                            switch (zzaouVar.N()) {
                                case IabHelper.IABHELPER_ERROR_BASE /* -1000 */:
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                case 5:
                                case 6:
                                case 7:
                                case 8:
                                case 9:
                                case 10:
                                case 11:
                                case 12:
                                case 13:
                                case 14:
                                case 15:
                                    i4++;
                                    break;
                            }
                        }
                        if (i4 != 0) {
                            zzaouVar.zzaek(position);
                            int length2 = this.Dc == null ? 0 : this.Dc.length;
                            int[] iArr3 = new int[i4 + length2];
                            if (length2 != 0) {
                                System.arraycopy(this.Dc, 0, iArr3, 0, length2);
                            }
                            while (zzaouVar.X() > 0) {
                                int iN3 = zzaouVar.N();
                                switch (iN3) {
                                    case IabHelper.IABHELPER_ERROR_BASE /* -1000 */:
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                    case 5:
                                    case 6:
                                    case 7:
                                    case 8:
                                    case 9:
                                    case 10:
                                    case 11:
                                    case 12:
                                    case 13:
                                    case 14:
                                    case 15:
                                        iArr3[length2] = iN3;
                                        length2++;
                                        break;
                                }
                            }
                            this.Dc = iArr3;
                        }
                        zzaouVar.zzaej(iZzaei);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            if (this.Dc == null || this.Dc.length <= 0) {
                return iZzy;
            }
            int iZzaeo = 0;
            for (int i = 0; i < this.Dc.length; i++) {
                iZzaeo += zzaov.zzaeo(this.Dc[i]);
            }
            return iZzy + iZzaeo + (this.Dc.length * 1);
        }
    }

    public static final class zzb extends zzaow<zzb> {
        public int Da;
        public long Db;
        public int Dd;
        public int De;
        public int Df;
        public int Dg;
        public int Dh;
        public int Di;

        public zzb() {
            zzayp();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.Da == zzbVar.Da && this.Db == zzbVar.Db && this.Dd == zzbVar.Dd && this.De == zzbVar.De && this.Df == zzbVar.Df && this.Dg == zzbVar.Dg && this.Dh == zzbVar.Dh && this.Di == zzbVar.Di) {
                return (this.bib == null || this.bib.isEmpty()) ? zzbVar.bib == null || zzbVar.bib.isEmpty() : this.bib.equals(zzbVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((((((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + this.Dd) * 31) + this.De) * 31) + this.Df) * 31) + this.Dg) * 31) + this.Dh) * 31) + this.Di) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (this.Dd != 0) {
                zzaovVar.zzae(3, this.Dd);
            }
            if (this.De != 0) {
                zzaovVar.zzae(4, this.De);
            }
            if (this.Df != 0) {
                zzaovVar.zzae(5, this.Df);
            }
            if (this.Dg != 0) {
                zzaovVar.zzae(6, this.Dg);
            }
            if (this.Dh != 0) {
                zzaovVar.zzae(7, this.Dh);
            }
            if (this.Di != 0) {
                zzaovVar.zzae(8, this.Di);
            }
            super.zza(zzaovVar);
        }

        public zzb zzayp() {
            this.Da = 0;
            this.Db = 0L;
            this.Dd = 0;
            this.De = 0;
            this.Df = 0;
            this.Dg = 0;
            this.Dh = 0;
            this.Di = 0;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzv, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 24:
                        int iN2 = zzaouVar.N();
                        switch (iN2) {
                            case 0:
                            case 1:
                            case 2:
                                this.Dd = iN2;
                                break;
                        }
                        break;
                    case 32:
                        int iN3 = zzaouVar.N();
                        switch (iN3) {
                            case 0:
                            case 1:
                            case 2:
                                this.De = iN3;
                                break;
                        }
                        break;
                    case 40:
                        int iN4 = zzaouVar.N();
                        switch (iN4) {
                            case 0:
                            case 1:
                            case 2:
                                this.Df = iN4;
                                break;
                        }
                        break;
                    case 48:
                        int iN5 = zzaouVar.N();
                        switch (iN5) {
                            case 0:
                            case 1:
                            case 2:
                                this.Dg = iN5;
                                break;
                        }
                        break;
                    case 56:
                        int iN6 = zzaouVar.N();
                        switch (iN6) {
                            case 0:
                            case 1:
                            case 2:
                                this.Dh = iN6;
                                break;
                        }
                        break;
                    case 64:
                        int iN7 = zzaouVar.N();
                        switch (iN7) {
                            case 0:
                            case 1:
                            case 2:
                                this.Di = iN7;
                                break;
                        }
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            if (this.Dd != 0) {
                iZzy += zzaov.zzag(3, this.Dd);
            }
            if (this.De != 0) {
                iZzy += zzaov.zzag(4, this.De);
            }
            if (this.Df != 0) {
                iZzy += zzaov.zzag(5, this.Df);
            }
            if (this.Dg != 0) {
                iZzy += zzaov.zzag(6, this.Dg);
            }
            if (this.Dh != 0) {
                iZzy += zzaov.zzag(7, this.Dh);
            }
            return this.Di != 0 ? iZzy + zzaov.zzag(8, this.Di) : iZzy;
        }
    }

    public static final class zzc extends zzaow<zzc> {
        public int Da;
        public long Db;
        public zza[] Dj;

        public static final class zza extends zzaow<zza> {
            private static volatile zza[] Dk;
            public byte[] content;
            public String type;
            public String zl;

            public zza() {
                zzays();
            }

            public static zza[] zzayr() {
                if (Dk == null) {
                    synchronized (zzapa.bij) {
                        if (Dk == null) {
                            Dk = new zza[0];
                        }
                    }
                }
                return Dk;
            }

            public static zza zzs(byte[] bArr) throws zzapb {
                return (zza) zzapc.zza(new zza(), bArr);
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof zza)) {
                    return false;
                }
                zza zzaVar = (zza) obj;
                if (this.zl == null) {
                    if (zzaVar.zl != null) {
                        return false;
                    }
                } else if (!this.zl.equals(zzaVar.zl)) {
                    return false;
                }
                if (this.type == null) {
                    if (zzaVar.type != null) {
                        return false;
                    }
                } else if (!this.type.equals(zzaVar.type)) {
                    return false;
                }
                if (Arrays.equals(this.content, zzaVar.content)) {
                    return (this.bib == null || this.bib.isEmpty()) ? zzaVar.bib == null || zzaVar.bib.isEmpty() : this.bib.equals(zzaVar.bib);
                }
                return false;
            }

            public int hashCode() {
                int iHashCode = 0;
                int iHashCode2 = ((((this.type == null ? 0 : this.type.hashCode()) + (((this.zl == null ? 0 : this.zl.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31)) * 31) + Arrays.hashCode(this.content)) * 31;
                if (this.bib != null && !this.bib.isEmpty()) {
                    iHashCode = this.bib.hashCode();
                }
                return iHashCode2 + iHashCode;
            }

            @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
            public void zza(zzaov zzaovVar) throws IOException {
                if (!this.zl.equals("")) {
                    zzaovVar.zzr(1, this.zl);
                }
                if (!this.type.equals("")) {
                    zzaovVar.zzr(2, this.type);
                }
                if (!Arrays.equals(this.content, zzapf.bit)) {
                    zzaovVar.zza(3, this.content);
                }
                super.zza(zzaovVar);
            }

            public zza zzays() {
                this.zl = "";
                this.type = "";
                this.content = zzapf.bit;
                this.bib = null;
                this.bik = -1;
                return this;
            }

            @Override // com.google.android.gms.internal.zzapc
            /* JADX INFO: renamed from: zzx, reason: merged with bridge method [inline-methods] */
            public zza zzb(zzaou zzaouVar) throws IOException {
                while (true) {
                    int iJ = zzaouVar.J();
                    switch (iJ) {
                        case 0:
                            break;
                        case 10:
                            this.zl = zzaouVar.readString();
                            break;
                        case 18:
                            this.type = zzaouVar.readString();
                            break;
                        case 26:
                            this.content = zzaouVar.readBytes();
                            break;
                        default:
                            if (!super.zza(zzaouVar, iJ)) {
                            }
                            break;
                    }
                }
                return this;
            }

            @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
            protected int zzy() {
                int iZzy = super.zzy();
                if (!this.zl.equals("")) {
                    iZzy += zzaov.zzs(1, this.zl);
                }
                if (!this.type.equals("")) {
                    iZzy += zzaov.zzs(2, this.type);
                }
                return !Arrays.equals(this.content, zzapf.bit) ? iZzy + zzaov.zzb(3, this.content) : iZzy;
            }
        }

        public zzc() {
            zzayq();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.Da == zzcVar.Da && this.Db == zzcVar.Db && zzapa.equals(this.Dj, zzcVar.Dj)) {
                return (this.bib == null || this.bib.isEmpty()) ? zzcVar.bib == null || zzcVar.bib.isEmpty() : this.bib.equals(zzcVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + zzapa.hashCode(this.Dj)) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(3, this.Db);
            }
            if (this.Dj != null && this.Dj.length > 0) {
                for (int i = 0; i < this.Dj.length; i++) {
                    zza zzaVar = this.Dj[i];
                    if (zzaVar != null) {
                        zzaovVar.zza(4, zzaVar);
                    }
                }
            }
            super.zza(zzaovVar);
        }

        public zzc zzayq() {
            this.Da = 0;
            this.Db = 0L;
            this.Dj = zza.zzayr();
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzw, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 24:
                        this.Db = zzaouVar.M();
                        break;
                    case 34:
                        int iZzc = zzapf.zzc(zzaouVar, 34);
                        int length = this.Dj == null ? 0 : this.Dj.length;
                        zza[] zzaVarArr = new zza[iZzc + length];
                        if (length != 0) {
                            System.arraycopy(this.Dj, 0, zzaVarArr, 0, length);
                        }
                        while (length < zzaVarArr.length - 1) {
                            zzaVarArr[length] = new zza();
                            zzaouVar.zza(zzaVarArr[length]);
                            zzaouVar.J();
                            length++;
                        }
                        zzaVarArr[length] = new zza();
                        zzaouVar.zza(zzaVarArr[length]);
                        this.Dj = zzaVarArr;
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(3, this.Db);
            }
            if (this.Dj == null || this.Dj.length <= 0) {
                return iZzy;
            }
            int iZzc = iZzy;
            for (int i = 0; i < this.Dj.length; i++) {
                zza zzaVar = this.Dj[i];
                if (zzaVar != null) {
                    iZzc += zzaov.zzc(4, zzaVar);
                }
            }
            return iZzc;
        }
    }

    public static final class zzd extends zzaow<zzd> {
        private static volatile zzd[] Dl;
        public zzd[] Dm;
        public zzm Dn;
        public zzf Do;
        public zzi Dp;
        public zza Dq;
        public zzk Dr;
        public zzj Ds;
        public zzh Dt;
        public zzb Du;
        public zzc Dv;
        public zzg Dw;
        public zzl Dx;
        public zzn Dy;
        public int type;

        public zzd() {
            zzayu();
        }

        public static zzd[] zzayt() {
            if (Dl == null) {
                synchronized (zzapa.bij) {
                    if (Dl == null) {
                        Dl = new zzd[0];
                    }
                }
            }
            return Dl;
        }

        public static zzd zzt(byte[] bArr) throws zzapb {
            return (zzd) zzapc.zza(new zzd(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.type != zzdVar.type || !zzapa.equals(this.Dm, zzdVar.Dm)) {
                return false;
            }
            if (this.Dn == null) {
                if (zzdVar.Dn != null) {
                    return false;
                }
            } else if (!this.Dn.equals(zzdVar.Dn)) {
                return false;
            }
            if (this.Do == null) {
                if (zzdVar.Do != null) {
                    return false;
                }
            } else if (!this.Do.equals(zzdVar.Do)) {
                return false;
            }
            if (this.Dp == null) {
                if (zzdVar.Dp != null) {
                    return false;
                }
            } else if (!this.Dp.equals(zzdVar.Dp)) {
                return false;
            }
            if (this.Dq == null) {
                if (zzdVar.Dq != null) {
                    return false;
                }
            } else if (!this.Dq.equals(zzdVar.Dq)) {
                return false;
            }
            if (this.Dr == null) {
                if (zzdVar.Dr != null) {
                    return false;
                }
            } else if (!this.Dr.equals(zzdVar.Dr)) {
                return false;
            }
            if (this.Ds == null) {
                if (zzdVar.Ds != null) {
                    return false;
                }
            } else if (!this.Ds.equals(zzdVar.Ds)) {
                return false;
            }
            if (this.Dt == null) {
                if (zzdVar.Dt != null) {
                    return false;
                }
            } else if (!this.Dt.equals(zzdVar.Dt)) {
                return false;
            }
            if (this.Du == null) {
                if (zzdVar.Du != null) {
                    return false;
                }
            } else if (!this.Du.equals(zzdVar.Du)) {
                return false;
            }
            if (this.Dv == null) {
                if (zzdVar.Dv != null) {
                    return false;
                }
            } else if (!this.Dv.equals(zzdVar.Dv)) {
                return false;
            }
            if (this.Dw == null) {
                if (zzdVar.Dw != null) {
                    return false;
                }
            } else if (!this.Dw.equals(zzdVar.Dw)) {
                return false;
            }
            if (this.Dx == null) {
                if (zzdVar.Dx != null) {
                    return false;
                }
            } else if (!this.Dx.equals(zzdVar.Dx)) {
                return false;
            }
            if (this.Dy == null) {
                if (zzdVar.Dy != null) {
                    return false;
                }
            } else if (!this.Dy.equals(zzdVar.Dy)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzdVar.bib == null || zzdVar.bib.isEmpty() : this.bib.equals(zzdVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.Dy == null ? 0 : this.Dy.hashCode()) + (((this.Dx == null ? 0 : this.Dx.hashCode()) + (((this.Dw == null ? 0 : this.Dw.hashCode()) + (((this.Dv == null ? 0 : this.Dv.hashCode()) + (((this.Du == null ? 0 : this.Du.hashCode()) + (((this.Dt == null ? 0 : this.Dt.hashCode()) + (((this.Ds == null ? 0 : this.Ds.hashCode()) + (((this.Dr == null ? 0 : this.Dr.hashCode()) + (((this.Dq == null ? 0 : this.Dq.hashCode()) + (((this.Dp == null ? 0 : this.Dp.hashCode()) + (((this.Do == null ? 0 : this.Do.hashCode()) + (((this.Dn == null ? 0 : this.Dn.hashCode()) + ((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.type) * 31) + zzapa.hashCode(this.Dm)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.type != 0) {
                zzaovVar.zzae(1, this.type);
            }
            if (this.Dm != null && this.Dm.length > 0) {
                for (int i = 0; i < this.Dm.length; i++) {
                    zzd zzdVar = this.Dm[i];
                    if (zzdVar != null) {
                        zzaovVar.zza(2, zzdVar);
                    }
                }
            }
            if (this.Dn != null) {
                zzaovVar.zza(3, this.Dn);
            }
            if (this.Do != null) {
                zzaovVar.zza(4, this.Do);
            }
            if (this.Dp != null) {
                zzaovVar.zza(5, this.Dp);
            }
            if (this.Dq != null) {
                zzaovVar.zza(6, this.Dq);
            }
            if (this.Dr != null) {
                zzaovVar.zza(7, this.Dr);
            }
            if (this.Ds != null) {
                zzaovVar.zza(8, this.Ds);
            }
            if (this.Dt != null) {
                zzaovVar.zza(9, this.Dt);
            }
            if (this.Du != null) {
                zzaovVar.zza(10, this.Du);
            }
            if (this.Dv != null) {
                zzaovVar.zza(11, this.Dv);
            }
            if (this.Dw != null) {
                zzaovVar.zza(12, this.Dw);
            }
            if (this.Dx != null) {
                zzaovVar.zza(13, this.Dx);
            }
            if (this.Dy != null) {
                zzaovVar.zza(14, this.Dy);
            }
            super.zza(zzaovVar);
        }

        public zzd zzayu() {
            this.type = 0;
            this.Dm = zzayt();
            this.Dn = null;
            this.Do = null;
            this.Dp = null;
            this.Dq = null;
            this.Dr = null;
            this.Ds = null;
            this.Dt = null;
            this.Du = null;
            this.Dv = null;
            this.Dw = null;
            this.Dx = null;
            this.Dy = null;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.type != 0) {
                iZzy += zzaov.zzag(1, this.type);
            }
            if (this.Dm != null && this.Dm.length > 0) {
                int iZzc = iZzy;
                for (int i = 0; i < this.Dm.length; i++) {
                    zzd zzdVar = this.Dm[i];
                    if (zzdVar != null) {
                        iZzc += zzaov.zzc(2, zzdVar);
                    }
                }
                iZzy = iZzc;
            }
            if (this.Dn != null) {
                iZzy += zzaov.zzc(3, this.Dn);
            }
            if (this.Do != null) {
                iZzy += zzaov.zzc(4, this.Do);
            }
            if (this.Dp != null) {
                iZzy += zzaov.zzc(5, this.Dp);
            }
            if (this.Dq != null) {
                iZzy += zzaov.zzc(6, this.Dq);
            }
            if (this.Dr != null) {
                iZzy += zzaov.zzc(7, this.Dr);
            }
            if (this.Ds != null) {
                iZzy += zzaov.zzc(8, this.Ds);
            }
            if (this.Dt != null) {
                iZzy += zzaov.zzc(9, this.Dt);
            }
            if (this.Du != null) {
                iZzy += zzaov.zzc(10, this.Du);
            }
            if (this.Dv != null) {
                iZzy += zzaov.zzc(11, this.Dv);
            }
            if (this.Dw != null) {
                iZzy += zzaov.zzc(12, this.Dw);
            }
            if (this.Dx != null) {
                iZzy += zzaov.zzc(13, this.Dx);
            }
            return this.Dy != null ? iZzy + zzaov.zzc(14, this.Dy) : iZzy;
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzy, reason: merged with bridge method [inline-methods] */
        public zzd zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                            case 13:
                            case 14:
                                this.type = iN;
                                break;
                        }
                        break;
                    case 18:
                        int iZzc = zzapf.zzc(zzaouVar, 18);
                        int length = this.Dm == null ? 0 : this.Dm.length;
                        zzd[] zzdVarArr = new zzd[iZzc + length];
                        if (length != 0) {
                            System.arraycopy(this.Dm, 0, zzdVarArr, 0, length);
                        }
                        while (length < zzdVarArr.length - 1) {
                            zzdVarArr[length] = new zzd();
                            zzaouVar.zza(zzdVarArr[length]);
                            zzaouVar.J();
                            length++;
                        }
                        zzdVarArr[length] = new zzd();
                        zzaouVar.zza(zzdVarArr[length]);
                        this.Dm = zzdVarArr;
                        break;
                    case 26:
                        if (this.Dn == null) {
                            this.Dn = new zzm();
                        }
                        zzaouVar.zza(this.Dn);
                        break;
                    case 34:
                        if (this.Do == null) {
                            this.Do = new zzf();
                        }
                        zzaouVar.zza(this.Do);
                        break;
                    case 42:
                        if (this.Dp == null) {
                            this.Dp = new zzi();
                        }
                        zzaouVar.zza(this.Dp);
                        break;
                    case 50:
                        if (this.Dq == null) {
                            this.Dq = new zza();
                        }
                        zzaouVar.zza(this.Dq);
                        break;
                    case 58:
                        if (this.Dr == null) {
                            this.Dr = new zzk();
                        }
                        zzaouVar.zza(this.Dr);
                        break;
                    case 66:
                        if (this.Ds == null) {
                            this.Ds = new zzj();
                        }
                        zzaouVar.zza(this.Ds);
                        break;
                    case 74:
                        if (this.Dt == null) {
                            this.Dt = new zzh();
                        }
                        zzaouVar.zza(this.Dt);
                        break;
                    case 82:
                        if (this.Du == null) {
                            this.Du = new zzb();
                        }
                        zzaouVar.zza(this.Du);
                        break;
                    case 90:
                        if (this.Dv == null) {
                            this.Dv = new zzc();
                        }
                        zzaouVar.zza(this.Dv);
                        break;
                    case 98:
                        if (this.Dw == null) {
                            this.Dw = new zzg();
                        }
                        zzaouVar.zza(this.Dw);
                        break;
                    case 106:
                        if (this.Dx == null) {
                            this.Dx = new zzl();
                        }
                        zzaouVar.zza(this.Dx);
                        break;
                    case IronSourceConstants.REVIVED_EVENT /* 114 */:
                        if (this.Dy == null) {
                            this.Dy = new zzn();
                        }
                        zzaouVar.zza(this.Dy);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }
    }

    public static final class zze extends zzaow<zze> {
        public int day;
        public int hour;
        public int minutes;
        public int month;
        public int seconds;
        public int year;

        public zze() {
            zzayv();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.year == zzeVar.year && this.month == zzeVar.month && this.day == zzeVar.day && this.hour == zzeVar.hour && this.minutes == zzeVar.minutes && this.seconds == zzeVar.seconds) {
                return (this.bib == null || this.bib.isEmpty()) ? zzeVar.bib == null || zzeVar.bib.isEmpty() : this.bib.equals(zzeVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.year) * 31) + this.month) * 31) + this.day) * 31) + this.hour) * 31) + this.minutes) * 31) + this.seconds) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.year != 0) {
                zzaovVar.zzae(1, this.year);
            }
            if (this.month != 0) {
                zzaovVar.zzae(2, this.month);
            }
            if (this.day != 0) {
                zzaovVar.zzae(3, this.day);
            }
            if (this.hour != 0) {
                zzaovVar.zzae(4, this.hour);
            }
            if (this.minutes != 0) {
                zzaovVar.zzae(5, this.minutes);
            }
            if (this.seconds != 0) {
                zzaovVar.zzae(6, this.seconds);
            }
            super.zza(zzaovVar);
        }

        public zze zzayv() {
            this.year = 0;
            this.month = 0;
            this.day = 0;
            this.hour = 0;
            this.minutes = 0;
            this.seconds = 0;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.year != 0) {
                iZzy += zzaov.zzag(1, this.year);
            }
            if (this.month != 0) {
                iZzy += zzaov.zzag(2, this.month);
            }
            if (this.day != 0) {
                iZzy += zzaov.zzag(3, this.day);
            }
            if (this.hour != 0) {
                iZzy += zzaov.zzag(4, this.hour);
            }
            if (this.minutes != 0) {
                iZzy += zzaov.zzag(5, this.minutes);
            }
            return this.seconds != 0 ? iZzy + zzaov.zzag(6, this.seconds) : iZzy;
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzz, reason: merged with bridge method [inline-methods] */
        public zze zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        this.year = zzaouVar.N();
                        break;
                    case 16:
                        this.month = zzaouVar.N();
                        break;
                    case 24:
                        this.day = zzaouVar.N();
                        break;
                    case 32:
                        this.hour = zzaouVar.N();
                        break;
                    case 40:
                        this.minutes = zzaouVar.N();
                        break;
                    case 48:
                        this.seconds = zzaouVar.N();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }
    }

    public static final class zzf extends zzaow<zzf> {
        public int DA;
        public int DB;
        public double DC;
        public double DD;
        public long DE;
        public int Da;
        public long Db;
        public int Dz;

        public zzf() {
            zzayw();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (this.Da == zzfVar.Da && this.Dz == zzfVar.Dz && this.Db == zzfVar.Db && this.DA == zzfVar.DA && this.DB == zzfVar.DB && Double.doubleToLongBits(this.DC) == Double.doubleToLongBits(zzfVar.DC) && Double.doubleToLongBits(this.DD) == Double.doubleToLongBits(zzfVar.DD) && this.DE == zzfVar.DE) {
                return (this.bib == null || this.bib.isEmpty()) ? zzfVar.bib == null || zzfVar.bib.isEmpty() : this.bib.equals(zzfVar.bib);
            }
            return false;
        }

        public int hashCode() {
            int iHashCode = ((((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + this.Dz) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + this.DA) * 31) + this.DB;
            long jDoubleToLongBits = Double.doubleToLongBits(this.DC);
            int i = (iHashCode * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
            long jDoubleToLongBits2 = Double.doubleToLongBits(this.DD);
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + (((((i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31) + ((int) (this.DE ^ (this.DE >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Dz != 0) {
                zzaovVar.zzae(2, this.Dz);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(3, this.Db);
            }
            if (this.DA != 0) {
                zzaovVar.zzae(4, this.DA);
            }
            if (this.DB != 0) {
                zzaovVar.zzae(5, this.DB);
            }
            if (Double.doubleToLongBits(this.DC) != Double.doubleToLongBits(0.0d)) {
                zzaovVar.zza(6, this.DC);
            }
            if (Double.doubleToLongBits(this.DD) != Double.doubleToLongBits(0.0d)) {
                zzaovVar.zza(7, this.DD);
            }
            if (this.DE != 0) {
                zzaovVar.zzb(8, this.DE);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzaa, reason: merged with bridge method [inline-methods] */
        public zzf zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        int iN2 = zzaouVar.N();
                        switch (iN2) {
                            case 0:
                            case 1:
                                this.Dz = iN2;
                                break;
                        }
                        break;
                    case 24:
                        this.Db = zzaouVar.M();
                        break;
                    case 32:
                        this.DA = zzaouVar.N();
                        break;
                    case 40:
                        this.DB = zzaouVar.N();
                        break;
                    case 49:
                        this.DC = zzaouVar.readDouble();
                        break;
                    case 57:
                        this.DD = zzaouVar.readDouble();
                        break;
                    case 64:
                        this.DE = zzaouVar.M();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzf zzayw() {
            this.Da = 0;
            this.Dz = 0;
            this.Db = 0L;
            this.DA = 0;
            this.DB = 0;
            this.DC = 0.0d;
            this.DD = 0.0d;
            this.DE = 0L;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Dz != 0) {
                iZzy += zzaov.zzag(2, this.Dz);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(3, this.Db);
            }
            if (this.DA != 0) {
                iZzy += zzaov.zzag(4, this.DA);
            }
            if (this.DB != 0) {
                iZzy += zzaov.zzag(5, this.DB);
            }
            if (Double.doubleToLongBits(this.DC) != Double.doubleToLongBits(0.0d)) {
                iZzy += zzaov.zzb(6, this.DC);
            }
            if (Double.doubleToLongBits(this.DD) != Double.doubleToLongBits(0.0d)) {
                iZzy += zzaov.zzb(7, this.DD);
            }
            return this.DE != 0 ? iZzy + zzaov.zze(8, this.DE) : iZzy;
        }
    }

    public static final class zzg extends zzaow<zzg> {
        public int[] DF;
        public int[] DG;
        public int Da;
        public long Db;

        public zzg() {
            zzayx();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzg)) {
                return false;
            }
            zzg zzgVar = (zzg) obj;
            if (this.Da == zzgVar.Da && this.Db == zzgVar.Db && zzapa.equals(this.DF, zzgVar.DF) && zzapa.equals(this.DG, zzgVar.DG)) {
                return (this.bib == null || this.bib.isEmpty()) ? zzgVar.bib == null || zzgVar.bib.isEmpty() : this.bib.equals(zzgVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + zzapa.hashCode(this.DF)) * 31) + zzapa.hashCode(this.DG)) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (this.DF != null && this.DF.length > 0) {
                for (int i = 0; i < this.DF.length; i++) {
                    zzaovVar.zzae(3, this.DF[i]);
                }
            }
            if (this.DG != null && this.DG.length > 0) {
                for (int i2 = 0; i2 < this.DG.length; i2++) {
                    zzaovVar.zzae(4, this.DG[i2]);
                }
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzab, reason: merged with bridge method [inline-methods] */
        public zzg zzb(zzaou zzaouVar) throws IOException {
            int i;
            int i2;
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 24:
                        int iZzc = zzapf.zzc(zzaouVar, 24);
                        int[] iArr = new int[iZzc];
                        int i3 = 0;
                        int i4 = 0;
                        while (i3 < iZzc) {
                            if (i3 != 0) {
                                zzaouVar.J();
                            }
                            int iN2 = zzaouVar.N();
                            switch (iN2) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                    i2 = i4 + 1;
                                    iArr[i4] = iN2;
                                    break;
                                default:
                                    i2 = i4;
                                    break;
                            }
                            i3++;
                            i4 = i2;
                        }
                        if (i4 != 0) {
                            int length = this.DF == null ? 0 : this.DF.length;
                            if (length == 0 && i4 == iZzc) {
                                this.DF = iArr;
                            } else {
                                int[] iArr2 = new int[length + i4];
                                if (length != 0) {
                                    System.arraycopy(this.DF, 0, iArr2, 0, length);
                                }
                                System.arraycopy(iArr, 0, iArr2, length, i4);
                                this.DF = iArr2;
                            }
                        }
                        break;
                    case 26:
                        int iZzaei = zzaouVar.zzaei(zzaouVar.S());
                        int position = zzaouVar.getPosition();
                        int i5 = 0;
                        while (zzaouVar.X() > 0) {
                            switch (zzaouVar.N()) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                    i5++;
                                    break;
                            }
                        }
                        if (i5 != 0) {
                            zzaouVar.zzaek(position);
                            int length2 = this.DF == null ? 0 : this.DF.length;
                            int[] iArr3 = new int[i5 + length2];
                            if (length2 != 0) {
                                System.arraycopy(this.DF, 0, iArr3, 0, length2);
                            }
                            while (zzaouVar.X() > 0) {
                                int iN3 = zzaouVar.N();
                                switch (iN3) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                        iArr3[length2] = iN3;
                                        length2++;
                                        break;
                                }
                            }
                            this.DF = iArr3;
                        }
                        zzaouVar.zzaej(iZzaei);
                        break;
                    case 32:
                        int iZzc2 = zzapf.zzc(zzaouVar, 32);
                        int[] iArr4 = new int[iZzc2];
                        int i6 = 0;
                        int i7 = 0;
                        while (i6 < iZzc2) {
                            if (i6 != 0) {
                                zzaouVar.J();
                            }
                            int iN4 = zzaouVar.N();
                            switch (iN4) {
                                case 0:
                                case 1:
                                case 2:
                                    i = i7 + 1;
                                    iArr4[i7] = iN4;
                                    break;
                                default:
                                    i = i7;
                                    break;
                            }
                            i6++;
                            i7 = i;
                        }
                        if (i7 != 0) {
                            int length3 = this.DG == null ? 0 : this.DG.length;
                            if (length3 == 0 && i7 == iZzc2) {
                                this.DG = iArr4;
                            } else {
                                int[] iArr5 = new int[length3 + i7];
                                if (length3 != 0) {
                                    System.arraycopy(this.DG, 0, iArr5, 0, length3);
                                }
                                System.arraycopy(iArr4, 0, iArr5, length3, i7);
                                this.DG = iArr5;
                            }
                        }
                        break;
                    case 34:
                        int iZzaei2 = zzaouVar.zzaei(zzaouVar.S());
                        int position2 = zzaouVar.getPosition();
                        int i8 = 0;
                        while (zzaouVar.X() > 0) {
                            switch (zzaouVar.N()) {
                                case 0:
                                case 1:
                                case 2:
                                    i8++;
                                    break;
                            }
                        }
                        if (i8 != 0) {
                            zzaouVar.zzaek(position2);
                            int length4 = this.DG == null ? 0 : this.DG.length;
                            int[] iArr6 = new int[i8 + length4];
                            if (length4 != 0) {
                                System.arraycopy(this.DG, 0, iArr6, 0, length4);
                            }
                            while (zzaouVar.X() > 0) {
                                int iN5 = zzaouVar.N();
                                switch (iN5) {
                                    case 0:
                                    case 1:
                                    case 2:
                                        iArr6[length4] = iN5;
                                        length4++;
                                        break;
                                }
                            }
                            this.DG = iArr6;
                        }
                        zzaouVar.zzaej(iZzaei2);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzg zzayx() {
            this.Da = 0;
            this.Db = 0L;
            this.DF = zzapf.bim;
            this.DG = zzapf.bim;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            if (this.DF != null && this.DF.length > 0) {
                int iZzaeo = 0;
                for (int i = 0; i < this.DF.length; i++) {
                    iZzaeo += zzaov.zzaeo(this.DF[i]);
                }
                iZzy = iZzy + iZzaeo + (this.DF.length * 1);
            }
            if (this.DG == null || this.DG.length <= 0) {
                return iZzy;
            }
            int iZzaeo2 = 0;
            for (int i2 = 0; i2 < this.DG.length; i2++) {
                iZzaeo2 += zzaov.zzaeo(this.DG[i2]);
            }
            return iZzy + iZzaeo2 + (this.DG.length * 1);
        }
    }

    public static final class zzh extends zzaow<zzh> {
        public int DH;
        public int Da;
        public long Db;

        public zzh() {
            zzayy();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzh)) {
                return false;
            }
            zzh zzhVar = (zzh) obj;
            if (this.Da == zzhVar.Da && this.Db == zzhVar.Db && this.DH == zzhVar.DH) {
                return (this.bib == null || this.bib.isEmpty()) ? zzhVar.bib == null || zzhVar.bib.isEmpty() : this.bib.equals(zzhVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + this.DH) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (this.DH != 0) {
                zzaovVar.zzae(3, this.DH);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzac, reason: merged with bridge method [inline-methods] */
        public zzh zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 24:
                        int iN2 = zzaouVar.N();
                        switch (iN2) {
                            case 0:
                            case 1:
                            case 2:
                                this.DH = iN2;
                                break;
                        }
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzh zzayy() {
            this.Da = 0;
            this.Db = 0L;
            this.DH = 0;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            return this.DH != 0 ? iZzy + zzaov.zzag(3, this.DH) : iZzy;
        }
    }

    public static final class zzi extends zzaow<zzi> {
        public long DE;
        public int[] DI;
        public String[] DJ;
        public String[] DK;
        public int Da;
        public long Db;

        public zzi() {
            zzayz();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzi)) {
                return false;
            }
            zzi zziVar = (zzi) obj;
            if (this.Da == zziVar.Da && this.Db == zziVar.Db && zzapa.equals(this.DI, zziVar.DI) && zzapa.equals(this.DJ, zziVar.DJ) && this.DE == zziVar.DE && zzapa.equals(this.DK, zziVar.DK)) {
                return (this.bib == null || this.bib.isEmpty()) ? zziVar.bib == null || zziVar.bib.isEmpty() : this.bib.equals(zziVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + zzapa.hashCode(this.DI)) * 31) + zzapa.hashCode(this.DJ)) * 31) + ((int) (this.DE ^ (this.DE >>> 32)))) * 31) + zzapa.hashCode(this.DK)) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (this.DI != null && this.DI.length > 0) {
                for (int i = 0; i < this.DI.length; i++) {
                    zzaovVar.zzae(3, this.DI[i]);
                }
            }
            if (this.DJ != null && this.DJ.length > 0) {
                for (int i2 = 0; i2 < this.DJ.length; i2++) {
                    String str = this.DJ[i2];
                    if (str != null) {
                        zzaovVar.zzr(4, str);
                    }
                }
            }
            if (this.DE != 0) {
                zzaovVar.zzb(5, this.DE);
            }
            if (this.DK != null && this.DK.length > 0) {
                for (int i3 = 0; i3 < this.DK.length; i3++) {
                    String str2 = this.DK[i3];
                    if (str2 != null) {
                        zzaovVar.zzr(6, str2);
                    }
                }
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzad, reason: merged with bridge method [inline-methods] */
        public zzi zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 24:
                        int iZzc = zzapf.zzc(zzaouVar, 24);
                        int length = this.DI == null ? 0 : this.DI.length;
                        int[] iArr = new int[iZzc + length];
                        if (length != 0) {
                            System.arraycopy(this.DI, 0, iArr, 0, length);
                        }
                        while (length < iArr.length - 1) {
                            iArr[length] = zzaouVar.N();
                            zzaouVar.J();
                            length++;
                        }
                        iArr[length] = zzaouVar.N();
                        this.DI = iArr;
                        break;
                    case 26:
                        int iZzaei = zzaouVar.zzaei(zzaouVar.S());
                        int position = zzaouVar.getPosition();
                        int i = 0;
                        while (zzaouVar.X() > 0) {
                            zzaouVar.N();
                            i++;
                        }
                        zzaouVar.zzaek(position);
                        int length2 = this.DI == null ? 0 : this.DI.length;
                        int[] iArr2 = new int[i + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.DI, 0, iArr2, 0, length2);
                        }
                        while (length2 < iArr2.length) {
                            iArr2[length2] = zzaouVar.N();
                            length2++;
                        }
                        this.DI = iArr2;
                        zzaouVar.zzaej(iZzaei);
                        break;
                    case 34:
                        int iZzc2 = zzapf.zzc(zzaouVar, 34);
                        int length3 = this.DJ == null ? 0 : this.DJ.length;
                        String[] strArr = new String[iZzc2 + length3];
                        if (length3 != 0) {
                            System.arraycopy(this.DJ, 0, strArr, 0, length3);
                        }
                        while (length3 < strArr.length - 1) {
                            strArr[length3] = zzaouVar.readString();
                            zzaouVar.J();
                            length3++;
                        }
                        strArr[length3] = zzaouVar.readString();
                        this.DJ = strArr;
                        break;
                    case 40:
                        this.DE = zzaouVar.M();
                        break;
                    case 50:
                        int iZzc3 = zzapf.zzc(zzaouVar, 50);
                        int length4 = this.DK == null ? 0 : this.DK.length;
                        String[] strArr2 = new String[iZzc3 + length4];
                        if (length4 != 0) {
                            System.arraycopy(this.DK, 0, strArr2, 0, length4);
                        }
                        while (length4 < strArr2.length - 1) {
                            strArr2[length4] = zzaouVar.readString();
                            zzaouVar.J();
                            length4++;
                        }
                        strArr2[length4] = zzaouVar.readString();
                        this.DK = strArr2;
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzi zzayz() {
            this.Da = 0;
            this.Db = 0L;
            this.DI = zzapf.bim;
            this.DJ = zzapf.bir;
            this.DE = 0L;
            this.DK = zzapf.bir;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            if (this.DI != null && this.DI.length > 0) {
                int iZzaeo = 0;
                for (int i = 0; i < this.DI.length; i++) {
                    iZzaeo += zzaov.zzaeo(this.DI[i]);
                }
                iZzy = iZzy + iZzaeo + (this.DI.length * 1);
            }
            if (this.DJ != null && this.DJ.length > 0) {
                int iZztg = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < this.DJ.length; i3++) {
                    String str = this.DJ[i3];
                    if (str != null) {
                        i2++;
                        iZztg += zzaov.zztg(str);
                    }
                }
                iZzy = iZzy + iZztg + (i2 * 1);
            }
            if (this.DE != 0) {
                iZzy += zzaov.zze(5, this.DE);
            }
            if (this.DK == null || this.DK.length <= 0) {
                return iZzy;
            }
            int iZztg2 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < this.DK.length; i5++) {
                String str2 = this.DK[i5];
                if (str2 != null) {
                    i4++;
                    iZztg2 += zzaov.zztg(str2);
                }
            }
            return iZzy + iZztg2 + (i4 * 1);
        }
    }

    public static final class zzj extends zzaow<zzj> {
        public double DL;
        public double DM;
        public int[] DN;
        public int Da;
        public long Db;

        public zzj() {
            zzaza();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzj)) {
                return false;
            }
            zzj zzjVar = (zzj) obj;
            if (this.Da == zzjVar.Da && Double.doubleToLongBits(this.DL) == Double.doubleToLongBits(zzjVar.DL) && Double.doubleToLongBits(this.DM) == Double.doubleToLongBits(zzjVar.DM) && this.Db == zzjVar.Db && zzapa.equals(this.DN, zzjVar.DN)) {
                return (this.bib == null || this.bib.isEmpty()) ? zzjVar.bib == null || zzjVar.bib.isEmpty() : this.bib.equals(zzjVar.bib);
            }
            return false;
        }

        public int hashCode() {
            int iHashCode = ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da;
            long jDoubleToLongBits = Double.doubleToLongBits(this.DL);
            int i = (iHashCode * 31) + ((int) (jDoubleToLongBits ^ (jDoubleToLongBits >>> 32)));
            long jDoubleToLongBits2 = Double.doubleToLongBits(this.DM);
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + (((((((i * 31) + ((int) (jDoubleToLongBits2 ^ (jDoubleToLongBits2 >>> 32)))) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + zzapa.hashCode(this.DN)) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (Double.doubleToLongBits(this.DL) != Double.doubleToLongBits(0.0d)) {
                zzaovVar.zza(2, this.DL);
            }
            if (Double.doubleToLongBits(this.DM) != Double.doubleToLongBits(0.0d)) {
                zzaovVar.zza(3, this.DM);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(4, this.Db);
            }
            if (this.DN != null && this.DN.length > 0) {
                for (int i = 0; i < this.DN.length; i++) {
                    zzaovVar.zzae(5, this.DN[i]);
                }
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzae, reason: merged with bridge method [inline-methods] */
        public zzj zzb(zzaou zzaouVar) throws IOException {
            int i;
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 17:
                        this.DL = zzaouVar.readDouble();
                        break;
                    case 25:
                        this.DM = zzaouVar.readDouble();
                        break;
                    case 32:
                        this.Db = zzaouVar.M();
                        break;
                    case 40:
                        int iZzc = zzapf.zzc(zzaouVar, 40);
                        int[] iArr = new int[iZzc];
                        int i2 = 0;
                        int i3 = 0;
                        while (i2 < iZzc) {
                            if (i2 != 0) {
                                zzaouVar.J();
                            }
                            int iN2 = zzaouVar.N();
                            switch (iN2) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                    i = i3 + 1;
                                    iArr[i3] = iN2;
                                    break;
                                default:
                                    i = i3;
                                    break;
                            }
                            i2++;
                            i3 = i;
                        }
                        if (i3 != 0) {
                            int length = this.DN == null ? 0 : this.DN.length;
                            if (length == 0 && i3 == iZzc) {
                                this.DN = iArr;
                            } else {
                                int[] iArr2 = new int[length + i3];
                                if (length != 0) {
                                    System.arraycopy(this.DN, 0, iArr2, 0, length);
                                }
                                System.arraycopy(iArr, 0, iArr2, length, i3);
                                this.DN = iArr2;
                            }
                        }
                        break;
                    case 42:
                        int iZzaei = zzaouVar.zzaei(zzaouVar.S());
                        int position = zzaouVar.getPosition();
                        int i4 = 0;
                        while (zzaouVar.X() > 0) {
                            switch (zzaouVar.N()) {
                                case 0:
                                case 1:
                                case 2:
                                case 3:
                                case 4:
                                    i4++;
                                    break;
                            }
                        }
                        if (i4 != 0) {
                            zzaouVar.zzaek(position);
                            int length2 = this.DN == null ? 0 : this.DN.length;
                            int[] iArr3 = new int[i4 + length2];
                            if (length2 != 0) {
                                System.arraycopy(this.DN, 0, iArr3, 0, length2);
                            }
                            while (zzaouVar.X() > 0) {
                                int iN3 = zzaouVar.N();
                                switch (iN3) {
                                    case 0:
                                    case 1:
                                    case 2:
                                    case 3:
                                    case 4:
                                        iArr3[length2] = iN3;
                                        length2++;
                                        break;
                                }
                            }
                            this.DN = iArr3;
                        }
                        zzaouVar.zzaej(iZzaei);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzj zzaza() {
            this.Da = 0;
            this.DL = 0.0d;
            this.DM = 0.0d;
            this.Db = 0L;
            this.DN = zzapf.bim;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (Double.doubleToLongBits(this.DL) != Double.doubleToLongBits(0.0d)) {
                iZzy += zzaov.zzb(2, this.DL);
            }
            if (Double.doubleToLongBits(this.DM) != Double.doubleToLongBits(0.0d)) {
                iZzy += zzaov.zzb(3, this.DM);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(4, this.Db);
            }
            if (this.DN == null || this.DN.length <= 0) {
                return iZzy;
            }
            int iZzaeo = 0;
            for (int i = 0; i < this.DN.length; i++) {
                iZzaeo += zzaov.zzaeo(this.DN[i]);
            }
            return iZzy + iZzaeo + (this.DN.length * 1);
        }
    }

    public static final class zzk extends zzaow<zzk> {
        public int DO;
        public int Da;
        public long Db;

        public zzk() {
            zzazb();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzk)) {
                return false;
            }
            zzk zzkVar = (zzk) obj;
            if (this.Da == zzkVar.Da && this.Db == zzkVar.Db && this.DO == zzkVar.DO) {
                return (this.bib == null || this.bib.isEmpty()) ? zzkVar.bib == null || zzkVar.bib.isEmpty() : this.bib.equals(zzkVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + this.DO) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (this.DO != 0) {
                zzaovVar.zzae(3, this.DO);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzaf, reason: merged with bridge method [inline-methods] */
        public zzk zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 24:
                        int iN2 = zzaouVar.N();
                        switch (iN2) {
                            case 0:
                            case 1:
                            case 2:
                                this.DO = iN2;
                                break;
                        }
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzk zzazb() {
            this.Da = 0;
            this.Db = 0L;
            this.DO = 0;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            return this.DO != 0 ? iZzy + zzaov.zzag(3, this.DO) : iZzy;
        }
    }

    public static final class zzl extends zzaow<zzl> {
        public String DP;

        public zzl() {
            zzazc();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzl)) {
                return false;
            }
            zzl zzlVar = (zzl) obj;
            if (this.DP == null) {
                if (zzlVar.DP != null) {
                    return false;
                }
            } else if (!this.DP.equals(zzlVar.DP)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzlVar.bib == null || zzlVar.bib.isEmpty() : this.bib.equals(zzlVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.DP == null ? 0 : this.DP.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (!this.DP.equals("")) {
                zzaovVar.zzr(1, this.DP);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzag, reason: merged with bridge method [inline-methods] */
        public zzl zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 10:
                        this.DP = zzaouVar.readString();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzl zzazc() {
            this.DP = "";
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            return !this.DP.equals("") ? iZzy + zzaov.zzs(1, this.DP) : iZzy;
        }
    }

    public static final class zzm extends zzaow<zzm> {
        public String DQ;
        public long DR;
        public long DS;
        public zze DT;
        public int Da;

        public zzm() {
            zzazd();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzm)) {
                return false;
            }
            zzm zzmVar = (zzm) obj;
            if (this.Da != zzmVar.Da) {
                return false;
            }
            if (this.DQ == null) {
                if (zzmVar.DQ != null) {
                    return false;
                }
            } else if (!this.DQ.equals(zzmVar.DQ)) {
                return false;
            }
            if (this.DR != zzmVar.DR || this.DS != zzmVar.DS) {
                return false;
            }
            if (this.DT == null) {
                if (zzmVar.DT != null) {
                    return false;
                }
            } else if (!this.DT.equals(zzmVar.DT)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzmVar.bib == null || zzmVar.bib.isEmpty() : this.bib.equals(zzmVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.DT == null ? 0 : this.DT.hashCode()) + (((((((this.DQ == null ? 0 : this.DQ.hashCode()) + ((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31)) * 31) + ((int) (this.DR ^ (this.DR >>> 32)))) * 31) + ((int) (this.DS ^ (this.DS >>> 32)))) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (!this.DQ.equals("")) {
                zzaovVar.zzr(2, this.DQ);
            }
            if (this.DR != 0) {
                zzaovVar.zzb(3, this.DR);
            }
            if (this.DS != 0) {
                zzaovVar.zzb(4, this.DS);
            }
            if (this.DT != null) {
                zzaovVar.zza(5, this.DT);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzah, reason: merged with bridge method [inline-methods] */
        public zzm zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                            case 5:
                            case 6:
                            case 7:
                            case 8:
                            case 9:
                            case 10:
                            case 11:
                            case 12:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 18:
                        this.DQ = zzaouVar.readString();
                        break;
                    case 24:
                        this.DR = zzaouVar.M();
                        break;
                    case 32:
                        this.DS = zzaouVar.M();
                        break;
                    case 42:
                        if (this.DT == null) {
                            this.DT = new zze();
                        }
                        zzaouVar.zza(this.DT);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzm zzazd() {
            this.Da = 0;
            this.DQ = "";
            this.DR = 0L;
            this.DS = 0L;
            this.DT = null;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (!this.DQ.equals("")) {
                iZzy += zzaov.zzs(2, this.DQ);
            }
            if (this.DR != 0) {
                iZzy += zzaov.zze(3, this.DR);
            }
            if (this.DS != 0) {
                iZzy += zzaov.zze(4, this.DS);
            }
            return this.DT != null ? iZzy + zzaov.zzc(5, this.DT) : iZzy;
        }
    }

    public static final class zzn extends zzaow<zzn> {
        public float DU;
        public int DV;
        public int Da;
        public long Db;

        public zzn() {
            zzaze();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzn)) {
                return false;
            }
            zzn zznVar = (zzn) obj;
            if (this.Da == zznVar.Da && this.Db == zznVar.Db && Float.floatToIntBits(this.DU) == Float.floatToIntBits(zznVar.DU) && this.DV == zznVar.DV) {
                return (this.bib == null || this.bib.isEmpty()) ? zznVar.bib == null || zznVar.bib.isEmpty() : this.bib.equals(zznVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.Da) * 31) + ((int) (this.Db ^ (this.Db >>> 32)))) * 31) + Float.floatToIntBits(this.DU)) * 31) + this.DV) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Da != 0) {
                zzaovVar.zzae(1, this.Da);
            }
            if (this.Db != 0) {
                zzaovVar.zzb(2, this.Db);
            }
            if (Float.floatToIntBits(this.DU) != Float.floatToIntBits(0.0f)) {
                zzaovVar.zzc(3, this.DU);
            }
            if (this.DV != 0) {
                zzaovVar.zzae(4, this.DV);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzai, reason: merged with bridge method [inline-methods] */
        public zzn zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                                this.Da = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Db = zzaouVar.M();
                        break;
                    case 29:
                        this.DU = zzaouVar.readFloat();
                        break;
                    case 32:
                        this.DV = zzaouVar.N();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzn zzaze() {
            this.Da = 0;
            this.Db = 0L;
            this.DU = 0.0f;
            this.DV = 0;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Da != 0) {
                iZzy += zzaov.zzag(1, this.Da);
            }
            if (this.Db != 0) {
                iZzy += zzaov.zze(2, this.Db);
            }
            if (Float.floatToIntBits(this.DU) != Float.floatToIntBits(0.0f)) {
                iZzy += zzaov.zzd(3, this.DU);
            }
            return this.DV != 0 ? iZzy + zzaov.zzag(4, this.DV) : iZzy;
        }
    }
}
