.class public final Lfast/dic/dict/databinding/FragmentSettingBinding;
.super Ljava/lang/Object;
.source "FragmentSettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final autoRotationDescTextView:Landroid/widget/TextView;

.field public final editTextFastSpeedText:Landroid/widget/TextView;

.field public final editTextOfflineSpeedText:Landroid/widget/TextView;

.field public final editTextSlowSpeedText:Landroid/widget/TextView;

.field public final languageContainerCard:Lcom/google/android/material/card/MaterialCardView;

.field public final languageTitleLabel:Landroid/widget/TextView;

.field public final myWordsInsideOfContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final offlineTranslatorSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final readyKeyboardSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field private final rootView:Landroid/widget/ScrollView;

.field public final seekBarOfflineSpeed:Landroid/widget/SeekBar;

.field public final switchFloatingHead:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final switchOrientation:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final switchTextToSpeech:Lcom/google/android/material/switchmaterial/SwitchMaterial;

.field public final syncSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/SeekBar;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->rootView:Landroid/widget/ScrollView;

    .line 78
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->autoRotationDescTextView:Landroid/widget/TextView;

    .line 79
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->editTextFastSpeedText:Landroid/widget/TextView;

    .line 80
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->editTextOfflineSpeedText:Landroid/widget/TextView;

    .line 81
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->editTextSlowSpeedText:Landroid/widget/TextView;

    .line 82
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->languageContainerCard:Lcom/google/android/material/card/MaterialCardView;

    .line 83
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->languageTitleLabel:Landroid/widget/TextView;

    .line 84
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->myWordsInsideOfContainer:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 85
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->offlineTranslatorSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 86
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->readyKeyboardSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 87
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->seekBarOfflineSpeed:Landroid/widget/SeekBar;

    .line 88
    iput-object p12, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->switchFloatingHead:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 89
    iput-object p13, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->switchOrientation:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 90
    iput-object p14, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->switchTextToSpeech:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 91
    iput-object p15, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->syncSwitch:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentSettingBinding;
    .locals 19

    move-object/from16 v0, p0

    .line 121
    sget v1, Lfast/dic/dict/R$id;->autoRotationDescTextView:I

    .line 122
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 127
    sget v1, Lfast/dic/dict/R$id;->editTextFastSpeedText:I

    .line 128
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 133
    sget v1, Lfast/dic/dict/R$id;->editTextOfflineSpeedText:I

    .line 134
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 139
    sget v1, Lfast/dic/dict/R$id;->editTextSlowSpeedText:I

    .line 140
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 145
    sget v1, Lfast/dic/dict/R$id;->language_container_card:I

    .line 146
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/google/android/material/card/MaterialCardView;

    if-eqz v9, :cond_0

    .line 151
    sget v1, Lfast/dic/dict/R$id;->language_title_label:I

    .line 152
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_0

    .line 157
    sget v1, Lfast/dic/dict/R$id;->my_words_inside_of_container:I

    .line 158
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v11, :cond_0

    .line 163
    sget v1, Lfast/dic/dict/R$id;->offline_translator_switch:I

    .line 164
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v12, :cond_0

    .line 169
    sget v1, Lfast/dic/dict/R$id;->ready_keyboard_switch:I

    .line 170
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v13, :cond_0

    .line 175
    sget v1, Lfast/dic/dict/R$id;->seekBarOfflineSpeed:I

    .line 176
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/SeekBar;

    if-eqz v14, :cond_0

    .line 181
    sget v1, Lfast/dic/dict/R$id;->switchFloatingHead:I

    .line 182
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v15, :cond_0

    .line 187
    sget v1, Lfast/dic/dict/R$id;->switchOrientation:I

    .line 188
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v16, :cond_0

    .line 193
    sget v1, Lfast/dic/dict/R$id;->switchTextToSpeech:I

    .line 194
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v17, :cond_0

    .line 199
    sget v1, Lfast/dic/dict/R$id;->sync_switch:I

    .line 200
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v18, :cond_0

    .line 205
    new-instance v3, Lfast/dic/dict/databinding/FragmentSettingBinding;

    move-object v4, v0

    check-cast v4, Landroid/widget/ScrollView;

    invoke-direct/range {v3 .. v18}, Lfast/dic/dict/databinding/FragmentSettingBinding;-><init>(Landroid/widget/ScrollView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/google/android/material/card/MaterialCardView;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Landroid/widget/SeekBar;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    return-object v3

    .line 211
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 212
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentSettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentSettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentSettingBinding;
    .locals 2

    .line 108
    sget v0, Lfast/dic/dict/R$layout;->fragment_setting:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 110
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 112
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentSettingBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentSettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentSettingBinding;->getRoot()Landroid/widget/ScrollView;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/ScrollView;
    .locals 0

    .line 97
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSettingBinding;->rootView:Landroid/widget/ScrollView;

    return-object p0
.end method
