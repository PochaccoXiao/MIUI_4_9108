.class public final Lcom/google/android/mms/SecurityTelephony$Mms$ScrapSpace;
.super Ljava/lang/Object;
.source "SecurityTelephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/mms/SecurityTelephony$Mms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScrapSpace"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final SCRAP_FILE_PATH:Ljava/lang/String; = "/sdcard/mms/scrapSpace/.temp.jpg"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1747
    const-string v0, "content://security_mms/scrapSpace"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/mms/SecurityTelephony$Mms$ScrapSpace;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
