.class Lcom/android/phone/InVTCallScreen$8;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InVTCallScreen;->onPause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;

.field final synthetic val$app:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2668
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$8;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-object p2, p0, Lcom/android/phone/InVTCallScreen$8;->val$app:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2670
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen$8;->val$app:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 2671
    return-void
.end method
