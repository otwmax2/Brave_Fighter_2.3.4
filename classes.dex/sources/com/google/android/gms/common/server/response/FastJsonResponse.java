package com.google.android.gms.common.server.response;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzab;
import com.google.android.gms.common.server.converter.ConverterWrapper;
import com.google.android.gms.common.util.zzp;
import com.google.android.gms.common.util.zzq;
import com.ironsource.sdk.constants.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public abstract class FastJsonResponse {

    public static class Field<I, O> extends AbstractSafeParcelable {
        public static final com.google.android.gms.common.server.response.zza CREATOR = new com.google.android.gms.common.server.response.zza();
        private final int mVersionCode;
        protected final String zA;
        private FieldMappingDictionary zB;
        private zza<I, O> zC;
        protected final int zt;
        protected final boolean zu;
        protected final int zv;
        protected final boolean zw;
        protected final String zx;
        protected final int zy;
        protected final Class<? extends FastJsonResponse> zz;

        Field(int i, int i2, boolean z, int i3, boolean z2, String str, int i4, String str2, ConverterWrapper converterWrapper) {
            this.mVersionCode = i;
            this.zt = i2;
            this.zu = z;
            this.zv = i3;
            this.zw = z2;
            this.zx = str;
            this.zy = i4;
            if (str2 == null) {
                this.zz = null;
                this.zA = null;
            } else {
                this.zz = SafeParcelResponse.class;
                this.zA = str2;
            }
            if (converterWrapper == null) {
                this.zC = null;
            } else {
                this.zC = (zza<I, O>) converterWrapper.zzatn();
            }
        }

        protected Field(int i, boolean z, int i2, boolean z2, String str, int i3, Class<? extends FastJsonResponse> cls, zza<I, O> zzaVar) {
            this.mVersionCode = 1;
            this.zt = i;
            this.zu = z;
            this.zv = i2;
            this.zw = z2;
            this.zx = str;
            this.zy = i3;
            this.zz = cls;
            if (cls == null) {
                this.zA = null;
            } else {
                this.zA = cls.getCanonicalName();
            }
            this.zC = zzaVar;
        }

        public static Field zza(String str, int i, zza<?, ?> zzaVar, boolean z) {
            return new Field(zzaVar.zzatp(), z, zzaVar.zzatq(), false, str, i, null, zzaVar);
        }

        public static <T extends FastJsonResponse> Field<T, T> zza(String str, int i, Class<T> cls) {
            return new Field<>(11, false, 11, false, str, i, cls, null);
        }

        public static <T extends FastJsonResponse> Field<ArrayList<T>, ArrayList<T>> zzb(String str, int i, Class<T> cls) {
            return new Field<>(11, true, 11, true, str, i, cls, null);
        }

        public static Field<Integer, Integer> zzj(String str, int i) {
            return new Field<>(0, false, 0, false, str, i, null, null);
        }

        public static Field<Boolean, Boolean> zzk(String str, int i) {
            return new Field<>(6, false, 6, false, str, i, null, null);
        }

        public static Field<String, String> zzl(String str, int i) {
            return new Field<>(7, false, 7, false, str, i, null, null);
        }

        public I convertBack(O o) {
            return this.zC.convertBack(o);
        }

        public int getVersionCode() {
            return this.mVersionCode;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append("Field\n");
            sb.append("            versionCode=").append(this.mVersionCode).append('\n');
            sb.append("                 typeIn=").append(this.zt).append('\n');
            sb.append("            typeInArray=").append(this.zu).append('\n');
            sb.append("                typeOut=").append(this.zv).append('\n');
            sb.append("           typeOutArray=").append(this.zw).append('\n');
            sb.append("        outputFieldName=").append(this.zx).append('\n');
            sb.append("      safeParcelFieldId=").append(this.zy).append('\n');
            sb.append("       concreteTypeName=").append(zzatz()).append('\n');
            if (zzaty() != null) {
                sb.append("     concreteType.class=").append(zzaty().getCanonicalName()).append('\n');
            }
            sb.append("          converterName=").append(this.zC == null ? "null" : this.zC.getClass().getCanonicalName()).append('\n');
            return sb.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            com.google.android.gms.common.server.response.zza zzaVar = CREATOR;
            com.google.android.gms.common.server.response.zza.zza(this, parcel, i);
        }

        public void zza(FieldMappingDictionary fieldMappingDictionary) {
            this.zB = fieldMappingDictionary;
        }

        public int zzatp() {
            return this.zt;
        }

        public int zzatq() {
            return this.zv;
        }

        public boolean zzatu() {
            return this.zu;
        }

        public boolean zzatv() {
            return this.zw;
        }

        public String zzatw() {
            return this.zx;
        }

        public int zzatx() {
            return this.zy;
        }

        public Class<? extends FastJsonResponse> zzaty() {
            return this.zz;
        }

        String zzatz() {
            if (this.zA == null) {
                return null;
            }
            return this.zA;
        }

        public boolean zzaua() {
            return this.zC != null;
        }

        ConverterWrapper zzaub() {
            if (this.zC == null) {
                return null;
            }
            return ConverterWrapper.zza(this.zC);
        }

        public Map<String, Field<?, ?>> zzauc() {
            zzab.zzaa(this.zA);
            zzab.zzaa(this.zB);
            return this.zB.zzhx(this.zA);
        }
    }

    public interface zza<I, O> {
        I convertBack(O o);

        int zzatp();

        int zzatq();
    }

    private void zza(StringBuilder sb, Field field, Object obj) {
        if (field.zzatp() == 11) {
            sb.append(field.zzaty().cast(obj).toString());
        } else {
            if (field.zzatp() != 7) {
                sb.append(obj);
                return;
            }
            sb.append("\"");
            sb.append(zzp.zzib((String) obj));
            sb.append("\"");
        }
    }

    private void zza(StringBuilder sb, Field field, ArrayList<Object> arrayList) {
        sb.append(Constants.RequestParameters.LEFT_BRACKETS);
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (i > 0) {
                sb.append(",");
            }
            Object obj = arrayList.get(i);
            if (obj != null) {
                zza(sb, field, obj);
            }
        }
        sb.append(Constants.RequestParameters.RIGHT_BRACKETS);
    }

    public String toString() {
        Map<String, Field<?, ?>> mapZzatr = zzatr();
        StringBuilder sb = new StringBuilder(100);
        for (String str : mapZzatr.keySet()) {
            Field<?, ?> field = mapZzatr.get(str);
            if (zza(field)) {
                Object objZza = zza(field, zzb(field));
                if (sb.length() == 0) {
                    sb.append("{");
                } else {
                    sb.append(",");
                }
                sb.append("\"").append(str).append("\":");
                if (objZza != null) {
                    switch (field.zzatq()) {
                        case 8:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzp((byte[]) objZza)).append("\"");
                            break;
                        case 9:
                            sb.append("\"").append(com.google.android.gms.common.util.zzc.zzq((byte[]) objZza)).append("\"");
                            break;
                        case 10:
                            zzq.zza(sb, (HashMap) objZza);
                            break;
                        default:
                            if (field.zzatu()) {
                                zza(sb, (Field) field, (ArrayList<Object>) objZza);
                            } else {
                                zza(sb, field, objZza);
                            }
                            break;
                    }
                } else {
                    sb.append("null");
                }
            }
        }
        if (sb.length() > 0) {
            sb.append("}");
        } else {
            sb.append("{}");
        }
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected <O, I> I zza(Field<I, O> field, Object obj) {
        return ((Field) field).zC != null ? field.convertBack(obj) : obj;
    }

    protected boolean zza(Field field) {
        return field.zzatq() == 11 ? field.zzatv() ? zzhw(field.zzatw()) : zzhv(field.zzatw()) : zzhu(field.zzatw());
    }

    public abstract Map<String, Field<?, ?>> zzatr();

    public HashMap<String, Object> zzats() {
        return null;
    }

    public HashMap<String, Object> zzatt() {
        return null;
    }

    protected Object zzb(Field field) {
        String strZzatw = field.zzatw();
        if (field.zzaty() == null) {
            return zzht(field.zzatw());
        }
        zzab.zza(zzht(field.zzatw()) == null, "Concrete field shouldn't be value object: %s", field.zzatw());
        HashMap<String, Object> mapZzatt = field.zzatv() ? zzatt() : zzats();
        if (mapZzatt != null) {
            return mapZzatt.get(strZzatw);
        }
        try {
            char upperCase = Character.toUpperCase(strZzatw.charAt(0));
            String strValueOf = String.valueOf(strZzatw.substring(1));
            return getClass().getMethod(new StringBuilder(String.valueOf(strValueOf).length() + 4).append("get").append(upperCase).append(strValueOf).toString(), new Class[0]).invoke(this, new Object[0]);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    protected abstract Object zzht(String str);

    protected abstract boolean zzhu(String str);

    protected boolean zzhv(String str) {
        throw new UnsupportedOperationException("Concrete types not supported");
    }

    protected boolean zzhw(String str) {
        throw new UnsupportedOperationException("Concrete type arrays not supported");
    }
}
