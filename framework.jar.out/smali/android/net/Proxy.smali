.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 3

    .prologue
    .line 173
    const-string/jumbo v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 175
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 176
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 179
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    .line 189
    const-string/jumbo v2, "net.gprs.http-proxy"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, host:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 191
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 192
    .local v1, u:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getPort()I

    move-result v2

    .line 194
    .end local v1           #u:Landroid/net/Uri;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .parameter "ctx"

    .prologue
    const/4 v6, 0x0

    const-string v5, "false"

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 55
    const-string v3, "http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 59
    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 60
    .local v2, i:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object v3, v6

    .line 105
    .end local v2           #i:I
    :goto_0
    return-object v3

    .line 66
    .restart local v2       #i:I
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 90
    .end local v2           #i:I
    :cond_1
    const-string v3, "gsm.defaultpdpcontext.active"

    const-string v4, "false"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gsm.wifiConnected.active"

    const-string v4, "false"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "true"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    :cond_2
    const-string/jumbo v3, "wifi_http_proxy"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    move-object v3, v1

    .line 98
    goto :goto_0

    :cond_3
    move-object v3, v6

    .line 101
    goto :goto_0

    .line 105
    :cond_4
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v6, -0x1

    const-string v7, "false"

    .line 114
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/Object;)V

    .line 116
    const-string v4, "http_proxy"

    invoke-static {v0, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, host:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 120
    const/16 v4, 0x3a

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 121
    .local v2, i:I
    if-ne v2, v6, :cond_0

    move v4, v6

    .line 164
    .end local v2           #i:I
    :goto_0
    return v4

    .line 130
    .restart local v2       #i:I
    :cond_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    .line 152
    .end local v2           #i:I
    :cond_1
    const-string v4, "gsm.defaultpdpcontext.active"

    const-string v5, "false"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "false"

    if-ne v4, v7, :cond_3

    .line 154
    const-string/jumbo v4, "wifi_http_port"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 158
    .local v3, port:I
    if-ne v3, v6, :cond_2

    .line 159
    const/16 v3, 0x1f90

    :cond_2
    move v4, v3

    .line 160
    goto :goto_0

    .line 164
    .end local v3           #port:I
    :cond_3
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v4

    goto :goto_0
.end method
