.class Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LogsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/provider/logsprovider/LogsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 67
    const-string v0, "logs.db"

    const/4 v1, 0x0

    const/16 v2, 0x29

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 71
    const-string v0, "CREATE TABLE logs (_id INTEGER PRIMARY KEY AUTOINCREMENT,number TEXT,address TEXT,date INTEGER,duration INTEGER,type INTEGER,new INTEGER,name TEXT,name_reversed TEXT,numbertype INTEGER,numberlabel TEXT,messageid TEXT,logtype INTEGER NOT NULL,frequent INTEGER,contactid INTEGER NOT NULL,raw_contact_id INTEGER,m_subject TEXT,m_content TEXT,pinyin_name TEXT,sns_tid TEXT,sns_pkey TEXT,account_name TEXT,account_id TEXT,sns_receiver_count TEXT,sp_type TEXT,cnap_name TEXT,cdnip_number TEXT, service_type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 104
    const-string v0, "CREATE TABLE sns_msg_receiver_map (_id INTEGER PRIMARY KEY AUTOINCREMENT,message_id INTEGER,receiver_id TEXT,receiver_name TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 111
    const-string v0, "CREATE TABLE duration_table (_id INTEGER PRIMARY KEY AUTOINCREMENT,last_voice INTEGER,last_video INTEGER,last_voip INTEGER,dial_voice INTEGER,dial_video INTEGER,dial_voip INTEGER,rece_voice INTEGER,rece_video INTEGER,rece_voip INTEGER,all_voice INTEGER,all_video INTEGER,all_voip INTEGER,reset_date INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 128
    const-string v0, "INSERT INTO duration_table VALUES (1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 130
    const-string v0, "CREATE TRIGGER duration_update INSERT ON logs BEGIN UPDATE duration_table SET last_voice = new.duration WHERE new.logtype = 100;UPDATE duration_table SET last_video = new.duration WHERE new.logtype = 500;UPDATE duration_table SET last_voip = new.duration WHERE new.logtype = 800;UPDATE duration_table SET dial_voice = dial_voice + new.duration WHERE new.logtype = 100 AND new.type = 2;UPDATE duration_table SET dial_video = dial_video + new.duration WHERE new.logtype = 500 AND new.type = 2;UPDATE duration_table SET dial_voip = dial_voip + new.duration WHERE new.logtype = 800 AND new.type = 2;UPDATE duration_table SET rece_voice = rece_voice + new.duration WHERE new.logtype = 100 AND new.type = 1;UPDATE duration_table SET rece_video = rece_video + new.duration WHERE new.logtype = 500 AND new.type = 1;UPDATE duration_table SET rece_voip = rece_voip + new.duration WHERE new.logtype = 800 AND new.type = 1;UPDATE duration_table SET all_voice = all_voice + new.duration WHERE new.logtype = 100;UPDATE duration_table SET all_video = all_video + new.duration WHERE new.logtype = 500;UPDATE duration_table SET all_voip = all_voip + new.duration WHERE new.logtype = 800; END"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    const-string v0, "CREATE INDEX sns_map_id ON sns_msg_receiver_map (_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 156
    const-string v0, "CREATE INDEX sns_message_id ON sns_msg_receiver_map (message_id);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 160
    const-string v0, "CREATE INDEX logs_contact_id ON logs (contactid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 163
    const-string v0, "CREATE INDEX logs_message_id ON logs (messageid);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 166
    const-string v0, "CREATE INDEX logs_log_type ON logs (logtype);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 175
    const-string v0, "DROP TABLE IF EXISTS logs"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 176
    const-string v0, "DROP TABLE IF EXISTS sns_msg_receiver_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 177
    const-string v0, "DROP TABLE IF EXISTS duration_table"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p1}, Lcom/sec/android/provider/logsprovider/LogsProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 180
    return-void
.end method
