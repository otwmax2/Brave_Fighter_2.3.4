package com.tendcloud.tenddata.game;

import android.content.Context;
import android.content.SharedPreferences;
import com.tendcloud.tenddata.TDGAMission;
import com.tendcloud.tenddata.TalkingDataGA;

/* JADX INFO: loaded from: classes.dex */
public final class bq {
    static final long a = 0;
    static final long b = 0;
    static final long c = 868;
    static final String d = "pref_file";
    private static SharedPreferences e = null;
    private static final String f = "TDGApref.session.start.key";
    private static final String g = "TDGApref.session.startsystem.key";
    private static final String h = "TDGApref.session.end.key";
    private static final String i = "TDGApref.activesessionid.key";
    private static final String j = "TDGApref.missionid.key";
    private static final String k = "pref.applisttime.key";
    private static final String l = "pref.accountid.key";
    private static final String m = "pref.accountgame.key";
    private static final String n = "pref.init.key";

    private static long a(SharedPreferences sharedPreferences, String str, long j2) {
        return sharedPreferences.getLong(str, j2);
    }

    public static String a() {
        return a(e, l, "");
    }

    private static String a(SharedPreferences sharedPreferences, String str, String str2) {
        return sharedPreferences.getString(str, str2);
    }

    public static String a(String str) {
        return a(e, str + m, "");
    }

    static void a(long j2) {
        b(e, k, j2);
    }

    public static final void a(Context context) {
        e = context.getSharedPreferences(d, 0);
        br.a = h();
        TDGAMission.a = c();
    }

    static void a(Context context, long j2) {
        b(e, n + TalkingDataGA.b, j2);
    }

    public static void a(String str, String str2) {
        b(e, str + m, str2);
    }

    static long b() {
        return a(e, k, c);
    }

    public static long b(Context context) {
        return a(e, n + TalkingDataGA.b, 0L);
    }

    static void b(long j2) {
        b(e, f, j2);
    }

    private static void b(SharedPreferences sharedPreferences, String str, long j2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putLong(str, j2);
        editorEdit.commit();
    }

    private static void b(SharedPreferences sharedPreferences, String str, String str2) {
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(str, str2);
        editorEdit.commit();
    }

    public static void b(String str) {
        b(e, l, str);
    }

    static String c() {
        return a(e, j, "");
    }

    static void c(long j2) {
        b(e, h, j2);
    }

    public static void c(String str) {
        b(e, j, str);
    }

    static long d() {
        return a(e, f, c);
    }

    static void d(String str) {
        b(e, i, str);
    }

    static long e() {
        return a(e, g, c);
    }

    static void f() {
        b(e, g, System.currentTimeMillis());
    }

    static long g() {
        return a(e, h, 0L);
    }

    static String h() {
        return a(e, i, (String) null);
    }

    static void i() {
        d("");
    }
}
