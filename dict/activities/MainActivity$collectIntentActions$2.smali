.class final Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;
.super Ljava/lang/Object;
.source "MainActivity.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/MainActivity;->collectIntentActions(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lfast/dic/dict/activities/MainViewModel$IntentAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfast/dic/dict/activities/MainViewModel$IntentAction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 268
    instance-of v2, v1, Lfast/dic/dict/activities/MainViewModel$IntentAction$Search;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 269
    iget-object v2, v0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    check-cast v2, Landroidx/fragment/app/FragmentActivity;

    check-cast v1, Lfast/dic/dict/activities/MainViewModel$IntentAction$Search;

    invoke-virtual {v1}, Lfast/dic/dict/activities/MainViewModel$IntentAction$Search;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lfast/dic/dict/utils/FragmentExtensionKt;->search(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)Z

    .line 270
    iget-object v0, v0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v0, v3}, Lfast/dic/dict/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 273
    :cond_0
    instance-of v2, v1, Lfast/dic/dict/activities/MainViewModel$IntentAction$ShowWordModal;

    const-string v4, "getSupportFragmentManager(...)"

    if-eqz v2, :cond_2

    .line 274
    iget-object v2, v0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v2}, Lfast/dic/dict/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lfast/dic/dict/utils/FragmentExtensionKt;->getCurrentFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 275
    invoke-static {v2}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 276
    sget v4, Lfast/dic/dict/R$id;->wordResultModal:I

    check-cast v1, Lfast/dic/dict/activities/MainViewModel$IntentAction$ShowWordModal;

    invoke-virtual {v1}, Lfast/dic/dict/activities/MainViewModel$IntentAction$ShowWordModal;->getArgsBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v2, v4, v1}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 277
    :cond_1
    iget-object v0, v0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v0, v3}, Lfast/dic/dict/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    goto :goto_0

    .line 280
    :cond_2
    instance-of v2, v1, Lfast/dic/dict/activities/MainViewModel$IntentAction$OpenWord;

    if-eqz v2, :cond_4

    .line 281
    new-instance v5, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    new-instance v6, Lfast/dic/dict/models/database/ListModel;

    check-cast v1, Lfast/dic/dict/activities/MainViewModel$IntentAction$OpenWord;

    invoke-virtual {v1}, Lfast/dic/dict/activities/MainViewModel$IntentAction$OpenWord;->getWord()Ljava/lang/String;

    move-result-object v25

    const v28, 0x1bffff

    const/16 v29, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

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

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-direct/range {v6 .. v29}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v9, 0x6

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 282
    iget-object v1, v0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v1}, Lfast/dic/dict/activities/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lfast/dic/dict/utils/FragmentExtensionKt;->getCurrentFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 283
    invoke-static {v1}, Landroidx/navigation/fragment/FragmentKt;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 284
    sget v2, Lfast/dic/dict/R$id;->wordResultModal:I

    invoke-virtual {v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lfast/dic/dict/utils/NavControllerExtensionKt;->openModal(Landroidx/navigation/NavController;ILandroid/os/Bundle;)V

    .line 285
    :cond_3
    iget-object v0, v0, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->this$0:Lfast/dic/dict/activities/MainActivity;

    invoke-virtual {v0, v3}, Lfast/dic/dict/activities/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 288
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0

    .line 267
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 266
    check-cast p1, Lfast/dic/dict/activities/MainViewModel$IntentAction;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/activities/MainActivity$collectIntentActions$2;->emit(Lfast/dic/dict/activities/MainViewModel$IntentAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
