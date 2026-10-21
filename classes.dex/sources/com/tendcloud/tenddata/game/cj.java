package com.tendcloud.tenddata.game;

/* JADX INFO: loaded from: classes.dex */
public class cj extends bz {
    private String g;
    private String h;
    private a i;
    private int j;

    public enum a {
        ARRIVED(0),
        CLICK(1),
        SHOW(2),
        UNSHOWN(3),
        CANCEL(4),
        INAPP_SHOW(11),
        INAPP_DURATION(12),
        INAPP_UNSHOW(13);

        private final int i;

        a(int i) {
            this.i = i;
        }

        public int a() {
            return this.i;
        }
    }

    public cj(String str, a aVar) {
        this(str, null, aVar);
    }

    public cj(String str, String str2, a aVar) {
        this(str, str2, aVar, 0);
    }

    public cj(String str, String str2, a aVar, int i) {
        super("G17");
        this.h = str;
        this.i = aVar;
        this.g = str2;
        this.j = i;
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
        if (this.g == null) {
            a("msgSign", this.h).a("action", Integer.valueOf(this.i.a()));
        } else {
            a("msgSign", this.h).a("action", Integer.valueOf(this.i.a())).a("url", this.g);
        }
        if (this.j > 0) {
            a(ao.n, Integer.valueOf(this.j));
        }
    }
}
