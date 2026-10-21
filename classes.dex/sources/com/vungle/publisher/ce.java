package com.vungle.publisher;

import android.database.Cursor;
import android.database.SQLException;

/* JADX INFO: compiled from: vungle */
/* JADX INFO: loaded from: classes.dex */
public final class ce {
    public static Boolean a(Cursor cursor, String str) throws SQLException {
        Integer numC = c(cursor, str);
        if (numC == null) {
            return null;
        }
        switch (numC.intValue()) {
            case 0:
                return Boolean.FALSE;
            case 1:
                return Boolean.TRUE;
            default:
                throw new SQLException("invalid boolean value " + numC + " for column " + str);
        }
    }

    public static <E extends Enum<E>> E a(Cursor cursor, String str, Class<E> cls) throws SQLException {
        try {
            return (E) a(cursor, cursor.getColumnIndexOrThrow(str), cls);
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static <E extends Enum<E>> E a(Cursor cursor, int i, Class<E> cls) throws SQLException {
        String string = cursor.getString(i);
        try {
            if (cursor.isNull(i)) {
                return null;
            }
            return (E) Enum.valueOf(cls, string);
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid enum: " + string);
        }
    }

    public static Float b(Cursor cursor, String str) throws SQLException {
        try {
            return a(cursor, cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static Float a(Cursor cursor, int i) throws SQLException {
        if (cursor.isNull(i)) {
            return null;
        }
        return Float.valueOf(cursor.getFloat(i));
    }

    public static int a(Cursor cursor, String str, int i) throws SQLException {
        try {
            return a(cursor, cursor.getColumnIndexOrThrow(str), i);
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static int a(Cursor cursor, int i, int i2) throws SQLException {
        Integer numB = b(cursor, i);
        return numB == null ? i2 : numB.intValue();
    }

    public static Integer c(Cursor cursor, String str) throws SQLException {
        try {
            return b(cursor, cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static Integer b(Cursor cursor, int i) throws SQLException {
        if (cursor.isNull(i)) {
            return null;
        }
        return Integer.valueOf(cursor.getInt(i));
    }

    public static Long d(Cursor cursor, String str) throws SQLException {
        try {
            return c(cursor, cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static Long c(Cursor cursor, int i) throws SQLException {
        if (cursor.isNull(i)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(i));
    }

    public static String e(Cursor cursor, String str) throws SQLException {
        try {
            return d(cursor, cursor.getColumnIndexOrThrow(str));
        } catch (IllegalArgumentException e) {
            throw new SQLException("invalid column name: " + str);
        }
    }

    public static String d(Cursor cursor, int i) throws SQLException {
        return cursor.getString(i);
    }

    public static String a(int i) {
        if (i < 1) {
            return "";
        }
        StringBuilder sb = new StringBuilder((i * 2) - 1);
        sb.append("?");
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(",?");
        }
        return sb.toString();
    }
}
