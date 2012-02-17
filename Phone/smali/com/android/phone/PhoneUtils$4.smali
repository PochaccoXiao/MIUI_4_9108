.class final Lcom/android/phone/PhoneUtils$4;
.super Ljava/lang/Object;
.source "PhoneUtils.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2021
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 35
    .parameter "token"
    .parameter "cookie"
    .parameter "ci"

    .prologue
    .line 2024
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/internal/telephony/Connection;

    move-object/from16 v19, v0

    .line 2038
    .local v19, conn:Lcom/android/internal/telephony/Connection;
    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isEmergencyNumber()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/CallerInfo;->isVoiceMailNumber()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2055
    :cond_0
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    move v5, v0

    if-nez v5, :cond_1

    .line 2056
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 2066
    :cond_1
    :goto_0
    const/16 v30, 0x0

    .line 2067
    .local v30, strBirthday:Ljava/lang/String;
    const/4 v5, -0x1

    move v0, v5

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    .line 2068
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    .line 2069
    const-string v5, "display_sns_info"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 2070
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2071
    .local v3, cr:Landroid/content/ContentResolver;
    const/16 v26, 0x0

    .line 2073
    .local v26, snsCursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$500()[Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact_id= \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' AND sns_id IS NOT NULL"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 2080
    :goto_1
    if-eqz v26, :cond_4

    .line 2081
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2082
    const-string v5, "sp"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v26

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 2083
    .local v29, sp:I
    const-string v5, "sns_id"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v26

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2084
    .local v28, sns_id:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns info: Service Provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", Friend ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    .line 2086
    const-string v5, "content://com.sec.android.app.provider.sns"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 2087
    .local v14, SNS_BASE:Landroid/net/Uri;
    const-string v5, "friend"

    invoke-static {v14, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2088
    .local v4, uri:Landroid/net/Uri;
    const-string v25, "friend.friend_id = ?"

    .line 2089
    .local v25, selection:Ljava/lang/String;
    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v28, v7, v5

    .line 2090
    .local v7, selectionArgs:[Ljava/lang/String;
    const/16 v27, 0x0

    .line 2093
    .local v27, snsStatusCursor:Landroid/database/Cursor;
    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "status_status"

    aput-object v8, v5, v6

    const/4 v6, 0x1

    const-string v8, "birthday"

    aput-object v8, v5, v6

    const-string v6, "friend.friend_id = ?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v27

    .line 2100
    :goto_2
    if-eqz v27, :cond_3

    .line 2101
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2102
    move/from16 v0, v29

    move-object/from16 v1, p3

    iput v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    .line 2103
    const/4 v5, 0x0

    move-object/from16 v0, v27

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    .line 2105
    const/4 v5, 0x1

    move-object/from16 v0, v27

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2106
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns Info: snsAccountType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", snsStatus = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    .line 2107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sns Info: birthday "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    .line 2109
    :cond_2
    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    .line 2112
    .end local v4           #uri:Landroid/net/Uri;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v14           #SNS_BASE:Landroid/net/Uri;
    .end local v25           #selection:Ljava/lang/String;
    .end local v27           #snsStatusCursor:Landroid/database/Cursor;
    .end local v28           #sns_id:Ljava/lang/String;
    .end local v29           #sp:I
    :cond_3
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 2116
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v26           #snsCursor:Landroid/database/Cursor;
    :cond_4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    .line 2117
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    .line 2118
    const/16 v22, 0x0

    .line 2119
    .local v22, isLunar:Z
    const-string v5, "display_birthday_info"

    invoke-static {v5}, Lcom/android/phone/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 2120
    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v34

    .line 2121
    .local v34, uriBuilder:Landroid/net/Uri$Builder;
    const-string v5, "limit"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v34

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 2122
    invoke-virtual/range {v34 .. v34}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 2123
    .local v9, birthUri:Landroid/net/Uri;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    .line 2124
    .local v24, sb:Ljava/lang/StringBuilder;
    const-string v5, "contact_id= \'"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2125
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2126
    const-string v5, "mimetype= \'vnd.android.cursor.item/contact_event\' AND "

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2127
    const-string v5, "data2= 3"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2128
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 2146
    .restart local v3       #cr:Landroid/content/ContentResolver;
    const/4 v5, 0x1

    new-array v10, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data1"

    aput-object v6, v10, v5

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2147
    .local v20, cur:Landroid/database/Cursor;
    if-eqz v20, :cond_6

    .line 2149
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2150
    const-string v5, "data1"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 2152
    :cond_5
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2156
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v9           #birthUri:Landroid/net/Uri;
    .end local v20           #cur:Landroid/database/Cursor;
    .end local v24           #sb:Ljava/lang/StringBuilder;
    .end local v34           #uriBuilder:Landroid/net/Uri$Builder;
    :cond_6
    if-eqz v30, :cond_a

    .line 2157
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v5, "MM-dd"

    invoke-direct {v15, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2158
    .local v15, birthFormat:Ljava/text/SimpleDateFormat;
    const/16 v16, 0x0

    .local v16, birthday:Ljava/util/Date;
    const/16 v31, 0x0

    .line 2160
    .local v31, today:Ljava/util/Date;
    :try_start_2
    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()[Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;

    move-result-object v16

    .line 2170
    const-string v5, "2011-"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/phone/PhoneUtils;->access$700()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/http/impl/cookie/DateUtils;->parseDate(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/Date;
    :try_end_2
    .catch Lorg/apache/http/impl/cookie/DateParseException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v31

    .line 2181
    :goto_3
    if-eqz v16, :cond_a

    if-eqz v31, :cond_a

    .line 2182
    invoke-virtual/range {v31 .. v31}, Ljava/util/Date;->getYear()I

    move-result v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 2183
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-lez v5, :cond_7

    .line 2185
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getYear()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/Date;->setYear(I)V

    .line 2188
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v17

    .line 2189
    .local v17, birthdayTime:J
    invoke-virtual/range {v31 .. v31}, Ljava/util/Date;->getTime()J

    move-result-wide v32

    .line 2191
    .local v32, todayTime:J
    sub-long v5, v17, v32

    const-wide/32 v7, 0x5265c00

    div-long/2addr v5, v7

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    .line 2192
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    move-wide v5, v0

    const-wide/16 v7, 0x7

    cmp-long v5, v5, v7

    if-lez v5, :cond_9

    .line 2193
    :cond_8
    const-wide/16 v5, -0x1

    move-wide v0, v5

    move-object/from16 v2, p3

    iput-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    .line 2195
    :cond_9
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_a

    .line 2196
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p3

    iput-boolean v0, v1, Lcom/android/internal/telephony/CallerInfo;->isBirthday:Z

    .line 2201
    .end local v15           #birthFormat:Ljava/text/SimpleDateFormat;
    .end local v16           #birthday:Ljava/util/Date;
    .end local v17           #birthdayTime:J
    .end local v31           #today:Ljava/util/Date;
    .end local v32           #todayTime:J
    :cond_a
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Connection;->setUserData(Ljava/lang/Object;)V

    .line 2202
    return-void

    .line 2059
    .end local v22           #isLunar:Z
    .end local v30           #strBirthday:Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v23

    .line 2060
    .local v23, newCi:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v23, :cond_1

    .line 2061
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 2062
    move-object/from16 p3, v23

    goto/16 :goto_0

    .line 2077
    .end local v23           #newCi:Lcom/android/internal/telephony/CallerInfo;
    .restart local v3       #cr:Landroid/content/ContentResolver;
    .restart local v26       #snsCursor:Landroid/database/Cursor;
    .restart local v30       #strBirthday:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v21, v5

    .line 2078
    .local v21, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Contact id Query exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2096
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v7       #selectionArgs:[Ljava/lang/String;
    .restart local v14       #SNS_BASE:Landroid/net/Uri;
    .restart local v25       #selection:Ljava/lang/String;
    .restart local v27       #snsStatusCursor:Landroid/database/Cursor;
    .restart local v28       #sns_id:Ljava/lang/String;
    .restart local v29       #sp:I
    :catch_1
    move-exception v5

    move-object/from16 v21, v5

    .line 2097
    .restart local v21       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sns Query exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2175
    .end local v3           #cr:Landroid/content/ContentResolver;
    .end local v4           #uri:Landroid/net/Uri;
    .end local v7           #selectionArgs:[Ljava/lang/String;
    .end local v14           #SNS_BASE:Landroid/net/Uri;
    .end local v21           #e:Ljava/lang/Exception;
    .end local v25           #selection:Ljava/lang/String;
    .end local v26           #snsCursor:Landroid/database/Cursor;
    .end local v27           #snsStatusCursor:Landroid/database/Cursor;
    .end local v28           #sns_id:Ljava/lang/String;
    .end local v29           #sp:I
    .restart local v15       #birthFormat:Ljava/text/SimpleDateFormat;
    .restart local v16       #birthday:Ljava/util/Date;
    .restart local v22       #isLunar:Z
    .restart local v31       #today:Ljava/util/Date;
    :catch_2
    move-exception v5

    move-object/from16 v21, v5

    .line 2176
    .local v21, e:Lorg/apache/http/impl/cookie/DateParseException;
    const-string v5, "birthday - DateParseException"

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2177
    .end local v21           #e:Lorg/apache/http/impl/cookie/DateParseException;
    :catch_3
    move-exception v5

    move-object/from16 v21, v5

    .line 2178
    .local v21, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "birthday - Exception - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/android/phone/PhoneUtils;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->access$600(Ljava/lang/String;)V

    goto/16 :goto_3
.end method
