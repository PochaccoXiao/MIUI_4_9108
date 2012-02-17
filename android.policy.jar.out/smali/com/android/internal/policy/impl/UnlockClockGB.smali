.class public Lcom/android/internal/policy/impl/UnlockClockGB;
.super Landroid/widget/LinearLayout;
.source "UnlockClockGB.java"


# static fields
.field private static final AMPMselection:I = 0x1

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "UnlockClock"


# instance fields
.field private mAM:Landroid/widget/TextView;

.field private mAM_PM_Check01:Z

.field private mCarrier:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCreatedInPortrait:Z

.field private mDateFormatString:Ljava/lang/String;

.field private mDate_Month:Landroid/widget/TextView;

.field private mHour01:Landroid/widget/ImageView;

.field private mHour02:Landroid/widget/ImageView;

.field private mMin01:Landroid/widget/ImageView;

.field private mMin02:Landroid/widget/ImageView;

.field private mPM:Landroid/widget/TextView;

.field private mRightNow:Ljava/util/Calendar;

.field private tz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "createdInPortrait"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 66
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->setOrientation(I)V

    .line 68
    iput-object p1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    .line 71
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCreatedInPortrait:Z

    .line 75
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 76
    .local v0, inflater:Landroid/view/LayoutInflater;
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCreatedInPortrait:Z

    if-eqz v1, :cond_0

    .line 77
    const v1, 0x109007a

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 89
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    .line 90
    iput-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 92
    const v1, 0x1020270

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour01:Landroid/widget/ImageView;

    .line 93
    const v1, 0x1020271

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour02:Landroid/widget/ImageView;

    .line 94
    const v1, 0x1020273

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin01:Landroid/widget/ImageView;

    .line 95
    const v1, 0x1020274

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin02:Landroid/widget/ImageView;

    .line 96
    const v1, 0x1020275

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    .line 97
    const v1, 0x1020276

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    .line 98
    const v1, 0x1020277

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDate_Month:Landroid/widget/TextView;

    .line 101
    const v1, 0x102026e

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCarrier:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 107
    return-void
.end method

.method private changeTimeStringToDrawable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "hourString"
    .parameter "minString"

    .prologue
    const/4 v4, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const-string v5, ""

    .line 240
    new-array v0, v4, [I

    .line 241
    .local v0, choiceHourNumber:[I
    new-array v1, v4, [I

    .line 247
    .local v1, choiceMinNumber:[I
    const-string v4, ""

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 248
    .local v2, timePattern1:[Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, timePattern2:[Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->sortTimeDrawables([Ljava/lang/String;)[I

    move-result-object v0

    .line 251
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->sortTimeDrawables([Ljava/lang/String;)[I

    move-result-object v1

    .line 253
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour01:Landroid/widget/ImageView;

    aget v5, v0, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 254
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mHour02:Landroid/widget/ImageView;

    aget v5, v0, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin01:Landroid/widget/ImageView;

    aget v5, v1, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 257
    iget-object v4, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mMin02:Landroid/widget/ImageView;

    aget v5, v1, v7

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    return-void
.end method

.method private checkTimeAMPM(I)Ljava/lang/String;
    .locals 1
    .parameter "minInt"

    .prologue
    .line 212
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, minString:Ljava/lang/String;
    return-object v0
.end method

.method private checkTimeValue(I)Ljava/lang/String;
    .locals 3
    .parameter "minInt"

    .prologue
    .line 200
    const/16 v1, 0xa

    if-ge p1, v1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 206
    .local v0, minString:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 203
    .end local v0           #minString:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #minString:Ljava/lang/String;
    goto :goto_0
.end method

.method private setAMPM()I
    .locals 5

    .prologue
    .line 186
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 187
    .local v0, am_pmInt01:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x107000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, strAMPM:[Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    aget-object v1, v2, v3

    .line 192
    .local v1, am_pmString01:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    return v0
.end method

.method private setAMPMMode()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 165
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    if-ne v1, v4, :cond_1

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->setAMPM()I

    .line 171
    const/4 v0, 0x1

    .line 173
    .local v0, am_pm:I
    if-nez v0, :cond_2

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_2
    if-ne v0, v4, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mPM:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private sortTimeDrawables([Ljava/lang/String;)[I
    .locals 7
    .parameter "timePattern"

    .prologue
    .line 268
    const/16 v6, 0xa

    new-array v5, v6, [I

    fill-array-data v5, :array_0

    .line 277
    .local v5, unlock_clock_drawables:[I
    const/4 v6, 0x4

    new-array v0, v6, [I

    .line 279
    .local v0, choiceNumber:[I
    array-length v4, p1

    .line 281
    .local v4, k:I
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    .line 283
    :try_start_0
    aget-object v6, p1, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 287
    .local v3, j:I
    :goto_1
    aget v6, v5, v3

    aput v6, v0, v2

    .line 281
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 284
    .end local v3           #j:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 285
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    .restart local v3       #j:I
    goto :goto_1

    .line 290
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v3           #j:I
    :cond_0
    return-object v0

    .line 268
    :array_0
    .array-data 0x4
        0x28t 0x4t 0x8t 0x1t
        0x29t 0x4t 0x8t 0x1t
        0x2bt 0x4t 0x8t 0x1t
        0x2ct 0x4t 0x8t 0x1t
        0x2dt 0x4t 0x8t 0x1t
        0x2et 0x4t 0x8t 0x1t
        0x2ft 0x4t 0x8t 0x1t
        0x30t 0x4t 0x8t 0x1t
        0x31t 0x4t 0x8t 0x1t
        0x32t 0x4t 0x8t 0x1t
    .end array-data
.end method

.method private transformHourData(I)Ljava/lang/String;
    .locals 2
    .parameter "hourInt"

    .prologue
    .line 222
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    if-nez v1, :cond_2

    .line 223
    const/16 v1, 0xc

    if-le p1, v1, :cond_1

    add-int/lit8 p1, p1, -0xc

    .line 225
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, hourString:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 224
    .end local v0           #hourString:Ljava/lang/String;
    :cond_1
    if-nez p1, :cond_0

    const/16 p1, 0xc

    goto :goto_0

    .line 230
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #hourString:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 264
    return-void
.end method

.method protected refreshTimeAndDateDisplay()V
    .locals 8

    .prologue
    .line 116
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    if-nez v5, :cond_1

    .line 125
    const-string v5, "persist.sys.timezone"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, current:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 132
    .end local v0           #current:Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v5, "UnlockClock"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "GMT_update mRightNow.getTimeZone().getID() == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 140
    .local v1, hourInt01:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 142
    .local v3, minInt01:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->transformHourData(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, hourString01:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/UnlockClockGB;->checkTimeValue(I)Ljava/lang/String;

    move-result-object v4

    .line 145
    .local v4, minString01:Ljava/lang/String;
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/impl/UnlockClockGB;->changeTimeStringToDrawable(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mAM_PM_Check01:Z

    .line 148
    invoke-direct {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->setAMPMMode()V

    .line 154
    const-string v5, "GT-I9108"

    const-string v6, "SPH-D710"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    const v6, 0x10400ac

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    .line 160
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDate_Month:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-static {v6, v7}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    return-void

    .line 128
    .end local v1           #hourInt01:I
    .end local v2           #hourString01:Ljava/lang/String;
    .end local v3           #minInt01:I
    .end local v4           #minString01:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    if-eqz v5, :cond_0

    .line 129
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mRightNow:Ljava/util/Calendar;

    iget-object v6, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    invoke-static {v6}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_0

    .line 157
    .restart local v1       #hourInt01:I
    .restart local v2       #hourString01:Ljava/lang/String;
    .restart local v3       #minInt01:I
    .restart local v4       #minString01:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mContext:Landroid/content/Context;

    const v6, 0x10400ab

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mDateFormatString:Ljava/lang/String;

    goto :goto_1
.end method

.method public resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 1
    .parameter "updateMonitor"

    .prologue
    .line 110
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getChangedTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->tz:Ljava/lang/String;

    .line 111
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 112
    return-void
.end method

.method public setCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCarrier:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 296
    if-eqz p1, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    if-eqz p2, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/UnlockClockGB;->mCarrier:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
