.class Lcom/android/internal/policy/impl/GlassLockScreen;
.super Landroid/widget/LinearLayout;
.source "GlassLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# static fields
.field private static final DBG:Z = true

.field private static final LOCK_ANIMATION_MOVE_RANGE:I = 0x14

.field private static final LOCK_ANIMATION_START_DELAY:I = 0x64

.field private static final MAINLAYOUT_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GlassLockScreen"


# instance fields
.field private distance:D

.field private mAnimate:Z

.field private mBoxLayout:Landroid/widget/LinearLayout;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCreationOrientation:I

.field private mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

.field private mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

.field private mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

.field private mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

.field mHandler:Landroid/os/Handler;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockscreenShadowWall:Landroid/widget/ImageView;

.field private mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

.field private mMainLayout:Landroid/widget/RelativeLayout;

.field private final mStartLockAnimation:Ljava/lang/Runnable;

.field private mTimeTick_Layout_Refresh:Z

.field private mTransAnimation:Landroid/view/animation/TranslateAnimation;

.field private mUnLocked:Z

.field private mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field mX:F

.field mY:F

.field private threshold:D


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 10
    .parameter "context"
    .parameter "configuration"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 73
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 83
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 84
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 86
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 87
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 278
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreen$1;

    invoke-direct {v5, p0}, Lcom/android/internal/policy/impl/GlassLockScreen$1;-><init>(Lcom/android/internal/policy/impl/GlassLockScreen;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    .line 289
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 290
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 106
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 107
    iput-object p4, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 108
    iput-object p5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 109
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 111
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    .line 113
    iget v5, p2, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCreationOrientation:I

    .line 115
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 117
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x109007f

    const/4 v6, 0x1

    invoke-virtual {v0, v5, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 123
    const v5, 0x1020294

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .end local p3
    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    .line 124
    const v5, 0x1020295

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    .line 125
    const v5, 0x1020296

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    .line 127
    new-instance v5, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-direct {v5, p1}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    .line 128
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 129
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 131
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    .line 133
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v8, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {v5, v6, v7, v8}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    .line 135
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    .line 136
    new-instance v5, Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/android/internal/policy/impl/UnlockClockGB;-><init>(Landroid/content/Context;Z)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    .line 137
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 138
    new-instance v5, Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-direct {v5, p1, p4, p2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Landroid/content/res/Configuration;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    .line 139
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->addView(Landroid/view/View;)V

    .line 141
    new-instance v3, Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 142
    .local v3, mBlankLinearLayout:Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v2, mBlankLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 144
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 147
    .local v4, mUnlockClockLP:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v5, 0x3f80

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 148
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/UnlockClockGB;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "clock_position"

    const/4 v7, 0x2

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 151
    .local v1, layoutPosition:I
    const-string v5, "GlassLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CLOCK_POSITION from Setting Value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    packed-switch v1, :pswitch_data_0

    .line 249
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803f1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 250
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 253
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 255
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    .line 257
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 258
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 259
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 260
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 264
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusable(Z)V

    .line 265
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setFocusableInTouchMode(Z)V

    .line 266
    const/high16 v5, 0x4

    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/GlassLockScreen;->setDescendantFocusability(I)V

    .line 268
    invoke-virtual {p4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerInfoCallback(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;)V

    .line 270
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    const/high16 v7, 0x41a0

    const/4 v8, 0x0

    const/high16 v9, -0x3e60

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    .line 271
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 272
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 273
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 274
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setFillBefore(Z)V

    .line 275
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 276
    return-void

    .line 156
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803f0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 157
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 158
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 166
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    .line 168
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 170
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setBottomLayout()V

    goto/16 :goto_0

    .line 174
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setBottomLayout()V

    .line 178
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setBottomLayout()V

    goto/16 :goto_0

    .line 187
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803f1

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 189
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 191
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    .line 195
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 211
    :goto_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 212
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 213
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 201
    :cond_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 205
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 207
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    goto :goto_1

    .line 218
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenShadowWall:Landroid/widget/ImageView;

    const v6, 0x10803ef

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    const-string v5, "GlassLockScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " is FM Playing  = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->getIsFMPlayerPlaying()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 224
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    .line 228
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 243
    :goto_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 244
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 245
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    const/16 v6, 0x50

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/UnlockClockGB;->setGravity(I)V

    .line 246
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 234
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 235
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setTopLayout()V

    .line 237
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mBoxLayout:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    iget-object v5, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setTopLayout()V

    goto :goto_2

    .line 153
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/GlassLockScreen;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 506
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 507
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->cleanUp()V

    .line 509
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->cleanUp()V

    .line 511
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->cleanUp()V

    .line 512
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->cleanUp()V

    .line 513
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->cleanUp()V

    .line 514
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 450
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 455
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onPause()V

    .line 458
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->onPause()V

    .line 460
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->onPause()V

    .line 461
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "newState"

    .prologue
    .line 446
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 1
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->onResume()V

    .line 417
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 434
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRefreshCarrierInfo plmn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " spn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/UnlockClockGB;->setCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 438
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 465
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 466
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->onResume()V

    .line 467
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/UnlockClockGB;->refreshTimeAndDateDisplay()V

    .line 468
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->onResume()V

    .line 470
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonyPlmn()Ljava/lang/CharSequence;

    move-result-object v0

    .line 471
    .local v0, plmn:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getTelephonySpn()Ljava/lang/CharSequence;

    move-result-object v1

    .line 472
    .local v1, spn:Ljava/lang/CharSequence;
    const-string v2, "GlassLockScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResum plmn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " spn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->setCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 475
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->onResume()V

    .line 476
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMissedEventWidget:Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlassLockScreenMissedEventWidget;->onResume()V

    .line 477
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockscreenInfo:Lcom/android/internal/policy/impl/GlassLockscreenInfo;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/GlassLockscreenInfo;->onResume()V

    .line 479
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 442
    return-void
.end method

.method public onTimeChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 421
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/UnlockClockGB;->resetClockInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 422
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 426
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 428
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter "event"

    .prologue
    .line 295
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 296
    .local v5, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    .line 297
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v16

    .line 298
    .local v16, y:F
    const/4 v8, 0x0

    .line 299
    .local v8, diffX:I
    const/4 v10, 0x0

    .line 300
    .local v10, diffY:I
    const/4 v9, 0x0

    .line 301
    .local v9, diffX_ori:I
    const/4 v11, 0x0

    .line 302
    .local v11, diffY_ori:I
    const/4 v7, 0x0

    .line 304
    .local v7, currentMusicPlayingStatus:Z
    const/4 v6, 0x0

    .line 310
    .local v6, currentFMRadioPlayingStatus:Z
    packed-switch v5, :pswitch_data_0

    .line 410
    :cond_0
    :goto_0
    const/16 v17, 0x1

    return v17

    .line 312
    :pswitch_0
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/GlassLockScreen;->threshold:D

    .line 313
    const-wide/16 v17, 0x0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/GlassLockScreen;->distance:D

    .line 315
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 317
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    const-wide/16 v19, 0x64

    invoke-virtual/range {v17 .. v20}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 319
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 322
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isControllerShowing()Z

    move-result v7

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isControllerShowing()Z

    move-result v6

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setControllerVisibility(ZZ)V

    .line 333
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 334
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    goto/16 :goto_0

    .line 340
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 341
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    move/from16 v17, v0

    sub-float v17, v15, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move v8, v0

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v18

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v18

    div-int v10, v17, v18

    .line 346
    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v12, v17, v19

    .line 347
    .local v12, distance_square:D
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/GlassLockScreen;->distance:D

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v17

    move/from16 v14, v17

    .line 349
    .local v14, min:I
    :goto_1
    mul-int/lit8 v17, v14, 0x2

    div-int/lit8 v17, v17, 0x3

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/internal/policy/impl/GlassLockScreen;->threshold:D

    .line 352
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 356
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 359
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    move/from16 v17, v0

    sub-float v17, v15, v17

    const/high16 v18, 0x41a0

    add-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v9, v0

    .line 365
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    move/from16 v17, v0

    sub-float v17, v16, v17

    const/high16 v18, 0x41a0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move v11, v0

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v18

    add-int v18, v18, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v19

    add-int v19, v19, v11

    move-object/from16 v0, v17

    move v1, v9

    move v2, v11

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 370
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->distance:D

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->threshold:D

    move-wide/from16 v19, v0

    cmpl-double v17, v17, v19

    if-ltz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 371
    const-string v17, "GlassLockScreen"

    const-string v18, "Threshold is reached. goToUnlockScreen !!"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto/16 :goto_0

    .line 348
    .end local v14           #min:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v17

    move/from16 v14, v17

    goto/16 :goto_1

    .line 378
    .end local v12           #distance_square:D
    :pswitch_2
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mX:F

    .line 379
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mY:F

    .line 380
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mTimeTick_Layout_Refresh:Z

    .line 384
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mStartLockAnimation:Ljava/lang/Runnable;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mTransAnimation:Landroid/view/animation/TranslateAnimation;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/RelativeLayout;->clearAnimation()V

    .line 388
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/GlassLockScreen;->mAnimate:Z

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->invalidate()V

    .line 392
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnLocked:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mMainLayout:Landroid/widget/RelativeLayout;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v21

    invoke-virtual/range {v17 .. v21}, Landroid/widget/RelativeLayout;->layout(IIII)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mLockscreenWallpaperUpdater:Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/LockscreenWallpaperUpdater;->setVisibility(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setVisibility(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->isControllerShowing()Z

    move-result v6

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setControllerVisibility(ZZ)V

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setVisibility(I)V

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->isControllerShowing()Z

    move-result v7

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setControllerVisibility(ZZ)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlassLockScreen;->mUnlockClock:Lcom/android/internal/policy/impl/UnlockClockGB;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/policy/impl/UnlockClockGB;->setVisibility(I)V

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/GlassLockScreen;->clearFocus()V

    goto/16 :goto_0

    .line 310
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setScreenOff()V
    .locals 3

    .prologue
    .line 492
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOff() mGlassLockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    if-eqz v0, :cond_0

    .line 494
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setScreenOff()V

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setScreenOff()V

    .line 500
    :cond_1
    return-void
.end method

.method public setScreenOn()V
    .locals 3

    .prologue
    .line 481
    const-string v0, "GlassLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenOn() mGlassLockScreenMusicWidget="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    if-eqz v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenFMRadioWidget:Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenFMRadioWidget;->setScreenOn()V

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlassLockScreen;->mGlassLockScreenMusicWidget:Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/GlassLockScreenMusicWidget;->setScreenOn()V

    .line 489
    :cond_1
    return-void
.end method
