.class public Lcom/android/internal/policy/impl/CircleLockScreen;
.super Landroid/widget/FrameLayout;
.source "CircleLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;
    }
.end annotation


# instance fields
.field private DBG:Z

.field private TAG:Ljava/lang/String;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

.field private mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

.field private mComponentBox:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private mCreationOrientation:I

.field private mHelpText:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsLiveWallpaper:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

.field private mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mRootLayout:Landroid/widget/RelativeLayout;

.field private mShadowImage:Landroid/widget/ImageView;

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/high16 v7, 0x4160

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v1, "CircleLockScreen"

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 86
    iput-object p4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 87
    iput-object p5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 88
    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 89
    iget v1, p2, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    .line 91
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusable(Z)V

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/CircleLockScreen;->setFocusableInTouchMode(Z)V

    .line 93
    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->setDescendantFocusability(I)V

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_wallpaper"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2

    move v1, v5

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    .line 102
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    .line 105
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    .line 109
    :cond_0
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 113
    new-instance v1, Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v1, p1, p5}, Lcom/android/internal/policy/impl/CircleUnlockView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    new-instance v2, Lcom/android/internal/policy/impl/CircleLockScreen$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/CircleLockScreen$1;-><init>(Lcom/android/internal/policy/impl/CircleLockScreen;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    .line 135
    new-instance v1, Lcom/android/internal/policy/impl/ClockWidget;

    invoke-direct {v1, p1, p4, p2}, Lcom/android/internal/policy/impl/ClockWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    .line 138
    new-instance v1, Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-direct {v1, v2, v3, p5}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/CircleUnlockView;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    .line 141
    new-instance v1, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p5, p4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    .line 145
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 149
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v2, 0x10803f0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    .line 155
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v2, 0x10404be

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 160
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/high16 v2, -0x100

    invoke-virtual {v1, v6, v6, v6, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 161
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const v2, -0x141415

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/4 v2, 0x2

    const/high16 v3, 0x41a8

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 164
    .local v0, scale:F
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    mul-float v2, v7, v0

    float-to-int v2, v2

    mul-float v3, v7, v0

    float-to-int v3, v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 165
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 169
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->setComponentLayout(Landroid/content/Context;)V

    .line 170
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 171
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 173
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v1, v2, v4, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/CircleLockScreen;->addView(Landroid/view/View;)V

    .line 178
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 179
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerSimStateCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;)V

    .line 180
    return-void

    .end local v0           #scale:F
    :cond_2
    move v1, v3

    .line 96
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/CircleLockScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/CircleLockScreen;->bedimBackground(Z)V

    return-void
.end method

.method private bedimBackground(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x4

    .line 316
    if-eqz p1, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->buildDrawingCache()V

    .line 328
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mRootLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 329
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/CircleUnlockView;->setVisibility(I)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 333
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenBlack()V

    .line 336
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 337
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 357
    :goto_0
    return-void

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 346
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 351
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->setLockScreenWallpaper()V

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 355
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setComponentLayout(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/16 v10, 0x10

    const/4 v6, 0x2

    const/high16 v9, 0x3f80

    const/4 v8, -0x2

    const/4 v7, -0x1

    .line 199
    iget v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCreationOrientation:I

    if-eq v4, v6, :cond_1

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "clock_position"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, layoutPosition:I
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v4, :cond_0

    .line 206
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clock position from setting = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 210
    .local v3, mBlankLayout:Landroid/widget/FrameLayout;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 211
    .local v0, blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 213
    packed-switch v1, :pswitch_data_0

    .line 312
    .end local v0           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #layoutPosition:I
    .end local v3           #mBlankLayout:Landroid/widget/FrameLayout;
    :goto_0
    return-void

    .line 217
    .restart local v0       #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v1       #layoutPosition:I
    .restart local v3       #mBlankLayout:Landroid/widget/FrameLayout;
    :pswitch_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x10803f0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 221
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 223
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x30

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 224
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 239
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    .line 241
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 249
    :pswitch_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x10803f1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 258
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 260
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 265
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 266
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v10}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 267
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    .line 276
    :pswitch_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mShadowImage:Landroid/widget/ImageView;

    const v5, 0x10803ef

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 290
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mHelpText:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 293
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/ClockWidget;->getRootLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 299
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    const/16 v5, 0x50

    invoke-virtual {v4, v5}, Lcom/android/internal/policy/impl/ClockWidget;->setGravity(I)V

    .line 300
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 306
    .end local v0           #blankLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    .end local v1           #layoutPosition:I
    .end local v3           #mBlankLayout:Landroid/widget/FrameLayout;
    :cond_1
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 307
    .local v2, lp:Landroid/widget/LinearLayout$LayoutParams;
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 308
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 310
    iget-object v4, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mComponentBox:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 400
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "cleanUp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 402
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mIsLiveWallpaper:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mWallpaper:Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleLockScreen$WallpaperWidget;->cleanUp()V

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->cleanUp()V

    .line 406
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->cleanUp()V

    .line 408
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/CircleUnlockView;->setOnCircleTouchListener(Lcom/android/internal/policy/impl/CircleUnlockView$OnCircleTouchListener;)V

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleUnlockView;->cleanUp()V

    .line 411
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 412
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 413
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 414
    iput-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mContext:Landroid/content/Context;

    .line 415
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0x1f4

    const/4 v3, 0x0

    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 185
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/CircleLockScreen;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 193
    :goto_0
    return v1

    .line 188
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/ClockWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->getTTSMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    .line 190
    invoke-interface {v0, v3, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    .line 462
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    .line 583
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onPause()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->onPause()V

    .line 387
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0
    .parameter "phoneState"

    .prologue
    .line 459
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 430
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/policy/impl/ClockWidget;->refreshBatteryInfo(ZZI)V

    .line 437
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/ClockWidget;->onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 448
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 391
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    .line 394
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/ClockWidget;->onResume()V

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mMissedEventWidget:Lcom/android/internal/policy/impl/CircleMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/CircleMissedEventWidget;->onResume()V

    .line 396
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 454
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 1
    .parameter "simState"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mClockWidget:Lcom/android/internal/policy/impl/ClockWidget;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/ClockWidget;->onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V

    .line 579
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleLockScreen;->mCircleUnlockView:Lcom/android/internal/policy/impl/CircleUnlockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/policy/impl/CircleUnlockView;->handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setScreenOff()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method

.method public setScreenOn()V
    .locals 0

    .prologue
    .line 420
    return-void
.end method
