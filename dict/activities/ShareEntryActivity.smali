.class public final Lfast/dic/dict/activities/ShareEntryActivity;
.super Lfast/dic/dict/activities/Hilt_ShareEntryActivity;
.source "ShareEntryActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00020\u0010H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00ca\u0001\u0002\u0008\u0012\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/activities/ShareEntryActivity;",
        "Lfast/dic/dict/bases/BaseActivity;",
        "<init>",
        "()V",
        "binding",
        "Lfast/dic/dict/databinding/ActivityShareEntryBinding;",
        "getBinding",
        "()Lfast/dic/dict/databinding/ActivityShareEntryBinding;",
        "setBinding",
        "(Lfast/dic/dict/databinding/ActivityShareEntryBinding;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onNewIntent",
        "intent",
        "Landroid/content/Intent;",
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
.field public binding:Lfast/dic/dict/databinding/ActivityShareEntryBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lfast/dic/dict/activities/Hilt_ShareEntryActivity;-><init>()V

    return-void
.end method

.method static final onCreate$lambda$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    const-string v1, "getInsets(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method

.method static final onCreate$lambda$1(Lfast/dic/dict/activities/ShareEntryActivity;Landroid/view/View;)V
    .locals 0

    .line 41
    invoke-virtual {p0}, Lfast/dic/dict/activities/ShareEntryActivity;->finish()V

    return-void
.end method


# virtual methods
.method public final getBinding()Lfast/dic/dict/databinding/ActivityShareEntryBinding;
    .locals 0

    .line 19
    iget-object p0, p0, Lfast/dic/dict/activities/ShareEntryActivity;->binding:Lfast/dic/dict/databinding/ActivityShareEntryBinding;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 22
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 23
    invoke-super {p0, p1}, Lfast/dic/dict/activities/Hilt_ShareEntryActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lfast/dic/dict/activities/ShareEntryActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lfast/dic/dict/databinding/ActivityShareEntryBinding;->inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/ActivityShareEntryBinding;

    move-result-object p1

    const-string v0, "inflate(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/ShareEntryActivity;->setBinding(Lfast/dic/dict/databinding/ActivityShareEntryBinding;)V

    .line 26
    invoke-virtual {p0}, Lfast/dic/dict/activities/ShareEntryActivity;->getBinding()Lfast/dic/dict/databinding/ActivityShareEntryBinding;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/databinding/ActivityShareEntryBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/ShareEntryActivity;->setContentView(Landroid/view/View;)V

    .line 34
    invoke-virtual {p0}, Lfast/dic/dict/activities/ShareEntryActivity;->getBinding()Lfast/dic/dict/databinding/ActivityShareEntryBinding;

    move-result-object p1

    invoke-virtual {p1}, Lfast/dic/dict/databinding/ActivityShareEntryBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    new-instance v0, Lfast/dic/dict/activities/ShareEntryActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/activities/ShareEntryActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 40
    invoke-virtual {p0}, Lfast/dic/dict/activities/ShareEntryActivity;->getBinding()Lfast/dic/dict/databinding/ActivityShareEntryBinding;

    move-result-object p1

    iget-object p1, p1, Lfast/dic/dict/databinding/ActivityShareEntryBinding;->backToolbarButton:Landroid/widget/ImageButton;

    new-instance v0, Lfast/dic/dict/activities/ShareEntryActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/activities/ShareEntryActivity$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/activities/ShareEntryActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    invoke-virtual {p0}, Lfast/dic/dict/activities/ShareEntryActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "getIntent(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/ShareEntryActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 28

    move-object/from16 v0, p1

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-super/range {p0 .. p1}, Lfast/dic/dict/activities/Hilt_ShareEntryActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 50
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PROCESS_TEXT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SEND"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 51
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    const/4 v3, 0x0

    const-string v4, ""

    if-lez v1, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_2

    :cond_4
    move-object v1, v4

    check-cast v1, Ljava/lang/CharSequence;

    .line 53
    :goto_2
    const-string v5, "android.intent.extra.PROCESS_TEXT"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v5

    :goto_3
    if-eqz v1, :cond_6

    .line 57
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_9

    .line 58
    :cond_6
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v5, "WORD"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x1

    if-ne v1, v6, :cond_8

    .line 59
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_7
    move-object v0, v3

    :goto_4
    check-cast v0, Ljava/lang/CharSequence;

    goto :goto_5

    .line 61
    :cond_8
    move-object v0, v4

    check-cast v0, Ljava/lang/CharSequence;

    :goto_5
    move-object v1, v0

    .line 65
    :cond_9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 67
    new-instance v1, Lkotlin/text/Regex;

    const-string v5, "(www|http:|https:)+\\S+\\w"

    invoke-direct {v1, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v1, v0, v2, v6, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_a
    move-object v1, v3

    :goto_6
    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_7

    .line 69
    :cond_b
    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 70
    new-instance v1, Lkotlin/text/Regex;

    const-string v5, "\"(.*?)\""

    invoke-direct {v1, v5}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2, v6, v3}, Lkotlin/text/Regex;->find$default(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/text/MatchResult;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lkotlin/text/MatchResult;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    move-object v0, v1

    check-cast v0, Ljava/lang/CharSequence;

    .line 71
    :cond_c
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "\""

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lkotlin/text/Regex;->replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, ".$"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 73
    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_e

    .line 74
    move-object/from16 v1, p0

    check-cast v1, Landroid/app/Activity;

    sget v2, Lfast/dic/dict/R$id;->nav_fragment:I

    invoke-static {v1, v2}, Landroidx/navigation/ActivityKt;->findNavController(Landroid/app/Activity;I)Landroidx/navigation/NavController;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroidx/navigation/NavController;->getNavInflater()Landroidx/navigation/NavInflater;

    move-result-object v2

    sget v3, Lfast/dic/dict/R$navigation;->nav_graph:I

    invoke-virtual {v2, v3}, Landroidx/navigation/NavInflater;->inflate(I)Landroidx/navigation/NavGraph;

    move-result-object v2

    .line 76
    new-instance v3, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    new-instance v4, Lfast/dic/dict/models/database/ListModel;

    move-object/from16 v23, v0

    check-cast v23, Ljava/lang/String;

    const v26, 0x1bffff

    const/16 v27, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

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

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v4 .. v27}, Lfast/dic/dict/models/database/ListModel;-><init>(ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v7, 0x4

    const/4 v8, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v3 .. v8}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 78
    sget v3, Lfast/dic/dict/R$id;->wordResultScreen:I

    invoke-virtual {v2, v3}, Landroidx/navigation/NavGraph;->setStartDestination(I)V

    .line 79
    invoke-virtual {v1, v2, v0}, Landroidx/navigation/NavController;->setGraph(Landroidx/navigation/NavGraph;Landroid/os/Bundle;)V

    :cond_e
    return-void
.end method

.method public final setBinding(Lfast/dic/dict/databinding/ActivityShareEntryBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lfast/dic/dict/activities/ShareEntryActivity;->binding:Lfast/dic/dict/databinding/ActivityShareEntryBinding;

    return-void
.end method
