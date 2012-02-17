.class public Lcom/android/phone/RejectCallWithMsg;
.super Landroid/app/Activity;
.source "RejectCallWithMsg.java"


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private message:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private rejectMsgList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 46
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    .line 50
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 51
    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsg;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/RejectCallWithMsg;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsg;->message:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsg;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v2, 0x7f03003d

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsg;->setContentView(I)V

    .line 67
    const v2, 0x7f080146

    invoke-virtual {p0, v2}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 71
    .local v1, parentIntent:Landroid/content/Intent;
    const-string v2, "phone_number"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    .line 77
    const/high16 v0, 0x8

    .line 78
    .local v0, flags:I
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 79
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 81
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 143
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 85
    return-void
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 88
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->phoneNumber:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->finish()V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/phone/RejectCallWithMsg$1;

    invoke-direct {v3, p0}, Lcom/android/phone/RejectCallWithMsg$1;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsg;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/phone/RejectCallWithMsg;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 110
    .local v6, cur:Landroid/database/Cursor;
    invoke-virtual {p0, v6}, Lcom/android/phone/RejectCallWithMsg;->startManagingCursor(Landroid/database/Cursor;)V

    .line 111
    const/4 v7, 0x0

    .line 112
    .local v7, rejectMessage:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    :cond_1
    const-string v1, "reject_message"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 115
    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 119
    :cond_3
    const v1, 0x7f08014f

    invoke-virtual {p0, v1}, Lcom/android/phone/RejectCallWithMsg;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    .line 120
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/android/phone/RejectCallWithMsg;->list:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 121
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsg;->rejectMsgList:Landroid/widget/ListView;

    new-instance v2, Lcom/android/phone/RejectCallWithMsg$2;

    invoke-direct {v2, p0}, Lcom/android/phone/RejectCallWithMsg$2;-><init>(Lcom/android/phone/RejectCallWithMsg;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    return-void
.end method
