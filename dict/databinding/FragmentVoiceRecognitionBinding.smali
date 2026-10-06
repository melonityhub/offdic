.class public final Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;
.super Ljava/lang/Object;
.source "FragmentVoiceRecognitionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final segmentedView:Lcom/trinnguyen/SegmentView;

.field public final sentenceView:Landroid/widget/TextView;

.field public final toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

.field public final waveParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final waveView:Lfast/dic/dict/views/SiriVisualView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/trinnguyen/SegmentView;Landroid/widget/TextView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Lfast/dic/dict/views/SiriVisualView;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 49
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->micButtonFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 50
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    .line 51
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->sentenceView:Landroid/widget/TextView;

    .line 52
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    .line 53
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->waveParentView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 54
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->waveView:Lfast/dic/dict/views/SiriVisualView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;
    .locals 10

    .line 84
    sget v0, Lfast/dic/dict/R$id;->mic_button_fab:I

    .line 85
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_0

    .line 90
    sget v0, Lfast/dic/dict/R$id;->segmented_view:I

    .line 91
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/trinnguyen/SegmentView;

    if-eqz v5, :cond_0

    .line 96
    sget v0, Lfast/dic/dict/R$id;->sentence_view:I

    .line 97
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_0

    .line 102
    sget v0, Lfast/dic/dict/R$id;->toolbar_view:I

    .line 103
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    invoke-static {v1}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    move-result-object v7

    .line 109
    sget v0, Lfast/dic/dict/R$id;->wave_parent_view:I

    .line 110
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_0

    .line 115
    sget v0, Lfast/dic/dict/R$id;->wave_view:I

    .line 116
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lfast/dic/dict/views/SiriVisualView;

    if-eqz v9, :cond_0

    .line 121
    new-instance v2, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-object v3, p0

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-direct/range {v2 .. v9}, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;-><init>(Landroid/widget/RelativeLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/trinnguyen/SegmentView;Landroid/widget/TextView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;Landroidx/constraintlayout/widget/ConstraintLayout;Lfast/dic/dict/views/SiriVisualView;)V

    return-object v2

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 125
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;
    .locals 2

    .line 71
    sget v0, Lfast/dic/dict/R$layout;->fragment_voice_recognition:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 75
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 0

    .line 60
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentVoiceRecognitionBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object p0
.end method
