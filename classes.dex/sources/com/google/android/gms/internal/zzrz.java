package com.google.android.gms.internal;

import com.google.android.gms.games.GamesActivityResultCodes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public interface zzrz {

    public static final class zza extends zzaow<zza> {
        public String DW;
        public zzc DX;
        public int DY;
        public int DZ;
        public int Ea;
        public zzf Eb;
        public zzb Ec;
        public String[] Ed;
        public zzd Ee;

        public zza() {
            zzazf();
        }

        public static zza zzu(byte[] bArr) throws zzapb {
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
            if (this.DW == null) {
                if (zzaVar.DW != null) {
                    return false;
                }
            } else if (!this.DW.equals(zzaVar.DW)) {
                return false;
            }
            if (this.DX == null) {
                if (zzaVar.DX != null) {
                    return false;
                }
            } else if (!this.DX.equals(zzaVar.DX)) {
                return false;
            }
            if (this.DY != zzaVar.DY || this.DZ != zzaVar.DZ || this.Ea != zzaVar.Ea) {
                return false;
            }
            if (this.Eb == null) {
                if (zzaVar.Eb != null) {
                    return false;
                }
            } else if (!this.Eb.equals(zzaVar.Eb)) {
                return false;
            }
            if (this.Ec == null) {
                if (zzaVar.Ec != null) {
                    return false;
                }
            } else if (!this.Ec.equals(zzaVar.Ec)) {
                return false;
            }
            if (!zzapa.equals(this.Ed, zzaVar.Ed)) {
                return false;
            }
            if (this.Ee == null) {
                if (zzaVar.Ee != null) {
                    return false;
                }
            } else if (!this.Ee.equals(zzaVar.Ee)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzaVar.bib == null || zzaVar.bib.isEmpty() : this.bib.equals(zzaVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.Ee == null ? 0 : this.Ee.hashCode()) + (((((this.Ec == null ? 0 : this.Ec.hashCode()) + (((this.Eb == null ? 0 : this.Eb.hashCode()) + (((((((((this.DX == null ? 0 : this.DX.hashCode()) + (((this.DW == null ? 0 : this.DW.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31)) * 31) + this.DY) * 31) + this.DZ) * 31) + this.Ea) * 31)) * 31)) * 31) + zzapa.hashCode(this.Ed)) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (!this.DW.equals("")) {
                zzaovVar.zzr(1, this.DW);
            }
            if (this.DX != null) {
                zzaovVar.zza(2, this.DX);
            }
            if (this.DY != 0) {
                zzaovVar.zzae(4, this.DY);
            }
            if (this.DZ != 0) {
                zzaovVar.zzae(5, this.DZ);
            }
            if (this.Ea != 1) {
                zzaovVar.zzae(6, this.Ea);
            }
            if (this.Eb != null) {
                zzaovVar.zza(7, this.Eb);
            }
            if (this.Ec != null) {
                zzaovVar.zza(8, this.Ec);
            }
            if (this.Ed != null && this.Ed.length > 0) {
                for (int i = 0; i < this.Ed.length; i++) {
                    String str = this.Ed[i];
                    if (str != null) {
                        zzaovVar.zzr(9, str);
                    }
                }
            }
            if (this.Ee != null) {
                zzaovVar.zza(10, this.Ee);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzaj, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 10:
                        this.DW = zzaouVar.readString();
                        break;
                    case 18:
                        if (this.DX == null) {
                            this.DX = new zzc();
                        }
                        zzaouVar.zza(this.DX);
                        break;
                    case 32:
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
                                this.DY = iN;
                                break;
                        }
                        break;
                    case 40:
                        int iN2 = zzaouVar.N();
                        switch (iN2) {
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
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 10000:
                            case GamesActivityResultCodes.RESULT_RECONNECT_REQUIRED /* 10001 */:
                            case GamesActivityResultCodes.RESULT_SIGN_IN_FAILED /* 10002 */:
                            case GamesActivityResultCodes.RESULT_LICENSE_FAILED /* 10003 */:
                            case GamesActivityResultCodes.RESULT_APP_MISCONFIGURED /* 10004 */:
                            case GamesActivityResultCodes.RESULT_LEFT_ROOM /* 10005 */:
                            case GamesActivityResultCodes.RESULT_NETWORK_FAILURE /* 10006 */:
                            case 99999:
                                this.DZ = iN2;
                                break;
                        }
                        break;
                    case 48:
                        int iN3 = zzaouVar.N();
                        switch (iN3) {
                            case 1:
                            case 2:
                                this.Ea = iN3;
                                break;
                        }
                        break;
                    case 58:
                        if (this.Eb == null) {
                            this.Eb = new zzf();
                        }
                        zzaouVar.zza(this.Eb);
                        break;
                    case 66:
                        if (this.Ec == null) {
                            this.Ec = new zzb();
                        }
                        zzaouVar.zza(this.Ec);
                        break;
                    case 74:
                        int iZzc = zzapf.zzc(zzaouVar, 74);
                        int length = this.Ed == null ? 0 : this.Ed.length;
                        String[] strArr = new String[iZzc + length];
                        if (length != 0) {
                            System.arraycopy(this.Ed, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzaouVar.readString();
                            zzaouVar.J();
                            length++;
                        }
                        strArr[length] = zzaouVar.readString();
                        this.Ed = strArr;
                        break;
                    case 82:
                        if (this.Ee == null) {
                            this.Ee = new zzd();
                        }
                        zzaouVar.zza(this.Ee);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zza zzazf() {
            this.DW = "";
            this.DX = null;
            this.DY = 0;
            this.DZ = 0;
            this.Ea = 1;
            this.Eb = null;
            this.Ec = null;
            this.Ed = zzapf.bir;
            this.Ee = null;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (!this.DW.equals("")) {
                iZzy += zzaov.zzs(1, this.DW);
            }
            if (this.DX != null) {
                iZzy += zzaov.zzc(2, this.DX);
            }
            if (this.DY != 0) {
                iZzy += zzaov.zzag(4, this.DY);
            }
            if (this.DZ != 0) {
                iZzy += zzaov.zzag(5, this.DZ);
            }
            if (this.Ea != 1) {
                iZzy += zzaov.zzag(6, this.Ea);
            }
            if (this.Eb != null) {
                iZzy += zzaov.zzc(7, this.Eb);
            }
            if (this.Ec != null) {
                iZzy += zzaov.zzc(8, this.Ec);
            }
            if (this.Ed != null && this.Ed.length > 0) {
                int iZztg = 0;
                int i = 0;
                for (int i2 = 0; i2 < this.Ed.length; i2++) {
                    String str = this.Ed[i2];
                    if (str != null) {
                        i++;
                        iZztg += zzaov.zztg(str);
                    }
                }
                iZzy = iZzy + iZztg + (i * 1);
            }
            return this.Ee != null ? iZzy + zzaov.zzc(10, this.Ee) : iZzy;
        }
    }

    public static final class zzb extends zzaow<zzb> {
        public zzb() {
            zzazg();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            return (this.bib == null || this.bib.isEmpty()) ? zzbVar.bib == null || zzbVar.bib.isEmpty() : this.bib.equals(zzbVar.bib);
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzak, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzaou zzaouVar) throws IOException {
            int iJ;
            do {
                iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        return this;
                }
            } while (super.zza(zzaouVar, iJ));
            return this;
        }

        public zzb zzazg() {
            this.bib = null;
            this.bik = -1;
            return this;
        }
    }

    public static final class zzc extends zzaow<zzc> {
        public long Ef;
        public long Eg;
        public String Eh;
        public String moduleId;
        public int version;

        public zzc() {
            zzazh();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.Ef != zzcVar.Ef || this.Eg != zzcVar.Eg || this.version != zzcVar.version) {
                return false;
            }
            if (this.Eh == null) {
                if (zzcVar.Eh != null) {
                    return false;
                }
            } else if (!this.Eh.equals(zzcVar.Eh)) {
                return false;
            }
            if (this.moduleId == null) {
                if (zzcVar.moduleId != null) {
                    return false;
                }
            } else if (!this.moduleId.equals(zzcVar.moduleId)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzcVar.bib == null || zzcVar.bib.isEmpty() : this.bib.equals(zzcVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.moduleId == null ? 0 : this.moduleId.hashCode()) + (((this.Eh == null ? 0 : this.Eh.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + ((int) (this.Ef ^ (this.Ef >>> 32)))) * 31) + ((int) (this.Eg ^ (this.Eg >>> 32)))) * 31) + this.version) * 31)) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Ef != 0) {
                zzaovVar.zzb(1, this.Ef);
            }
            if (this.Eg != 0) {
                zzaovVar.zzb(2, this.Eg);
            }
            if (this.version != 0) {
                zzaovVar.zzae(3, this.version);
            }
            if (!this.Eh.equals("")) {
                zzaovVar.zzr(4, this.Eh);
            }
            if (!this.moduleId.equals("")) {
                zzaovVar.zzr(5, this.moduleId);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzal, reason: merged with bridge method [inline-methods] */
        public zzc zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        this.Ef = zzaouVar.M();
                        break;
                    case 16:
                        this.Eg = zzaouVar.M();
                        break;
                    case 24:
                        this.version = zzaouVar.N();
                        break;
                    case 34:
                        this.Eh = zzaouVar.readString();
                        break;
                    case 42:
                        this.moduleId = zzaouVar.readString();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzc zzazh() {
            this.Ef = 0L;
            this.Eg = 0L;
            this.version = 0;
            this.Eh = "";
            this.moduleId = "";
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Ef != 0) {
                iZzy += zzaov.zze(1, this.Ef);
            }
            if (this.Eg != 0) {
                iZzy += zzaov.zze(2, this.Eg);
            }
            if (this.version != 0) {
                iZzy += zzaov.zzag(3, this.version);
            }
            if (!this.Eh.equals("")) {
                iZzy += zzaov.zzs(4, this.Eh);
            }
            return !this.moduleId.equals("") ? iZzy + zzaov.zzs(5, this.moduleId) : iZzy;
        }
    }

    public static final class zzd extends zzaow<zzd> {
        public String Ei;
        public String Ej;
        public String Ek;

        public zzd() {
            zzazi();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.Ei == null) {
                if (zzdVar.Ei != null) {
                    return false;
                }
            } else if (!this.Ei.equals(zzdVar.Ei)) {
                return false;
            }
            if (this.Ej == null) {
                if (zzdVar.Ej != null) {
                    return false;
                }
            } else if (!this.Ej.equals(zzdVar.Ej)) {
                return false;
            }
            if (this.Ek == null) {
                if (zzdVar.Ek != null) {
                    return false;
                }
            } else if (!this.Ek.equals(zzdVar.Ek)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzdVar.bib == null || zzdVar.bib.isEmpty() : this.bib.equals(zzdVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.Ek == null ? 0 : this.Ek.hashCode()) + (((this.Ej == null ? 0 : this.Ej.hashCode()) + (((this.Ei == null ? 0 : this.Ei.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31)) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (!this.Ei.equals("")) {
                zzaovVar.zzr(1, this.Ei);
            }
            if (!this.Ej.equals("")) {
                zzaovVar.zzr(2, this.Ej);
            }
            if (!this.Ek.equals("")) {
                zzaovVar.zzr(3, this.Ek);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzam, reason: merged with bridge method [inline-methods] */
        public zzd zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 10:
                        this.Ei = zzaouVar.readString();
                        break;
                    case 18:
                        this.Ej = zzaouVar.readString();
                        break;
                    case 26:
                        this.Ek = zzaouVar.readString();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzd zzazi() {
            this.Ei = "";
            this.Ej = "";
            this.Ek = "";
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (!this.Ei.equals("")) {
                iZzy += zzaov.zzs(1, this.Ei);
            }
            if (!this.Ej.equals("")) {
                iZzy += zzaov.zzs(2, this.Ej);
            }
            return !this.Ek.equals("") ? iZzy + zzaov.zzs(3, this.Ek) : iZzy;
        }
    }

    public static final class zze extends zzaow<zze> {
        public zzc DX;
        public zzf Eb;
        public zzd Ee;
        public String El;
        public int Em;
        public String[] En;
        public String[] Eo;

        public zze() {
            zzazj();
        }

        public static zze zzv(byte[] bArr) throws zzapb {
            return (zze) zzapc.zza(new zze(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.El == null) {
                if (zzeVar.El != null) {
                    return false;
                }
            } else if (!this.El.equals(zzeVar.El)) {
                return false;
            }
            if (this.Em != zzeVar.Em) {
                return false;
            }
            if (this.DX == null) {
                if (zzeVar.DX != null) {
                    return false;
                }
            } else if (!this.DX.equals(zzeVar.DX)) {
                return false;
            }
            if (!zzapa.equals(this.En, zzeVar.En) || !zzapa.equals(this.Eo, zzeVar.Eo)) {
                return false;
            }
            if (this.Eb == null) {
                if (zzeVar.Eb != null) {
                    return false;
                }
            } else if (!this.Eb.equals(zzeVar.Eb)) {
                return false;
            }
            if (this.Ee == null) {
                if (zzeVar.Ee != null) {
                    return false;
                }
            } else if (!this.Ee.equals(zzeVar.Ee)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzeVar.bib == null || zzeVar.bib.isEmpty() : this.bib.equals(zzeVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.Ee == null ? 0 : this.Ee.hashCode()) + (((this.Eb == null ? 0 : this.Eb.hashCode()) + (((((((this.DX == null ? 0 : this.DX.hashCode()) + (((((this.El == null ? 0 : this.El.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31) + this.Em) * 31)) * 31) + zzapa.hashCode(this.En)) * 31) + zzapa.hashCode(this.Eo)) * 31)) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (!this.El.equals("")) {
                zzaovVar.zzr(1, this.El);
            }
            if (this.Em != 1) {
                zzaovVar.zzae(2, this.Em);
            }
            if (this.DX != null) {
                zzaovVar.zza(3, this.DX);
            }
            if (this.En != null && this.En.length > 0) {
                for (int i = 0; i < this.En.length; i++) {
                    String str = this.En[i];
                    if (str != null) {
                        zzaovVar.zzr(4, str);
                    }
                }
            }
            if (this.Eo != null && this.Eo.length > 0) {
                for (int i2 = 0; i2 < this.Eo.length; i2++) {
                    String str2 = this.Eo[i2];
                    if (str2 != null) {
                        zzaovVar.zzr(5, str2);
                    }
                }
            }
            if (this.Eb != null) {
                zzaovVar.zza(6, this.Eb);
            }
            if (this.Ee != null) {
                zzaovVar.zza(8, this.Ee);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzan, reason: merged with bridge method [inline-methods] */
        public zze zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 10:
                        this.El = zzaouVar.readString();
                        break;
                    case 16:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 1:
                            case 2:
                                this.Em = iN;
                                break;
                        }
                        break;
                    case 26:
                        if (this.DX == null) {
                            this.DX = new zzc();
                        }
                        zzaouVar.zza(this.DX);
                        break;
                    case 34:
                        int iZzc = zzapf.zzc(zzaouVar, 34);
                        int length = this.En == null ? 0 : this.En.length;
                        String[] strArr = new String[iZzc + length];
                        if (length != 0) {
                            System.arraycopy(this.En, 0, strArr, 0, length);
                        }
                        while (length < strArr.length - 1) {
                            strArr[length] = zzaouVar.readString();
                            zzaouVar.J();
                            length++;
                        }
                        strArr[length] = zzaouVar.readString();
                        this.En = strArr;
                        break;
                    case 42:
                        int iZzc2 = zzapf.zzc(zzaouVar, 42);
                        int length2 = this.Eo == null ? 0 : this.Eo.length;
                        String[] strArr2 = new String[iZzc2 + length2];
                        if (length2 != 0) {
                            System.arraycopy(this.Eo, 0, strArr2, 0, length2);
                        }
                        while (length2 < strArr2.length - 1) {
                            strArr2[length2] = zzaouVar.readString();
                            zzaouVar.J();
                            length2++;
                        }
                        strArr2[length2] = zzaouVar.readString();
                        this.Eo = strArr2;
                        break;
                    case 50:
                        if (this.Eb == null) {
                            this.Eb = new zzf();
                        }
                        zzaouVar.zza(this.Eb);
                        break;
                    case 66:
                        if (this.Ee == null) {
                            this.Ee = new zzd();
                        }
                        zzaouVar.zza(this.Ee);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zze zzazj() {
            this.El = "";
            this.Em = 1;
            this.DX = null;
            this.En = zzapf.bir;
            this.Eo = zzapf.bir;
            this.Eb = null;
            this.Ee = null;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (!this.El.equals("")) {
                iZzy += zzaov.zzs(1, this.El);
            }
            if (this.Em != 1) {
                iZzy += zzaov.zzag(2, this.Em);
            }
            if (this.DX != null) {
                iZzy += zzaov.zzc(3, this.DX);
            }
            if (this.En != null && this.En.length > 0) {
                int iZztg = 0;
                int i = 0;
                for (int i2 = 0; i2 < this.En.length; i2++) {
                    String str = this.En[i2];
                    if (str != null) {
                        i++;
                        iZztg += zzaov.zztg(str);
                    }
                }
                iZzy = iZzy + iZztg + (i * 1);
            }
            if (this.Eo != null && this.Eo.length > 0) {
                int iZztg2 = 0;
                int i3 = 0;
                for (int i4 = 0; i4 < this.Eo.length; i4++) {
                    String str2 = this.Eo[i4];
                    if (str2 != null) {
                        i3++;
                        iZztg2 += zzaov.zztg(str2);
                    }
                }
                iZzy = iZzy + iZztg2 + (i3 * 1);
            }
            if (this.Eb != null) {
                iZzy += zzaov.zzc(6, this.Eb);
            }
            return this.Ee != null ? iZzy + zzaov.zzc(8, this.Ee) : iZzy;
        }
    }

    public static final class zzf extends zzaow<zzf> {
        public long DR;
        public long Ep;
        public int type;

        public zzf() {
            zzazk();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzf)) {
                return false;
            }
            zzf zzfVar = (zzf) obj;
            if (this.type == zzfVar.type && this.DR == zzfVar.DR && this.Ep == zzfVar.Ep) {
                return (this.bib == null || this.bib.isEmpty()) ? zzfVar.bib == null || zzfVar.bib.isEmpty() : this.bib.equals(zzfVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.type) * 31) + ((int) (this.DR ^ (this.DR >>> 32)))) * 31) + ((int) (this.Ep ^ (this.Ep >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.type != 3) {
                zzaovVar.zzae(1, this.type);
            }
            if (this.DR != 0) {
                zzaovVar.zzb(2, this.DR);
            }
            if (this.Ep != 0) {
                zzaovVar.zzb(3, this.Ep);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzao, reason: merged with bridge method [inline-methods] */
        public zzf zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        int iN = zzaouVar.N();
                        switch (iN) {
                            case 1:
                            case 2:
                            case 3:
                                this.type = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.DR = zzaouVar.M();
                        break;
                    case 24:
                        this.Ep = zzaouVar.M();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzf zzazk() {
            this.type = 3;
            this.DR = 0L;
            this.Ep = 0L;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.type != 3) {
                iZzy += zzaov.zzag(1, this.type);
            }
            if (this.DR != 0) {
                iZzy += zzaov.zze(2, this.DR);
            }
            return this.Ep != 0 ? iZzy + zzaov.zze(3, this.Ep) : iZzy;
        }
    }
}
