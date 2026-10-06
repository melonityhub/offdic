.class public final Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;
.super Lfast/dic/dict/fragments/onboardings/Hilt_LanguageOnBoardingFragment;
.source "LanguageOnBoardingFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguageOnBoardingFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageOnBoardingFragment.kt\nfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,105:1\n312#2:106\n328#2,4:107\n313#2:111\n312#2:112\n328#2,4:113\n313#2:117\n*S KotlinDebug\n*F\n+ 1 LanguageOnBoardingFragment.kt\nfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment\n*L\n42#1:106\n42#1:107,4\n42#1:111\n45#1:112\n45#1:113,4\n45#1:117\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J$\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0016J\u0012\u0010\u0012\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0008H\u0002J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0018\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onClick",
        "",
        "button",
        "updateLocale",
        "selected",
        "Lcom/google/android/material/button/MaterialButton;",
        "selection",
        "",
        "app",
        "Ldagger/hilt/android/AndroidEntryPoint;"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_LanguageOnBoardingFragment;-><init>()V

    return-void
.end method

.method static final onCreateView$lambda$2(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static final onCreateView$lambda$3(Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;Landroid/view/View;)V
    .locals 4

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p1

    const-string v0, "from(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result p1

    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 61
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->pushNotificationOnBoardingFragment:I

    invoke-static {p0, p1, v3, v2, v3}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void

    .line 63
    :cond_0
    check-cast p0, Landroidx/fragment/app/Fragment;

    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->advertisementOnBoardingFragment:I

    invoke-static {p0, p1, v3, v2, v3}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    return-void
.end method

.method private final selected(Lcom/google/android/material/button/MaterialButton;Z)V
    .locals 7

    .line 97
    const-string v0, "requireContext(...)"

    if-eqz p2, :cond_0

    const/16 p2, 0x8

    .line 98
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 99
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lfast/dic/dict/R$attr;->tableViewSelectedBackground:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    const/4 p2, 0x3

    .line 101
    invoke-virtual {p1, p2}, Lcom/google/android/material/button/MaterialButton;->setStrokeWidth(I)V

    .line 102
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lfast/dic/dict/R$attr;->tableViewBorder:I

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lfast/dic/dict/utils/ContextExtKt;->getColorFromAttr$default(Landroid/content/Context;ILandroid/util/TypedValue;ZILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/material/button/MaterialButton;->setStrokeColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private final updateLocale(Landroid/view/View;)V
    .locals 7

    .line 83
    const-string v0, "englishButton"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "persianButton"

    const/4 v4, 0x0

    const-string v5, "binding"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v6, Lfast/dic/dict/R$id;->persian_button:I

    if-ne p1, v6, :cond_2

    .line 85
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_0

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->persianButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->selected(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 86
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_1

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, p1

    :goto_0
    iget-object p1, v4, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->englishButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->selected(Lcom/google/android/material/button/MaterialButton;Z)V

    const-string p1, "Persian"

    goto :goto_2

    .line 88
    :cond_2
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_3

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->persianButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v2}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->selected(Lcom/google/android/material/button/MaterialButton;Z)V

    .line 89
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_4

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v4, p1

    :goto_1
    iget-object p1, v4, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->englishButton:Lcom/google/android/material/button/MaterialButton;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v1}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->selected(Lcom/google/android/material/button/MaterialButton;Z)V

    const-string p1, "English"

    .line 92
    :goto_2
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lfast/dic/dict/database/LocalStorage;->saveCurrentLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 93
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lfast/dic/dict/utils/LocaleExtKt;->updateCurrentLanguage(Ljava/util/Locale;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->updateLocale(Landroid/view/View;)V

    .line 78
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 34
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    const/4 p2, 0x0

    .line 36
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->englishButton:Lcom/google/android/material/button/MaterialButton;

    move-object v0, p0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->persianButton:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 41
    iget p1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p1, v0, :cond_6

    .line 42
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->logoIv:Landroid/widget/ImageView;

    const-string v0, "logoIv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42f00000    # 120.0f

    mul-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_3
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->cloudWordsView:Lfast/dic/dict/views/CloudWordsView;

    if-eqz p1, :cond_6

    check-cast p1, Landroid/view/View;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x43160000    # 150.0f

    mul-float/2addr v2, v1

    float-to-int v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 115
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 113
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 107
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 50
    :cond_6
    :goto_0
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_7

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_7
    invoke-virtual {p1}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 56
    iget-object p1, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p1, :cond_8

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_8
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->continueButton:Landroid/widget/Button;

    new-instance v0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    new-instance p1, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result p1

    .line 70
    iget-object v0, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-eqz p1, :cond_a

    if-nez v0, :cond_9

    .line 68
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p2

    :cond_9
    iget-object p1, v0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->persianButton:Lcom/google/android/material/button/MaterialButton;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->updateLocale(Landroid/view/View;)V

    goto :goto_1

    :cond_a
    if-nez v0, :cond_b

    .line 70
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p2

    :cond_b
    iget-object p1, v0, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->englishButton:Lcom/google/android/material/button/MaterialButton;

    check-cast p1, Landroid/view/View;

    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->updateLocale(Landroid/view/View;)V

    .line 73
    :goto_1
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;->binding:Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;

    if-nez p0, :cond_c

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    move-object p2, p0

    :goto_2
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
