.class public final Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "CreateNewDirectoryBottomSheetModal.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B9\u0012\u0018\u0008\u0002\u0010\u0002\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0004\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0008\u0010\tJ8\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0017b\u0010\u0008\u0012\u0012\u000c\u0008\u0013\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0014J\u0010\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0008\u0010\u0018\u001a\u00020\u0005H\u0016R\u001e\u0010\u0002\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;",
        "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;",
        "dismissed",
        "Lkotlin/Function1;",
        "",
        "",
        "currentDirectory",
        "documentId",
        "<init>",
        "(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "SetTextI18n",
        "addDirectory",
        "input",
        "Landroid/widget/EditText;",
        "onStart",
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
.field private final currentDirectory:Ljava/lang/String;

.field private final dismissed:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final documentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->dismissed:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->currentDirectory:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->documentId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 20
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$addDirectory(Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;Landroid/widget/EditText;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->addDirectory(Landroid/widget/EditText;)V

    return-void
.end method

.method private final addDirectory(Landroid/widget/EditText;)V
    .locals 5

    .line 82
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->currentDirectory:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    iget-object v2, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->documentId:Ljava/lang/String;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v2, v0}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->updateName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_0

    .line 86
    :cond_0
    new-instance v1, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;

    invoke-direct {v1}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;-><init>()V

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;->insert$default(Lfast/dic/dict/helpers/database/couchbase/FDFavouriteFolder;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 89
    :goto_0
    invoke-static {p1}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 90
    iget-object p1, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->dismissed:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->dismiss()V

    return-void
.end method

.method static final onCreateView$lambda$0(Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;Lcom/google/android/material/textfield/TextInputEditText;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->addDirectory(Landroid/widget/EditText;)V

    return-void
.end method

.method static final onCreateView$lambda$1(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;Landroid/view/View;)V
    .locals 0

    .line 43
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lfast/dic/dict/utils/EditTextExKt;->hideKeyboard(Landroid/widget/EditText;)V

    .line 45
    iget-object p0, p1, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->dismissed:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-interface {p0, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_0
    invoke-virtual {p1}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->dismiss()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget p3, Lfast/dic/dict/R$layout;->create_favorite_directory_bottom_sheet_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 29
    sget p2, Lfast/dic/dict/R$id;->create_directory_title_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 30
    sget p3, Lfast/dic/dict/R$id;->directory_name_input:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/google/android/material/textfield/TextInputEditText;

    .line 31
    sget v1, Lfast/dic/dict/R$id;->add_directory_button:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 33
    iget-object v2, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->currentDirectory:Ljava/lang/String;

    const-string v3, ""

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    sget v4, Lfast/dic/dict/R$string;->edit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    move-object v2, v3

    check-cast v2, Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    sget v4, Lfast/dic/dict/R$string;->edit:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->currentDirectory:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    :cond_2
    new-instance p2, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p3}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;Lcom/google/android/material/textfield/TextInputEditText;)V

    invoke-virtual {v1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p2, Lfast/dic/dict/R$id;->close_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 42
    new-instance v2, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$$ExternalSyntheticLambda1;

    invoke-direct {v2, p3, p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;)V

    invoke-virtual {p2, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    iget-object p2, p0, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->currentDirectory:Ljava/lang/String;

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    move-object v3, p2

    :goto_2
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {p3, v3}, Lcom/google/android/material/textfield/TextInputEditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    new-instance p2, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$3;

    invoke-direct {p2, v1}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$3;-><init>(Landroid/widget/Button;)V

    check-cast p2, Landroid/text/TextWatcher;

    invoke-virtual {p3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 63
    new-instance p2, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;

    invoke-direct {p2, p3, p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal$onCreateView$4;-><init>(Lcom/google/android/material/textfield/TextInputEditText;Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;)V

    check-cast p2, Landroid/view/View$OnKeyListener;

    invoke-virtual {p3, p2}, Lcom/google/android/material/textfield/TextInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 74
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->requestFocus()Z

    .line 75
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object p0, p3

    check-cast p0, Landroid/widget/EditText;

    invoke-static {p0}, Lfast/dic/dict/utils/EditTextExKt;->showKeyboard(Landroid/widget/EditText;)V

    .line 76
    invoke-virtual {p3}, Lcom/google/android/material/textfield/TextInputEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const/4 p2, 0x1

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_5

    :cond_4
    move v0, p2

    :cond_5
    xor-int/lit8 p0, v0, 0x1

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-object p1
.end method

.method public onStart()V
    .locals 2

    .line 96
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;->onStart()V

    .line 98
    invoke-virtual {p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->requireView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 99
    invoke-virtual {p0}, Lfast/dic/dict/fragments/modals/CreateNewDirectoryBottomSheetModal;->getDialog()Landroid/app/Dialog;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method
