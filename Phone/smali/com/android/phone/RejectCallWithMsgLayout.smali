.class public Lcom/android/phone/RejectCallWithMsgLayout;
.super Landroid/widget/LinearLayout;
.source "RejectCallWithMsgLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/RejectCallWithMsgLayout$SendMsgRunnable;,
        Lcom/android/phone/RejectCallWithMsgLayout$updateThread;
    }
.end annotation


# static fields
.field private static final REJECTMSG_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mBtnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCdnipNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/LinearLayout;

.field private mHandler:Landroid/os/Handler;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "content://com.sec.android.app.callsetting.allcalls/reject_msg"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/RejectCallWithMsgLayout;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    .line 48
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    .line 49
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    .line 50
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 51
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    .line 52
    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCdnipNumber:Ljava/lang/String;

    .line 63
    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$1;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$1;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    iput-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;

    .line 97
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 98
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03003c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 102
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/RejectCallWithMsgLayout;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/RejectCallWithMsgLayout;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/view/View$OnTouchListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/phone/RejectCallWithMsgLayout;->REJECTMSG_CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/RejectCallWithMsgLayout;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 108
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 111
    :cond_0
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    .line 112
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$2;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$2;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCreateButton:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    .line 130
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f080147

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f08014b

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f08014c

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f08014d

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Lcom/android/phone/RejectCallWithMsgLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/RejectCallWithMsgLayout;->updateItemList()V

    .line 138
    return-void
.end method

.method setPhone(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "cm"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 155
    return-void
.end method

.method setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "phoneNumber"

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mPhoneNumber:Ljava/lang/String;

    .line 146
    return-void
.end method

.method updateItemList()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/phone/RejectCallWithMsgLayout;->mBtnList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :cond_0
    new-instance v1, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;

    invoke-direct {v1, p0}, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;-><init>(Lcom/android/phone/RejectCallWithMsgLayout;)V

    invoke-virtual {v1}, Lcom/android/phone/RejectCallWithMsgLayout$updateThread;->start()V

    .line 162
    return-void
.end method
