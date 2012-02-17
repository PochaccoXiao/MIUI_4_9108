.class public Lcom/android/settings/VibrationFeedbackPreference;
.super Landroid/preference/SeekBarPreference;
.source "VibrationFeedbackPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private currentLevel:I

.field private mIntensityValue:[I

.field private mOldSlideLevel:I

.field private mOldVibrationIntensity:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVibrationIntensity:I

.field mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x5

    const-string v2, "GT-I9108"

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 57
    const v0, 0x7f03004b

    invoke-virtual {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setDialogLayoutResource(I)V

    .line 59
    const-string v0, "GT-I9103"

    const-string v1, "GT-I9108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GT-I9220"

    const-string v1, "GT-I9108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x7d0

    aput v1, v0, v4

    .line 62
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0xfa0

    aput v1, v0, v5

    .line 63
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x1770

    aput v1, v0, v6

    .line 64
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/4 v1, 0x4

    const/16 v2, 0x1f40

    aput v2, v0, v1

    .line 65
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x2710

    aput v1, v0, v3

    .line 77
    :cond_1
    :goto_0
    return-void

    .line 66
    :cond_2
    const-string v0, "SGH-T989"

    const-string v1, "GT-I9108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 68
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x9c4

    aput v1, v0, v4

    .line 69
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x1194

    aput v1, v0, v5

    .line 70
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x1b58

    aput v1, v0, v6

    .line 71
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/4 v1, 0x4

    const/16 v2, 0x2134

    aput v2, v0, v1

    .line 72
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x2710

    aput v1, v0, v3

    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "SPH-D710"

    const-string v1, "GT-I9108"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    const/16 v1, 0x2616

    aput v1, v0, v3

    goto :goto_0

    .line 43
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xact 0xdt 0x0t 0x0t
        0x70t 0x17t 0x0t 0x0t
        0x40t 0x1ft 0x0t 0x0t
        0xfct 0x21t 0x0t 0x0t
    .end array-data
.end method

.method private convertIntensityToLevel(I)I
    .locals 5
    .parameter "mIntensity"

    .prologue
    const-string v4, "VibrationFeedbackPreference"

    .line 139
    const/4 v0, 0x0

    .local v0, mLevel:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v2, v2, v0

    if-ne p1, v2, :cond_0

    .line 142
    const-string v2, "VibrationFeedbackPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convertIntensityToLevel : return level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 152
    .end local v0           #mLevel:I
    .local v1, mLevel:I
    :goto_1
    return v1

    .line 139
    .end local v1           #mLevel:I
    .restart local v0       #mLevel:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v2, v2

    if-ne v0, v2, :cond_2

    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 149
    const-string v2, "VibrationFeedbackPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intensity : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v2, "VibrationFeedbackPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no matched item. return max level"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v1, v0

    .line 152
    .end local v0           #mLevel:I
    .restart local v1       #mLevel:I
    goto :goto_1
.end method

.method private convertLevelToIntensity(I)I
    .locals 5
    .parameter "mLevel"

    .prologue
    const/4 v3, 0x1

    const-string v2, "]"

    const-string v4, "VibrationFeedbackPreference"

    .line 156
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 158
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertLevelToIntensity : mLevel["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Intensity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v0, v0, p1

    .line 162
    :goto_0
    return v0

    .line 161
    :cond_0
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertLevelToIntensity : return max intensity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    iget-object v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    array-length v1, v1

    sub-int/2addr v1, v3

    aget v0, v0, v1

    goto :goto_0
.end method

.method private setVibrationIntensity(I)V
    .locals 5
    .parameter "mVibrationIntensityLevel"

    .prologue
    const-string v4, "]"

    const-string v3, "VibrationFeedbackPreference"

    .line 201
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : level["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-direct {p0, p1}, Lcom/android/settings/VibrationFeedbackPreference;->convertLevelToIntensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    .line 204
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : mVibrationIntensity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 208
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVibrationIntensity : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v5, 0x5

    const-string v6, "]"

    const-string v4, "VibrationFeedbackPreference"

    .line 81
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindDialogView(Landroid/view/View;)V

    .line 82
    invoke-static {p1}, Lcom/android/settings/VibrationFeedbackPreference;->getSeekBar(Landroid/view/View;)Landroid/widget/SeekBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 85
    const-string v1, "VibrationFeedbackPreference"

    const-string v1, "onBindDialogView : mSeekBar.setMax(MAXIMUM_VIBRATION_INTENSITY[5])"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "VIB_FEEDBACK_MAGNITUDE"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    .line 91
    const-string v1, "VibrationFeedbackPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindDialogView : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    invoke-direct {p0, v1}, Lcom/android/settings/VibrationFeedbackPreference;->convertIntensityToLevel(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    .line 94
    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mOldSlideLevel["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 103
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : mSeekBar.setProgress("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 108
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 109
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 110
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 111
    return-void

    .line 95
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 96
    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mIntensityValue:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    .line 97
    iput v5, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    .line 98
    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 99
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBindDialogView : SettingNotFoundException : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldVibrationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 5
    .parameter "positiveResult"

    .prologue
    const-string v4, "]"

    const-string v3, "VibrationFeedbackPreference"

    .line 185
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onDialogClosed(Z)V

    .line 186
    if-eqz p1, :cond_0

    .line 187
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed : positiveResult = true, progress["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->convertLevelToIntensity(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    .line 190
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed : mVibrationIntensity["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/VibrationFeedbackPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "VIB_FEEDBACK_MAGNITUDE"

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 194
    const-string v0, "VibrationFeedbackPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDialogClosed : Settings.System.VIB_FEEDBACK_MAGNITUDE["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrationIntensity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mOldSlideLevel:I

    invoke-direct {p0, v0}, Lcom/android/settings/VibrationFeedbackPreference;->setVibrationIntensity(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v5, "VibrationFeedbackPreference"

    .line 115
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKey() Keycode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    .line 118
    .local v0, isdown:Z
    :goto_0
    const-string v1, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onKey() Keycode: isdown : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    packed-switch p2, :pswitch_data_0

    move v1, v4

    .line 133
    :goto_1
    return v1

    .end local v0           #isdown:Z
    :cond_0
    move v0, v4

    .line 117
    goto :goto_0

    .line 121
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    if-lez v1, :cond_1

    .line 122
    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 123
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    move v1, v3

    .line 125
    goto :goto_1

    .line 127
    :pswitch_1
    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 128
    iget v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 129
    iget-object v1, p0, Lcom/android/settings/VibrationFeedbackPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_2
    move v1, v3

    .line 131
    goto :goto_1

    .line 119
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 168
    const-string v0, "VibrationFeedbackPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged : setVibrationIntensity(progress["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "])"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iput p2, p0, Lcom/android/settings/VibrationFeedbackPreference;->currentLevel:I

    .line 170
    invoke-direct {p0, p2}, Lcom/android/settings/VibrationFeedbackPreference;->setVibrationIntensity(I)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/VibrationFeedbackPreference;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 173
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 177
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 181
    return-void
.end method
