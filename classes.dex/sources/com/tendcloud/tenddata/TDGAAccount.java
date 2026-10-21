package com.tendcloud.tenddata;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.tendcloud.tenddata.game.az;
import com.tendcloud.tenddata.game.bp;
import com.tendcloud.tenddata.game.bq;
import com.tendcloud.tenddata.game.br;
import com.tendcloud.tenddata.game.bv;
import com.tendcloud.tenddata.game.ce;
import com.tendcloud.tenddata.game.cn;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: loaded from: classes.dex */
public final class TDGAAccount implements Cloneable {
    public static TDGAAccount a = null;
    private static final String l = "accountId";
    private static final String m = "userLevel";
    private static final String n = "gender";
    private static final String o = "accountName";
    private static final String p = "age";
    private static final String q = "accountType";
    private static final String r = "account_file";
    private static final String s = "levelup_duration";
    private static final String t = "game_duration";
    private static final String u = "mission_duration";
    private static final int v = 0;
    String b = "";
    AccountType c = AccountType.ANONYMOUS;
    String d = "";
    int e = 0;
    Gender f = Gender.UNKNOW;
    int g = 0;
    String h = "";
    public long i = 0;
    public AtomicLong j = new AtomicLong();
    long k = 0;

    public enum AccountType {
        ANONYMOUS(0),
        REGISTERED(1),
        SINA_WEIBO(2),
        QQ(3),
        QQ_WEIBO(4),
        ND91(5),
        TYPE1(11),
        TYPE2(12),
        TYPE3(13),
        TYPE4(14),
        TYPE5(15),
        TYPE6(16),
        TYPE7(17),
        TYPE8(18),
        TYPE9(19),
        TYPE10(20);

        private final int a;

        AccountType(int i) {
            this.a = i;
        }

        public int index() {
            return this.a;
        }
    }

    public enum Gender {
        UNKNOW(0),
        MALE(1),
        FEMALE(2);

        private final int a;

        Gender(int i) {
            this.a = i;
        }

        public int index() {
            return this.a;
        }
    }

    public static class a {
        public TDGAAccount a;
        public TDGAAccount b;

        a() {
        }
    }

    protected TDGAAccount() {
    }

    static final TDGAAccount a(Context context) {
        String strA = bq.a();
        return a(context, strA, bq.a(strA));
    }

    static final TDGAAccount a(Context context, String str, String str2) {
        SharedPreferences sharedPreferencesB = b(context, str, str2);
        TDGAAccount tDGAAccount = new TDGAAccount();
        tDGAAccount.b = str;
        tDGAAccount.h = str2;
        if (sharedPreferencesB != null) {
            tDGAAccount.c = AccountType.valueOf(sharedPreferencesB.getString("accountType", AccountType.ANONYMOUS.name()));
            tDGAAccount.d = sharedPreferencesB.getString(o, "");
            tDGAAccount.e = sharedPreferencesB.getInt(m, 0);
            tDGAAccount.g = sharedPreferencesB.getInt("age", 0);
            tDGAAccount.f = Gender.valueOf(sharedPreferencesB.getString(n, Gender.UNKNOW.name()));
            long j = sharedPreferencesB.getLong(t, 0L);
            do {
            } while (!tDGAAccount.j.compareAndSet(tDGAAccount.j.get(), j));
            tDGAAccount.c();
        }
        return tDGAAccount;
    }

    static final void a(Context context, TDGAAccount tDGAAccount) {
        SharedPreferences sharedPreferencesB = b(context, tDGAAccount.b, tDGAAccount.h);
        if (sharedPreferencesB != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.putString(l, tDGAAccount.b);
            editorEdit.putString("accountType", tDGAAccount.c.name());
            editorEdit.putString(o, tDGAAccount.d);
            editorEdit.putInt(m, tDGAAccount.e);
            editorEdit.putInt("age", tDGAAccount.g);
            editorEdit.putString(n, tDGAAccount.f.name());
            editorEdit.commit();
        }
    }

    private static final SharedPreferences b(Context context, String str, String str2) {
        StringBuilder sb = new StringBuilder();
        sb.append(str).append("|").append(r);
        return context.getSharedPreferences(sb.toString(), 0);
    }

    private final long d() {
        bp.a("TDGAAccount.getLevelUpDuration() called.");
        Context context = TalkingDataGA.getContext();
        if (context == null) {
            bp.a("TalkingDataGA.getContext() == null.");
            return 0L;
        }
        long jB = b();
        SharedPreferences sharedPreferencesB = b(context, this.b, this.h);
        long j = sharedPreferencesB.getLong(s, 0L);
        SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
        editorEdit.putLong(s, jB);
        editorEdit.commit();
        return jB - j;
    }

    private final void e() {
        a(TalkingDataGA.a, this);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 13, new cn(br.a, this)));
    }

    private final void f() {
        bq.a(this.b, this.h);
        a(TalkingDataGA.a, this);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 14, (TDGAAccount) clone()));
    }

    public static TDGAAccount setAccount(String str) {
        TDGAAccount tDGAAccountA = null;
        if (!TalkingDataGA.a()) {
            bp.c("TDGAAccount.setAccount()#SDK not initialized. ");
        } else if (TextUtils.isEmpty(str)) {
            bp.c("TDGAAccount.setAccount()#accountid is null, please check it.");
        } else {
            bp.b("TDGAAccount.setAccount()#accountid:" + str);
            if (TextUtils.isEmpty(a.b)) {
                a.b = str;
                tDGAAccountA = a;
            } else if (str.equals(a.b)) {
                tDGAAccountA = a;
            } else {
                Handler handlerA = bv.a();
                tDGAAccountA = a(TalkingDataGA.a, str, bq.a(str));
                a.a();
                a aVar = new a();
                aVar.a = a;
                aVar.b = tDGAAccountA;
                a = tDGAAccountA;
                handlerA.sendMessage(Message.obtain(handlerA, 12, aVar));
            }
            if (bq.a().equals("")) {
                bq.b(str);
                az.e();
            }
            a(TalkingDataGA.a, tDGAAccountA);
            bq.b(str);
        }
        return tDGAAccountA;
    }

    public final void a() {
        bp.a("TDGAAccount.updateGameDuration() called.");
        Context context = TalkingDataGA.getContext();
        if (context == null) {
            bp.c("TalkingDataGA.getContext() == null.");
            return;
        }
        while (!this.j.compareAndSet(this.j.get(), b())) {
        }
        SharedPreferences.Editor editorEdit = b(context, this.b, this.h).edit();
        editorEdit.putLong(t, this.j.get());
        editorEdit.commit();
        c();
    }

    final void a(String str) {
        Context context = TalkingDataGA.getContext();
        if (context == null) {
            bp.a("TalkingDataGA.getContext() == null.");
            return;
        }
        long jB = b();
        bp.a("TDGAAccount.setMissionStart() called. missionId=", str, "   gameduration=", String.valueOf(jB));
        SharedPreferences.Editor editorEdit = b(context, this.b, this.h).edit();
        editorEdit.putLong("mission_duration_" + str, jB);
        editorEdit.commit();
    }

    final long b() {
        return (this.j.get() + System.currentTimeMillis()) - this.k;
    }

    final long b(String str) {
        bp.a("TDGAAccount.getMissionDuration() called. missionId=" + str);
        Context context = TalkingDataGA.getContext();
        if (context != null) {
            return b() - b(context, this.b, this.h).getLong("mission_duration_" + str, 0L);
        }
        bp.a("TalkingDataGA.getContext() == null.");
        return 0L;
    }

    final void c() {
        this.k = System.currentTimeMillis();
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            System.out.println("Cloning not allowed.");
            return this;
        }
    }

    public final String getAccountId() {
        return this.b;
    }

    public final String getAccountName() {
        return this.d;
    }

    public final AccountType getAccountType() {
        return this.c;
    }

    public final int getAge() {
        return this.g;
    }

    public final String getGameServer() {
        return this.h;
    }

    public final Gender getGender() {
        return this.f;
    }

    public final int getLevel() {
        return this.e;
    }

    public final void setAccountName(String str) {
        if (str != null) {
            bp.b("TDGAAccount.setAccountName()#setAccountName:" + str);
        }
        this.d = str;
        e();
    }

    public final void setAccountType(AccountType accountType) {
        bp.b("TDGAAccount.setAccountType()#accountType:" + accountType);
        this.c = accountType;
        e();
    }

    public final void setAge(int i) {
        if (this.g == i) {
            return;
        }
        bp.b("TDGAAccount.setAge()#age:" + i);
        this.g = i;
        e();
    }

    public final void setGameServer(String str) {
        if (TextUtils.isEmpty(str) || str.equals(this.h)) {
            return;
        }
        bp.b("TDGAAccount.setGameServer()#gameServer:" + str);
        this.h = str;
        f();
    }

    public final void setGender(Gender gender) {
        bp.b("TDGAAccount.setGender()#setGender:" + gender);
        this.f = gender;
        e();
    }

    public final void setLevel(int i) {
        if (this.e == i) {
            return;
        }
        bp.b("TDGAAccount.setLevel()#setLevel:" + i);
        int i2 = this.e;
        this.e = i;
        long jD = d();
        a(TalkingDataGA.a, this);
        Handler handlerA = bv.a();
        handlerA.sendMessage(Message.obtain(handlerA, 15, new ce(br.a, this, TDGAMission.a, i2, jD)));
    }
}
