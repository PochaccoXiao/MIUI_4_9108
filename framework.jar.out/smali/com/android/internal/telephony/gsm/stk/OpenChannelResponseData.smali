.class Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# instance fields
.field bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

.field param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 265
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 266
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    .line 341
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    .line 342
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;)V
    .locals 1
    .parameter "con"

    .prologue
    const/4 v0, 0x0

    .line 335
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    .line 265
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 266
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    .line 337
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    .line 338
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBIPCurrntCmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    .line 339
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 10
    .parameter "buf"

    .prologue
    const/4 v9, 0x2

    .line 269
    const-string v6, " OpenChannelResponseData: format() "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 273
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    if-eqz v6, :cond_2

    .line 276
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_STATUS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 277
    .local v4, tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 278
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 280
    const/4 v2, 0x0

    .line 281
    .local v2, s:B
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    and-int/lit8 v6, v6, 0x7

    int-to-byte v2, v6

    .line 283
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isServer()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isLocal()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 284
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    check-cast v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;

    .line 285
    .local v3, server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    iget-byte v6, v3, Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;->linkState:B

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v6, v2

    int-to-byte v2, v6

    .line 294
    .end local v3           #server:Lcom/android/internal/telephony/gsm/stk/StkBIPServerConnection;
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 295
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->linkStateCause:B

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 299
    .end local v2           #s:B
    .end local v4           #tag:I
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isUDPRemoteClient()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 301
    :cond_3
    const-string v6, " OpenChannelResponseData: format() : bipcon is client including Bearer description terminal reponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 302
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 303
    .restart local v4       #tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 306
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 308
    .local v5, tmp:Ljava/io/ByteArrayOutputStream;
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {v5, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 309
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget-byte v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    packed-switch v6, :pswitch_data_0

    .line 319
    :goto_1
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 320
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v8

    invoke-virtual {p1, v6, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 325
    .end local v4           #tag:I
    .end local v5           #tmp:Ljava/io/ByteArrayOutputStream;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    move v0, v6

    .line 326
    .local v0, bufsize:I
    :goto_2
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v4, v6, 0x80

    .line 327
    .restart local v4       #tag:I
    invoke-virtual {p1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 328
    invoke-virtual {p1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 330
    shr-int/lit8 v6, v0, 0x8

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 331
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    return-void

    .line 288
    .end local v0           #bufsize:I
    .restart local v2       #s:B
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->bipcon:Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;

    check-cast v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;

    .line 289
    .local v1, cl:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    iget-boolean v6, v1, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    if-eqz v6, :cond_1

    .line 290
    or-int/lit8 v6, v2, -0x80

    int-to-byte v2, v6

    goto/16 :goto_0

    .line 312
    .end local v1           #cl:Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
    .end local v2           #s:B
    .restart local v5       #tmp:Ljava/io/ByteArrayOutputStream;
    :pswitch_0
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 315
    :pswitch_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    invoke-virtual {v6, v5}, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->writeParametersTobuffer(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_1

    .line 325
    .end local v4           #tag:I
    .end local v5           #tmp:Ljava/io/ByteArrayOutputStream;
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/OpenChannelResponseData;->param:Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;->mBufferSize:I

    move v0, v6

    goto :goto_2

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
