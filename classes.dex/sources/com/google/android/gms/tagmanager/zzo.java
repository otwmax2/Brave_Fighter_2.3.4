package com.google.android.gms.tagmanager;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tagmanager.ContainerHolder;

/* JADX INFO: loaded from: classes.dex */
class zzo implements ContainerHolder {
    private boolean Gb;
    private Container avh;
    private Container avi;
    private zzb avj;
    private zza avk;
    private TagManager avl;
    private Status cc;
    private final Looper zzahv;

    public interface zza {
        String zzcaj();

        void zzcal();

        void zzns(String str);
    }

    private class zzb extends Handler {
        private final ContainerHolder.ContainerAvailableListener avm;

        public zzb(ContainerHolder.ContainerAvailableListener containerAvailableListener, Looper looper) {
            super(looper);
            this.avm = containerAvailableListener;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zznu((String) message.obj);
                    break;
                default:
                    zzbn.e("Don't know how to handle this message.");
                    break;
            }
        }

        public void zznt(String str) {
            sendMessage(obtainMessage(1, str));
        }

        protected void zznu(String str) {
            this.avm.onContainerAvailable(zzo.this, str);
        }
    }

    public zzo(Status status) {
        this.cc = status;
        this.zzahv = null;
    }

    public zzo(TagManager tagManager, Looper looper, Container container, zza zzaVar) {
        this.avl = tagManager;
        this.zzahv = looper == null ? Looper.getMainLooper() : looper;
        this.avh = container;
        this.avk = zzaVar;
        this.cc = Status.sg;
        tagManager.zza(this);
    }

    private void zzcak() {
        if (this.avj != null) {
            this.avj.zznt(this.avi.zzcah());
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public synchronized Container getContainer() {
        Container container = null;
        synchronized (this) {
            if (this.Gb) {
                zzbn.e("ContainerHolder is released.");
            } else {
                if (this.avi != null) {
                    this.avh = this.avi;
                    this.avi = null;
                }
                container = this.avh;
            }
        }
        return container;
    }

    String getContainerId() {
        if (!this.Gb) {
            return this.avh.getContainerId();
        }
        zzbn.e("getContainerId called on a released ContainerHolder.");
        return "";
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.cc;
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public synchronized void refresh() {
        if (this.Gb) {
            zzbn.e("Refreshing a released ContainerHolder.");
        } else {
            this.avk.zzcal();
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public synchronized void release() {
        if (this.Gb) {
            zzbn.e("Releasing a released ContainerHolder.");
        } else {
            this.Gb = true;
            this.avl.zzb(this);
            this.avh.release();
            this.avh = null;
            this.avi = null;
            this.avk = null;
            this.avj = null;
        }
    }

    @Override // com.google.android.gms.tagmanager.ContainerHolder
    public synchronized void setContainerAvailableListener(ContainerHolder.ContainerAvailableListener containerAvailableListener) {
        if (this.Gb) {
            zzbn.e("ContainerHolder is released.");
        } else if (containerAvailableListener == null) {
            this.avj = null;
        } else {
            this.avj = new zzb(containerAvailableListener, this.zzahv);
            if (this.avi != null) {
                zzcak();
            }
        }
    }

    public synchronized void zza(Container container) {
        if (!this.Gb) {
            if (container == null) {
                zzbn.e("Unexpected null container.");
            } else {
                this.avi = container;
                zzcak();
            }
        }
    }

    String zzcaj() {
        if (!this.Gb) {
            return this.avk.zzcaj();
        }
        zzbn.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        return "";
    }

    public synchronized void zznq(String str) {
        if (!this.Gb) {
            this.avh.zznq(str);
        }
    }

    void zzns(String str) {
        if (this.Gb) {
            zzbn.e("setCtfeUrlPathAndQuery called on a released ContainerHolder.");
        } else {
            this.avk.zzns(str);
        }
    }
}
