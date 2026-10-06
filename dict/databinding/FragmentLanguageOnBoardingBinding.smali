.class public abstract Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "FragmentLanguageOnBoardingBinding.java"


# instance fields
.field public final actionsLayout:Landroid/widget/LinearLayout;

.field public final cloudWordsView:Lfast/dic/dict/views/CloudWordsView;

.field public final continueButton:Landroid/widget/Button;

.field public final descriptionLabel:Landroid/widget/TextView;

.field public final englishButton:Lcom/google/android/material/button/MaterialButton;

.field public final languageTitleLabel:Landroid/widget/TextView;

.field public final logoIv:Landroid/widget/ImageView;

.field public final notLoggedInView:Landroid/widget/LinearLayout;

.field public final persianButton:Lcom/google/android/material/button/MaterialButton;

.field public final titleLabel:Landroid/widget/TextView;


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/LinearLayout;Lfast/dic/dict/views/CloudWordsView;Landroid/widget/Button;Landroid/widget/TextView;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Lcom/google/android/material/button/MaterialButton;Landroid/widget/TextView;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 58
    iput-object p4, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->actionsLayout:Landroid/widget/LinearLayout;

    .line 59
    iput-object p5, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->cloudWordsView:Lfast/dic/dict/views/CloudWordsView;

    .line 60
    iput-object p6, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->continueButton:Landroid/widget/Button;

    .line 61
    iput-object p7, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->descriptionLabel:Landroid/widget/TextView;

    .line 62
    iput-object p8, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->englishButton:Lcom/google/android/material/button/MaterialButton;

    .line 63
    iput-object p9, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->languageTitleLabel:Landroid/widget/TextView;

    .line 64
    iput-object p10, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->logoIv:Landroid/widget/ImageView;

    .line 65
    iput-object p11, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->notLoggedInView:Landroid/widget/LinearLayout;

    .line 66
    iput-object p12, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->persianButton:Lcom/google/android/material/button/MaterialButton;

    .line 67
    iput-object p13, p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->titleLabel:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
    .locals 1

    .line 110
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static bind(Landroid/view/View;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 123
    sget v0, Lfast/dic/dict/R$layout;->fragment_language_on_boarding:I

    invoke-static {p1, p0, v0}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->bind(Ljava/lang/Object;Landroid/view/View;I)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
    .locals 1

    .line 92
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, v0}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
    .locals 1

    .line 73
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/Object;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    sget v0, Lfast/dic/dict/R$layout;->fragment_language_on_boarding:I

    invoke-static {p0, v0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    sget v0, Lfast/dic/dict/R$layout;->fragment_language_on_boarding:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    return-object p0
.end method
