.class public Landroid/pim/vcard/VCardEntry;
.super Ljava/lang/Object;
.source "VCardEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/pim/vcard/VCardEntry$Property;,
        Landroid/pim/vcard/VCardEntry$PhotoData;,
        Landroid/pim/vcard/VCardEntry$ImData;,
        Landroid/pim/vcard/VCardEntry$OrganizationData;,
        Landroid/pim/vcard/VCardEntry$PostalData;,
        Landroid/pim/vcard/VCardEntry$EmailData;,
        Landroid/pim/vcard/VCardEntry$PhoneData;
    }
.end annotation


# static fields
.field private static final ACCOUNT_TYPE_EXCHANGE:Ljava/lang/String; = "com.android.exchange"

.field private static final ACCOUNT_TYPE_GOOGLE:Ljava/lang/String; = "com.google"

.field private static final ACCOUNT_TYPE_PHONE:Ljava/lang/String; = "vnd.sec.contact.phone"

.field private static final DEFAULT_ORGANIZATION_TYPE:I = 0x1

.field private static final GOOGLE_MY_CONTACTS_GROUP:Ljava/lang/String; = "System Group: My Contacts"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardEntry"

.field private static final sEmptyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sImMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private mAndroidCustomPropertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnniversary:Ljava/lang/String;

.field private mBirthday:Ljava/lang/String;

.field private mBirthdayType:Ljava/lang/String;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation
.end field

.field private mFamilyName:Ljava/lang/String;

.field private mFormattedName:Ljava/lang/String;

.field private mGivenName:Ljava/lang/String;

.field private mImList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleName:Ljava/lang/String;

.field private mNickNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneticFamilyName:Ljava/lang/String;

.field private mPhoneticFullName:Ljava/lang/String;

.field private mPhoneticGivenName:Ljava/lang/String;

.field private mPhoneticMiddleName:Ljava/lang/String;

.field private mPhotoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation
.end field

.field private mPrefix:Ljava/lang/String;

.field private mSuffix:Ljava/lang/String;

.field private final mVCardType:I

.field private mWebsiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    .line 73
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-AIM"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-MSN"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-YAHOO"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-ICQ"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-JABBER"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-SKYPE-USERNAME"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-QQ"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE-TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-NETMEETING"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    const-string v1, "X-GOOGLE TALK"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 539
    const/high16 v0, -0x4000

    invoke-direct {p0, v0}, Landroid/pim/vcard/VCardEntry;-><init>(I)V

    .line 540
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "vcardType"

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/pim/vcard/VCardEntry;-><init>(ILandroid/accounts/Account;)V

    .line 544
    return-void
.end method

.method public constructor <init>(ILandroid/accounts/Account;)V
    .locals 0
    .parameter "vcardType"
    .parameter "account"

    .prologue
    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 547
    iput p1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    .line 548
    iput-object p2, p0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    .line 549
    return-void
.end method

.method private addEmail(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 587
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 588
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    .line 590
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$EmailData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$EmailData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    return-void
.end method

.method private addIm(ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 7
    .parameter "protocol"
    .parameter "customProtocol"
    .parameter "type"
    .parameter "propValue"
    .parameter "isPrimary"

    .prologue
    .line 838
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 839
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    .line 841
    :cond_0
    iget-object v6, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$ImData;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Landroid/pim/vcard/VCardEntry$ImData;-><init>(ILjava/lang/String;ILjava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 12
    .parameter "type"
    .parameter "label"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "jobDescription"
    .parameter "symbol"
    .parameter "phoneticName"
    .parameter "officeLocation"
    .parameter "isPrimary"

    .prologue
    .line 617
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 620
    :cond_0
    iget-object v11, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method private addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "companyName"
    .parameter "departmentName"
    .parameter "titleName"
    .parameter "phoneticName"
    .parameter "isPrimary"

    .prologue
    .line 609
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    .line 612
    :cond_0
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    new-instance v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry$OrganizationData;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method private addNickName(Ljava/lang/String;)V
    .locals 1
    .parameter "nickName"

    .prologue
    .line 580
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    .line 583
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method private addNote(Ljava/lang/String;)V
    .locals 2
    .parameter "note"

    .prologue
    .line 845
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 846
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    .line 848
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method

.method private addPhone(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .parameter "type"
    .parameter "data"
    .parameter "label"
    .parameter "isPrimary"

    .prologue
    .line 552
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 553
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    .line 555
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 556
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, trimed:Ljava/lang/String;
    const/4 v7, 0x6

    if-eq p1, v7, :cond_1

    iget v7, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v7}, Landroid/pim/vcard/VCardConfig;->refrainPhoneNumberFormatting(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 559
    :cond_1
    move-object v2, v6

    .line 575
    .local v2, formattedNumber:Ljava/lang/String;
    :goto_0
    new-instance v5, Landroid/pim/vcard/VCardEntry$PhoneData;

    invoke-direct {v5, p1, v2, p3, p4}, Landroid/pim/vcard/VCardEntry$PhoneData;-><init>(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 576
    .local v5, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    iget-object v7, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    return-void

    .line 561
    .end local v2           #formattedNumber:Ljava/lang/String;
    .end local v5           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    .line 562
    .local v4, length:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v4, :cond_3

    .line 563
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 566
    .local v1, ch:C
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 573
    .end local v1           #ch:C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #formattedNumber:Ljava/lang/String;
    goto :goto_0
.end method

.method private addPhotoBytes(Ljava/lang/String;[BZ)V
    .locals 3
    .parameter "formatName"
    .parameter "photoBytes"
    .parameter "isPrimary"

    .prologue
    .line 852
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 853
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    .line 855
    :cond_0
    new-instance v0, Landroid/pim/vcard/VCardEntry$PhotoData;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/pim/vcard/VCardEntry$PhotoData;-><init>(ILjava/lang/String;[BZ)V

    .line 856
    .local v0, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 857
    return-void
.end method

.method private addPostal(ILjava/util/List;Ljava/lang/String;Z)V
    .locals 2
    .parameter "type"
    .parameter
    .parameter "label"
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 594
    .local p2, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    .line 597
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    new-instance v1, Landroid/pim/vcard/VCardEntry$PostalData;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/pim/vcard/VCardEntry$PostalData;-><init>(ILjava/util/List;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    return-void
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;)Landroid/pim/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"

    .prologue
    .line 1948
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/pim/vcard/VCardEntry;->buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;

    move-result-object v0

    return-object v0
.end method

.method public static buildFromResolver(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/pim/vcard/VCardEntry;
    .locals 1
    .parameter "resolver"
    .parameter "uri"

    .prologue
    .line 1953
    const/4 v0, 0x0

    return-object v0
.end method

.method private buildSinglePhoneticNameFromSortAsParam(Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const-string v5, "SORT-AS"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    .line 629
    .local v3, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    if-eqz v5, :cond_2

    .line 630
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 631
    const-string v5, "VCardEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_0
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget v6, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v5, v6}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 637
    .local v4, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 638
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 639
    .local v1, elem:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 641
    .end local v1           #elem:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 643
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private constructDisplayName()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 1305
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1306
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1324
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1325
    const-string v0, ""

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    .line 1327
    :cond_1
    return-void

    .line 1307
    :cond_2
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1308
    :cond_3
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    iget-object v4, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    iget-object v5, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1310
    :cond_4
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1312
    :cond_5
    iget v0, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    iget-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Landroid/pim/vcard/VCardUtils;->constructNameFromElements(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1314
    :cond_6
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1315
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$EmailData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1316
    :cond_7
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 1317
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PhoneData;

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto :goto_0

    .line 1318
    :cond_8
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 1319
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$PostalData;

    iget v1, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-virtual {v0, v1}, Landroid/pim/vcard/VCardEntry$PostalData;->getFormattedAddress(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0

    .line 1320
    :cond_9
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1321
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/pim/vcard/VCardEntry$OrganizationData;

    invoke-virtual {v0}, Landroid/pim/vcard/VCardEntry$OrganizationData;->getFormattedString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private handleAndroidCustomProperty(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1294
    .local p1, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    .line 1297
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1298
    return-void
.end method

.method private handleNProperty(Ljava/util/List;Ljava/util/Map;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p2, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v2, 0x1

    .line 902
    invoke-direct {p0, p2}, Landroid/pim/vcard/VCardEntry;->tryHandleSortAsName(Ljava/util/Map;)V

    .line 906
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .local v0, size:I
    if-ge v0, v2, :cond_1

    .line 921
    .end local v0           #size:I
    :cond_0
    :goto_0
    return-void

    .line 909
    .restart local v0       #size:I
    :cond_1
    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    .line 910
    const/4 v0, 0x5

    .line 913
    :cond_2
    packed-switch v0, :pswitch_data_0

    .line 919
    :goto_1
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 915
    :pswitch_0
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    .line 916
    :pswitch_1
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    .line 917
    :pswitch_2
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    .line 918
    :pswitch_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    goto :goto_1

    .line 913
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleOrgValue(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V
    .locals 18
    .parameter "type"
    .parameter "label"
    .parameter
    .parameter
    .parameter "isPrimary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p3, orgList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p4, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    if-nez p3, :cond_0

    .line 658
    sget-object p3, Landroid/pim/vcard/VCardEntry;->sEmptyList:Ljava/util/List;

    .line 667
    :cond_0
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v17

    .line 668
    .local v17, size:I
    const-string v2, "SC-02C"

    const-string v3, "GT-I9108"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 669
    packed-switch v17, :pswitch_data_0

    .line 741
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 742
    .local v5, companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 743
    .local v6, departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 744
    .local v7, title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 745
    .local v8, jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 746
    .local v9, symbol:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 747
    .local v10, phoneticName:Ljava/lang/String;
    const/4 v2, 0x6

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 777
    .end local p4           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v11, officeLocation:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v2, v0

    if-nez v2, :cond_4

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v12, p5

    .line 780
    invoke-direct/range {v2 .. v12}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 809
    :goto_1
    return-void

    .line 671
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    .restart local p4       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_0
    const-string v5, ""

    .line 672
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 673
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 674
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 675
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 676
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 677
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 678
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 681
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_1
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 682
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 683
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 684
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 685
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 686
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 687
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 688
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 691
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 692
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 693
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v7, 0x0

    .line 694
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 695
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 696
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 697
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 698
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 701
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 702
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 703
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 704
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 705
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 706
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 707
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 708
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto :goto_0

    .line 711
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 712
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 713
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 714
    .restart local v7       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 715
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 716
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 717
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 718
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 721
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_5
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 722
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 723
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 724
    .restart local v7       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 725
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 726
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 727
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 728
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 731
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 732
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 733
    .restart local v6       #departmentName:Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 734
    .restart local v7       #title:Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 735
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 736
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v2, 0x5

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 737
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .line 738
    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 751
    .end local v5           #companyName:Ljava/lang/String;
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    :cond_1
    packed-switch v17, :pswitch_data_1

    .line 758
    const/4 v2, 0x0

    move-object/from16 v0, p3

    move v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 761
    .restart local v5       #companyName:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 762
    .local v13, builder:Ljava/lang/StringBuilder;
    const/4 v14, 0x1

    .end local p4           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .local v14, i:I
    :goto_2
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 763
    const/4 v2, 0x1

    if-le v14, v2, :cond_2

    .line 764
    const/16 v2, 0x20

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 766
    :cond_2
    move-object/from16 v0, p3

    move v1, v14

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    move-object v0, v13

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 753
    .end local v5           #companyName:Ljava/lang/String;
    .end local v13           #builder:Ljava/lang/StringBuilder;
    .end local v14           #i:I
    .restart local p4       #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    :pswitch_7
    const-string v5, ""

    .line 754
    .restart local v5       #companyName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 771
    .end local p4           #paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    .restart local v6       #departmentName:Ljava/lang/String;
    :goto_3
    const/4 v7, 0x0

    .line 772
    .restart local v7       #title:Ljava/lang/String;
    const/4 v8, 0x0

    .line 773
    .restart local v8       #jobDescription:Ljava/lang/String;
    const/4 v9, 0x0

    .line 774
    .restart local v9       #symbol:Ljava/lang/String;
    const/4 v10, 0x0

    .line 775
    .restart local v10       #phoneticName:Ljava/lang/String;
    const/4 v11, 0x0

    .restart local v11       #officeLocation:Ljava/lang/String;
    goto/16 :goto_0

    .line 768
    .end local v6           #departmentName:Ljava/lang/String;
    .end local v7           #title:Ljava/lang/String;
    .end local v8           #jobDescription:Ljava/lang/String;
    .end local v9           #symbol:Ljava/lang/String;
    .end local v10           #phoneticName:Ljava/lang/String;
    .end local v11           #officeLocation:Ljava/lang/String;
    .restart local v13       #builder:Ljava/lang/StringBuilder;
    .restart local v14       #i:I
    :cond_3
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #departmentName:Ljava/lang/String;
    goto :goto_3

    .line 783
    .end local v13           #builder:Ljava/lang/StringBuilder;
    .end local v14           #i:I
    .restart local v7       #title:Ljava/lang/String;
    .restart local v8       #jobDescription:Ljava/lang/String;
    .restart local v9       #symbol:Ljava/lang/String;
    .restart local v10       #phoneticName:Ljava/lang/String;
    .restart local v11       #officeLocation:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 786
    .local v16, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v2, v0

    if-nez v2, :cond_5

    .line 795
    move-object v0, v5

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    .line 796
    move-object v0, v6

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    .line 797
    move-object v0, v7

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    .line 798
    move-object v0, v8

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    .line 799
    move-object v0, v9

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    .line 800
    move-object v0, v10

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    .line 801
    move-object v0, v11

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    .line 802
    move/from16 v0, p5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    goto/16 :goto_1

    .end local v16           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_6
    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v12, p5

    .line 808
    invoke-direct/range {v2 .. v12}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 751
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
    .end packed-switch
.end method

.method private handlePhoneticNameFromSound(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, elems:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 931
    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 986
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    if-lt v2, v5, :cond_0

    .line 946
    const/4 v3, 0x3

    if-le v2, v3, :cond_2

    .line 947
    const/4 v2, 0x3

    .line 950
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 951
    const/4 v1, 0x1

    .line 952
    .local v1, onlyFirstElemIsNonEmpty:Z
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 953
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 954
    const/4 v1, 0x0

    .line 980
    .end local v0           #i:I
    .end local v1           #onlyFirstElemIsNonEmpty:Z
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 984
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 952
    .restart local v0       #i:I
    .restart local v1       #onlyFirstElemIsNonEmpty:Z
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 982
    .end local v0           #i:I
    .end local v1           #onlyFirstElemIsNonEmpty:Z
    :pswitch_0
    const/4 v3, 0x2

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 983
    :pswitch_1
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_2

    .line 980
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleTitleValue(Ljava/lang/String;)V
    .locals 8
    .parameter "title"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 819
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 822
    const/4 v6, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v4, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/pim/vcard/VCardEntry;->addNewOrganization(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 825
    :cond_1
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    iget-object v2, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int v1, v2, v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 826
    .local v7, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    iget-object v0, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    .line 827
    :cond_2
    iput-object p1, v7, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    goto :goto_0
.end method

.method private listToString(Ljava/util/List;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x1

    .line 1974
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1975
    .local v3, size:I
    if-le v3, v6, :cond_2

    .line 1976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1977
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 1978
    .local v1, i:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1979
    .local v4, type:Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1980
    sub-int v5, v3, v6

    if-ge v1, v5, :cond_0

    .line 1981
    const-string v5, ";"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1984
    .end local v4           #type:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1988
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :goto_1
    return-object v5

    .line 1985
    .restart local p0
    :cond_2
    if-ne v3, v6, :cond_3

    .line 1986
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v5, p0

    goto :goto_1

    .line 1988
    .restart local p0
    :cond_3
    const-string v5, ""

    goto :goto_1
.end method

.method private nameFieldsAreEmpty()Z
    .locals 1

    .prologue
    .line 1957
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private tryHandleSortAsName(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    .line 870
    iget v3, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3}, Landroid/pim/vcard/VCardConfig;->isVersion30(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 877
    :cond_1
    const-string v3, "SORT-AS"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 878
    .local v1, sortAsCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 879
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 880
    const-string v3, "VCardEntry"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incorrect multiple SORT_AS parameters detected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget v4, p0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    invoke-static {v3, v4}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    .line 886
    .local v2, sortNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 887
    .local v0, size:I
    const/4 v3, 0x3

    if-le v0, v3, :cond_3

    .line 888
    const/4 v0, 0x3

    .line 890
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 893
    :goto_1
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto :goto_0

    .line 891
    :pswitch_0
    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    .line 892
    :pswitch_1
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto :goto_1

    .line 890
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addProperty(Landroid/pim/vcard/VCardEntry$Property;)V
    .locals 34
    .parameter "property"

    .prologue
    .line 989
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyName:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$000(Landroid/pim/vcard/VCardEntry$Property;)Ljava/lang/String;

    move-result-object v26

    .line 990
    .local v26, propName:Ljava/lang/String;
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mParameterMap:Ljava/util/Map;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$100(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/Map;

    move-result-object v9

    .line 991
    .local v9, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<Ljava/lang/String;>;>;"
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyValueList:Ljava/util/List;
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$200(Landroid/pim/vcard/VCardEntry$Property;)Ljava/util/List;

    move-result-object v8

    .line 992
    .local v8, propValueList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    #getter for: Landroid/pim/vcard/VCardEntry$Property;->mPropertyBytes:[B
    invoke-static/range {p1 .. p1}, Landroid/pim/vcard/VCardEntry$Property;->access$300(Landroid/pim/vcard/VCardEntry$Property;)[B

    move-result-object v25

    .line 993
    .local v25, propBytes:[B
    const/16 v22, 0x1

    .line 995
    .local v22, isEmpty:Z
    const/16 v20, 0x0

    .end local p1
    .local v20, i:I
    :goto_0
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 996
    move-object v0, v8

    move/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 997
    const/16 v22, 0x0

    .line 995
    :cond_0
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_3

    .line 1291
    :cond_2
    :goto_1
    return-void

    .line 1003
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v8

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->listToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .line 1005
    .local v15, propValue:Ljava/lang/String;
    const-string v5, "VERSION"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1007
    const-string v5, "FN"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1008
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_1

    .line 1009
    :cond_4
    const-string v5, "NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    move-object v5, v0

    if-nez v5, :cond_5

    .line 1012
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    goto :goto_1

    .line 1013
    :cond_5
    const-string v5, "N"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1014
    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    invoke-direct {v0, v1, v2}, Landroid/pim/vcard/VCardEntry;->handleNProperty(Ljava/util/List;Ljava/util/Map;)V

    goto :goto_1

    .line 1015
    :cond_6
    const-string v5, "SORT-STRING"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1016
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    goto :goto_1

    .line 1017
    :cond_7
    const-string v5, "NICKNAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "X-NICKNAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1019
    :cond_8
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNickName(Ljava/lang/String;)V

    goto :goto_1

    .line 1020
    :cond_9
    const-string v5, "SOUND"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1021
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1022
    .local v27, typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_2

    const-string v5, "X-IRMC-N"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v15, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v24

    .line 1030
    .local v24, phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handlePhoneticNameFromSound(Ljava/util/List;)V

    goto/16 :goto_1

    .line 1034
    .end local v24           #phoneticNameList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_a
    const-string v5, "ADR"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 1035
    const/16 v33, 0x1

    .line 1036
    .local v33, valuesAreAllEmpty:Z
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, i$:Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/String;

    .line 1037
    .local v32, value:Ljava/lang/String;
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 1038
    const/16 v33, 0x0

    .line 1042
    .end local v32           #value:Ljava/lang/String;
    :cond_c
    if-nez v33, :cond_2

    .line 1046
    const/4 v6, -0x1

    .line 1047
    .local v6, type:I
    const-string v7, ""

    .line 1048
    .local v7, label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1049
    .local v10, isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1050
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_14

    .line 1051
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_d
    :goto_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1052
    .local v29, typeString:Ljava/lang/String;
    move-object/from16 v30, v29

    .line 1053
    .local v30, typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 1054
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1055
    const/4 v10, 0x1

    goto :goto_2

    .line 1056
    :cond_e
    const-string v5, "HOME"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1057
    const/4 v6, 0x1

    .line 1058
    const-string v7, ""

    goto :goto_2

    .line 1059
    :cond_f
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    const-string v5, "COMPANY"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1064
    :cond_10
    const/4 v6, 0x2

    .line 1065
    const-string v7, ""

    goto :goto_2

    .line 1066
    :cond_11
    const-string v5, "PARCEL"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "DOM"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "INTL"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 1070
    const-string v5, "OTHER"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 1071
    const/4 v6, 0x3

    .line 1072
    const-string v7, ""

    goto :goto_2

    .line 1074
    :cond_12
    const-string v5, "X-"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    if-gez v6, :cond_13

    .line 1075
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 1079
    :cond_13
    const/4 v6, 0x0

    .line 1080
    move-object/from16 v7, v30

    goto/16 :goto_2

    .line 1085
    .end local v29           #typeString:Ljava/lang/String;
    .end local v30           #typeStringOrigin:Ljava/lang/String;
    :cond_14
    if-gez v6, :cond_15

    .line 1086
    const/4 v6, 0x1

    .line 1089
    :cond_15
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v8

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPostal(ILjava/util/List;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1090
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v33           #valuesAreAllEmpty:Z
    :cond_16
    const-string v5, "EMAIL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 1091
    const/4 v6, -0x1

    .line 1092
    .restart local v6       #type:I
    const/4 v7, 0x0

    .line 1093
    .restart local v7       #label:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1094
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1095
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_1d

    .line 1096
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1097
    .restart local v29       #typeString:Ljava/lang/String;
    move-object/from16 v30, v29

    .line 1098
    .restart local v30       #typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 1099
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1100
    const/4 v10, 0x1

    goto :goto_3

    .line 1101
    :cond_17
    const-string v5, "HOME"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1102
    const/4 v6, 0x1

    goto :goto_3

    .line 1103
    :cond_18
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1104
    const/4 v6, 0x2

    goto :goto_3

    .line 1105
    :cond_19
    const-string v5, "CELL"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 1106
    const/4 v6, 0x4

    goto :goto_3

    .line 1107
    :cond_1a
    const-string v5, "OTHER"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1108
    const/4 v6, 0x3

    goto :goto_3

    .line 1110
    :cond_1b
    const-string v5, "X-"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    if-gez v6, :cond_1c

    .line 1111
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 1116
    :cond_1c
    const/4 v6, 0x0

    .line 1117
    move-object/from16 v7, v30

    goto :goto_3

    .line 1121
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    .end local v30           #typeStringOrigin:Ljava/lang/String;
    :cond_1d
    if-gez v6, :cond_1e

    .line 1122
    const/4 v6, 0x3

    .line 1124
    :cond_1e
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v15

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addEmail(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1125
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_1f
    const-string v5, "ORG"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 1126
    const-string v5, "SC-02C"

    const-string v6, "GT-I9108"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1127
    const/4 v10, 0x0

    .line 1128
    .restart local v10       #isPrimary:Z
    const/4 v6, -0x1

    .line 1129
    .restart local v6       #type:I
    const/4 v7, 0x0

    .line 1130
    .restart local v7       #label:Ljava/lang/String;
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1131
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_24

    .line 1132
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1133
    .restart local v29       #typeString:Ljava/lang/String;
    move-object/from16 v30, v29

    .line 1134
    .restart local v30       #typeStringOrigin:Ljava/lang/String;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v29

    .line 1135
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 1136
    const/4 v10, 0x1

    goto :goto_4

    .line 1137
    :cond_20
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1138
    const/4 v6, 0x1

    goto :goto_4

    .line 1139
    :cond_21
    const-string v5, "OTHER"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 1140
    const/4 v6, 0x2

    goto :goto_4

    .line 1142
    :cond_22
    const-string v5, "X-"

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    if-gez v6, :cond_23

    .line 1143
    const/4 v5, 0x2

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    .line 1148
    :cond_23
    const/4 v6, 0x0

    .line 1149
    move-object/from16 v7, v30

    goto :goto_4

    .line 1153
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    .end local v30           #typeStringOrigin:Ljava/lang/String;
    :cond_24
    if-gez v6, :cond_25

    .line 1154
    const/4 v6, 0x1

    :cond_25
    move-object/from16 v5, p0

    .line 1156
    invoke-direct/range {v5 .. v10}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_1

    .line 1159
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_26
    const/4 v6, 0x1

    .line 1160
    .restart local v6       #type:I
    const/4 v10, 0x0

    .line 1161
    .restart local v10       #isPrimary:Z
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1162
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_28

    .line 1163
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_27
    :goto_5
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1164
    .restart local v29       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1165
    const/4 v10, 0x1

    goto :goto_5

    .line 1169
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    :cond_28
    const/4 v12, 0x1

    const/4 v13, 0x0

    move-object/from16 v11, p0

    move-object v14, v8

    move-object v15, v9

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/pim/vcard/VCardEntry;->handleOrgValue(ILjava/lang/String;Ljava/util/List;Ljava/util/Map;Z)V

    goto/16 :goto_1

    .line 1171
    .end local v6           #type:I
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_29
    const-string v5, "TITLE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 1172
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleTitleValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1173
    :cond_2a
    const-string v5, "ROLE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1176
    const-string v5, "PHOTO"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b

    const-string v5, "LOGO"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 1178
    :cond_2b
    const-string v5, "VALUE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/Collection;

    .line 1179
    .local v23, paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v23, :cond_2c

    const-string v5, "URL"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1182
    :cond_2c
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1183
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/16 v19, 0x0

    .line 1184
    .local v19, formatName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1185
    .restart local v10       #isPrimary:Z
    if-eqz v27, :cond_2f

    .line 1186
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_2d
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 1187
    .local v31, typeValue:Ljava/lang/String;
    const-string v5, "PREF"

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1188
    const/4 v10, 0x1

    goto :goto_6

    .line 1189
    :cond_2e
    if-nez v19, :cond_2d

    .line 1190
    move-object/from16 v19, v31

    goto :goto_6

    .line 1194
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v31           #typeValue:Ljava/lang/String;
    :cond_2f
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v25

    move v3, v10

    invoke-direct {v0, v1, v2, v3}, Landroid/pim/vcard/VCardEntry;->addPhotoBytes(Ljava/lang/String;[BZ)V

    goto/16 :goto_1

    .line 1196
    .end local v10           #isPrimary:Z
    .end local v19           #formatName:Ljava/lang/String;
    .end local v23           #paramMapValue:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_30
    const-string v5, "TEL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1197
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1198
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    move-object/from16 v0, v27

    move-object v1, v15

    invoke-static {v0, v1}, Landroid/pim/vcard/VCardUtils;->getPhoneTypeFromStrings(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    .line 1202
    .local v28, typeObject:Ljava/lang/Object;
    move-object/from16 v0, v28

    instance-of v0, v0, Ljava/lang/Integer;

    move v5, v0

    if-eqz v5, :cond_31

    .line 1203
    check-cast v28, Ljava/lang/Integer;

    .end local v28           #typeObject:Ljava/lang/Object;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1204
    .restart local v6       #type:I
    const/4 v7, 0x0

    .line 1211
    .restart local v7       #label:Ljava/lang/String;
    :goto_7
    if-eqz v27, :cond_32

    const-string v5, "PREF"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 1212
    const/4 v10, 0x1

    .line 1216
    .restart local v10       #isPrimary:Z
    :goto_8
    move-object/from16 v0, p0

    move v1, v6

    move-object v2, v15

    move-object v3, v7

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1206
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .restart local v28       #typeObject:Ljava/lang/Object;
    :cond_31
    const/4 v6, 0x0

    .line 1207
    .restart local v6       #type:I
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #label:Ljava/lang/String;
    goto :goto_7

    .line 1214
    .end local v28           #typeObject:Ljava/lang/Object;
    :cond_32
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_8

    .line 1217
    .end local v6           #type:I
    .end local v7           #label:Ljava/lang/String;
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_33
    const-string v5, "X-SKYPE-PSTNNUMBER"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 1219
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1220
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    const/4 v6, 0x7

    .line 1222
    .restart local v6       #type:I
    if-eqz v27, :cond_34

    const-string v5, "PREF"

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 1223
    const/4 v10, 0x1

    .line 1227
    .restart local v10       #isPrimary:Z
    :goto_9
    const/4 v5, 0x7

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v15

    move-object v3, v6

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/pim/vcard/VCardEntry;->addPhone(ILjava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1225
    .end local v10           #isPrimary:Z
    :cond_34
    const/4 v10, 0x0

    .restart local v10       #isPrimary:Z
    goto :goto_9

    .line 1228
    .end local v6           #type:I
    .end local v10           #isPrimary:Z
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_35
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 1229
    sget-object v5, Landroid/pim/vcard/VCardEntry;->sImMap:Ljava/util/Map;

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 1230
    .local v12, protocol:I
    const/4 v10, 0x0

    .line 1231
    .restart local v10       #isPrimary:Z
    const/4 v6, -0x1

    .line 1232
    .restart local v6       #type:I
    const-string v5, "TYPE"

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Ljava/util/Collection;

    .line 1233
    .restart local v27       #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz v27, :cond_39

    .line 1234
    invoke-interface/range {v27 .. v27}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .restart local v21       #i$:Ljava/util/Iterator;
    :cond_36
    :goto_a
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1235
    .restart local v29       #typeString:Ljava/lang/String;
    const-string v5, "PREF"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 1236
    const/4 v10, 0x1

    goto :goto_a

    .line 1237
    :cond_37
    if-gez v6, :cond_36

    .line 1238
    const-string v5, "HOME"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1239
    const/4 v6, 0x1

    goto :goto_a

    .line 1240
    :cond_38
    const-string v5, "WORK"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1241
    const/4 v6, 0x2

    goto :goto_a

    .line 1246
    .end local v21           #i$:Ljava/util/Iterator;
    .end local v29           #typeString:Ljava/lang/String;
    :cond_39
    if-gez v6, :cond_3a

    .line 1247
    const/4 v6, 0x1

    .line 1249
    :cond_3a
    const/4 v13, 0x0

    move-object/from16 v11, p0

    move v14, v6

    move/from16 v16, v10

    invoke-direct/range {v11 .. v16}, Landroid/pim/vcard/VCardEntry;->addIm(ILjava/lang/String;ILjava/lang/String;Z)V

    goto/16 :goto_1

    .line 1250
    .end local v6           #type:I
    .end local v10           #isPrimary:Z
    .end local v12           #protocol:I
    .end local v27           #typeCollection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_3b
    const-string v5, "NOTE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 1251
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->addNote(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1252
    :cond_3c
    const-string v5, "URL"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    if-nez v5, :cond_3d

    .line 1254
    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    .line 1256
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1257
    :cond_3e
    const-string v5, "BDAY"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1258
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3f

    const-string v5, "-"

    invoke-virtual {v15, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3f

    .line 1260
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 1261
    .local v17, BdayBuilder:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1262
    const/16 v5, 0x2d

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1263
    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    const/16 v5, 0x2d

    move-object/from16 v0, v17

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1265
    const/4 v5, 0x6

    const/16 v6, 0x8

    invoke-virtual {v15, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1266
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_1

    .line 1270
    .end local v17           #BdayBuilder:Ljava/lang/StringBuilder;
    :cond_3f
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    goto/16 :goto_1

    .line 1273
    :cond_40
    const-string v5, ".*BDAY.*"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 1274
    const-string v5, "TYPE"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1275
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mBirthdayType:Ljava/lang/String;

    goto/16 :goto_1

    .line 1277
    :cond_41
    const-string v5, "ANNIVERSARY"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_42

    .line 1278
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    goto/16 :goto_1

    .line 1279
    :cond_42
    const-string v5, "X-PHONETIC-FIRST-NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 1280
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1281
    :cond_43
    const-string v5, "X-PHONETIC-MIDDLE-NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 1282
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1283
    :cond_44
    const-string v5, "X-PHONETIC-LAST-NAME"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 1284
    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    goto/16 :goto_1

    .line 1285
    :cond_45
    const-string v5, "X-ANDROID-CUSTOM"

    move-object/from16 v0, v26

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1286
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v5, v0

    invoke-static {v15, v5}, Landroid/pim/vcard/VCardUtils;->constructListFromValue(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v18

    .line 1288
    .local v18, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/pim/vcard/VCardEntry;->handleAndroidCustomProperty(Ljava/util/List;)V

    goto/16 :goto_1
.end method

.method public consolidateFields()V
    .locals 1

    .prologue
    .line 1333
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 1335
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1336
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    .line 1338
    :cond_0
    return-void
.end method

.method public getBirthday()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2045
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2081
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2082
    invoke-direct {p0}, Landroid/pim/vcard/VCardEntry;->constructDisplayName()V

    .line 2084
    :cond_0
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getEmailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$EmailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2057
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    return-object v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2001
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2021
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mFormattedName:Ljava/lang/String;

    return-object v0
.end method

.method public getGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2005
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public final getImList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$ImData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2069
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2009
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getNickNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2041
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    return-object v0
.end method

.method public final getNotes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2049
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    return-object v0
.end method

.method public getOperationList(Landroid/content/ContentResolver;Ljava/util/ArrayList;Z)Ljava/util/ArrayList;
    .locals 30
    .parameter "resolver"
    .parameter
    .parameter "yield"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1658
    .local p2, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v27

    .line 1660
    .local v27, rawContactIdIndex:I
    const-string v4, "[ReFResh]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getOperationList rawContactIdIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    sget-object v4, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withYieldAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1664
    .local v10, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 1665
    .local v20, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    if-eqz v4, :cond_6

    .line 1666
    const-string v4, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1667
    const-string v4, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1670
    const-string v4, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1671
    sget-object v5, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v7, "sourceid"

    aput-object v7, v6, v4

    const-string/jumbo v7, "title=?"

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v9, "System Group: My Contacts"

    aput-object v9, v8, v4

    const/4 v9, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 1676
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1677
    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1680
    :cond_0
    if-eqz v11, :cond_1

    .line 1681
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1689
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    invoke-direct/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1692
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1693
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1694
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    if-eqz v4, :cond_8

    .line 1698
    const-string v4, "com.android.exchange"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v5, v0

    iget-object v5, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1699
    const-string v4, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1700
    const-string v4, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1701
    const-string v4, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1702
    const-string v4, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1703
    const-string v4, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1726
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1729
    :cond_2
    const-string v4, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1730
    const-string v4, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1731
    const-string v4, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1736
    :cond_3
    :goto_2
    const-string v4, "data1"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1737
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1740
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 1741
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1742
    .local v21, nickName:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1743
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1744
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/nickname"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1745
    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1746
    const-string v4, "data1"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1747
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1680
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #nickName:Ljava/lang/String;
    .restart local v11       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    if-eqz v11, :cond_5

    .line 1681
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v4

    .line 1686
    .end local v11           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v4, "account_name"

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1687
    const-string v4, "account_type"

    const/4 v5, 0x0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 1705
    :cond_7
    const-string v4, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1706
    const-string v4, "data3"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1707
    const-string v4, "data5"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1708
    const-string v4, "data4"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1709
    const-string v4, "data6"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1712
    :cond_8
    const-string v4, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1713
    const-string v4, "data3"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1714
    const-string v4, "data5"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1715
    const-string v4, "data4"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1716
    const-string v4, "data6"

    const-string v5, ""

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1732
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1733
    const-string v4, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_2

    .line 1751
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_d

    .line 1752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 1753
    .local v24, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1754
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1755
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1757
    const-string v4, "data2"

    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1758
    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v4, v0

    if-nez v4, :cond_b

    .line 1759
    const-string v4, "data3"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1761
    :cond_b
    const-string v4, "data1"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1762
    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move v4, v0

    if-eqz v4, :cond_c

    .line 1763
    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1765
    :cond_c
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1769
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_17

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 1771
    .local v23, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1772
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1773
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1774
    const-string v4, "data2"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1775
    move-object/from16 v0, v23

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v4, v0

    if-nez v4, :cond_e

    .line 1776
    const-string v4, "data3"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->label:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1778
    :cond_e
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_f

    .line 1779
    const-string v4, "data1"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1781
    :cond_f
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_10

    .line 1782
    const-string v4, "data5"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1784
    :cond_10
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_11

    .line 1785
    const-string v4, "data4"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1787
    :cond_11
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_12

    .line 1788
    const-string v4, "data6"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1790
    :cond_12
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_13

    .line 1791
    const-string v4, "data7"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1793
    :cond_13
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_14

    .line 1794
    const-string v4, "data8"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1796
    :cond_14
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_15

    .line 1797
    const-string v4, "data9"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1799
    :cond_15
    move-object/from16 v0, v23

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move v4, v0

    if-eqz v4, :cond_16

    .line 1800
    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1802
    :cond_16
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1806
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v23           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_1a

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 1808
    .local v14, emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1809
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1810
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1812
    const-string v4, "data2"

    iget v5, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1813
    iget v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v4, :cond_18

    .line 1814
    const-string v4, "data3"

    iget-object v5, v14, Landroid/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1816
    :cond_18
    const-string v4, "data1"

    iget-object v5, v14, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1817
    iget-boolean v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v4, :cond_19

    .line 1818
    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1820
    :cond_19
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1824
    .end local v14           #emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_1b

    .line 1825
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 1826
    .local v26, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1827
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v4, v0

    move v0, v4

    move-object v1, v10

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Landroid/pim/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;I)V

    .line 1829
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1833
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_1e

    .line 1834
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/pim/vcard/VCardEntry$ImData;

    .line 1835
    .local v18, imData:Landroid/pim/vcard/VCardEntry$ImData;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1836
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1837
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/im"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1838
    const-string v4, "data2"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1839
    const-string v4, "data5"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1840
    const-string v4, "data1"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1841
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v4, v0

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1c

    .line 1842
    const-string v4, "data6"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1844
    :cond_1c
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    move v4, v0

    if-eqz v4, :cond_1d

    .line 1845
    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1847
    :cond_1d
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1851
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #imData:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_1f

    .line 1852
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1853
    .local v22, note:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1854
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1855
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1856
    const-string v4, "data1"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1857
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1861
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #note:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_21

    .line 1862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/pim/vcard/VCardEntry$PhotoData;

    .line 1863
    .local v25, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1864
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1865
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1866
    const-string v4, "data15"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1867
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move v4, v0

    if-eqz v4, :cond_20

    .line 1868
    const-string v4, "is_primary"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1870
    :cond_20
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1874
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v25           #photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_22

    .line 1875
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/String;

    .line 1876
    .local v29, website:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1877
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1878
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/website"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1879
    const-string v4, "data1"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1882
    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1883
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1887
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v29           #website:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 1888
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1889
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1890
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1891
    const-string v4, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1892
    const-string v4, "data2"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1893
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 1897
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1898
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1899
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1900
    const-string v4, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1901
    const-string v4, "data2"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1902
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v4, v0

    if-eqz v4, :cond_2a

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p0
    :cond_25
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 1907
    .local v12, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v28

    .line 1908
    .local v28, size:I
    const/4 v4, 0x2

    move/from16 v0, v28

    move v1, v4

    if-lt v0, v1, :cond_25

    const/4 v4, 0x0

    invoke-interface {v12, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_25

    .line 1910
    const/16 v4, 0x10

    move/from16 v0, v28

    move v1, v4

    if-le v0, v1, :cond_26

    .line 1911
    const/16 v28, 0x10

    .line 1912
    const/4 v4, 0x0

    const/16 v5, 0x11

    invoke-interface {v12, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v12

    .line 1916
    :cond_26
    const/4 v15, 0x0

    .line 1917
    .local v15, i:I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1918
    .local v13, customPropertyValue:Ljava/lang/String;
    if-nez v15, :cond_28

    .line 1919
    move-object/from16 v19, v13

    .line 1920
    .local v19, mimeType:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1921
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1922
    const-string/jumbo v4, "mimetype"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1929
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_27
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1924
    :cond_28
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 1925
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_e

    .line 1931
    .end local v13           #customPropertyValue:Ljava/lang/String;
    :cond_29
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1935
    .end local v12           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v28           #size:I
    :cond_2a
    if-eqz v20, :cond_2b

    .line 1936
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v10

    .line 1937
    const-string/jumbo v4, "raw_contact_id"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1938
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1939
    const-string v4, "group_sourceid"

    move-object v0, v10

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1940
    invoke-virtual {v10}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v4

    move-object/from16 v0, p2

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1943
    :cond_2b
    return-object p2
.end method

.method public final getOrganizationList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$OrganizationData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2065
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    return-object v0
.end method

.method public final getPhoneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhoneData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2053
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneticFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticGivenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2029
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneticMiddleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2033
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PhotoData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2073
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    return-object v0
.end method

.method public final getPostalList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/pim/vcard/VCardEntry$PostalData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2061
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2013
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public final getWebsiteList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2077
    iget-object v0, p0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    return-object v0
.end method

.method public isIgnorable()Z
    .locals 1

    .prologue
    .line 1970
    invoke-virtual {p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pushIntoContentResolver(Landroid/content/ContentResolver;)Landroid/net/Uri;
    .locals 31
    .parameter "resolver"

    .prologue
    .line 1341
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v23, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1347
    .local v9, builder:Landroid/content/ContentProviderOperation$Builder;
    const/16 v20, 0x0

    .line 1348
    .local v20, myGroupsId:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 1349
    const-string v3, "account_name"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1350
    const-string v3, "account_type"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1353
    const-string v3, "com.google"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1354
    sget-object v4, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "sourceid"

    aput-object v6, v5, v3

    const-string/jumbo v6, "title=?"

    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v8, "System Group: My Contacts"

    aput-object v8, v7, v3

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1359
    .local v10, cursor:Landroid/database/Cursor;
    if-eqz v10, :cond_0

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1360
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    .line 1363
    :cond_0
    if-eqz v10, :cond_1

    .line 1364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1372
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_1
    :goto_0
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    invoke-direct/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->nameFieldsAreEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1375
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1376
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1377
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/name"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1380
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1381
    const-string v3, "com.android.exchange"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAccount:Landroid/accounts/Account;

    move-object v4, v0

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1382
    const-string v3, "data2"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1383
    const-string v3, "data3"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1384
    const-string v3, "data5"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1385
    const-string v3, "data4"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPrefix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1386
    const-string v3, "data6"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mSuffix:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1409
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1412
    :cond_2
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticGivenName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1413
    const-string v3, "data9"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFamilyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1414
    const-string v3, "data8"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticMiddleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1419
    :cond_3
    :goto_2
    const-string v3, "data1"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1420
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNickNameList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 1425
    .local v21, nickName:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1426
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1427
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/nickname"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1428
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1429
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1430
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1363
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v21           #nickName:Ljava/lang/String;
    .restart local v10       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    if-eqz v10, :cond_5

    .line 1364
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v3

    .line 1369
    .end local v10           #cursor:Landroid/database/Cursor;
    :cond_6
    const-string v3, "account_name"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1370
    const-string v3, "account_type"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_0

    .line 1388
    :cond_7
    const-string v3, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1389
    const-string v3, "data3"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1390
    const-string v3, "data5"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1391
    const-string v3, "data4"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1392
    const-string v3, "data6"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1395
    :cond_8
    const-string v3, "data2"

    invoke-virtual/range {p0 .. p0}, Landroid/pim/vcard/VCardEntry;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1396
    const-string v3, "data3"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1397
    const-string v3, "data5"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1398
    const-string v3, "data4"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1399
    const-string v3, "data6"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 1415
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1416
    const-string v3, "data7"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneticFullName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_2

    .line 1434
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_d

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhoneList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/pim/vcard/VCardEntry$PhoneData;

    .line 1436
    .local v25, phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1437
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1438
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1440
    const-string v3, "data2"

    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1441
    move-object/from16 v0, v25

    iget v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->type:I

    move v3, v0

    if-nez v3, :cond_b

    .line 1442
    const-string v3, "data3"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1444
    :cond_b
    const-string v3, "data1"

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1445
    move-object/from16 v0, v25

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhoneData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_c

    .line 1446
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1448
    :cond_c
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1452
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v25           #phoneData:Landroid/pim/vcard/VCardEntry$PhoneData;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_17

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mOrganizationList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_17

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/pim/vcard/VCardEntry$OrganizationData;

    .line 1454
    .local v24, organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1455
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1456
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/organization"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1457
    const-string v3, "data2"

    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1458
    move-object/from16 v0, v24

    iget v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->type:I

    move v3, v0

    if-nez v3, :cond_e

    .line 1459
    const-string v3, "data3"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->label:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1461
    :cond_e
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_f

    .line 1462
    const-string v3, "data1"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->companyName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1464
    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_10

    .line 1465
    const-string v3, "data5"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->departmentName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1467
    :cond_10
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_11

    .line 1468
    const-string v3, "data4"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->titleName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1470
    :cond_11
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_12

    .line 1471
    const-string v3, "data6"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->jobDescription:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1473
    :cond_12
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_13

    .line 1474
    const-string v3, "data7"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->symbol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1476
    :cond_13
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_14

    .line 1477
    const-string v3, "data8"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->phoneticName:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1479
    :cond_14
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_15

    .line 1480
    const-string v3, "data9"

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->officeLocation:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1482
    :cond_15
    move-object/from16 v0, v24

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$OrganizationData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_16

    .line 1483
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1485
    :cond_16
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 1489
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v24           #organizationData:Landroid/pim/vcard/VCardEntry$OrganizationData;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1a

    .line 1490
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mEmailList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/pim/vcard/VCardEntry$EmailData;

    .line 1491
    .local v14, emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1492
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1493
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1495
    const-string v3, "data2"

    iget v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1496
    iget v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->type:I

    if-nez v3, :cond_18

    .line 1497
    const-string v3, "data3"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->label:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1499
    :cond_18
    const-string v3, "data1"

    iget-object v4, v14, Landroid/pim/vcard/VCardEntry$EmailData;->data:Ljava/lang/String;

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1500
    iget-boolean v3, v14, Landroid/pim/vcard/VCardEntry$EmailData;->isPrimary:Z

    if-eqz v3, :cond_19

    .line 1501
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1503
    :cond_19
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1507
    .end local v14           #emailData:Landroid/pim/vcard/VCardEntry$EmailData;
    .end local v16           #i$:Ljava/util/Iterator;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1b

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPostalList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Landroid/pim/vcard/VCardEntry$PostalData;

    .line 1509
    .local v27, postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1510
    move-object/from16 v0, p0

    iget v0, v0, Landroid/pim/vcard/VCardEntry;->mVCardType:I

    move v3, v0

    move v0, v3

    move-object v1, v9

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/pim/vcard/VCardUtils;->insertStructuredPostalDataUsingContactsStruct(ILandroid/content/ContentProviderOperation$Builder;Landroid/pim/vcard/VCardEntry$PostalData;)V

    .line 1512
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1516
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v27           #postalData:Landroid/pim/vcard/VCardEntry$PostalData;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1e

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mImList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/pim/vcard/VCardEntry$ImData;

    .line 1518
    .local v18, imData:Landroid/pim/vcard/VCardEntry$ImData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1519
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1520
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/im"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1521
    const-string v3, "data2"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->type:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1522
    const-string v3, "data5"

    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1523
    const-string v3, "data1"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->data:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1524
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->protocol:I

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1c

    .line 1525
    const-string v3, "data6"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->customProtocol:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1527
    :cond_1c
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$ImData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_1d

    .line 1528
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1530
    :cond_1d
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1534
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #imData:Landroid/pim/vcard/VCardEntry$ImData;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_1f

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mNoteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1536
    .local v22, note:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1537
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1538
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/note"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1539
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1540
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 1544
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v22           #note:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_21

    .line 1545
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mPhotoList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_a
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/pim/vcard/VCardEntry$PhotoData;

    .line 1546
    .local v26, photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1547
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1548
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/photo"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1549
    const-string v3, "data15"

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->photoBytes:[B

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1550
    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/pim/vcard/VCardEntry$PhotoData;->isPrimary:Z

    move v3, v0

    if-eqz v3, :cond_20

    .line 1551
    const-string v3, "is_primary"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1553
    :cond_20
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 1557
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v26           #photoData:Landroid/pim/vcard/VCardEntry$PhotoData;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_22

    .line 1558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mWebsiteList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    :goto_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/String;

    .line 1559
    .local v30, website:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1560
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1561
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/website"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1562
    const-string v3, "data1"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1565
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1566
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 1570
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v30           #website:Ljava/lang/String;
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1571
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1572
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1573
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1574
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthday:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1575
    const-string v3, "data2"

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthdayType:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1579
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1580
    const-string v3, "data15"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mBirthdayType:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1583
    :cond_23
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1586
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 1587
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1588
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1589
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1590
    const-string v3, "data1"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAnniversary:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1591
    const-string v3, "data2"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1592
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1595
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    if-eqz v3, :cond_2b

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/pim/vcard/VCardEntry;->mAndroidCustomPropertyList:Ljava/util/List;

    move-object v3, v0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p0
    :cond_26
    :goto_c
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 1597
    .local v11, customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v29

    .line 1598
    .local v29, size:I
    const/4 v3, 0x2

    move/from16 v0, v29

    move v1, v3

    if-lt v0, v1, :cond_26

    const/4 v3, 0x0

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 1600
    const/16 v3, 0x10

    move/from16 v0, v29

    move v1, v3

    if-le v0, v1, :cond_27

    .line 1601
    const/16 v29, 0x10

    .line 1602
    const/4 v3, 0x0

    const/16 v4, 0x11

    invoke-interface {v11, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v11

    .line 1606
    :cond_27
    const/4 v15, 0x0

    .line 1607
    .local v15, i:I
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1608
    .local v12, customPropertyValue:Ljava/lang/String;
    if-nez v15, :cond_29

    .line 1609
    move-object/from16 v19, v12

    .line 1610
    .local v19, mimeType:Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1611
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1612
    const-string/jumbo v3, "mimetype"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1619
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_28
    :goto_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_d

    .line 1614
    :cond_29
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 1615
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3, v12}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_e

    .line 1621
    .end local v12           #customPropertyValue:Ljava/lang/String;
    :cond_2a
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1625
    .end local v11           #customPropertyList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v15           #i:I
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v29           #size:I
    :cond_2b
    if-eqz v20, :cond_2c

    .line 1626
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    .line 1627
    const-string/jumbo v3, "raw_contact_id"

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 1628
    const-string/jumbo v3, "mimetype"

    const-string/jumbo v4, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v9, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1629
    const-string v3, "group_sourceid"

    move-object v0, v9

    move-object v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 1630
    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v3

    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1634
    :cond_2c
    :try_start_1
    const-string v3, "com.android.contacts"

    move-object/from16 v0, p1

    move-object v1, v3

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v28

    .line 1639
    .local v28, results:[Landroid/content/ContentProviderResult;
    if-eqz v28, :cond_2d

    move-object/from16 v0, v28

    array-length v0, v0

    move v3, v0

    if-eqz v3, :cond_2d

    const/4 v3, 0x0

    aget-object v3, v28, v3

    if-nez v3, :cond_2e

    :cond_2d
    const/4 v3, 0x0

    .line 1647
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :goto_f
    return-object v3

    .line 1639
    .restart local v28       #results:[Landroid/content/ContentProviderResult;
    :cond_2e
    const/4 v3, 0x0

    aget-object v3, v28, v3

    iget-object v3, v3, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_f

    .line 1642
    .end local v28           #results:[Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v3

    move-object v13, v3

    .line 1643
    .local v13, e:Landroid/os/RemoteException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    const/4 v3, 0x0

    goto :goto_f

    .line 1645
    .end local v13           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    move-object v13, v3

    .line 1646
    .local v13, e:Landroid/content/OperationApplicationException;
    const-string v3, "VCardEntry"

    const-string v4, "%s: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v13}, Landroid/content/OperationApplicationException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1647
    const/4 v3, 0x0

    goto :goto_f
.end method
