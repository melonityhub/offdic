.class public final Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;
.super Ljava/lang/Object;
.source "FragmentTextRecognitionTranslatorBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final copyFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field public final gestureView:Lcom/alexvasilkov/gestures/views/GestureFrameLayout;

.field public final graphicOverlay:Lfast/dic/dict/views/GraphicOverlay;

.field public final imageView:Landroid/widget/ImageView;

.field public final loadingSpinner:Landroid/widget/ProgressBar;

.field public final overlayContainer:Landroid/widget/RelativeLayout;

.field public final placeholderView:Landroid/widget/RelativeLayout;

.field private final rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final segmentedView:Lcom/trinnguyen/SegmentView;

.field public final toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;


# direct methods
.method private constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/alexvasilkov/gestures/views/GestureFrameLayout;Lfast/dic/dict/views/GraphicOverlay;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/trinnguyen/SegmentView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 62
    iput-object p2, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->copyFab:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 63
    iput-object p3, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->gestureView:Lcom/alexvasilkov/gestures/views/GestureFrameLayout;

    .line 64
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->graphicOverlay:Lfast/dic/dict/views/GraphicOverlay;

    .line 65
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->imageView:Landroid/widget/ImageView;

    .line 66
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->loadingSpinner:Landroid/widget/ProgressBar;

    .line 67
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->overlayContainer:Landroid/widget/RelativeLayout;

    .line 68
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->placeholderView:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->segmentedView:Lcom/trinnguyen/SegmentView;

    .line 70
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->toolbarView:Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;
    .locals 13

    .line 100
    sget v0, Lfast/dic/dict/R$id;->copy_fab:I

    .line 101
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    if-eqz v4, :cond_0

    .line 106
    sget v0, Lfast/dic/dict/R$id;->gesture_view:I

    .line 107
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/alexvasilkov/gestures/views/GestureFrameLayout;

    if-eqz v5, :cond_0

    .line 112
    sget v0, Lfast/dic/dict/R$id;->graphic_overlay:I

    .line 113
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lfast/dic/dict/views/GraphicOverlay;

    if-eqz v6, :cond_0

    .line 118
    sget v0, Lfast/dic/dict/R$id;->image_view:I

    .line 119
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_0

    .line 124
    sget v0, Lfast/dic/dict/R$id;->loading_spinner:I

    .line 125
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/ProgressBar;

    if-eqz v8, :cond_0

    .line 130
    sget v0, Lfast/dic/dict/R$id;->overlay_container:I

    .line 131
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    .line 136
    sget v0, Lfast/dic/dict/R$id;->placeholder_view:I

    .line 137
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_0

    .line 142
    sget v0, Lfast/dic/dict/R$id;->segmented_view:I

    .line 143
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/trinnguyen/SegmentView;

    if-eqz v11, :cond_0

    .line 148
    sget v0, Lfast/dic/dict/R$id;->toolbar_view:I

    .line 149
    invoke-static {p0, v0}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 153
    invoke-static {v1}, Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;

    move-result-object v12

    .line 155
    new-instance v2, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;

    move-object v3, p0

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct/range {v2 .. v12}, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;Lcom/alexvasilkov/gestures/views/GestureFrameLayout;Lfast/dic/dict/views/GraphicOverlay;Landroid/widget/ImageView;Landroid/widget/ProgressBar;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Lcom/trinnguyen/SegmentView;Lfast/dic/dict/databinding/BottomSheetToolbarLayoutBinding;)V

    return-object v2

    .line 159
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-static {p0, v0, v1}, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;
    .locals 2

    .line 87
    sget v0, Lfast/dic/dict/R$layout;->fragment_text_recognition_translator:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 91
    :cond_0
    invoke-static {p0}, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 0

    .line 24
    invoke-virtual {p0}, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p0

    return-object p0
.end method

.method public getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 76
    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentTextRecognitionTranslatorBinding;->rootView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
