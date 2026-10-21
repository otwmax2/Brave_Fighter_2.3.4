package com.ironsource.sdk.data;

/* JADX INFO: loaded from: classes.dex */
public class SSABCParameters extends SSAObj {
    private String CONNECTION_RETRIES;
    private String mConnectionRetries;

    public SSABCParameters() {
        this.CONNECTION_RETRIES = "connectionRetries";
    }

    public SSABCParameters(String value) {
        super(value);
        this.CONNECTION_RETRIES = "connectionRetries";
        if (containsKey(this.CONNECTION_RETRIES)) {
            setConnectionRetries(getString(this.CONNECTION_RETRIES));
        }
    }

    public String getConnectionRetries() {
        return this.mConnectionRetries;
    }

    public void setConnectionRetries(String connectionRetries) {
        this.mConnectionRetries = connectionRetries;
    }
}
