package com.tendcloud.tenddata.game;

import com.tendcloud.tenddata.TDGAAccount;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class cb extends bz {
    private String g;
    private String h;
    private int i;
    private String j;
    private String k;
    private Map l;

    public cb(String str, TDGAAccount tDGAAccount, String str2, Map map) {
        super("G8");
        this.g = str;
        this.h = tDGAAccount.getAccountId();
        this.i = tDGAAccount.getLevel();
        this.j = tDGAAccount.getGameServer();
        this.k = str2;
        this.l = map;
        if (this.l == null) {
            this.l = new HashMap();
        }
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected void a() {
    }

    @Override // com.tendcloud.tenddata.game.bz
    protected JSONObject d() {
        try {
            return new JSONObject().put(ao.d, this.g).put(ao.e, this.h).put(ao.f, this.i).put(ao.j, this.j).put(ao.w, this.k).put(ao.x, new JSONObject(this.l));
        } catch (JSONException e) {
            return null;
        }
    }

    @Override // com.tendcloud.tenddata.game.bz
    public Map e() {
        return this.l;
    }

    public String g() {
        return this.k;
    }
}
