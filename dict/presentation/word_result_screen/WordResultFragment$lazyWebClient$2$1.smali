.class public final Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;
.super Landroid/webkit/WebViewClient;
.source "WordResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0017b\u000c\u0008\u0008\u0012\u0008\u0008\t\u0012\u0004\u0008\u0008(\nJ&\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u001c\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0010"
    }
    d2 = {
        "fast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1",
        "Landroid/webkit/WebViewClient;",
        "shouldOverrideUrlLoading",
        "",
        "view",
        "Landroid/webkit/WebView;",
        "url",
        "",
        "Lkotlin/Deprecated;",
        "message",
        "Deprecated in Java",
        "onPageStarted",
        "",
        "favicon",
        "Landroid/graphics/Bitmap;",
        "onPageFinished",
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
.field final synthetic this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;


# direct methods
.method constructor <init>(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    .line 512
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static final shouldOverrideUrlLoading$lambda$0(Ljava/lang/ref/WeakReference;Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;)V
    .locals 1

    .line 564
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation/NavController;

    if-eqz p0, :cond_0

    .line 565
    sget v0, Lfast/dic/dict/R$id;->wordResultModal:I

    .line 566
    invoke-virtual {p1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 564
    invoke-static {p0, v0, p1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 619
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 621
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 613
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 615
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getBinding()Lfast/dic/dict/databinding/FragmentWordResultBinding;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/FragmentWordResultBinding;->setLoading(Ljava/lang/Boolean;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 34
    .annotation runtime Lkotlin/Deprecated;
        message = "Deprecated in Java"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v7, "--------- result "

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 520
    :cond_0
    move-object v3, v1

    check-cast v3, Ljava/lang/CharSequence;

    const-string v4, "fdusersuggestion://"

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v4, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    const/4 v9, 0x1

    if-eqz v4, :cond_1

    .line 521
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getArgs(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lfast/dic/dict/utils/FragmentExtensionKt;->openSuggestionScreen(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    return v9

    .line 526
    :cond_1
    const-string v4, "sound-br://"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    const-string v4, "sound-am://"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto/16 :goto_2

    .line 530
    :cond_2
    iget-object v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v4, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$isSentencePronunciation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 531
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$handleSentencePronunciation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;)V

    return v9

    .line 534
    :cond_3
    const-string v4, "fdimage://"

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v3, v4, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 535
    const-string v2, "fdimage://"

    const-string v3, ""

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 536
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "https://fastdic.com/word/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&ref=android"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lfast/dic/dict/utils/ContextExtKt;->openChromeTab(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_4
    return v9

    .line 539
    :cond_5
    const-string v1, "fav://"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v3, v1, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 540
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v1

    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getArgs(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v0

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getListModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->insertOrDeleteFavorite(Lfast/dic/dict/models/database/ListModel;)V

    return v9

    .line 543
    :cond_6
    const-string v1, "fdword://"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v3, v1, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 544
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getArgs(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object v1

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->getFromShare()Z

    move-result v1

    if-eqz v1, :cond_7

    return v9

    .line 549
    :cond_7
    :try_start_0
    const-string v2, "fdword://"

    const-string v3, ""

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p2

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 550
    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 553
    new-instance v10, Lfast/dic/dict/models/database/ListModel;

    const v32, 0x1fffff

    const/16 v33, 0x0

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

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v10 .. v33}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 554
    invoke-virtual {v10, v1}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 555
    new-instance v2, Lfast/dic/dict/utils/FDCategory;

    invoke-direct {v2}, Lfast/dic/dict/utils/FDCategory;-><init>()V

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lfast/dic/dict/utils/FDCategory;->findLanguage(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v1}, Lfast/dic/dict/models/database/ListModel;->setCategory(Ljava/lang/Integer;)V

    move-object v11, v10

    .line 557
    new-instance v10, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v15}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 559
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->isModal()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 560
    new-instance v1, Ljava/lang/ref/WeakReference;

    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    check-cast v2, Landroidx/fragment/app/Fragment;

    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 561
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->dismiss()V

    .line 563
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, v10}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1$$ExternalSyntheticLambda0;-><init>(Ljava/lang/ref/WeakReference;Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 570
    :cond_8
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Landroidx/core/view/MenuHost;

    if-eqz v2, :cond_9

    check-cast v1, Landroidx/core/view/MenuHost;

    goto :goto_0

    :cond_9
    move-object v1, v8

    :goto_0
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroidx/core/view/MenuHost;->invalidateMenu()V

    .line 571
    :cond_a
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    instance-of v2, v1, Landroidx/core/view/MenuHost;

    if-eqz v2, :cond_b

    move-object v8, v1

    check-cast v8, Landroidx/core/view/MenuHost;

    :cond_b
    if-eqz v8, :cond_c

    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    check-cast v1, Landroidx/core/view/MenuProvider;

    invoke-interface {v8, v1}, Landroidx/core/view/MenuHost;->removeMenuProvider(Landroidx/core/view/MenuProvider;)V

    .line 573
    :cond_c
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    check-cast v0, Landroidx/fragment/app/Fragment;

    invoke-static {v0}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v0

    .line 574
    sget v1, Lfast/dic/dict/R$id;->wordResultScreen:I

    .line 575
    invoke-virtual {v10}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 573
    invoke-static {v0, v1, v2}, Lfast/dic/dict/utils/NavControllerExtensionKt;->navigateWithSlideAnimation(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :goto_1
    return v9

    .line 583
    :cond_d
    const-string v1, "fdcopy://"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v3, v1, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 584
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$copyTranslation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V

    return v9

    .line 587
    :cond_e
    const-string v1, "fdofflinetranslator://enabled"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v3, v1, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 588
    sget-object v1, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 589
    iget-object v2, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    sget v3, Lfast/dic/dict/R$string;->caution:I

    invoke-virtual {v2, v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 590
    iget-object v4, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    sget v5, Lfast/dic/dict/R$string;->enable_offline_translator_caution_alert_message:I

    invoke-virtual {v4, v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 591
    iget-object v5, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    sget v6, Lfast/dic/dict/R$string;->ok:I

    invoke-virtual {v5, v6}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 592
    iget-object v3, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireContext()Landroid/content/Context;

    move-result-object v3

    .line 588
    invoke-virtual {v1, v2, v4, v5, v3}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 595
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v1

    invoke-virtual {v1, v9}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->setOfflineTranslator(Z)V

    .line 596
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getResult()V

    return v9

    .line 599
    :cond_f
    const-string v1, "fdofflinetranslator://disabled"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v3, v1, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 600
    iget-object v1, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$getViewModel(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;

    move-result-object v1

    invoke-virtual {v1, v2}, Lfast/dic/dict/presentation/word_result_screen/WordResultViewModel;->setOfflineTranslator(Z)V

    .line 601
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->getResult()V

    return v9

    .line 604
    :cond_10
    const-string v1, "fdofflinetranslator://clicked"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v3, v1, v2, v5, v8}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 605
    sget-object v1, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;->Companion:Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;

    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-virtual {v0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v2, "requireActivity(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment$Companion;->openModal(Landroidx/fragment/app/FragmentActivity;)Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;

    :cond_11
    return v9

    .line 527
    :cond_12
    :goto_2
    iget-object v0, v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment$lazyWebClient$2$1;->this$0:Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    invoke-static {v0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;->access$handleWordPronunciation(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Ljava/lang/String;)V

    return v9
.end method
