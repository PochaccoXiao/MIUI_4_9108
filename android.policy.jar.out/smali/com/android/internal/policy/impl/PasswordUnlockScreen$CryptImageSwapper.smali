.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CryptImageSwapper"
.end annotation


# instance fields
.field mDoingEncryption:Z

.field private mHandler:Landroid/os/Handler;

.field mImageDisplayed:I

.field private mSwapImage:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Z)V
    .locals 1
    .parameter
    .parameter "encryption"

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mImageDisplayed:I

    .line 284
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mHandler:Landroid/os/Handler;

    .line 307
    new-instance v0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper$1;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mSwapImage:Ljava/lang/Runnable;

    .line 286
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mDoingEncryption:Z

    .line 287
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->doSwap()V

    .line 288
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->doSwap()V

    return-void
.end method

.method private doSwap()V
    .locals 4

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mDoingEncryption:Z

    if-eqz v0, :cond_1

    .line 291
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mImageDisplayed:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080423

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 300
    :goto_0
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mImageDisplayed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mImageDisplayed:I

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mSwapImage:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 302
    return-void

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080424

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 295
    :cond_1
    iget v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mImageDisplayed:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080421

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 298
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mCryptImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x1080422

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public stop()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$CryptImageSwapper;->mSwapImage:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method
