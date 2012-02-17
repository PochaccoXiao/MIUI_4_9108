.class Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field channelIds:[Z

.field i:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Ljava/util/Iterator;[Z)V
    .locals 1
    .parameter "iter"
    .parameter "chIds"

    .prologue
    .line 479
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 480
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    .line 481
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;->channelIds:[Z

    .line 482
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 11
    .parameter "buf"

    .prologue
    const/4 v9, 0x2

    const-string v10, "GetChannelStatusResponse-wrote all"

    .line 434
    const/4 v7, 0x0

    .line 435
    .local v7, z:I
    const/4 v1, 0x0

    .line 436
    .local v1, bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    :goto_0
    const/4 v8, 0x7

    if-ge v7, v8, :cond_4

    .line 437
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;->channelIds:[Z

    aget-boolean v8, v8, v7

    if-eqz v8, :cond_3

    .line 438
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/GetChannelStatusResponse;->i:Ljava/util/Iterator;

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 441
    .restart local v1       #bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v5, v8, 0x80

    .line 442
    .local v5, tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 443
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 445
    const/4 v3, 0x0

    .line 446
    .local v3, s:B
    iget v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    and-int/lit8 v8, v8, 0x7

    int-to-byte v3, v8

    .line 449
    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isLocal()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 450
    :cond_0
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    move-object v4, v0

    .line 451
    .local v4, server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    iget-byte v8, v4, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v8, v3

    int-to-byte v3, v8

    .line 461
    .end local v4           #server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    :cond_1
    :goto_1
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 462
    iget-byte v8, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 463
    const-string v8, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 475
    .end local v3           #s:B
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 455
    .restart local v3       #s:B
    :cond_2
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    move-object v2, v0

    .line 456
    .local v2, cl:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    iget-boolean v8, v2, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    if-eqz v8, :cond_1

    .line 457
    or-int/lit8 v8, v3, -0x80

    int-to-byte v3, v8

    goto :goto_1

    .line 466
    .end local v2           #cl:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    .end local v3           #s:B
    .end local v5           #tag:I
    :cond_3
    const-string v8, "GetChannelStatusResponse-ID not there"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 467
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v8

    or-int/lit16 v5, v8, 0x80

    .line 468
    .restart local v5       #tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 469
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 470
    add-int/lit8 v6, v7, 0x1

    .line 471
    .local v6, temp:I
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 472
    const/4 v8, 0x0

    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 473
    const-string v8, "GetChannelStatusResponse-wrote all"

    invoke-static {p0, v10}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 477
    .end local v5           #tag:I
    .end local v6           #temp:I
    :cond_4
    return-void
.end method
