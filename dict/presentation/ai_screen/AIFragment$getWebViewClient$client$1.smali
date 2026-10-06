.class public final Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;
.super Landroid/webkit/WebViewClient;
.source "AIFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/ai_screen/AIFragment;->getWebViewClient()Landroid/webkit/WebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000?\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016J&\u0010\u0008\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u0016JH\u0010\r\u001a\u00020\u000e2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017b*\u0008\u000f\u0012\u0008\u0008\u0010\u0012\u0004\u0008\u0008(\u0011\u0012\u001c\u0008\u0012\u0012\u0018\u0008\u000bB\u0014\u0008\u0013\u0012\u0008\u0008\u0014\u0012\u0004\u0008\u0008(\u0015\u0012\u0006\u0008\u0016\u0012\u0002\u0008\u000c\u00a8\u0006\u0017"
    }
    d2 = {
        "fast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1",
        "Landroid/webkit/WebViewClient;",
        "onPageFinished",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "onReceivedError",
        "request",
        "Landroid/webkit/WebResourceRequest;",
        "error",
        "Landroid/webkit/WebResourceError;",
        "shouldOverrideUrlLoading",
        "",
        "Lkotlin/Deprecated;",
        "message",
        "Deprecated in Java",
        "replaceWith",
        "Lkotlin/ReplaceWith;",
        "expression",
        "false",
        "imports",
        "app"
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
.field final synthetic this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;


# direct methods
.method public static synthetic $r8$lambda$jzbGfRN70ciUnWY4DqwwhPRzZGU(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/presentation/ai_screen/AIFragment;Z)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->shouldOverrideUrlLoading$lambda$0$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/presentation/ai_screen/AIFragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method constructor <init>(Lfast/dic/dict/presentation/ai_screen/AIFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    .line 186
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private static final shouldOverrideUrlLoading$lambda$0$0(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/presentation/ai_screen/AIFragment;Z)Lkotlin/Unit;
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 230
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 231
    const-string p2, "fromOnBoarding"

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 232
    check-cast p0, Landroidx/fragment/app/Fragment;

    sget p2, Lfast/dic/dict/R$id;->moreFragment:I

    sget v0, Lfast/dic/dict/R$id;->newPricingFragment:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, p2, v0, p1}, Lfast/dic/dict/utils/FragmentExtensionKt;->openTab(Landroidx/fragment/app/Fragment;ILjava/lang/Integer;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 234
    invoke-static {p1, p0, v0, p0}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->loadUrlWithCheck$default(Lfast/dic/dict/presentation/ai_screen/AIFragment;Ljava/lang/String;ILjava/lang/Object;)V

    .line 236
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 190
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 191
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->acceptCookie()Z

    .line 192
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->flush()V

    .line 193
    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    invoke-static {p0}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->access$getBinding$p(Lfast/dic/dict/presentation/ai_screen/AIFragment;)Lfast/dic/dict/databinding/FragmentAIBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentAIBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 0

    .line 201
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 203
    iget-object p0, p0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    invoke-static {p0}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->access$getBinding$p(Lfast/dic/dict/presentation/ai_screen/AIFragment;)Lfast/dic/dict/databinding/FragmentAIBinding;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentAIBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 33
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = "false"
            imports = {}
        .end subannotation
    .end annotation

    move-object/from16 v0, p0

    const/4 v7, 0x0

    if-nez p2, :cond_0

    return v7

    .line 210
    :cond_0
    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "fastdic://purchase"

    check-cast v2, Ljava/lang/CharSequence;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v7, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    const/4 v8, 0x1

    if-eqz v2, :cond_1

    .line 211
    iget-object v1, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    invoke-static {v1}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->access$getViewModel(Lfast/dic/dict/presentation/ai_screen/AIFragment;)Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/ai_screen/AIFragmentViewModel;->validRewardedAdsForAiTranslator()Z

    .line 213
    iget-object v1, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "getSupportFragmentManager(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    new-instance v9, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    .line 216
    iget-object v2, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    sget v3, Lfast/dic/dict/R$string;->ai_title:I

    invoke-virtual {v2, v3}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 217
    iget-object v2, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    .line 218
    sget v3, Lfast/dic/dict/R$string;->ai_translator_limitation_desc:I

    .line 217
    invoke-virtual {v2, v3}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 220
    iget-object v2, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    sget v3, Lfast/dic/dict/R$string;->ai_translator_limitation_cta_title:I

    invoke-virtual {v2, v3}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v19, 0x20

    const/16 v20, 0x0

    const/4 v10, 0x1

    .line 214
    const-string v14, "PRICING"

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v9 .. v20}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Ljava/lang/String;Ljava/lang/String;Lfast/dic/dict/services/FDAds$AdForFeature;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    .line 226
    const-string v2, ""

    invoke-virtual {v9, v1, v2}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 228
    new-instance v1, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, v9, v0}, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/presentation/ai_screen/AIFragment;)V

    invoke-virtual {v9, v1}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->setOnDismissed(Lkotlin/jvm/functions/Function1;)V

    return v8

    .line 240
    :cond_1
    const-string v2, "fastdic://search"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v1, v2, v7, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 241
    const-string v2, "fastdic://search"

    const-string v3, ""

    const/4 v4, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->urlDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    if-nez v28, :cond_2

    return v7

    .line 244
    :cond_2
    new-instance v1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    new-instance v2, Lfast/dic/dict/models/database/ListModel;

    const v31, 0x1bffff

    const/16 v32, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object v9, v2

    invoke-direct/range {v9 .. v32}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 245
    iget-object v0, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    sget v2, Lfast/dic/dict/R$id;->wordResultModal:I

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    return v8

    :cond_3
    move-object/from16 v2, p2

    .line 247
    const-string v5, "sound-br://"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v7, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "sound-am://"

    check-cast v5, Ljava/lang/CharSequence;

    invoke-static {v1, v5, v7, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    return v7

    .line 248
    :cond_5
    :goto_0
    iget-object v0, v0, Lfast/dic/dict/presentation/ai_screen/AIFragment$getWebViewClient$client$1;->this$0:Lfast/dic/dict/presentation/ai_screen/AIFragment;

    invoke-static {v0, v2}, Lfast/dic/dict/presentation/ai_screen/AIFragment;->access$audioClickedOffline(Lfast/dic/dict/presentation/ai_screen/AIFragment;Ljava/lang/String;)V

    return v8
.end method
