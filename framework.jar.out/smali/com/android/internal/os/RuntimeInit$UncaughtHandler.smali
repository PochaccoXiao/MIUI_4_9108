.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 19
    .parameter "t"
    .parameter "e"

    .prologue
    .line 76
    :try_start_0
    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 77
    .local v12, productName:Ljava/lang/String;
    if-eqz v12, :cond_1

    const-string v15, "SHV-E"

    invoke-virtual {v12, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v15

    if-nez v15, :cond_1

    .line 79
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "java.lang.OutOfMemoryError"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 81
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_0

    .line 82
    const-string v15, "AndroidRuntime"

    const-string/jumbo v16, "uncaughtException : Already creating heap profile... So return"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_0
    const/4 v15, 0x1

    invoke-static {v15}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 86
    const-string v3, "/data"

    .line 87
    .local v3, DATA_PATH:Ljava/lang/String;
    const-wide/16 v8, 0x0

    .line 91
    .local v8, mFreeMem:J
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 92
    .local v7, mDataFileStats:Landroid/os/StatFs;
    invoke-virtual {v7, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v15

    int-to-long v15, v15

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v8, v15, v17

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 95
    .local v4, cal:Ljava/util/Calendar;
    new-instance v15, Ljava/text/DecimalFormat;

    const-string v16, "00"

    invoke-direct/range {v15 .. v16}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x2

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v11

    .line 96
    .local v11, month:Ljava/lang/String;
    new-instance v15, Ljava/text/DecimalFormat;

    const-string v16, "00"

    invoke-direct/range {v15 .. v16}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v16, 0x5

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v5

    .line 97
    .local v5, day:Ljava/lang/String;
    new-instance v15, Ljava/text/DecimalFormat;

    const-string v16, "00"

    invoke-direct/range {v15 .. v16}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v16, 0xb

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v6

    .line 98
    .local v6, hour:Ljava/lang/String;
    new-instance v15, Ljava/text/DecimalFormat;

    const-string v16, "00"

    invoke-direct/range {v15 .. v16}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/16 v16, 0xc

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v15 .. v17}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    .line 99
    .local v10, min:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v16, 0x1

    move-object v0, v4

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 101
    .local v13, sysdump_time:Ljava/lang/String;
    const-wide/32 v15, 0x1312d00

    cmp-long v15, v8, v15

    if-ltz v15, :cond_2

    .line 102
    const-string v15, "AndroidRuntime"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "** Saving dumphprof_"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ".hprof"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "/data/log/dumphprof_"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ".hprof"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V

    .line 114
    .end local v3           #DATA_PATH:Ljava/lang/String;
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v5           #day:Ljava/lang/String;
    .end local v6           #hour:Ljava/lang/String;
    .end local v7           #mDataFileStats:Landroid/os/StatFs;
    .end local v8           #mFreeMem:J
    .end local v10           #min:Ljava/lang/String;
    .end local v11           #month:Ljava/lang/String;
    .end local v13           #sysdump_time:Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 115
    const-string v15, "AndroidRuntime"

    const-string/jumbo v16, "uncaughtException : Already handling crash ... So return"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 147
    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    .line 149
    .end local v12           #productName:Ljava/lang/String;
    :goto_1
    return-void

    .line 107
    .restart local v3       #DATA_PATH:Ljava/lang/String;
    .restart local v4       #cal:Ljava/util/Calendar;
    .restart local v5       #day:Ljava/lang/String;
    .restart local v6       #hour:Ljava/lang/String;
    .restart local v7       #mDataFileStats:Landroid/os/StatFs;
    .restart local v8       #mFreeMem:J
    .restart local v10       #min:Ljava/lang/String;
    .restart local v11       #month:Ljava/lang/String;
    .restart local v12       #productName:Ljava/lang/String;
    .restart local v13       #sysdump_time:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v15, "AndroidRuntime"

    const-string v16, "Failed to generate dumphprof because available size is less than 20M"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 138
    .end local v3           #DATA_PATH:Ljava/lang/String;
    .end local v4           #cal:Ljava/util/Calendar;
    .end local v5           #day:Ljava/lang/String;
    .end local v6           #hour:Ljava/lang/String;
    .end local v7           #mDataFileStats:Landroid/os/StatFs;
    .end local v8           #mFreeMem:J
    .end local v10           #min:Ljava/lang/String;
    .end local v11           #month:Ljava/lang/String;
    .end local v12           #productName:Ljava/lang/String;
    .end local v13           #sysdump_time:Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v14, v15

    .line 140
    .local v14, t2:Ljava/lang/Throwable;
    :try_start_2
    const-string v15, "AndroidRuntime"

    const-string v16, "Error reporting crash"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v14

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 146
    :goto_2
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 147
    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 118
    .end local v14           #t2:Ljava/lang/Throwable;
    .restart local v12       #productName:Ljava/lang/String;
    :cond_3
    const/4 v15, 0x1

    :try_start_3
    invoke-static {v15}, Lcom/android/internal/os/RuntimeInit;->access$102(Z)Z

    .line 120
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Landroid/os/IBinder;

    move-result-object v15

    if-nez v15, :cond_5

    .line 121
    const-string v15, "AndroidRuntime"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v15

    if-nez v15, :cond_4

    .line 126
    :cond_4
    const-string v15, "-k -z -d -o /data/log/dumpstate_sys_error"

    invoke-static {v15}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 129
    const-wide/16 v15, 0x2710

    :try_start_4
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 136
    :goto_3
    :try_start_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v15

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$200()Landroid/os/IBinder;

    move-result-object v16

    new-instance v17, Landroid/app/ApplicationErrorReport$CrashInfo;

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface/range {v15 .. v17}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 146
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    invoke-static {v15}, Landroid/os/Process;->killProcess(I)V

    .line 147
    const/16 v15, 0xa

    invoke-static {v15}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    .line 132
    :cond_5
    :try_start_6
    const-string v15, "AndroidRuntime"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "FATAL EXCEPTION: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object v0, v15

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_3

    .line 146
    .end local v12           #productName:Ljava/lang/String;
    :catchall_0
    move-exception v15

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/os/Process;->killProcess(I)V

    .line 147
    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->exit(I)V

    throw v15

    .line 130
    .restart local v12       #productName:Ljava/lang/String;
    :catch_1
    move-exception v15

    goto :goto_3

    .line 141
    .end local v12           #productName:Ljava/lang/String;
    .restart local v14       #t2:Ljava/lang/Throwable;
    :catch_2
    move-exception v15

    goto/16 :goto_2
.end method
