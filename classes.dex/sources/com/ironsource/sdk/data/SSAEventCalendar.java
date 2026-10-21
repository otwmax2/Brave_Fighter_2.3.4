package com.ironsource.sdk.data;

import com.facebook.share.internal.ShareConstants;
import com.tendcloud.tenddata.game.ao;

/* JADX INFO: loaded from: classes.dex */
public class SSAEventCalendar extends SSAObj {
    private String DAILY;
    private String DAYS_IN_MONTH;
    private String DAYS_IN_WEEK;
    private String DAYS_IN_YEAR;
    private String DESCRIPTION;
    private String END;
    private String EXCEPTIONDATES;
    private String EXPIRES;
    private String FREQUENCY;
    private String ID;
    private String INTERVAL;
    private String MONTHLY;
    private String MONTHS_IN_YEAR;
    private String RECURRENCE;
    private String REMINDER;
    private String START;
    private String STATUS;
    private String WEEKLY;
    private String WEEKS_IN_MONTH;
    private String YEARLY;
    private String mDescription;
    private String mEnd;
    private String mStart;

    public SSAEventCalendar(String value) {
        super(value);
        this.ID = ShareConstants.WEB_DIALOG_PARAM_ID;
        this.DESCRIPTION = "description";
        this.START = "init";
        this.END = "end";
        this.STATUS = "status";
        this.RECURRENCE = "recurrence";
        this.REMINDER = "reminder";
        this.FREQUENCY = "frequency";
        this.INTERVAL = ao.r;
        this.EXPIRES = "expires";
        this.EXCEPTIONDATES = "exceptionDates";
        this.DAYS_IN_WEEK = "daysInWeek";
        this.DAYS_IN_MONTH = "daysInMonth";
        this.DAYS_IN_YEAR = "daysInYear";
        this.WEEKS_IN_MONTH = "weeksInMonth";
        this.MONTHS_IN_YEAR = "monthsInYear";
        this.DAILY = "daily";
        this.WEEKLY = "weekly";
        this.MONTHLY = "monthly";
        this.YEARLY = "yearly";
        if (containsKey(this.DESCRIPTION)) {
            setDescription(getString(this.DESCRIPTION));
        }
        if (containsKey(this.START)) {
            setStart(getString(this.START));
        }
        if (containsKey(this.END)) {
            setEnd(getString(this.END));
        }
    }

    public String getDescription() {
        return this.mDescription;
    }

    public void setDescription(String description) {
        this.mDescription = description;
    }

    public String getStart() {
        return this.mStart;
    }

    public void setStart(String Start) {
        this.mStart = Start;
    }

    public String getEnd() {
        return this.mEnd;
    }

    public void setEnd(String end) {
        this.mEnd = end;
    }
}
