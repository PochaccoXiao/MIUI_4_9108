.class Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenGestureConcept"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;
    }
.end annotation


# instance fields
.field private mDoubleTapIntent:Landroid/content/Intent;

.field private final mDoubleTapPattern1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

.field private final mDoubleTapPattern2:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

.field private final mDoubleTapPattern3:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

.field private final mDoubleTapPattern4:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mPenData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 9
    .parameter

    .prologue
    .line 3819
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3811
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    .line 3814
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    const/16 v2, 0x72

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/16 v7, 0x22b

    const/16 v8, 0x800

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;IZIZIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    .line 3815
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    const/16 v2, 0x70

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/16 v7, 0x220

    const/16 v8, 0xa00

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;IZIZIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern2:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    .line 3816
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    const/16 v2, 0x72

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/16 v7, 0x22b

    const/16 v8, 0x200

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;IZIZIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern3:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    .line 3817
    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    const/16 v2, 0x70

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/16 v7, 0x220

    const/4 v8, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;IZIZIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern4:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    .line 3821
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapIntent:Landroid/content/Intent;

    .line 3822
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v1, "application/vnd.diotek.papermemo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3823
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapIntent:Landroid/content/Intent;

    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3826
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.screencapture.capture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mLongPressIntent:Landroid/content/Intent;

    .line 3827
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mLongPressIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3828
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mLongPressIntent:Landroid/content/Intent;

    const-string v1, "PenGestureConcept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 3829
    return-void
.end method

.method private checkGesture()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const-string v7, "PenGestureConcept"

    .line 3837
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3840
    .local v2, size:I
    if-nez v2, :cond_1

    .line 3885
    :cond_0
    :goto_0
    return-void

    .line 3845
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    sub-int v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    .line 3846
    .local v1, penData:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;
    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mDown:Z

    if-ne v3, v5, :cond_2

    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyguardOn:Z

    if-nez v3, :cond_2

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mFlags:I

    const/16 v4, 0x88

    if-ne v3, v4, :cond_2

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mMetaState:I

    const/16 v4, 0xa00

    if-ne v3, v4, :cond_2

    .line 3851
    const-string v3, "PenGestureConcept"

    const-string v3, "Long pressed."

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3852
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mLongPressIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3854
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->reset()V

    goto :goto_0

    .line 3859
    :cond_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3860
    .local v0, idx:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_3

    .line 3861
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->reset()V

    goto :goto_0

    .line 3865
    :cond_3
    add-int/lit8 v3, v0, 0x4

    if-gt v3, v2, :cond_0

    sub-int v3, v0, v6

    if-ltz v3, :cond_0

    .line 3869
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    sub-int v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    const/4 v4, 0x3

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern2:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    const/4 v4, 0x2

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern3:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern4:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern2:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern3:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, 0x3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapPattern4:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3878
    const-string v3, "PenGestureConcept"

    const-string v3, "Double tapped."

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3879
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mDoubleTapIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3881
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->reset()V

    goto/16 :goto_0
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 3888
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3889
    return-void
.end method


# virtual methods
.method public add(IZIZIII)V
    .locals 10
    .parameter "keyCode"
    .parameter "down"
    .parameter "repeatCount"
    .parameter "keyguardOn"
    .parameter "flags"
    .parameter "scanCode"
    .parameter "metaState"

    .prologue
    .line 3832
    iget-object v9, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->mPenData:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;IZIZIII)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3833
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;->checkGesture()V

    .line 3834
    return-void
.end method
