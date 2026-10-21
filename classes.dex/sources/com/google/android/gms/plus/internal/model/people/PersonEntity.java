package com.google.android.gms.plus.internal.model.people;

import android.os.Parcel;
import com.facebook.internal.FacebookRequestErrorClassification;
import com.facebook.share.internal.ShareConstants;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.server.converter.StringToIntConverter;
import com.google.android.gms.common.server.response.FastJsonResponse;
import com.google.android.gms.common.server.response.FastSafeParcelableJsonResponse;
import com.google.android.gms.plus.PlusShare;
import com.google.android.gms.plus.model.people.Person;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.sdk.constants.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public final class PersonEntity extends FastSafeParcelableJsonResponse implements Person {
    public static final com.google.android.gms.plus.internal.model.people.zza CREATOR = new com.google.android.gms.plus.internal.model.people.zza();
    private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
    final Set<Integer> asX;
    String asY;
    AgeRangeEntity asZ;
    String ata;
    String atb;
    int atc;
    CoverEntity atd;
    String ate;
    ImageEntity atf;
    boolean atg;
    NameEntity ath;
    String ati;
    int atj;
    List<OrganizationsEntity> atk;
    List<PlacesLivedEntity> atl;
    int atm;
    int atn;
    String ato;
    List<UrlsEntity> atp;
    boolean atq;
    String dH;
    final int mVersionCode;
    String zzae;
    int zzaub;
    String zzbgk;
    String zzcvb;

    public static final class AgeRangeEntity extends FastSafeParcelableJsonResponse implements Person.AgeRange {
        public static final zzb CREATOR = new zzb();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        final Set<Integer> asX;
        int atr;
        int ats;
        final int mVersionCode;

        static {
            asW.put("max", FastJsonResponse.Field.zzj("max", 2));
            asW.put("min", FastJsonResponse.Field.zzj("min", 3));
        }

        public AgeRangeEntity() {
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        AgeRangeEntity(Set<Integer> set, int i, int i2, int i3) {
            this.asX = set;
            this.mVersionCode = i;
            this.atr = i2;
            this.ats = i3;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof AgeRangeEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            AgeRangeEntity ageRangeEntity = (AgeRangeEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (ageRangeEntity.zza(field) && zzb(field).equals(ageRangeEntity.zzb(field))) {
                    }
                    return false;
                }
                if (ageRangeEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public int getMax() {
            return this.atr;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public int getMin() {
            return this.ats;
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public boolean hasMax() {
            return this.asX.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.AgeRange
        public boolean hasMin() {
            return this.asX.contains(3);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzb zzbVar = CREATOR;
            zzb.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 2:
                    return Integer.valueOf(this.atr);
                case 3:
                    return Integer.valueOf(this.ats);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbyu, reason: merged with bridge method [inline-methods] */
        public AgeRangeEntity freeze() {
            return this;
        }
    }

    public static final class CoverEntity extends FastSafeParcelableJsonResponse implements Person.Cover {
        public static final zzc CREATOR = new zzc();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        final Set<Integer> asX;
        CoverInfoEntity att;
        CoverPhotoEntity atu;
        int atv;
        final int mVersionCode;

        public static final class CoverInfoEntity extends FastSafeParcelableJsonResponse implements Person.Cover.CoverInfo {
            public static final zzd CREATOR = new zzd();
            private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
            final Set<Integer> asX;
            int atw;
            int atx;
            final int mVersionCode;

            static {
                asW.put("leftImageOffset", FastJsonResponse.Field.zzj("leftImageOffset", 2));
                asW.put("topImageOffset", FastJsonResponse.Field.zzj("topImageOffset", 3));
            }

            public CoverInfoEntity() {
                this.mVersionCode = 1;
                this.asX = new HashSet();
            }

            CoverInfoEntity(Set<Integer> set, int i, int i2, int i3) {
                this.asX = set;
                this.mVersionCode = i;
                this.atw = i2;
                this.atx = i3;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof CoverInfoEntity)) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                CoverInfoEntity coverInfoEntity = (CoverInfoEntity) obj;
                for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                    if (zza(field)) {
                        if (coverInfoEntity.zza(field) && zzb(field).equals(coverInfoEntity.zzb(field))) {
                        }
                        return false;
                    }
                    if (coverInfoEntity.zza(field)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public int getLeftImageOffset() {
                return this.atw;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public int getTopImageOffset() {
                return this.atx;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public boolean hasLeftImageOffset() {
                return this.asX.contains(2);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverInfo
            public boolean hasTopImageOffset() {
                return this.asX.contains(3);
            }

            public int hashCode() {
                int iHashCode = 0;
                Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
                while (true) {
                    int i = iHashCode;
                    if (!it.hasNext()) {
                        return i;
                    }
                    FastJsonResponse.Field<?, ?> next = it.next();
                    if (zza(next)) {
                        iHashCode = zzb(next).hashCode() + i + next.zzatx();
                    } else {
                        iHashCode = i;
                    }
                }
            }

            @Override // com.google.android.gms.common.data.Freezable
            public boolean isDataValid() {
                return true;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                zzd zzdVar = CREATOR;
                zzd.zza(this, parcel, i);
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected boolean zza(FastJsonResponse.Field field) {
                return this.asX.contains(Integer.valueOf(field.zzatx()));
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected Object zzb(FastJsonResponse.Field field) {
                switch (field.zzatx()) {
                    case 2:
                        return Integer.valueOf(this.atw);
                    case 3:
                        return Integer.valueOf(this.atx);
                    default:
                        throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
                }
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
            public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
                return asW;
            }

            @Override // com.google.android.gms.common.data.Freezable
            /* JADX INFO: renamed from: zzbyw, reason: merged with bridge method [inline-methods] */
            public CoverInfoEntity freeze() {
                return this;
            }
        }

        public static final class CoverPhotoEntity extends FastSafeParcelableJsonResponse implements Person.Cover.CoverPhoto {
            public static final zze CREATOR = new zze();
            private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
            final Set<Integer> asX;
            final int mVersionCode;
            String zzae;
            int zzaie;
            int zzaif;

            static {
                asW.put("height", FastJsonResponse.Field.zzj("height", 2));
                asW.put("url", FastJsonResponse.Field.zzl("url", 3));
                asW.put("width", FastJsonResponse.Field.zzj("width", 4));
            }

            public CoverPhotoEntity() {
                this.mVersionCode = 1;
                this.asX = new HashSet();
            }

            CoverPhotoEntity(Set<Integer> set, int i, int i2, String str, int i3) {
                this.asX = set;
                this.mVersionCode = i;
                this.zzaif = i2;
                this.zzae = str;
                this.zzaie = i3;
            }

            public boolean equals(Object obj) {
                if (!(obj instanceof CoverPhotoEntity)) {
                    return false;
                }
                if (this == obj) {
                    return true;
                }
                CoverPhotoEntity coverPhotoEntity = (CoverPhotoEntity) obj;
                for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                    if (zza(field)) {
                        if (coverPhotoEntity.zza(field) && zzb(field).equals(coverPhotoEntity.zzb(field))) {
                        }
                        return false;
                    }
                    if (coverPhotoEntity.zza(field)) {
                        return false;
                    }
                }
                return true;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public int getHeight() {
                return this.zzaif;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public String getUrl() {
                return this.zzae;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public int getWidth() {
                return this.zzaie;
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasHeight() {
                return this.asX.contains(2);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasUrl() {
                return this.asX.contains(3);
            }

            @Override // com.google.android.gms.plus.model.people.Person.Cover.CoverPhoto
            public boolean hasWidth() {
                return this.asX.contains(4);
            }

            public int hashCode() {
                int iHashCode = 0;
                Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
                while (true) {
                    int i = iHashCode;
                    if (!it.hasNext()) {
                        return i;
                    }
                    FastJsonResponse.Field<?, ?> next = it.next();
                    if (zza(next)) {
                        iHashCode = zzb(next).hashCode() + i + next.zzatx();
                    } else {
                        iHashCode = i;
                    }
                }
            }

            @Override // com.google.android.gms.common.data.Freezable
            public boolean isDataValid() {
                return true;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i) {
                zze zzeVar = CREATOR;
                zze.zza(this, parcel, i);
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected boolean zza(FastJsonResponse.Field field) {
                return this.asX.contains(Integer.valueOf(field.zzatx()));
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            protected Object zzb(FastJsonResponse.Field field) {
                switch (field.zzatx()) {
                    case 2:
                        return Integer.valueOf(this.zzaif);
                    case 3:
                        return this.zzae;
                    case 4:
                        return Integer.valueOf(this.zzaie);
                    default:
                        throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
                }
            }

            @Override // com.google.android.gms.common.server.response.FastJsonResponse
            /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
            public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
                return asW;
            }

            @Override // com.google.android.gms.common.data.Freezable
            /* JADX INFO: renamed from: zzbyx, reason: merged with bridge method [inline-methods] */
            public CoverPhotoEntity freeze() {
                return this;
            }
        }

        static {
            asW.put("coverInfo", FastJsonResponse.Field.zza("coverInfo", 2, CoverInfoEntity.class));
            asW.put("coverPhoto", FastJsonResponse.Field.zza("coverPhoto", 3, CoverPhotoEntity.class));
            asW.put("layout", FastJsonResponse.Field.zza("layout", 4, new StringToIntConverter().zzi("banner", 0), false));
        }

        public CoverEntity() {
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        CoverEntity(Set<Integer> set, int i, CoverInfoEntity coverInfoEntity, CoverPhotoEntity coverPhotoEntity, int i2) {
            this.asX = set;
            this.mVersionCode = i;
            this.att = coverInfoEntity;
            this.atu = coverPhotoEntity;
            this.atv = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof CoverEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            CoverEntity coverEntity = (CoverEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (coverEntity.zza(field) && zzb(field).equals(coverEntity.zzb(field))) {
                    }
                    return false;
                }
                if (coverEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public Person.Cover.CoverInfo getCoverInfo() {
            return this.att;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public Person.Cover.CoverPhoto getCoverPhoto() {
            return this.atu;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public int getLayout() {
            return this.atv;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasCoverInfo() {
            return this.asX.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasCoverPhoto() {
            return this.asX.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Cover
        public boolean hasLayout() {
            return this.asX.contains(4);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzc zzcVar = CREATOR;
            zzc.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 2:
                    return this.att;
                case 3:
                    return this.atu;
                case 4:
                    return Integer.valueOf(this.atv);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbyv, reason: merged with bridge method [inline-methods] */
        public CoverEntity freeze() {
            return this;
        }
    }

    public static final class ImageEntity extends FastSafeParcelableJsonResponse implements Person.Image {
        public static final zzf CREATOR = new zzf();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        final Set<Integer> asX;
        final int mVersionCode;
        String zzae;

        static {
            asW.put("url", FastJsonResponse.Field.zzl("url", 2));
        }

        public ImageEntity() {
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        public ImageEntity(String str) {
            this.asX = new HashSet();
            this.mVersionCode = 1;
            this.zzae = str;
            this.asX.add(2);
        }

        ImageEntity(Set<Integer> set, int i, String str) {
            this.asX = set;
            this.mVersionCode = i;
            this.zzae = str;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof ImageEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            ImageEntity imageEntity = (ImageEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (imageEntity.zza(field) && zzb(field).equals(imageEntity.zzb(field))) {
                    }
                    return false;
                }
                if (imageEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Image
        public String getUrl() {
            return this.zzae;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Image
        public boolean hasUrl() {
            return this.asX.contains(2);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzf zzfVar = CREATOR;
            zzf.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 2:
                    return this.zzae;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbyy, reason: merged with bridge method [inline-methods] */
        public ImageEntity freeze() {
            return this;
        }
    }

    public static final class NameEntity extends FastSafeParcelableJsonResponse implements Person.Name {
        public static final zzg CREATOR = new zzg();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        final Set<Integer> asX;
        String atA;
        String atB;
        String aty;
        String atz;
        String dM;
        String dN;
        final int mVersionCode;

        static {
            asW.put("familyName", FastJsonResponse.Field.zzl("familyName", 2));
            asW.put("formatted", FastJsonResponse.Field.zzl("formatted", 3));
            asW.put("givenName", FastJsonResponse.Field.zzl("givenName", 4));
            asW.put("honorificPrefix", FastJsonResponse.Field.zzl("honorificPrefix", 5));
            asW.put("honorificSuffix", FastJsonResponse.Field.zzl("honorificSuffix", 6));
            asW.put("middleName", FastJsonResponse.Field.zzl("middleName", 7));
        }

        public NameEntity() {
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        NameEntity(Set<Integer> set, int i, String str, String str2, String str3, String str4, String str5, String str6) {
            this.asX = set;
            this.mVersionCode = i;
            this.dN = str;
            this.aty = str2;
            this.dM = str3;
            this.atz = str4;
            this.atA = str5;
            this.atB = str6;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof NameEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            NameEntity nameEntity = (NameEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (nameEntity.zza(field) && zzb(field).equals(nameEntity.zzb(field))) {
                    }
                    return false;
                }
                if (nameEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getFamilyName() {
            return this.dN;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getFormatted() {
            return this.aty;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getGivenName() {
            return this.dM;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getHonorificPrefix() {
            return this.atz;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getHonorificSuffix() {
            return this.atA;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public String getMiddleName() {
            return this.atB;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasFamilyName() {
            return this.asX.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasFormatted() {
            return this.asX.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasGivenName() {
            return this.asX.contains(4);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasHonorificPrefix() {
            return this.asX.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasHonorificSuffix() {
            return this.asX.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Name
        public boolean hasMiddleName() {
            return this.asX.contains(7);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzg zzgVar = CREATOR;
            zzg.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 2:
                    return this.dN;
                case 3:
                    return this.aty;
                case 4:
                    return this.dM;
                case 5:
                    return this.atz;
                case 6:
                    return this.atA;
                case 7:
                    return this.atB;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbyz, reason: merged with bridge method [inline-methods] */
        public NameEntity freeze() {
            return this;
        }
    }

    public static final class OrganizationsEntity extends FastSafeParcelableJsonResponse implements Person.Organizations {
        public static final zzh CREATOR = new zzh();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        String Fx;
        final Set<Integer> asX;
        String atC;
        String atD;
        String atE;
        boolean atF;
        String atG;
        int it;
        String mName;
        final int mVersionCode;
        String zzcvi;

        static {
            asW.put("department", FastJsonResponse.Field.zzl("department", 2));
            asW.put("description", FastJsonResponse.Field.zzl("description", 3));
            asW.put("endDate", FastJsonResponse.Field.zzl("endDate", 4));
            asW.put("location", FastJsonResponse.Field.zzl("location", 5));
            asW.put("name", FastJsonResponse.Field.zzl("name", 6));
            asW.put("primary", FastJsonResponse.Field.zzk("primary", 7));
            asW.put("startDate", FastJsonResponse.Field.zzl("startDate", 8));
            asW.put("title", FastJsonResponse.Field.zzl("title", 9));
            asW.put("type", FastJsonResponse.Field.zza("type", 10, new StringToIntConverter().zzi("work", 0).zzi("school", 1), false));
        }

        public OrganizationsEntity() {
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        OrganizationsEntity(Set<Integer> set, int i, String str, String str2, String str3, String str4, String str5, boolean z, String str6, String str7, int i2) {
            this.asX = set;
            this.mVersionCode = i;
            this.atC = str;
            this.zzcvi = str2;
            this.atD = str3;
            this.atE = str4;
            this.mName = str5;
            this.atF = z;
            this.atG = str6;
            this.Fx = str7;
            this.it = i2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof OrganizationsEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            OrganizationsEntity organizationsEntity = (OrganizationsEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (organizationsEntity.zza(field) && zzb(field).equals(organizationsEntity.zzb(field))) {
                    }
                    return false;
                }
                if (organizationsEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getDepartment() {
            return this.atC;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getDescription() {
            return this.zzcvi;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getEndDate() {
            return this.atD;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getLocation() {
            return this.atE;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getName() {
            return this.mName;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getStartDate() {
            return this.atG;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public String getTitle() {
            return this.Fx;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public int getType() {
            return this.it;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasDepartment() {
            return this.asX.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasDescription() {
            return this.asX.contains(3);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasEndDate() {
            return this.asX.contains(4);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasLocation() {
            return this.asX.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasName() {
            return this.asX.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasPrimary() {
            return this.asX.contains(7);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasStartDate() {
            return this.asX.contains(8);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasTitle() {
            return this.asX.contains(9);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean hasType() {
            return this.asX.contains(10);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Organizations
        public boolean isPrimary() {
            return this.atF;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzh zzhVar = CREATOR;
            zzh.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 2:
                    return this.atC;
                case 3:
                    return this.zzcvi;
                case 4:
                    return this.atD;
                case 5:
                    return this.atE;
                case 6:
                    return this.mName;
                case 7:
                    return Boolean.valueOf(this.atF);
                case 8:
                    return this.atG;
                case 9:
                    return this.Fx;
                case 10:
                    return Integer.valueOf(this.it);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbza, reason: merged with bridge method [inline-methods] */
        public OrganizationsEntity freeze() {
            return this;
        }
    }

    public static final class PlacesLivedEntity extends FastSafeParcelableJsonResponse implements Person.PlacesLived {
        public static final zzi CREATOR = new zzi();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        final Set<Integer> asX;
        boolean atF;
        String mValue;
        final int mVersionCode;

        static {
            asW.put("primary", FastJsonResponse.Field.zzk("primary", 2));
            asW.put(Constants.ParametersKeys.VALUE, FastJsonResponse.Field.zzl(Constants.ParametersKeys.VALUE, 3));
        }

        public PlacesLivedEntity() {
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        PlacesLivedEntity(Set<Integer> set, int i, boolean z, String str) {
            this.asX = set;
            this.mVersionCode = i;
            this.atF = z;
            this.mValue = str;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof PlacesLivedEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            PlacesLivedEntity placesLivedEntity = (PlacesLivedEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (placesLivedEntity.zza(field) && zzb(field).equals(placesLivedEntity.zzb(field))) {
                    }
                    return false;
                }
                if (placesLivedEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public String getValue() {
            return this.mValue;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean hasPrimary() {
            return this.asX.contains(2);
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean hasValue() {
            return this.asX.contains(3);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.PlacesLived
        public boolean isPrimary() {
            return this.atF;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzi zziVar = CREATOR;
            zzi.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 2:
                    return Boolean.valueOf(this.atF);
                case 3:
                    return this.mValue;
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbzb, reason: merged with bridge method [inline-methods] */
        public PlacesLivedEntity freeze() {
            return this;
        }
    }

    public static final class UrlsEntity extends FastSafeParcelableJsonResponse implements Person.Urls {
        public static final zzj CREATOR = new zzj();
        private static final HashMap<String, FastJsonResponse.Field<?, ?>> asW = new HashMap<>();
        final Set<Integer> asX;
        private final int atH;
        int it;
        String mValue;
        final int mVersionCode;
        String zzcvg;

        static {
            asW.put(PlusShare.KEY_CALL_TO_ACTION_LABEL, FastJsonResponse.Field.zzl(PlusShare.KEY_CALL_TO_ACTION_LABEL, 5));
            asW.put("type", FastJsonResponse.Field.zza("type", 6, new StringToIntConverter().zzi("home", 0).zzi("work", 1).zzi("blog", 2).zzi(Scopes.PROFILE, 3).zzi(FacebookRequestErrorClassification.KEY_OTHER, 4).zzi("otherProfile", 5).zzi("contributor", 6).zzi("website", 7), false));
            asW.put(Constants.ParametersKeys.VALUE, FastJsonResponse.Field.zzl(Constants.ParametersKeys.VALUE, 4));
        }

        public UrlsEntity() {
            this.atH = 4;
            this.mVersionCode = 1;
            this.asX = new HashSet();
        }

        UrlsEntity(Set<Integer> set, int i, String str, int i2, String str2, int i3) {
            this.atH = 4;
            this.asX = set;
            this.mVersionCode = i;
            this.zzcvg = str;
            this.it = i2;
            this.mValue = str2;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof UrlsEntity)) {
                return false;
            }
            if (this == obj) {
                return true;
            }
            UrlsEntity urlsEntity = (UrlsEntity) obj;
            for (FastJsonResponse.Field<?, ?> field : asW.values()) {
                if (zza(field)) {
                    if (urlsEntity.zza(field) && zzb(field).equals(urlsEntity.zzb(field))) {
                    }
                    return false;
                }
                if (urlsEntity.zza(field)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public String getLabel() {
            return this.zzcvg;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public int getType() {
            return this.it;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public String getValue() {
            return this.mValue;
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasLabel() {
            return this.asX.contains(5);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasType() {
            return this.asX.contains(6);
        }

        @Override // com.google.android.gms.plus.model.people.Person.Urls
        public boolean hasValue() {
            return this.asX.contains(4);
        }

        public int hashCode() {
            int iHashCode = 0;
            Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
            while (true) {
                int i = iHashCode;
                if (!it.hasNext()) {
                    return i;
                }
                FastJsonResponse.Field<?, ?> next = it.next();
                if (zza(next)) {
                    iHashCode = zzb(next).hashCode() + i + next.zzatx();
                } else {
                    iHashCode = i;
                }
            }
        }

        @Override // com.google.android.gms.common.data.Freezable
        public boolean isDataValid() {
            return true;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            zzj zzjVar = CREATOR;
            zzj.zza(this, parcel, i);
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected boolean zza(FastJsonResponse.Field field) {
            return this.asX.contains(Integer.valueOf(field.zzatx()));
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        protected Object zzb(FastJsonResponse.Field field) {
            switch (field.zzatx()) {
                case 4:
                    return this.mValue;
                case 5:
                    return this.zzcvg;
                case 6:
                    return Integer.valueOf(this.it);
                default:
                    throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            }
        }

        @Override // com.google.android.gms.common.server.response.FastJsonResponse
        /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
        public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
            return asW;
        }

        @Deprecated
        public int zzbzc() {
            return 4;
        }

        @Override // com.google.android.gms.common.data.Freezable
        /* JADX INFO: renamed from: zzbzd, reason: merged with bridge method [inline-methods] */
        public UrlsEntity freeze() {
            return this;
        }
    }

    public static class zza {
        public static int zzng(String str) {
            if (str.equals("person")) {
                return 0;
            }
            if (str.equals("page")) {
                return 1;
            }
            String strValueOf = String.valueOf(str);
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unknown objectType string: ".concat(strValueOf) : new String("Unknown objectType string: "));
        }
    }

    static {
        asW.put("aboutMe", FastJsonResponse.Field.zzl("aboutMe", 2));
        asW.put("ageRange", FastJsonResponse.Field.zza("ageRange", 3, AgeRangeEntity.class));
        asW.put("birthday", FastJsonResponse.Field.zzl("birthday", 4));
        asW.put("braggingRights", FastJsonResponse.Field.zzl("braggingRights", 5));
        asW.put("circledByCount", FastJsonResponse.Field.zzj("circledByCount", 6));
        asW.put("cover", FastJsonResponse.Field.zza("cover", 7, CoverEntity.class));
        asW.put("currentLocation", FastJsonResponse.Field.zzl("currentLocation", 8));
        asW.put("displayName", FastJsonResponse.Field.zzl("displayName", 9));
        asW.put("gender", FastJsonResponse.Field.zza("gender", 12, new StringToIntConverter().zzi(IronSourceConstants.Gender.MALE, 0).zzi(IronSourceConstants.Gender.FEMALE, 1).zzi(FacebookRequestErrorClassification.KEY_OTHER, 2), false));
        asW.put(ShareConstants.WEB_DIALOG_PARAM_ID, FastJsonResponse.Field.zzl(ShareConstants.WEB_DIALOG_PARAM_ID, 14));
        asW.put("image", FastJsonResponse.Field.zza("image", 15, ImageEntity.class));
        asW.put("isPlusUser", FastJsonResponse.Field.zzk("isPlusUser", 16));
        asW.put("language", FastJsonResponse.Field.zzl("language", 18));
        asW.put("name", FastJsonResponse.Field.zza("name", 19, NameEntity.class));
        asW.put("nickname", FastJsonResponse.Field.zzl("nickname", 20));
        asW.put("objectType", FastJsonResponse.Field.zza("objectType", 21, new StringToIntConverter().zzi("person", 0).zzi("page", 1), false));
        asW.put("organizations", FastJsonResponse.Field.zzb("organizations", 22, OrganizationsEntity.class));
        asW.put("placesLived", FastJsonResponse.Field.zzb("placesLived", 23, PlacesLivedEntity.class));
        asW.put("plusOneCount", FastJsonResponse.Field.zzj("plusOneCount", 24));
        asW.put("relationshipStatus", FastJsonResponse.Field.zza("relationshipStatus", 25, new StringToIntConverter().zzi("single", 0).zzi("in_a_relationship", 1).zzi("engaged", 2).zzi("married", 3).zzi("its_complicated", 4).zzi("open_relationship", 5).zzi("widowed", 6).zzi("in_domestic_partnership", 7).zzi("in_civil_union", 8), false));
        asW.put("tagline", FastJsonResponse.Field.zzl("tagline", 26));
        asW.put("url", FastJsonResponse.Field.zzl("url", 27));
        asW.put("urls", FastJsonResponse.Field.zzb("urls", 28, UrlsEntity.class));
        asW.put("verified", FastJsonResponse.Field.zzk("verified", 29));
    }

    public PersonEntity() {
        this.mVersionCode = 1;
        this.asX = new HashSet();
    }

    public PersonEntity(String str, String str2, ImageEntity imageEntity, int i, String str3) {
        this.mVersionCode = 1;
        this.asX = new HashSet();
        this.dH = str;
        this.asX.add(9);
        this.zzbgk = str2;
        this.asX.add(14);
        this.atf = imageEntity;
        this.asX.add(15);
        this.atj = i;
        this.asX.add(21);
        this.zzae = str3;
        this.asX.add(27);
    }

    PersonEntity(Set<Integer> set, int i, String str, AgeRangeEntity ageRangeEntity, String str2, String str3, int i2, CoverEntity coverEntity, String str4, String str5, int i3, String str6, ImageEntity imageEntity, boolean z, String str7, NameEntity nameEntity, String str8, int i4, List<OrganizationsEntity> list, List<PlacesLivedEntity> list2, int i5, int i6, String str9, String str10, List<UrlsEntity> list3, boolean z2) {
        this.asX = set;
        this.mVersionCode = i;
        this.asY = str;
        this.asZ = ageRangeEntity;
        this.ata = str2;
        this.atb = str3;
        this.atc = i2;
        this.atd = coverEntity;
        this.ate = str4;
        this.dH = str5;
        this.zzaub = i3;
        this.zzbgk = str6;
        this.atf = imageEntity;
        this.atg = z;
        this.zzcvb = str7;
        this.ath = nameEntity;
        this.ati = str8;
        this.atj = i4;
        this.atk = list;
        this.atl = list2;
        this.atm = i5;
        this.atn = i6;
        this.ato = str9;
        this.zzae = str10;
        this.atp = list3;
        this.atq = z2;
    }

    public static PersonEntity zzaj(byte[] bArr) {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.unmarshall(bArr, 0, bArr.length);
        parcelObtain.setDataPosition(0);
        PersonEntity personEntity = (PersonEntity) CREATOR.createFromParcel(parcelObtain);
        parcelObtain.recycle();
        return personEntity;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PersonEntity)) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        PersonEntity personEntity = (PersonEntity) obj;
        for (FastJsonResponse.Field<?, ?> field : asW.values()) {
            if (zza(field)) {
                if (personEntity.zza(field) && zzb(field).equals(personEntity.zzb(field))) {
                }
                return false;
            }
            if (personEntity.zza(field)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getAboutMe() {
        return this.asY;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.AgeRange getAgeRange() {
        return this.asZ;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBirthday() {
        return this.ata;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getBraggingRights() {
        return this.atb;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getCircledByCount() {
        return this.atc;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Cover getCover() {
        return this.atd;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getCurrentLocation() {
        return this.ate;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getDisplayName() {
        return this.dH;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getGender() {
        return this.zzaub;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getId() {
        return this.zzbgk;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Image getImage() {
        return this.atf;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getLanguage() {
        return this.zzcvb;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public Person.Name getName() {
        return this.ath;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getNickname() {
        return this.ati;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getObjectType() {
        return this.atj;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.Organizations> getOrganizations() {
        return (ArrayList) this.atk;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.PlacesLived> getPlacesLived() {
        return (ArrayList) this.atl;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getPlusOneCount() {
        return this.atm;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public int getRelationshipStatus() {
        return this.atn;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getTagline() {
        return this.ato;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public String getUrl() {
        return this.zzae;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public List<Person.Urls> getUrls() {
        return (ArrayList) this.atp;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAboutMe() {
        return this.asX.contains(2);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasAgeRange() {
        return this.asX.contains(3);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBirthday() {
        return this.asX.contains(4);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasBraggingRights() {
        return this.asX.contains(5);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCircledByCount() {
        return this.asX.contains(6);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCover() {
        return this.asX.contains(7);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasCurrentLocation() {
        return this.asX.contains(8);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasDisplayName() {
        return this.asX.contains(9);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasGender() {
        return this.asX.contains(12);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasId() {
        return this.asX.contains(14);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasImage() {
        return this.asX.contains(15);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasIsPlusUser() {
        return this.asX.contains(16);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasLanguage() {
        return this.asX.contains(18);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasName() {
        return this.asX.contains(19);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasNickname() {
        return this.asX.contains(20);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasObjectType() {
        return this.asX.contains(21);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasOrganizations() {
        return this.asX.contains(22);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlacesLived() {
        return this.asX.contains(23);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasPlusOneCount() {
        return this.asX.contains(24);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasRelationshipStatus() {
        return this.asX.contains(25);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasTagline() {
        return this.asX.contains(26);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrl() {
        return this.asX.contains(27);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasUrls() {
        return this.asX.contains(28);
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean hasVerified() {
        return this.asX.contains(29);
    }

    public int hashCode() {
        int iHashCode = 0;
        Iterator<FastJsonResponse.Field<?, ?>> it = asW.values().iterator();
        while (true) {
            int i = iHashCode;
            if (!it.hasNext()) {
                return i;
            }
            FastJsonResponse.Field<?, ?> next = it.next();
            if (zza(next)) {
                iHashCode = zzb(next).hashCode() + i + next.zzatx();
            } else {
                iHashCode = i;
            }
        }
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isPlusUser() {
        return this.atg;
    }

    @Override // com.google.android.gms.plus.model.people.Person
    public boolean isVerified() {
        return this.atq;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        com.google.android.gms.plus.internal.model.people.zza zzaVar = CREATOR;
        com.google.android.gms.plus.internal.model.people.zza.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected boolean zza(FastJsonResponse.Field field) {
        return this.asX.contains(Integer.valueOf(field.zzatx()));
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    protected Object zzb(FastJsonResponse.Field field) {
        switch (field.zzatx()) {
            case 2:
                return this.asY;
            case 3:
                return this.asZ;
            case 4:
                return this.ata;
            case 5:
                return this.atb;
            case 6:
                return Integer.valueOf(this.atc);
            case 7:
                return this.atd;
            case 8:
                return this.ate;
            case 9:
                return this.dH;
            case 10:
            case 11:
            case 13:
            case 17:
            default:
                throw new IllegalStateException(new StringBuilder(38).append("Unknown safe parcelable id=").append(field.zzatx()).toString());
            case 12:
                return Integer.valueOf(this.zzaub);
            case 14:
                return this.zzbgk;
            case 15:
                return this.atf;
            case 16:
                return Boolean.valueOf(this.atg);
            case 18:
                return this.zzcvb;
            case 19:
                return this.ath;
            case 20:
                return this.ati;
            case 21:
                return Integer.valueOf(this.atj);
            case 22:
                return this.atk;
            case 23:
                return this.atl;
            case 24:
                return Integer.valueOf(this.atm);
            case 25:
                return Integer.valueOf(this.atn);
            case 26:
                return this.ato;
            case 27:
                return this.zzae;
            case 28:
                return this.atp;
            case 29:
                return Boolean.valueOf(this.atq);
        }
    }

    @Override // com.google.android.gms.common.server.response.FastJsonResponse
    /* JADX INFO: renamed from: zzbys, reason: merged with bridge method [inline-methods] */
    public HashMap<String, FastJsonResponse.Field<?, ?>> zzatr() {
        return asW;
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* JADX INFO: renamed from: zzbyt, reason: merged with bridge method [inline-methods] */
    public PersonEntity freeze() {
        return this;
    }
}
