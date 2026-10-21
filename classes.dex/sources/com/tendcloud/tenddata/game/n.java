package com.tendcloud.tenddata.game;

import android.os.Parcel;
import java.io.File;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
public class n extends File {
    public final String a;

    static class a extends n {
        public ArrayList b;

        private a(String str) {
            super(str);
            try {
                this.b = new ArrayList();
                for (String str2 : this.a.split("\n")) {
                    try {
                        this.b.add(new b(str2));
                    } catch (Throwable th) {
                    }
                }
            } catch (Throwable th2) {
            }
        }

        public static a a(int i) {
            try {
                return new a(String.format("/proc/%d/cgroup", Integer.valueOf(i)));
            } catch (Throwable th) {
                return null;
            }
        }

        public b b(String str) {
            try {
                for (b bVar : this.b) {
                    for (String str2 : bVar.b.split(",")) {
                        if (str2.equals(str)) {
                            return bVar;
                        }
                    }
                }
            } catch (Throwable th) {
            }
            return null;
        }
    }

    static class b {
        protected int a;
        protected String b;
        protected String c;

        protected b(Parcel parcel) {
            try {
                this.a = parcel.readInt();
                this.b = parcel.readString();
                this.c = parcel.readString();
            } catch (Throwable th) {
            }
        }

        protected b(String str) {
            try {
                String[] strArrSplit = str.split(":");
                this.a = Integer.parseInt(strArrSplit[0]);
                this.b = strArrSplit[1];
                this.c = strArrSplit[2];
            } catch (Throwable th) {
            }
        }
    }

    public static class c extends n {
        private String[] b;

        private c(Parcel parcel) {
            super(parcel);
            this.b = new String[0];
            try {
                this.b = parcel.createStringArray();
            } catch (Throwable th) {
            }
        }

        private c(String str) {
            super(str);
            this.b = new String[0];
            try {
                this.b = this.a.split("\\s+");
            } catch (Throwable th) {
            }
        }

        public static c a(int i) {
            try {
                return new c(String.format("/proc/%d/stat", Integer.valueOf(i)));
            } catch (Throwable th) {
                return null;
            }
        }

        public long a() {
            try {
                return Long.parseLong(this.b[21]);
            } catch (Throwable th) {
                return 0L;
            }
        }

        public String b() {
            try {
                return this.b[1].replace("(", "").replace(")", "");
            } catch (Throwable th) {
                return "";
            }
        }

        public char c() {
            try {
                return this.b[2].charAt(0);
            } catch (Throwable th) {
                return (char) 0;
            }
        }
    }

    static class d extends n {
        private d(Parcel parcel) {
            super(parcel);
        }

        private d(String str) {
            super(str);
        }

        public static d a(int i) {
            try {
                return new d(String.format("/proc/%d/status", Integer.valueOf(i)));
            } catch (Throwable th) {
                return null;
            }
        }

        public int a() {
            try {
                return Integer.parseInt(b("Uid").split("\\s+")[0]);
            } catch (Throwable th) {
                return -1;
            }
        }

        public int b() {
            try {
                return Integer.parseInt(b("Gid").split("\\s+")[0]);
            } catch (Throwable th) {
                return -1;
            }
        }

        public String b(String str) {
            int i;
            try {
            } catch (Throwable th) {
            }
            for (String str2 : this.a.split("\n")) {
                if (str2.startsWith(str + ":")) {
                    return str2.split(str + ":")[1].trim();
                }
                return null;
            }
            return null;
        }
    }

    protected n(Parcel parcel) {
        super(parcel.readString());
        this.a = parcel.readString();
    }

    protected n(String str) {
        super(str);
        this.a = a(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0044 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static java.lang.String a(java.lang.String r5) throws java.lang.Throwable {
        /*
            r0 = 0
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            r3.<init>()
            java.io.BufferedReader r1 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L3e
            java.io.FileReader r2 = new java.io.FileReader     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L3e
            r2.<init>(r5)     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L3e
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L30 java.lang.Throwable -> L3e
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L4e
            java.lang.String r0 = ""
        L16:
            if (r2 == 0) goto L26
            java.lang.StringBuilder r0 = r3.append(r0)     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L4e
            r0.append(r2)     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L4e
            java.lang.String r0 = "\n"
            java.lang.String r2 = r1.readLine()     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L4e
            goto L16
        L26:
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4c java.lang.Throwable -> L4e
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L48
        L2f:
            return r0
        L30:
            r1 = move-exception
            r1 = r0
        L32:
            java.lang.String r0 = r3.toString()     // Catch: java.lang.Throwable -> L4c
            if (r1 == 0) goto L2f
            r1.close()     // Catch: java.lang.Throwable -> L3c
            goto L2f
        L3c:
            r1 = move-exception
            goto L2f
        L3e:
            r1 = move-exception
            r4 = r1
            r1 = r0
            r0 = r4
        L42:
            if (r1 == 0) goto L47
            r1.close()     // Catch: java.lang.Throwable -> L4a
        L47:
            throw r0
        L48:
            r1 = move-exception
            goto L2f
        L4a:
            r1 = move-exception
            goto L47
        L4c:
            r0 = move-exception
            goto L42
        L4e:
            r0 = move-exception
            goto L32
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tendcloud.tenddata.game.n.a(java.lang.String):java.lang.String");
    }

    @Override // java.io.File
    public long length() {
        return this.a.length();
    }
}
