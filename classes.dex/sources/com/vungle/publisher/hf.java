package com.vungle.publisher;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public class hf implements jf {
    final String a;

    public String toString() {
        return this.a;
    }

    public hf(String str) {
        this.a = str;
    }

    public boolean equals(Object object) {
        if (object instanceof hf) {
            return this.a.equals(object.toString());
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    @Override // com.vungle.publisher.jf
    public boolean a() {
        return true;
    }
}
