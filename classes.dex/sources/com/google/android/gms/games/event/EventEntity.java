package com.google.android.gms.games.event;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.util.zzg;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;

/* JADX INFO: loaded from: classes.dex */
public final class EventEntity extends AbstractSafeParcelable implements Event {
    public static final EventEntityCreator CREATOR = new EventEntityCreator();
    private final Uri QE;
    private final String QP;
    private final PlayerEntity RS;
    private final String Sv;
    private final String Sw;
    private final String mName;
    private final int mVersionCode;
    private final boolean zzaqs;
    private final long zzcvh;
    private final String zzcvi;

    EventEntity(int i, String str, String str2, String str3, Uri uri, String str4, Player player, long j, String str5, boolean z) {
        this.mVersionCode = i;
        this.Sv = str;
        this.mName = str2;
        this.zzcvi = str3;
        this.QE = uri;
        this.QP = str4;
        this.RS = new PlayerEntity(player);
        this.zzcvh = j;
        this.Sw = str5;
        this.zzaqs = z;
    }

    public EventEntity(Event event) {
        this.mVersionCode = 1;
        this.Sv = event.getEventId();
        this.mName = event.getName();
        this.zzcvi = event.getDescription();
        this.QE = event.getIconImageUri();
        this.QP = event.getIconImageUrl();
        this.RS = (PlayerEntity) event.getPlayer().freeze();
        this.zzcvh = event.getValue();
        this.Sw = event.getFormattedValue();
        this.zzaqs = event.isVisible();
    }

    static int zza(Event event) {
        return zzaa.hashCode(event.getEventId(), event.getName(), event.getDescription(), event.getIconImageUri(), event.getIconImageUrl(), event.getPlayer(), Long.valueOf(event.getValue()), event.getFormattedValue(), Boolean.valueOf(event.isVisible()));
    }

    static boolean zza(Event event, Object obj) {
        if (!(obj instanceof Event)) {
            return false;
        }
        if (event == obj) {
            return true;
        }
        Event event2 = (Event) obj;
        return zzaa.equal(event2.getEventId(), event.getEventId()) && zzaa.equal(event2.getName(), event.getName()) && zzaa.equal(event2.getDescription(), event.getDescription()) && zzaa.equal(event2.getIconImageUri(), event.getIconImageUri()) && zzaa.equal(event2.getIconImageUrl(), event.getIconImageUrl()) && zzaa.equal(event2.getPlayer(), event.getPlayer()) && zzaa.equal(Long.valueOf(event2.getValue()), Long.valueOf(event.getValue())) && zzaa.equal(event2.getFormattedValue(), event.getFormattedValue()) && zzaa.equal(Boolean.valueOf(event2.isVisible()), Boolean.valueOf(event.isVisible()));
    }

    static String zzb(Event event) {
        return zzaa.zzz(event).zzg("Id", event.getEventId()).zzg("Name", event.getName()).zzg("Description", event.getDescription()).zzg("IconImageUri", event.getIconImageUri()).zzg("IconImageUrl", event.getIconImageUrl()).zzg("Player", event.getPlayer()).zzg("Value", Long.valueOf(event.getValue())).zzg("FormattedValue", event.getFormattedValue()).zzg("isVisible", Boolean.valueOf(event.isVisible())).toString();
    }

    public boolean equals(Object obj) {
        return zza(this, obj);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.common.data.Freezable
    public Event freeze() {
        return this;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getDescription() {
        return this.zzcvi;
    }

    @Override // com.google.android.gms.games.event.Event
    public void getDescription(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.zzcvi, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public String getEventId() {
        return this.Sv;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getFormattedValue() {
        return this.Sw;
    }

    @Override // com.google.android.gms.games.event.Event
    public void getFormattedValue(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.Sw, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public Uri getIconImageUri() {
        return this.QE;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getIconImageUrl() {
        return this.QP;
    }

    @Override // com.google.android.gms.games.event.Event
    public String getName() {
        return this.mName;
    }

    @Override // com.google.android.gms.games.event.Event
    public void getName(CharArrayBuffer charArrayBuffer) {
        zzg.zzb(this.mName, charArrayBuffer);
    }

    @Override // com.google.android.gms.games.event.Event
    public Player getPlayer() {
        return this.RS;
    }

    @Override // com.google.android.gms.games.event.Event
    public long getValue() {
        return this.zzcvh;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zza(this);
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return true;
    }

    @Override // com.google.android.gms.games.event.Event
    public boolean isVisible() {
        return this.zzaqs;
    }

    public String toString() {
        return zzb(this);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        EventEntityCreator.zza(this, parcel, i);
    }
}
