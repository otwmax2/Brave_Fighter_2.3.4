package com.ironsource.eventsmodule;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.provider.BaseColumns;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class DataBaseEventsStorage extends SQLiteOpenHelper implements IEventsStorageHelper {
    private static final String COMMA_SEP = ",";
    private static final String TYPE_INTEGER = " INTEGER";
    private static final String TYPE_TEXT = " TEXT";
    private static DataBaseEventsStorage mInstance;
    private final int DB_OPEN_BACKOFF_TIME;
    private final int DB_RETRY_NUM;
    private final String SQL_CREATE_ENTRIES;
    private final String SQL_DELETE_TABLE;

    public DataBaseEventsStorage(Context context, String databaseName, int databaseVersion) {
        super(context, databaseName, (SQLiteDatabase.CursorFactory) null, databaseVersion);
        this.DB_RETRY_NUM = 4;
        this.DB_OPEN_BACKOFF_TIME = 400;
        this.SQL_DELETE_TABLE = "DROP TABLE IF EXISTS events";
        this.SQL_CREATE_ENTRIES = "CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )";
    }

    public static synchronized DataBaseEventsStorage getInstance(Context context, String databaseName, int databaseVersion) {
        if (mInstance == null) {
            mInstance = new DataBaseEventsStorage(context, databaseName, databaseVersion);
        }
        return mInstance;
    }

    @Override // com.ironsource.eventsmodule.IEventsStorageHelper
    public synchronized void saveEvents(List<EventData> events, String type) {
        if (events != null) {
            if (!events.isEmpty()) {
                SQLiteDatabase db = getDataBaseWithRetries(true);
                try {
                    for (EventData toInsert : events) {
                        ContentValues values = getContentValuesForEvent(toInsert, type);
                        if (db != null && values != null) {
                            db.insert(EventEntry.TABLE_NAME, null, values);
                        }
                    }
                    if (db != null && db.isOpen()) {
                        db.close();
                    }
                } catch (Exception e) {
                    if (db != null && db.isOpen()) {
                        db.close();
                    }
                } catch (Throwable th) {
                    if (db != null && db.isOpen()) {
                        db.close();
                    }
                    throw th;
                }
            }
        }
    }

    @Override // com.ironsource.eventsmodule.IEventsStorageHelper
    public synchronized ArrayList<EventData> loadEvents(String type) {
        ArrayList<EventData> events;
        SQLiteDatabase db = getDataBaseWithRetries(false);
        Cursor cursor = null;
        events = new ArrayList<>();
        try {
            try {
                String[] whereArgs = {type};
                cursor = db.query(EventEntry.TABLE_NAME, null, "type = ?", whereArgs, null, null, "timestamp ASC");
                if (cursor.getCount() > 0) {
                    cursor.moveToFirst();
                    while (!cursor.isAfterLast()) {
                        int eventId = cursor.getInt(cursor.getColumnIndex(EventEntry.COLUMN_NAME_EVENT_ID));
                        long timeStamp = cursor.getLong(cursor.getColumnIndex(EventEntry.COLUMN_NAME_TIMESTAMP));
                        String data = cursor.getString(cursor.getColumnIndex("data"));
                        EventData event = new EventData(eventId, timeStamp, new JSONObject(data));
                        events.add(event);
                        cursor.moveToNext();
                    }
                    cursor.close();
                }
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                if (db != null && db.isOpen()) {
                    db.close();
                }
            } finally {
                if (cursor != null && !cursor.isClosed()) {
                    cursor.close();
                }
                if (db != null && db.isOpen()) {
                    db.close();
                }
            }
        } catch (Exception e) {
        }
        return events;
    }

    @Override // com.ironsource.eventsmodule.IEventsStorageHelper
    public synchronized void clearEvents(String type) {
        SQLiteDatabase db = getDataBaseWithRetries(true);
        String[] whereArgs = {type};
        try {
            db.delete(EventEntry.TABLE_NAME, "type = ?", whereArgs);
            if (db != null && db.isOpen()) {
                db.close();
            }
        } catch (Exception e) {
            if (db != null && db.isOpen()) {
                db.close();
            }
        } catch (Throwable th) {
            if (db != null && db.isOpen()) {
                db.close();
            }
            throw th;
        }
    }

    private ContentValues getContentValuesForEvent(EventData event, String type) {
        if (event == null) {
            return null;
        }
        ContentValues values = new ContentValues(4);
        values.put(EventEntry.COLUMN_NAME_EVENT_ID, Integer.valueOf(event.getEventId()));
        values.put(EventEntry.COLUMN_NAME_TIMESTAMP, Long.valueOf(event.getTimeStamp()));
        values.put("type", type);
        values.put("data", event.getAdditionalData());
        return values;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE events (_id INTEGER PRIMARY KEY,eventid INTEGER,timestamp INTEGER,type TEXT,data TEXT )");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE IF EXISTS events");
        onCreate(db);
    }

    private synchronized SQLiteDatabase getDataBaseWithRetries(boolean writable) {
        int i;
        int count = 0;
        while (true) {
            try {
            } finally {
                if (count >= i) {
                }
            }
        }
        return writable ? getWritableDatabase() : getReadableDatabase();
    }

    static abstract class EventEntry implements BaseColumns {
        public static final String COLUMN_NAME_DATA = "data";
        public static final String COLUMN_NAME_EVENT_ID = "eventid";
        public static final String COLUMN_NAME_TIMESTAMP = "timestamp";
        public static final String COLUMN_NAME_TYPE = "type";
        public static final int NUMBER_OF_COLUMNS = 4;
        public static final String TABLE_NAME = "events";

        EventEntry() {
        }
    }
}
