.class public final Lfast/dic/dict/utils/FragmentExtensionKt;
.super Ljava/lang/Object;
.source "FragmentExtension.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFragmentExtension.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExtension.kt\nfast/dic/dict/utils/FragmentExtensionKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1#2:236\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u001aG\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042#\u0008\u0002\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\t\u00a2\u0006\u000c\u0008\n\u0012\u0008\u0008\u000b\u0012\u0004\u0008\u0008(\u000c\u0012\u0004\u0012\u00020\u00010\u0008\u001a\n\u0010\r\u001a\u00020\u000e*\u00020\u0002\u001a\u000c\u0010\u000f\u001a\u0004\u0018\u00010\u0002*\u00020\u0010\u001a\u000c\u0010\u000f\u001a\u0004\u0018\u00010\u0002*\u00020\u0002\u001a\u0014\u0010\u0011\u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u001a\u001c\u0010\u0013\u001a\u00020\u0001*\u0004\u0018\u00010\u00142\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0004\u001a\u0012\u0010\u0016\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0004\u001a9\u0010\u0018\u001a\u00020\u0001*\u00020\u00022\u000c\u0008\u0001\u0010\u0019\u001a\u00020\u001a:\u0002\u0008\u001b2\u000e\u0008\u0003\u0010\u001c\u001a\u0004\u0018\u00010\u001a:\u0002\u0008\u001b2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001e\u00a2\u0006\u0002\u0010\u001f\u001a\u0014\u0010 \u001a\u00020\u0001*\u00020\u00022\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0004\u001a\u001a\u0010!\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\u00042\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0002\u001a\u0014\u0010$\u001a\u00020\t*\u0004\u0018\u00010%2\u0006\u0010&\u001a\u00020\u0004\u00a8\u0006\'"
    }
    d2 = {
        "showBeforeLoginScreen",
        "",
        "Landroidx/fragment/app/Fragment;",
        "title",
        "",
        "description",
        "ctaTitle",
        "dismissed",
        "Lkotlin/Function1;",
        "",
        "Lkotlin/ParameterName;",
        "name",
        "cta",
        "getScrollListenerImp",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "getCurrentFragment",
        "Landroidx/fragment/app/FragmentManager;",
        "openResultOrderModal",
        "word",
        "shareString",
        "Landroid/app/Activity;",
        "meaning",
        "openAiScreen",
        "documentId",
        "openTab",
        "itemId",
        "",
        "Landroidx/annotation/IdRes;",
        "fragmentId",
        "data",
        "Landroid/os/Bundle;",
        "(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V",
        "openSuggestionScreen",
        "navigateToAiScreen",
        "mainActivity",
        "Lfast/dic/dict/activities/MainActivity;",
        "search",
        "Landroidx/fragment/app/FragmentActivity;",
        "content",
        "app"
    }
    k = 0x2
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final getCurrentFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    instance-of v0, p0, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v0, :cond_0

    .line 110
    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    const-string v0, "getFragments(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    :cond_0
    return-object p0
.end method

.method public static final getCurrentFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    const-string v0, "getFragments(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    const-string v1, "null cannot be cast to non-null type androidx.navigation.fragment.NavHostFragment"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {p0}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 99
    instance-of v2, v1, Landroidx/navigation/fragment/NavHostFragment;

    if-eqz v2, :cond_2

    .line 100
    check-cast v1, Landroidx/navigation/fragment/NavHostFragment;

    invoke-virtual {v1}, Landroidx/navigation/fragment/NavHostFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    .line 101
    :cond_2
    instance-of v2, v1, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 102
    check-cast v1, Landroidx/fragment/app/Fragment;

    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getScrollListenerImp(Landroidx/fragment/app/Fragment;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/activities/MainActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 61
    :goto_0
    new-instance v0, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/utils/FragmentExtensionKt$getScrollListenerImp$1;-><init>(Lfast/dic/dict/activities/MainActivity;)V

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object v0
.end method

.method private static final navigateToAiScreen(Ljava/lang/String;Lfast/dic/dict/activities/MainActivity;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {p1}, Lfast/dic/dict/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget v0, Lfast/dic/dict/R$id;->nav_fragment:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lfast/dic/dict/utils/FragmentExtensionKt;->getCurrentFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 189
    :goto_0
    instance-of v0, p1, Lfast/dic/dict/presentation/ai_screen/AIFragment;

    if-eqz v0, :cond_1

    .line 190
    check-cast p1, Lfast/dic/dict/presentation/ai_screen/AIFragment;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->updateUrlFromFavoriteScreen(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static final openAiScreen(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/activities/MainActivity;

    if-eqz v0, :cond_1

    check-cast p0, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 146
    invoke-virtual {p0}, Lfast/dic/dict/activities/MainActivity;->selectAiTab()V

    .line 148
    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lfast/dic/dict/activities/MainActivity;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static final openAiScreen$lambda$0(Ljava/lang/String;Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    .line 149
    invoke-static {p0, p1}, Lfast/dic/dict/utils/FragmentExtensionKt;->navigateToAiScreen(Ljava/lang/String;Lfast/dic/dict/activities/MainActivity;)Z

    return-void
.end method

.method public static final openResultOrderModal(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 2

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    .line 118
    sget-object v1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v1, p1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result p1

    .line 117
    invoke-direct {v0, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;-><init>(Z)V

    .line 119
    invoke-virtual {v0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 121
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 123
    sget v0, Lfast/dic/dict/R$id;->resultOrderModalFragment:I

    .line 122
    invoke-static {p0, v0, p1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static final openSuggestionScreen(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lfast/dic/dict/utils/ContextExtKt;->getAndroidDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lfast/dic/dict/utils/ContextExtKt;->getAndroidVersion()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", Android Version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", App Version: 5.7.4(444)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    instance-of v2, v1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v2, :cond_0

    check-cast v1, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 172
    :goto_0
    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "&userEmail="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 174
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "https://fastdic.com/suggestion-form?word="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "&detail="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "&disableSections=true"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 176
    new-instance v0, Lfast/dic/dict/fragments/HelpFragmentArgs;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v2, v1}, Lfast/dic/dict/fragments/HelpFragmentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lfast/dic/dict/fragments/HelpFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 178
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    .line 180
    sget v0, Lfast/dic/dict/R$id;->helpFragment:I

    .line 179
    invoke-static {p0, v0, p1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    return-void
.end method

.method public static final openTab(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/activities/MainActivity;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 155
    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/MainActivity;->selectTab(I)V

    :cond_1
    if-eqz p2, :cond_2

    .line 157
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 158
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p3}, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/activities/MainActivity;Ljava/lang/Integer;Landroid/os/Bundle;)V

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public static synthetic openTab$default(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 153
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/utils/FragmentExtensionKt;->openTab(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V

    return-void
.end method

.method static final openTab$lambda$0(Lfast/dic/dict/activities/MainActivity;Ljava/lang/Integer;Landroid/os/Bundle;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 159
    check-cast p0, Landroid/app/Activity;

    sget v0, Lfast/dic/dict/R$id;->nav_fragment:I

    invoke-static {p0, v0}, Landroidx/navigation/ActivityKt;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 160
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 159
    invoke-static {p0, p1, p2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static final search(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z
    .locals 8

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    instance-of v0, p0, Lfast/dic/dict/activities/MainActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lfast/dic/dict/activities/MainActivity;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 201
    :cond_1
    invoke-virtual {v0}, Lfast/dic/dict/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    sget v3, Lfast/dic/dict/R$id;->nav_fragment:I

    invoke-virtual {v0, v3}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 202
    invoke-static {v0}, Lfast/dic/dict/utils/FragmentExtensionKt;->getCurrentFragment(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 204
    :goto_1
    instance-of v3, v0, Lfast/dic/dict/fragments/HomeFragment;

    if-nez v3, :cond_4

    instance-of v4, v0, Lfast/dic/dict/fragments/SearchFragment;

    if-nez v4, :cond_4

    instance-of v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    return v2

    .line 205
    :cond_4
    :goto_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v4

    if-nez v4, :cond_5

    return v2

    :cond_5
    const/4 v4, 0x2

    .line 207
    const-string v5, "searchBarView"

    if-eqz v3, :cond_6

    .line 208
    check-cast v0, Lfast/dic/dict/fragments/HomeFragment;

    .line 209
    invoke-virtual {v0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v2, v4, v1}, Lfast/dic/dict/views/SearchBarView;->setText$default(Lfast/dic/dict/views/SearchBarView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 210
    invoke-virtual {v0}, Lfast/dic/dict/fragments/HomeFragment;->getBinding()Lfast/dic/dict/databinding/FragmentHomeBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentHomeBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p0}, Lfast/dic/dict/views/SearchBarView;->requestForFocus()V

    goto :goto_3

    .line 212
    :cond_6
    instance-of v3, v0, Lfast/dic/dict/fragments/SearchFragment;

    if-eqz v3, :cond_7

    .line 213
    check-cast v0, Lfast/dic/dict/fragments/SearchFragment;

    .line 214
    invoke-virtual {v0}, Lfast/dic/dict/fragments/SearchFragment;->getBinding()Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, v2, v4, v1}, Lfast/dic/dict/views/SearchBarView;->setText$default(Lfast/dic/dict/views/SearchBarView;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 215
    invoke-virtual {v0}, Lfast/dic/dict/fragments/SearchFragment;->getBinding()Lfast/dic/dict/databinding/FragmentSearchBinding;

    move-result-object p0

    iget-object p0, p0, Lfast/dic/dict/databinding/FragmentSearchBinding;->searchBarView:Lfast/dic/dict/views/SearchBarView;

    invoke-virtual {p0}, Lfast/dic/dict/views/SearchBarView;->requestForFocus()V

    goto :goto_3

    .line 217
    :cond_7
    instance-of v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    if-eqz v2, :cond_8

    .line 218
    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/navigation/NavController;->navigateUp()Z

    .line 220
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v0, Lfast/dic/dict/utils/FragmentExtensionKt$search$3;

    invoke-direct {v0, p0, p1, v1}, Lfast/dic/dict/utils/FragmentExtensionKt$search$3;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_8
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public static final shareString(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "word"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "meaning"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    .line 130
    new-instance v0, Landroidx/core/app/ShareCompat$IntentBuilder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/core/app/ShareCompat$IntentBuilder;-><init>(Landroid/content/Context;)V

    .line 131
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setType(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object v0

    .line 132
    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {v0, p2}, Landroidx/core/app/ShareCompat$IntentBuilder;->setText(Ljava/lang/CharSequence;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->setSubject(Ljava/lang/String;)Landroidx/core/app/ShareCompat$IntentBuilder;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroidx/core/app/ShareCompat$IntentBuilder;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "getIntent(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 137
    invoke-static {v1, p1}, Lfast/dic/dict/utils/ContextExtKt;->startActivityWithIntent(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static final showBeforeLoginScreen(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p4

    const-string v1, "<this>"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "title"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    move-object/from16 v5, p2

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "ctaTitle"

    move-object/from16 v6, p3

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "dismissed"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    new-instance v2, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    const/16 v12, 0x1e0

    const/4 v13, 0x0

    const/4 v3, 0x1

    const-string v7, "PRICING"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v13}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    const-string p1, ""

    invoke-virtual {v2, p0, p1}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic showBeforeLoginScreen$default(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 38
    new-instance p4, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda1;

    invoke-direct {p4, p0}, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda1;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 34
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lfast/dic/dict/utils/FragmentExtensionKt;->showBeforeLoginScreen(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final showBeforeLoginScreen$lambda$0(Landroidx/fragment/app/Fragment;Z)Lkotlin/Unit;
    .locals 2

    if-eqz p1, :cond_0

    .line 40
    invoke-static {p0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p0

    sget p1, Lfast/dic/dict/R$id;->newPricingFragment:I

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation$default(Landroidx/navigation/NavController;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 42
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
