.class public final Lfast/dic/dict/fragments/ChooseLanguageFragment;
.super Lfast/dic/dict/fragments/Hilt_ChooseLanguageFragment;
.source "ChooseLanguageFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChooseLanguageFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChooseLanguageFragment.kt\nfast/dic/dict/fragments/ChooseLanguageFragment\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,67:1\n12746#2:68\n13093#2,3:69\n*S KotlinDebug\n*F\n+ 1 ChooseLanguageFragment.kt\nfast/dic/dict/fragments/ChooseLanguageFragment\n*L\n41#1:68\n41#1:69,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0018\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/fragments/ChooseLanguageFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "fdHtml",
        "Lfast/dic/dict/utils/FDHtml;",
        "getFdHtml",
        "()Lfast/dic/dict/utils/FDHtml;",
        "setFdHtml",
        "(Lfast/dic/dict/utils/FDHtml;)V",
        "Ljavax/inject/Inject;",
        "binding",
        "Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "getLanguagesAdapter",
        "Lfast/dic/dict/adapters/LanguageLayoutAdapter;",
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
.field private binding:Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;

.field public fdHtml:Lfast/dic/dict/utils/FDHtml;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_ChooseLanguageFragment;-><init>()V

    return-void
.end method

.method private final getLanguagesAdapter()Lfast/dic/dict/adapters/LanguageLayoutAdapter;
    .locals 13

    .line 38
    sget-object v0, Lfast/dic/dict/BuildConfig;->TRANSLATION_ARRAY:[Ljava/lang/String;

    .line 39
    new-instance v1, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "requireContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lfast/dic/dict/database/LocalStorage;->getCurrentLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v0

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v2, Ljava/util/Collection;

    .line 69
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v0, v5

    .line 42
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v7, "en_US"

    move-object v8, v7

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v8

    const-string v9, "English"

    if-eqz v8, :cond_0

    move-object v8, v9

    goto :goto_1

    .line 45
    :cond_0
    const-string v8, "Persian"

    .line 46
    :goto_1
    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    .line 49
    :cond_1
    const-string/jumbo v9, "\u0641\u0627\u0631\u0633\u06cc"

    .line 50
    :goto_2
    new-instance v7, Lfast/dic/dict/models/SupportedLanguageModel;

    .line 53
    sget-object v10, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v6, v10}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v10, "toLowerCase(...)"

    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v11

    const-string v12, "getLanguage(...)"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v11, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x1

    invoke-static {v6, v11, v10}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    .line 50
    invoke-direct {v7, v8, v9, v6}, Lfast/dic/dict/models/SupportedLanguageModel;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 71
    :cond_2
    check-cast v2, Ljava/util/List;

    .line 57
    new-instance v0, Lfast/dic/dict/adapters/LanguageLayoutAdapter;

    .line 58
    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v3, Lfast/dic/dict/fragments/ChooseLanguageFragment$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/ChooseLanguageFragment;)V

    .line 57
    invoke-direct {v0, v1, v2, v3}, Lfast/dic/dict/adapters/LanguageLayoutAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    return-object v0
.end method

.method static final getLanguagesAdapter$lambda$1(Lfast/dic/dict/fragments/ChooseLanguageFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 3

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lfast/dic/dict/database/LocalStorage;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lfast/dic/dict/database/LocalStorage;->saveCurrentLanguage(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    .line 62
    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lfast/dic/dict/utils/LocaleExtKt;->updateCurrentLanguage(Ljava/util/Locale;Landroid/content/Context;)V

    .line 63
    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Landroidx/core/app/ActivityCompat;->recreate(Landroid/app/Activity;)V

    .line 64
    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->getFdHtml()Lfast/dic/dict/utils/FDHtml;

    move-result-object p1

    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDHtml;->updateContext(Landroid/content/Context;)V

    .line 65
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getFdHtml()Lfast/dic/dict/utils/FDHtml;
    .locals 0

    .line 23
    iget-object p0, p0, Lfast/dic/dict/fragments/ChooseLanguageFragment;->fdHtml:Lfast/dic/dict/utils/FDHtml;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fdHtml"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 28
    invoke-static {p1, p2, p3}, Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;

    move-result-object p1

    const-string p2, "inflate(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/fragments/ChooseLanguageFragment;->binding:Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;

    const/4 p2, 0x0

    .line 30
    const-string p3, "binding"

    if-nez p1, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_0
    invoke-virtual {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 31
    iget-object p1, p0, Lfast/dic/dict/fragments/ChooseLanguageFragment;->binding:Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;

    if-nez p1, :cond_1

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    iget-object p1, p1, Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;->languageRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 32
    iget-object p1, p0, Lfast/dic/dict/fragments/ChooseLanguageFragment;->binding:Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;

    if-nez p1, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, p2

    :cond_2
    invoke-direct {p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment;->getLanguagesAdapter()Lfast/dic/dict/adapters/LanguageLayoutAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;->setAdapter(Lfast/dic/dict/adapters/LanguageLayoutAdapter;)V

    .line 34
    iget-object p0, p0, Lfast/dic/dict/fragments/ChooseLanguageFragment;->binding:Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;

    if-nez p0, :cond_3

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object p2, p0

    :goto_0
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;->getRoot()Landroid/view/View;

    move-result-object p0

    const-string p1, "getRoot(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final setFdHtml(Lfast/dic/dict/utils/FDHtml;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lfast/dic/dict/fragments/ChooseLanguageFragment;->fdHtml:Lfast/dic/dict/utils/FDHtml;

    return-void
.end method
