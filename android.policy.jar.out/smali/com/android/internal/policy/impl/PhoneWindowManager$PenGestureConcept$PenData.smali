.class Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PenData"
.end annotation


# instance fields
.field public mDown:Z

.field public mFlags:I

.field public mKeyCode:I

.field public mKeyguardOn:Z

.field public mMetaState:I

.field public mRepeatCount:I

.field public mScanCode:I

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;IZIZIII)V
    .locals 0
    .parameter
    .parameter "keyCode"
    .parameter "down"
    .parameter "repeatCount"
    .parameter "keyguardOn"
    .parameter "flags"
    .parameter "scanCode"
    .parameter "metaState"

    .prologue
    .line 3900
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3901
    iput p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyCode:I

    .line 3902
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mDown:Z

    .line 3903
    iput p4, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mRepeatCount:I

    .line 3904
    iput-boolean p5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyguardOn:Z

    .line 3905
    iput p6, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mFlags:I

    .line 3906
    iput p7, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mScanCode:I

    .line 3907
    iput p8, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mMetaState:I

    .line 3908
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 3912
    instance-of v2, p1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    if-eqz v2, :cond_0

    .line 3913
    move-object v0, p1

    check-cast v0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;

    move-object v1, v0

    .line 3915
    .local v1, penData:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;
    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyCode:I

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyCode:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mDown:Z

    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mDown:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mRepeatCount:I

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mRepeatCount:I

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyguardOn:Z

    iget-boolean v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mKeyguardOn:Z

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mFlags:I

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mFlags:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mScanCode:I

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mScanCode:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mMetaState:I

    iget v3, v1, Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;->mMetaState:I

    if-ne v2, v3, :cond_0

    .line 3922
    const/4 v2, 0x1

    .line 3925
    .end local v1           #penData:Lcom/android/internal/policy/impl/PhoneWindowManager$PenGestureConcept$PenData;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
