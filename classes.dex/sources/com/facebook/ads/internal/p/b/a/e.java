package com.facebook.ads.internal.p.b.a;

import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* JADX INFO: loaded from: classes.dex */
abstract class e implements com.facebook.ads.internal.p.b.a.a {
    private final ExecutorService a = Executors.newSingleThreadExecutor();

    private class a implements Callable<Void> {
        private final File b;

        public a(File file) {
            this.b = file;
        }

        @Override // java.util.concurrent.Callable
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void call() throws IOException {
            e.this.b(this.b);
            return null;
        }
    }

    e() {
    }

    private void a(List<File> list) {
        long jB = b(list);
        int size = list.size();
        Iterator<File> it = list.iterator();
        while (true) {
            int i = size;
            if (!it.hasNext()) {
                return;
            }
            File next = it.next();
            if (!a(next, jB, i)) {
                long length = next.length();
                if (next.delete()) {
                    i--;
                    jB -= length;
                    Log.i("ProxyCache", "Cache file " + next + " is deleted because it exceeds cache limit");
                } else {
                    Log.e("ProxyCache", "Error deleting file " + next + " for trimming cache");
                }
            }
            size = i;
        }
    }

    private long b(List<File> list) {
        long length = 0;
        Iterator<File> it = list.iterator();
        while (true) {
            long j = length;
            if (!it.hasNext()) {
                return j;
            }
            length = it.next().length() + j;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(File file) throws IOException {
        d.c(file);
        a(d.b(file.getParentFile()));
    }

    @Override // com.facebook.ads.internal.p.b.a.a
    public void a(File file) {
        this.a.submit(new a(file));
    }

    protected abstract boolean a(File file, long j, int i);
}
