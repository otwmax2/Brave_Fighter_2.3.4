package com.tendcloud.tenddata.game;

import android.content.Context;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.SyncFailedException;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
public class m {
    private static final long j = 3145728;
    private static final String k = "td-cache";
    Context a;
    File b;
    RandomAccessFile c;
    String d;
    CRC32 e = new CRC32();
    Lock f = new ReentrantLock();
    long g = 0;
    long h = 0;
    long i = -1;

    public m(Context context, String str) {
        try {
            this.a = context;
            this.d = str;
            this.b = context.getDir(k, 0);
            e();
            try {
                f();
            } catch (IOException e) {
            }
            if (this.c.length() > j) {
                d();
            }
        } catch (Throwable th) {
        }
    }

    private boolean a(long j2) {
        try {
            this.f.lock();
            try {
                this.c.seek(j2);
                byte b = this.c.readByte();
                if (b == 31) {
                    int i = this.c.readInt();
                    short s = this.c.readShort();
                    if (s >= 0 && this.c.getFilePointer() + ((long) s) <= this.c.length()) {
                        this.e.reset();
                        for (int i2 = 0; i2 < s; i2++) {
                            this.e.update(this.c.read());
                        }
                        if (this.c.readByte() == 31 && i == ((int) this.e.getValue())) {
                            this.h = this.c.getFilePointer();
                            return true;
                        }
                    }
                } else if (b == 46) {
                    int i3 = this.c.readInt();
                    byte b2 = this.c.readByte();
                    if (i3 >= 0 && i3 < this.c.length() && b2 == 46) {
                        this.h = this.c.getFilePointer();
                        this.g = i3;
                        return false;
                    }
                }
            } catch (Exception e) {
            }
            this.h = 1 + j2;
            return false;
        } finally {
            this.f.unlock();
        }
    }

    private byte[] a(long j2, boolean z) {
        try {
            this.f.lock();
            try {
                this.c.seek(j2);
                byte b = this.c.readByte();
                if (b == 31) {
                    int i = this.c.readInt();
                    int i2 = this.c.readShort();
                    if (i2 >= 0 && this.c.getFilePointer() + ((long) i2) <= this.c.length()) {
                        byte[] bArr = new byte[i2];
                        this.c.readFully(bArr);
                        if (this.c.readByte() == 31) {
                            this.e.reset();
                            this.e.update(bArr);
                            if (i == ((int) this.e.getValue())) {
                                this.h = this.c.getFilePointer();
                                return bArr;
                            }
                        }
                    }
                } else if (b == 46) {
                    int i3 = this.c.readInt();
                    byte b2 = this.c.readByte();
                    if (i3 >= 0 && i3 < this.c.length() && b2 == 46) {
                        this.h = this.c.getFilePointer();
                        if (z) {
                            this.g = i3;
                        }
                        return null;
                    }
                }
            } catch (Exception e) {
            }
            this.h = 1 + j2;
            return null;
        } finally {
            this.f.unlock();
        }
    }

    private void b(long j2) {
        try {
            this.f.lock();
            this.c.seek(this.c.length());
            this.c.writeByte(46);
            this.c.writeInt((int) j2);
            this.c.writeByte(46);
        } finally {
            this.f.unlock();
        }
    }

    private void b(byte[] bArr) {
        try {
            this.f.lock();
            this.c.seek(this.c.length());
            this.c.writeByte(31);
            this.e.reset();
            this.e.update(bArr);
            this.c.writeInt((int) this.e.getValue());
            this.c.writeShort(bArr.length);
            this.c.write(bArr);
            this.c.writeByte(31);
        } finally {
            this.f.unlock();
        }
    }

    private void d() throws IOException {
        this.h = this.g < this.i ? this.i : this.g;
        File file = new File(this.b, this.d + ".tmp");
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        while (this.h < this.c.length()) {
            try {
                byte[] bArrA = a(this.h, false);
                if (bArrA != null) {
                    fileOutputStream.write(bArrA);
                }
            } catch (Throwable th) {
                fileOutputStream.flush();
                fileOutputStream.close();
                this.c.close();
                throw th;
            }
        }
        fileOutputStream.flush();
        fileOutputStream.close();
        this.c.close();
        File file2 = new File(this.b, this.d);
        file2.delete();
        file.renameTo(file2);
        e();
        this.g = 0L;
        this.h = 0L;
    }

    private void e() {
        this.c = new RandomAccessFile(new File(this.b, this.d), "rw");
    }

    private void f() {
        boolean z = false;
        while (this.h < this.c.length()) {
            if (this.i == -1 && this.c.length() - this.h < j) {
                this.i = this.h;
            }
            long j2 = this.h;
            if (a(j2) && !z) {
                z = true;
                if (this.g == 0) {
                    this.g = j2;
                }
            }
        }
    }

    public List a(int i) {
        LinkedList linkedList = new LinkedList();
        try {
            this.h = this.g;
            this.c.seek(this.h);
            while (this.h < this.c.length()) {
                byte[] bArrA = a(this.h, false);
                if (bArrA != null) {
                    linkedList.add(bArrA);
                }
                if (linkedList.size() >= i) {
                    break;
                }
            }
        } catch (IOException e) {
        }
        if (linkedList.size() == 0) {
            this.g = this.h;
        }
        return linkedList;
    }

    public void a() {
        b(this.h);
        this.g = this.h;
    }

    public void a(byte[] bArr) {
        b(bArr);
    }

    public void b() throws SyncFailedException {
        this.c.getFD().sync();
    }

    public void c() throws IOException {
        b();
        this.c.close();
    }
}
