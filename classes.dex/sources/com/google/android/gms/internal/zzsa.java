package com.google.android.gms.internal;

import com.google.android.gms.games.GamesActivityResultCodes;
import com.ironsource.mediationsdk.logger.IronSourceError;
import java.io.IOException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public interface zzsa {

    public static final class zza extends zzaow<zza> {
        public long Eq;
        public int type;

        public zza() {
            zzazl();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            if (this.type == zzaVar.type && this.Eq == zzaVar.Eq) {
                return (this.bib == null || this.bib.isEmpty()) ? zzaVar.bib == null || zzaVar.bib.isEmpty() : this.bib.equals(zzaVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.type) * 31) + ((int) (this.Eq ^ (this.Eq >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.type != 0) {
                zzaovVar.zzae(1, this.type);
            }
            if (this.Eq != 0) {
                zzaovVar.zzb(2, this.Eq);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzap, reason: merged with bridge method [inline-methods] */
        public zza zzb(zzaou zzaouVar) throws IOException {
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
                                this.type = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Eq = zzaouVar.M();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zza zzazl() {
            this.type = 0;
            this.Eq = 0L;
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
            return this.Eq != 0 ? iZzy + zzaov.zze(2, this.Eq) : iZzy;
        }
    }

    public static final class zzb extends zzaow<zzb> {
        public int DZ;
        public long Er;
        public zzc Es;
        public zzd Et;
        public zze Eu;
        public zza Ev;
        public zza Ew;

        public static final class zza extends zzaow<zza> {
            public String Ex;
            public String moduleId;
            public String packageName;

            public zza() {
                zzazn();
            }

            public boolean equals(Object obj) {
                if (obj == this) {
                    return true;
                }
                if (!(obj instanceof zza)) {
                    return false;
                }
                zza zzaVar = (zza) obj;
                if (this.packageName == null) {
                    if (zzaVar.packageName != null) {
                        return false;
                    }
                } else if (!this.packageName.equals(zzaVar.packageName)) {
                    return false;
                }
                if (this.moduleId == null) {
                    if (zzaVar.moduleId != null) {
                        return false;
                    }
                } else if (!this.moduleId.equals(zzaVar.moduleId)) {
                    return false;
                }
                if (this.Ex == null) {
                    if (zzaVar.Ex != null) {
                        return false;
                    }
                } else if (!this.Ex.equals(zzaVar.Ex)) {
                    return false;
                }
                return (this.bib == null || this.bib.isEmpty()) ? zzaVar.bib == null || zzaVar.bib.isEmpty() : this.bib.equals(zzaVar.bib);
            }

            public int hashCode() {
                int iHashCode = 0;
                int iHashCode2 = ((this.Ex == null ? 0 : this.Ex.hashCode()) + (((this.moduleId == null ? 0 : this.moduleId.hashCode()) + (((this.packageName == null ? 0 : this.packageName.hashCode()) + ((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31)) * 31)) * 31)) * 31;
                if (this.bib != null && !this.bib.isEmpty()) {
                    iHashCode = this.bib.hashCode();
                }
                return iHashCode2 + iHashCode;
            }

            @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
            public void zza(zzaov zzaovVar) throws IOException {
                if (!this.packageName.equals("")) {
                    zzaovVar.zzr(1, this.packageName);
                }
                if (!this.moduleId.equals("")) {
                    zzaovVar.zzr(2, this.moduleId);
                }
                if (!this.Ex.equals("")) {
                    zzaovVar.zzr(3, this.Ex);
                }
                super.zza(zzaovVar);
            }

            @Override // com.google.android.gms.internal.zzapc
            /* JADX INFO: renamed from: zzar, reason: merged with bridge method [inline-methods] */
            public zza zzb(zzaou zzaouVar) throws IOException {
                while (true) {
                    int iJ = zzaouVar.J();
                    switch (iJ) {
                        case 0:
                            break;
                        case 10:
                            this.packageName = zzaouVar.readString();
                            break;
                        case 18:
                            this.moduleId = zzaouVar.readString();
                            break;
                        case 26:
                            this.Ex = zzaouVar.readString();
                            break;
                        default:
                            if (!super.zza(zzaouVar, iJ)) {
                            }
                            break;
                    }
                }
                return this;
            }

            public zza zzazn() {
                this.packageName = "";
                this.moduleId = "";
                this.Ex = "";
                this.bib = null;
                this.bik = -1;
                return this;
            }

            @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
            protected int zzy() {
                int iZzy = super.zzy();
                if (!this.packageName.equals("")) {
                    iZzy += zzaov.zzs(1, this.packageName);
                }
                if (!this.moduleId.equals("")) {
                    iZzy += zzaov.zzs(2, this.moduleId);
                }
                return !this.Ex.equals("") ? iZzy + zzaov.zzs(3, this.Ex) : iZzy;
            }
        }

        public zzb() {
            zzazm();
        }

        public static zzb zzw(byte[] bArr) throws zzapb {
            return (zzb) zzapc.zza(new zzb(), bArr);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzb)) {
                return false;
            }
            zzb zzbVar = (zzb) obj;
            if (this.Er != zzbVar.Er || this.DZ != zzbVar.DZ) {
                return false;
            }
            if (this.Es == null) {
                if (zzbVar.Es != null) {
                    return false;
                }
            } else if (!this.Es.equals(zzbVar.Es)) {
                return false;
            }
            if (this.Et == null) {
                if (zzbVar.Et != null) {
                    return false;
                }
            } else if (!this.Et.equals(zzbVar.Et)) {
                return false;
            }
            if (this.Eu == null) {
                if (zzbVar.Eu != null) {
                    return false;
                }
            } else if (!this.Eu.equals(zzbVar.Eu)) {
                return false;
            }
            if (this.Ev == null) {
                if (zzbVar.Ev != null) {
                    return false;
                }
            } else if (!this.Ev.equals(zzbVar.Ev)) {
                return false;
            }
            if (this.Ew == null) {
                if (zzbVar.Ew != null) {
                    return false;
                }
            } else if (!this.Ew.equals(zzbVar.Ew)) {
                return false;
            }
            return (this.bib == null || this.bib.isEmpty()) ? zzbVar.bib == null || zzbVar.bib.isEmpty() : this.bib.equals(zzbVar.bib);
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((this.Ew == null ? 0 : this.Ew.hashCode()) + (((this.Ev == null ? 0 : this.Ev.hashCode()) + (((this.Eu == null ? 0 : this.Eu.hashCode()) + (((this.Et == null ? 0 : this.Et.hashCode()) + (((this.Es == null ? 0 : this.Es.hashCode()) + ((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + ((int) (this.Er ^ (this.Er >>> 32)))) * 31) + this.DZ) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
            if (this.bib != null && !this.bib.isEmpty()) {
                iHashCode = this.bib.hashCode();
            }
            return iHashCode2 + iHashCode;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.Er != 0) {
                zzaovVar.zzb(1, this.Er);
            }
            if (this.DZ != 0) {
                zzaovVar.zzae(2, this.DZ);
            }
            if (this.Es != null) {
                zzaovVar.zza(3, this.Es);
            }
            if (this.Et != null) {
                zzaovVar.zza(4, this.Et);
            }
            if (this.Eu != null) {
                zzaovVar.zza(5, this.Eu);
            }
            if (this.Ev != null) {
                zzaovVar.zza(6, this.Ev);
            }
            if (this.Ew != null) {
                zzaovVar.zza(7, this.Ew);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzaq, reason: merged with bridge method [inline-methods] */
        public zzb zzb(zzaou zzaouVar) throws IOException {
            while (true) {
                int iJ = zzaouVar.J();
                switch (iJ) {
                    case 0:
                        break;
                    case 8:
                        this.Er = zzaouVar.M();
                        break;
                    case 16:
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
                                this.DZ = iN;
                                break;
                        }
                        break;
                    case 26:
                        if (this.Es == null) {
                            this.Es = new zzc();
                        }
                        zzaouVar.zza(this.Es);
                        break;
                    case 34:
                        if (this.Et == null) {
                            this.Et = new zzd();
                        }
                        zzaouVar.zza(this.Et);
                        break;
                    case 42:
                        if (this.Eu == null) {
                            this.Eu = new zze();
                        }
                        zzaouVar.zza(this.Eu);
                        break;
                    case 50:
                        if (this.Ev == null) {
                            this.Ev = new zza();
                        }
                        zzaouVar.zza(this.Ev);
                        break;
                    case 58:
                        if (this.Ew == null) {
                            this.Ew = new zza();
                        }
                        zzaouVar.zza(this.Ew);
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzb zzazm() {
            this.Er = 0L;
            this.DZ = 0;
            this.Es = null;
            this.Et = null;
            this.Eu = null;
            this.Ev = null;
            this.Ew = null;
            this.bib = null;
            this.bik = -1;
            return this;
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        protected int zzy() {
            int iZzy = super.zzy();
            if (this.Er != 0) {
                iZzy += zzaov.zze(1, this.Er);
            }
            if (this.DZ != 0) {
                iZzy += zzaov.zzag(2, this.DZ);
            }
            if (this.Es != null) {
                iZzy += zzaov.zzc(3, this.Es);
            }
            if (this.Et != null) {
                iZzy += zzaov.zzc(4, this.Et);
            }
            if (this.Eu != null) {
                iZzy += zzaov.zzc(5, this.Eu);
            }
            if (this.Ev != null) {
                iZzy += zzaov.zzc(6, this.Ev);
            }
            return this.Ew != null ? iZzy + zzaov.zzc(7, this.Ew) : iZzy;
        }
    }

    public static final class zzc extends zzaow<zzc> {
        public long durationMillis;
        public int type;

        public zzc() {
            zzazo();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzc)) {
                return false;
            }
            zzc zzcVar = (zzc) obj;
            if (this.type == zzcVar.type && this.durationMillis == zzcVar.durationMillis) {
                return (this.bib == null || this.bib.isEmpty()) ? zzcVar.bib == null || zzcVar.bib.isEmpty() : this.bib.equals(zzcVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.type) * 31) + ((int) (this.durationMillis ^ (this.durationMillis >>> 32)))) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.type != 0) {
                zzaovVar.zzae(1, this.type);
            }
            if (this.durationMillis != 0) {
                zzaovVar.zzb(2, this.durationMillis);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzas, reason: merged with bridge method [inline-methods] */
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
                            case 3:
                            case 4:
                                this.type = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.durationMillis = zzaouVar.M();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zzc zzazo() {
            this.type = 0;
            this.durationMillis = 0L;
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
            return this.durationMillis != 0 ? iZzy + zzaov.zze(2, this.durationMillis) : iZzy;
        }
    }

    public static final class zzd extends zzaow<zzd> {
        public int[] DI;
        public String[] DJ;
        public int DV;
        public String EA;
        public byte[] EB;
        public long EC;
        public long Ey;
        public String Ez;
        public int priority;
        public int type;

        public zzd() {
            zzazp();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zzd)) {
                return false;
            }
            zzd zzdVar = (zzd) obj;
            if (this.type != zzdVar.type || this.Ey != zzdVar.Ey || this.priority != zzdVar.priority) {
                return false;
            }
            if (this.Ez == null) {
                if (zzdVar.Ez != null) {
                    return false;
                }
            } else if (!this.Ez.equals(zzdVar.Ez)) {
                return false;
            }
            if (this.EA == null) {
                if (zzdVar.EA != null) {
                    return false;
                }
            } else if (!this.EA.equals(zzdVar.EA)) {
                return false;
            }
            if (Arrays.equals(this.EB, zzdVar.EB) && zzapa.equals(this.DI, zzdVar.DI) && zzapa.equals(this.DJ, zzdVar.DJ) && this.EC == zzdVar.EC && this.DV == zzdVar.DV) {
                return (this.bib == null || this.bib.isEmpty()) ? zzdVar.bib == null || zzdVar.bib.isEmpty() : this.bib.equals(zzdVar.bib);
            }
            return false;
        }

        public int hashCode() {
            int iHashCode = 0;
            int iHashCode2 = ((((((((((((this.EA == null ? 0 : this.EA.hashCode()) + (((this.Ez == null ? 0 : this.Ez.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.type) * 31) + ((int) (this.Ey ^ (this.Ey >>> 32)))) * 31) + this.priority) * 31)) * 31)) * 31) + Arrays.hashCode(this.EB)) * 31) + zzapa.hashCode(this.DI)) * 31) + zzapa.hashCode(this.DJ)) * 31) + ((int) (this.EC ^ (this.EC >>> 32)))) * 31) + this.DV) * 31;
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
            if (this.Ey != 0) {
                zzaovVar.zzb(2, this.Ey);
            }
            if (this.priority != 0) {
                zzaovVar.zzae(3, this.priority);
            }
            if (!this.Ez.equals("")) {
                zzaovVar.zzr(4, this.Ez);
            }
            if (!this.EA.equals("")) {
                zzaovVar.zzr(5, this.EA);
            }
            if (!Arrays.equals(this.EB, zzapf.bit)) {
                zzaovVar.zza(6, this.EB);
            }
            if (this.DI != null && this.DI.length > 0) {
                for (int i = 0; i < this.DI.length; i++) {
                    zzaovVar.zzae(7, this.DI[i]);
                }
            }
            if (this.DJ != null && this.DJ.length > 0) {
                for (int i2 = 0; i2 < this.DJ.length; i2++) {
                    String str = this.DJ[i2];
                    if (str != null) {
                        zzaovVar.zzr(8, str);
                    }
                }
            }
            if (this.EC != -1) {
                zzaovVar.zzb(9, this.EC);
            }
            if (this.DV != 0) {
                zzaovVar.zzae(10, this.DV);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzat, reason: merged with bridge method [inline-methods] */
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
                                this.type = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.Ey = zzaouVar.M();
                        break;
                    case 24:
                        int iN2 = zzaouVar.N();
                        switch (iN2) {
                            case 0:
                            case 1:
                            case 2:
                            case 3:
                            case 4:
                                this.priority = iN2;
                                break;
                        }
                        break;
                    case 34:
                        this.Ez = zzaouVar.readString();
                        break;
                    case 42:
                        this.EA = zzaouVar.readString();
                        break;
                    case 50:
                        this.EB = zzaouVar.readBytes();
                        break;
                    case 56:
                        int iZzc = zzapf.zzc(zzaouVar, 56);
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
                    case 58:
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
                    case 66:
                        int iZzc2 = zzapf.zzc(zzaouVar, 66);
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
                    case 72:
                        this.EC = zzaouVar.M();
                        break;
                    case 80:
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

        public zzd zzazp() {
            this.type = 0;
            this.Ey = 0L;
            this.priority = 0;
            this.Ez = "";
            this.EA = "";
            this.EB = zzapf.bit;
            this.DI = zzapf.bim;
            this.DJ = zzapf.bir;
            this.EC = -1L;
            this.DV = 0;
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
            if (this.Ey != 0) {
                iZzy += zzaov.zze(2, this.Ey);
            }
            if (this.priority != 0) {
                iZzy += zzaov.zzag(3, this.priority);
            }
            if (!this.Ez.equals("")) {
                iZzy += zzaov.zzs(4, this.Ez);
            }
            if (!this.EA.equals("")) {
                iZzy += zzaov.zzs(5, this.EA);
            }
            if (!Arrays.equals(this.EB, zzapf.bit)) {
                iZzy += zzaov.zzb(6, this.EB);
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
            if (this.EC != -1) {
                iZzy += zzaov.zze(9, this.EC);
            }
            return this.DV != 0 ? iZzy + zzaov.zzag(10, this.DV) : iZzy;
        }
    }

    public static final class zze extends zzaow<zze> {
        public int count;
        public long durationMillis;
        public int type;

        public zze() {
            zzazq();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof zze)) {
                return false;
            }
            zze zzeVar = (zze) obj;
            if (this.type == zzeVar.type && this.durationMillis == zzeVar.durationMillis && this.count == zzeVar.count) {
                return (this.bib == null || this.bib.isEmpty()) ? zzeVar.bib == null || zzeVar.bib.isEmpty() : this.bib.equals(zzeVar.bib);
            }
            return false;
        }

        public int hashCode() {
            return ((this.bib == null || this.bib.isEmpty()) ? 0 : this.bib.hashCode()) + ((((((((getClass().getName().hashCode() + IronSourceError.ERROR_NON_EXISTENT_INSTANCE) * 31) + this.type) * 31) + ((int) (this.durationMillis ^ (this.durationMillis >>> 32)))) * 31) + this.count) * 31);
        }

        @Override // com.google.android.gms.internal.zzaow, com.google.android.gms.internal.zzapc
        public void zza(zzaov zzaovVar) throws IOException {
            if (this.type != 0) {
                zzaovVar.zzae(1, this.type);
            }
            if (this.durationMillis != 0) {
                zzaovVar.zzb(2, this.durationMillis);
            }
            if (this.count != 0) {
                zzaovVar.zzae(3, this.count);
            }
            super.zza(zzaovVar);
        }

        @Override // com.google.android.gms.internal.zzapc
        /* JADX INFO: renamed from: zzau, reason: merged with bridge method [inline-methods] */
        public zze zzb(zzaou zzaouVar) throws IOException {
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
                                this.type = iN;
                                break;
                        }
                        break;
                    case 16:
                        this.durationMillis = zzaouVar.M();
                        break;
                    case 24:
                        this.count = zzaouVar.N();
                        break;
                    default:
                        if (!super.zza(zzaouVar, iJ)) {
                        }
                        break;
                }
            }
            return this;
        }

        public zze zzazq() {
            this.type = 0;
            this.durationMillis = 0L;
            this.count = 0;
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
            if (this.durationMillis != 0) {
                iZzy += zzaov.zze(2, this.durationMillis);
            }
            return this.count != 0 ? iZzy + zzaov.zzag(3, this.count) : iZzy;
        }
    }
}
