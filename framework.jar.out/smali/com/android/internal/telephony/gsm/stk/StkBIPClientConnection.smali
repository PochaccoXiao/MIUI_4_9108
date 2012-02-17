.class Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;
.super Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;
.source "StkBIPConnection.java"


# instance fields
.field ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

.field NetworkAccessname:Ljava/lang/String;

.field bDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

.field destination:Ljava/net/InetAddress;

.field in:Ljava/io/DataInputStream;

.field isLinkEstablished:Z

.field isfirstTime:Z

.field lastReadPosition:I

.field out:Ljava/io/DataOutputStream;

.field passwd:Ljava/lang/String;

.field receiver:Ljava/lang/Thread;

.field rxBuf:Ljava/io/ByteArrayOutputStream;

.field rxBytes:[B

.field socket:Ljava/lang/Object;

.field txBuf:Ljava/io/ByteArrayOutputStream;

.field txIndex:I

.field userName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/stk/BearerDescription;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/BearerMode;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "bearerDesc"
    .parameter "buffSize"
    .parameter "iface"
    .parameter "stkBIPManager"
    .parameter "apn"
    .parameter "mode"
    .parameter "dest"
    .parameter "userName"
    .parameter "passwd"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 112
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;-><init>(ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/StkBIPManager;)V

    .line 94
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 95
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 96
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 114
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->bDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    .line 115
    iput-object p5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->NetworkAccessname:Ljava/lang/String;

    .line 116
    iput-object p8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->userName:Ljava/lang/String;

    .line 117
    iput-object p9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->passwd:Ljava/lang/String;

    .line 118
    iput-object p6, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->ConnectionMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 120
    iput v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    .line 121
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 122
    if-eqz p7, :cond_0

    .line 124
    :try_start_0
    iget-object v1, p7, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->address:[B

    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 125
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 126
    .local v0, e:Ljava/net/UnknownHostException;
    const-string v1, "UnknownHostException while getting the Data destination IP Address"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    goto :goto_0
.end method


# virtual methods
.method public getRxData(I)[B
    .locals 6
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v5

    .line 277
    :goto_0
    return-object v2

    .line 249
    :cond_0
    const-string/jumbo v2, "rxbuf.size != null!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    if-nez v2, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    .line 255
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rxBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    array-length v2, v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    sub-int v0, v2, v3

    .line 258
    .local v0, bytesAvailable:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytesAvailable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  rxBytes.length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  lastReadPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    if-le p1, v0, :cond_2

    .line 260
    move p1, v0

    .line 262
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    new-array v1, p1, [B

    .line 265
    .local v1, tmp:[B
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    invoke-static {v2, v3, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    .line 267
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastReadPosition = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    array-length v3, v3

    if-lt v2, v3, :cond_3

    .line 270
    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBytes:[B

    .line 271
    const-string/jumbo v2, "reset buffer rxbuf"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    iput v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    .line 273
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 276
    :cond_3
    const-string/jumbo v2, "return now!!!"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    .line 277
    goto/16 :goto_0
.end method

.method public setupStreams()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketTimeoutException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v7, "Created receiver thread"

    .line 134
    const/4 v2, 0x0

    .line 136
    .local v2, s:Ljava/net/Socket;
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Opening socket with"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v8}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v8, v8, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 139
    .local v5, tmp:[B
    const/4 v6, 0x0

    .local v6, x:I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-byte v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 141
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 142
    const-string v7, "Opening TCP socket"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    new-instance v3, Ljava/net/Socket;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v8, v8, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-direct {v3, v7, v8}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 144
    .end local v2           #s:Ljava/net/Socket;
    .local v3, s:Ljava/net/Socket;
    :try_start_1
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    .line 145
    const-string v7, "Opening input stream"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    new-instance v7, Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    .line 147
    const-string v7, "Opening output stream"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    new-instance v7, Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    .line 149
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/gsm/stk/tcpRxThread;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 150
    const-string v7, "Created receiver thread"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 160
    .end local v3           #s:Ljava/net/Socket;
    .restart local v2       #s:Ljava/net/Socket;
    :goto_1
    const/4 v7, 0x1

    :try_start_2
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 162
    const-string v7, "Successfully setup streams!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txBuf:Ljava/io/ByteArrayOutputStream;

    .line 164
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    iget v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->bufferSize:I

    invoke-direct {v7, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->rxBuf:Ljava/io/ByteArrayOutputStream;

    .line 165
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->txIndex:I

    .line 166
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->lastReadPosition:I

    .line 167
    const-string/jumbo v7, "txBuff & rxBuff created!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 195
    return-void

    .line 153
    :cond_1
    const-string v7, "Opening UDP socket"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V

    .line 155
    .local v0, ds:Ljava/net/DatagramSocket;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->destination:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    iget v8, v8, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v0, v7, v8}, Ljava/net/DatagramSocket;->connect(Ljava/net/InetAddress;I)V

    .line 156
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    .line 157
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/internal/telephony/gsm/stk/udpRxThread;

    invoke-direct {v8, p0}, Lcom/android/internal/telephony/gsm/stk/udpRxThread;-><init>(Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    .line 158
    const-string v7, "Created receiver thread"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 170
    .end local v0           #ds:Ljava/net/DatagramSocket;
    .end local v5           #tmp:[B
    .end local v6           #x:I
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 171
    .local v4, ste:Ljava/net/SocketTimeoutException;
    :goto_2
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 172
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 173
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Socket Timeout Exception Socket is not connected\nlinkEstablished ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v7, Ljava/net/SocketTimeoutException;

    const-string v8, "TIMEOUT"

    invoke-direct {v7, v8}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 179
    .end local v4           #ste:Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 180
    .local v1, io:Ljava/io/IOException;
    :goto_3
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    .line 181
    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 182
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IO Exception while creating socket streams\nlinkEstablished ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isLinkEstablished:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    if-eqz v2, :cond_2

    .line 188
    :try_start_3
    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 192
    :cond_2
    :goto_4
    throw v1

    .line 190
    :catch_2
    move-exception v7

    goto :goto_4

    .line 179
    .end local v1           #io:Ljava/io/IOException;
    .end local v2           #s:Ljava/net/Socket;
    .restart local v3       #s:Ljava/net/Socket;
    .restart local v5       #tmp:[B
    .restart local v6       #x:I
    :catch_3
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #s:Ljava/net/Socket;
    .restart local v2       #s:Ljava/net/Socket;
    goto :goto_3

    .line 170
    .end local v2           #s:Ljava/net/Socket;
    .restart local v3       #s:Ljava/net/Socket;
    :catch_4
    move-exception v7

    move-object v4, v7

    move-object v2, v3

    .end local v3           #s:Ljava/net/Socket;
    .restart local v2       #s:Ljava/net/Socket;
    goto :goto_2
.end method

.method public terminateStreams()V
    .locals 6

    .prologue
    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the streams  for channel ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->channelId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPConnection;->uiccTerminalIface:Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->isTCPRemoteClient()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 202
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    if-eqz v4, :cond_0

    .line 203
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 205
    :cond_0
    const-string v4, "Closing input stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    if-eqz v4, :cond_1

    .line 207
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->in:Ljava/io/DataInputStream;

    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    .line 209
    :cond_1
    const-string v4, "Closing output stream"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_2

    .line 211
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    .line 213
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v3, Ljava/net/Socket;

    .line 214
    .local v3, s:Ljava/net/Socket;
    const-string v4, "Closing socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    if-eqz v3, :cond_3

    .line 216
    invoke-virtual {v3}, Ljava/net/Socket;->close()V

    .line 218
    :cond_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z

    .line 228
    .end local v3           #s:Ljava/net/Socket;
    :goto_0
    const-string v4, "Closed Streams Successfully"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    :goto_1
    return-void

    .line 220
    :cond_4
    const-string v4, "closing UDP socket"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->receiver:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 222
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->socket:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramSocket;

    .line 223
    .local v0, ds:Ljava/net/DatagramSocket;
    if-eqz v0, :cond_5

    .line 224
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 226
    :cond_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/stk/StkBIPClientConnection;->isfirstTime:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 230
    .end local v0           #ds:Ljava/net/DatagramSocket;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 231
    .local v2, io:Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IO Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 233
    .end local v2           #io:Ljava/io/IOException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 234
    .local v1, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "A generic Exception while terminating the streams: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method
