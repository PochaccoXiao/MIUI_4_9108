.class Lcom/android/settings/Settings$2;
.super Landroid/os/Handler;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Settings;


# direct methods
.method constructor <init>(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const-string v11, "hardware_version"

    const-string v10, "I9108"

    const-string v9, "Settings"

    .line 170
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 173
    :pswitch_0
    const-string v7, "Settings"

    const-string v7, "in QUERT_SERVM_DONE"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 177
    .local v1, ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_1

    .line 178
    const-string v7, "Settings"

    const-string v7, "Exception Occur!!!"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 181
    :cond_1
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-nez v7, :cond_2

    .line 183
    const-string v7, "Settings"

    const-string v7, "ar.result == NULL! - it does not need to refresh"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    :cond_2
    iget-object v7, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v2, v0

    .line 189
    .local v2, buf:[B
    const-string v7, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "size of result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    array-length v7, v2

    if-eqz v7, :cond_0

    .line 195
    array-length v7, v2

    div-int/lit8 v7, v7, 0x22

    add-int/lit8 v5, v7, 0x1

    .line 196
    .local v5, numOfLine:I
    iget-object v7, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mStrings:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-le v5, v7, :cond_3

    .line 197
    const-string v7, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Too many lines. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v7, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mStrings:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)[Ljava/lang/String;

    move-result-object v7

    array-length v5, v7

    .line 201
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 203
    const-string v6, ""

    .line 205
    .local v6, rowString:Ljava/lang/String;
    const/4 v4, 0x2

    .local v4, j:I
    :goto_2
    const/16 v7, 0x22

    if-ge v4, v7, :cond_4

    .line 207
    mul-int/lit8 v7, v3, 0x22

    add-int/2addr v7, v4

    array-length v8, v2

    if-lt v7, v8, :cond_6

    .line 208
    const-string v7, "Settings"

    const-string v7, "unexpected end of line"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    :goto_3
    iget-object v7, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mStrings:[Ljava/lang/String;
    invoke-static {v7}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)[Ljava/lang/String;

    move-result-object v7

    aput-object v6, v7, v3

    .line 222
    const-string v7, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mStrings[i] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    #getter for: Lcom/android/settings/Settings;->mStrings:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/settings/Settings;->access$000(Lcom/android/settings/Settings;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  rowString.length() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v7, "I9108"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_5

    .line 225
    iget-object v7, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v7}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hardware_version"

    invoke-static {v7, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/Settings;->curHWVersion:Ljava/lang/String;

    .line 226
    const-string v7, "I9108"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lcom/android/settings/Settings;->strFTAHardwareVersion:Ljava/lang/String;

    .line 227
    const-string v7, "Settings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set strFTAHardwareVersion : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/android/settings/Settings;->strFTAHardwareVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    sget-object v7, Lcom/android/settings/Settings;->curHWVersion:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ge v7, v8, :cond_5

    .line 229
    iget-object v7, p0, Lcom/android/settings/Settings$2;->this$0:Lcom/android/settings/Settings;

    invoke-virtual {v7}, Lcom/android/settings/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hardware_version"

    sget-object v8, Lcom/android/settings/Settings;->strFTAHardwareVersion:Ljava/lang/String;

    invoke-static {v7, v11, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 201
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 212
    :cond_6
    mul-int/lit8 v7, v3, 0x22

    add-int/2addr v7, v4

    aget-byte v7, v2, v7

    if-nez v7, :cond_7

    .line 214
    const-string v7, "Settings"

    const-string v7, "break"

    invoke-static {v9, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 218
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    mul-int/lit8 v8, v3, 0x22

    add-int/2addr v8, v4

    aget-byte v8, v2, v8

    int-to-char v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 170
    :pswitch_data_0
    .packed-switch 0x3f0
        :pswitch_0
    .end packed-switch
.end method
