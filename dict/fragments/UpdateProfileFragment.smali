.class public final Lfast/dic/dict/fragments/UpdateProfileFragment;
.super Lfast/dic/dict/fragments/Hilt_UpdateProfileFragment;
.source "UpdateProfileFragment.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUpdateProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UpdateProfileFragment.kt\nfast/dic/dict/fragments/UpdateProfileFragment\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n*L\n1#1,139:1\n106#2:140\n78#2,22:141\n106#2:163\n78#2,22:164\n*S KotlinDebug\n*F\n+ 1 UpdateProfileFragment.kt\nfast/dic/dict/fragments/UpdateProfileFragment\n*L\n84#1:140\n84#1:141,22\n88#1:163\n88#1:164,22\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\u0008\n\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082.\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0018\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/fragments/UpdateProfileFragment;",
        "Lfast/dic/dict/bases/BaseFragment;",
        "<init>",
        "()V",
        "fdParseWrapper",
        "Lfast/dic/dict/services/parse/FDParseWrapper;",
        "getFdParseWrapper",
        "()Lfast/dic/dict/services/parse/FDParseWrapper;",
        "setFdParseWrapper",
        "(Lfast/dic/dict/services/parse/FDParseWrapper;)V",
        "Ljavax/inject/Inject;",
        "loadingSpinner",
        "Lfast/dic/dict/views/CustomProgressbar;",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "editProfile",
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
.field public fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_UpdateProfileFragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$editProfile(Lfast/dic/dict/fragments/UpdateProfileFragment;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->editProfile()V

    return-void
.end method

.method private final editProfile()V
    .locals 13

    .line 80
    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->requireView()Landroid/view/View;

    move-result-object v2

    sget v3, Lfast/dic/dict/R$id;->user_full_name_input:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->requireView()Landroid/view/View;

    move-result-object v3

    sget v4, Lfast/dic/dict/R$id;->email_address_input:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 140
    move-object v4, v2

    check-cast v4, Ljava/lang/CharSequence;

    .line 142
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    move v8, v7

    move v9, v8

    :goto_0
    const/16 v10, 0x20

    if-gt v8, v5, :cond_5

    if-nez v9, :cond_0

    move v11, v8

    goto :goto_1

    :cond_0
    move v11, v5

    .line 147
    :goto_1
    invoke-interface {v4, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v11

    if-gt v11, v10, :cond_1

    move v11, v6

    goto :goto_2

    :cond_1
    move v11, v7

    :goto_2
    if-nez v9, :cond_3

    if-nez v11, :cond_2

    move v9, v6

    goto :goto_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    if-nez v11, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_5
    :goto_3
    add-int/2addr v5, v6

    .line 162
    invoke-interface {v4, v8, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    const-string v5, ""

    move-object v8, v5

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v4, v8}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto/16 :goto_8

    .line 163
    :cond_6
    move-object v4, v3

    check-cast v4, Ljava/lang/CharSequence;

    .line 165
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v8

    sub-int/2addr v8, v6

    move v9, v7

    move v11, v9

    :goto_4
    if-gt v9, v8, :cond_c

    if-nez v11, :cond_7

    move v12, v9

    goto :goto_5

    :cond_7
    move v12, v8

    .line 170
    :goto_5
    invoke-interface {v4, v12}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v12

    if-gt v12, v10, :cond_8

    move v12, v6

    goto :goto_6

    :cond_8
    move v12, v7

    :goto_6
    if-nez v11, :cond_a

    if-nez v12, :cond_9

    move v11, v6

    goto :goto_4

    :cond_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    if-nez v12, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    :cond_c
    :goto_7
    add-int/2addr v8, v6

    .line 185
    invoke-interface {v4, v9, v8}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 88
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_d

    goto :goto_8

    .line 93
    :cond_d
    sget-object v4, Lfast/dic/dict/helpers/FDInternetHelper;->INSTANCE:Lfast/dic/dict/helpers/FDInternetHelper;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lfast/dic/dict/helpers/FDInternetHelper;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 94
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/utils/FDAlertManger;->showNotConnectedToInternetAlert(Landroid/content/Context;)V

    return-void

    .line 99
    :cond_e
    iget-object v1, p0, Lfast/dic/dict/fragments/UpdateProfileFragment;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const/4 v4, 0x0

    if-nez v1, :cond_f

    const-string v1, "loadingSpinner"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v4

    :cond_f
    check-cast v1, Landroid/view/View;

    const-wide/16 v7, 0x0

    invoke-static {v1, v7, v8, v6, v4}, Lfast/dic/dict/utils/ViewExtKt;->showMe$default(Landroid/view/View;JILjava/lang/Object;)V

    .line 101
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    instance-of v5, v1, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v5, :cond_10

    move-object v4, v1

    check-cast v4, Lfast/dic/dict/services/parse/FDParseUser;

    :cond_10
    if-eqz v4, :cond_12

    .line 104
    invoke-virtual {v4, v2}, Lfast/dic/dict/services/parse/FDParseUser;->setName(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v4, v3}, Lfast/dic/dict/services/parse/FDParseUser;->setUsername(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v4}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 108
    invoke-virtual {v4, v3}, Lfast/dic/dict/services/parse/FDParseUser;->setEmail(Ljava/lang/String;)V

    .line 111
    :cond_11
    new-instance v1, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/UpdateProfileFragment;Landroid/content/Context;)V

    invoke-virtual {v4, v1}, Lfast/dic/dict/services/parse/FDParseUser;->saveInBackground(Lcom/parse/SaveCallback;)V

    :cond_12
    :goto_8
    return-void
.end method

.method static final editProfile$lambda$2(Lfast/dic/dict/fragments/UpdateProfileFragment;Landroid/content/Context;Lcom/parse/ParseException;)V
    .locals 4

    if-nez p2, :cond_0

    .line 113
    sget-object p2, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    .line 114
    sget v0, Lfast/dic/dict/R$string;->edit_user_information:I

    invoke-virtual {p0, v0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    sget v2, Lfast/dic/dict/R$string;->successfully_edit_user_information:I

    invoke-virtual {p0, v2}, Lfast/dic/dict/fragments/UpdateProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    sget v3, Lfast/dic/dict/R$string;->close:I

    invoke-virtual {p0, v3}, Lfast/dic/dict/fragments/UpdateProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2, v0, v2, v3, p1}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOutForeCloseApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 123
    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 124
    sget-object p1, Landroidx/navigation/fragment/NavHostFragment;->Companion:Landroidx/navigation/fragment/NavHostFragment$Companion;

    move-object p2, p0

    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p2}, Landroidx/navigation/fragment/NavHostFragment$Companion;->findNavController(Landroidx/fragment/app/Fragment;)Landroidx/navigation/NavController;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/navigation/NavController;->navigateUp()Z

    goto :goto_0

    .line 127
    :cond_0
    sget-object v0, Lfast/dic/dict/services/parse/ParseError;->Companion:Lfast/dic/dict/services/parse/ParseError$Companion;

    invoke-virtual {p2}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {p2}, Lcom/parse/ParseException;->getCode()I

    move-result p2

    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lfast/dic/dict/services/parse/ParseError$Companion;->getRightMessage(Ljava/lang/String;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 129
    sget-object v0, Lfast/dic/dict/utils/FDAlertManger;->INSTANCE:Lfast/dic/dict/utils/FDAlertManger;

    invoke-virtual {v0, p2, p1}, Lfast/dic/dict/utils/FDAlertManger;->showErrorMessageAlert(Ljava/lang/String;Landroid/content/Context;)V

    .line 135
    :cond_2
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    const/4 p1, 0x0

    if-nez p0, :cond_3

    const-string p0, "loadingSpinner"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p0, p1

    :cond_3
    check-cast p0, Landroid/view/View;

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    invoke-static {p0, v0, v1, p2, p1}, Lfast/dic/dict/utils/ViewExtKt;->hideMe$default(Landroid/view/View;JILjava/lang/Object;)V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/UpdateProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->editProfile()V

    return-void
.end method

.method static final onCreateView$lambda$1(Landroid/widget/EditText;Landroid/widget/EditText;Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    instance-of p3, p2, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz p3, :cond_0

    check-cast p2, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 67
    :goto_0
    const-string p3, ""

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, p3

    :cond_2
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_4

    .line 68
    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object p3, p0

    :cond_4
    :goto_1
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 69
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onCreateView$lambda$2(Landroid/widget/EditText;Landroid/widget/EditText;Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 1

    const-string/jumbo v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "<unused var>"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    if-nez p3, :cond_0

    move-object p3, v0

    :cond_0
    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p0, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method


# virtual methods
.method public final getFdParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;
    .locals 0

    .line 30
    iget-object p0, p0, Lfast/dic/dict/fragments/UpdateProfileFragment;->fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fdParseWrapper"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    sget p3, Lfast/dic/dict/R$layout;->fragment_update_profile:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 39
    sget p2, Lfast/dic/dict/R$id;->loading_spinner:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string p3, "findViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lfast/dic/dict/views/CustomProgressbar;

    iput-object p2, p0, Lfast/dic/dict/fragments/UpdateProfileFragment;->loadingSpinner:Lfast/dic/dict/views/CustomProgressbar;

    .line 41
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p2

    instance-of p3, p2, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz p3, :cond_0

    check-cast p2, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 42
    :goto_0
    sget p3, Lfast/dic/dict/R$id;->user_full_name_input:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    .line 43
    const-string v0, ""

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    :cond_2
    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 45
    new-instance v1, Lfast/dic/dict/fragments/UpdateProfileFragment$onCreateView$1;

    invoke-direct {v1, p3, p0}, Lfast/dic/dict/fragments/UpdateProfileFragment$onCreateView$1;-><init>(Landroid/widget/EditText;Lfast/dic/dict/fragments/UpdateProfileFragment;)V

    check-cast v1, Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 56
    sget v1, Lfast/dic/dict/R$id;->email_address_input:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    if-eqz p2, :cond_4

    .line 57
    invoke-virtual {p2}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, p2

    :cond_4
    :goto_1
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    sget p2, Lfast/dic/dict/R$id;->edit_Button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 60
    new-instance v0, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/fragments/UpdateProfileFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lfast/dic/dict/fragments/UpdateProfileFragment;->getFdParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object v2

    new-instance v3, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3, v1}, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda2;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    new-instance v4, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;

    invoke-direct {v4, p3, v1}, Lfast/dic/dict/fragments/UpdateProfileFragment$$ExternalSyntheticLambda3;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$default(Lfast/dic/dict/services/parse/FDParseWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-object p1
.end method

.method public final setFdParseWrapper(Lfast/dic/dict/services/parse/FDParseWrapper;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lfast/dic/dict/fragments/UpdateProfileFragment;->fdParseWrapper:Lfast/dic/dict/services/parse/FDParseWrapper;

    return-void
.end method
