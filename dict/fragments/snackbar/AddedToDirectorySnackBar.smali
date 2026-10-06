.class public final Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;
.super Ljava/lang/Object;
.source "AddedToDirectorySnackBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddedToDirectorySnackBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddedToDirectorySnackBar.kt\nfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,44:1\n1#2:45\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001a\u0010\u000c\u001a\u00020\rH\u0007b\u0010\u0008\u000e\u0012\u000c\u0008\u000f\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0010R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;",
        "",
        "on",
        "Landroid/view/View;",
        "title",
        "",
        "directory",
        "Lfast/dic/dict/models/database/FolderModel;",
        "context",
        "Landroidx/fragment/app/Fragment;",
        "<init>",
        "(Landroid/view/View;Ljava/lang/String;Lfast/dic/dict/models/database/FolderModel;Landroidx/fragment/app/Fragment;)V",
        "show",
        "",
        "Landroid/annotation/SuppressLint;",
        "value",
        "RestrictedApi",
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
.field private final context:Landroidx/fragment/app/Fragment;

.field private final directory:Lfast/dic/dict/models/database/FolderModel;

.field private final on:Landroid/view/View;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Lfast/dic/dict/models/database/FolderModel;Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "on"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->on:Landroid/view/View;

    iput-object p2, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->title:Ljava/lang/String;

    iput-object p3, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->directory:Lfast/dic/dict/models/database/FolderModel;

    iput-object p4, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->context:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method static final show$lambda$0(Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;Landroid/view/View;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->context:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;

    invoke-direct {v0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;-><init>()V

    .line 33
    iget-object v1, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->directory:Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/FolderModel;->getDocumentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;->setFolderId(Ljava/lang/String;)V

    .line 34
    iget-object p0, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->directory:Lfast/dic/dict/models/database/FolderModel;

    invoke-virtual {p0}, Lfast/dic/dict/models/database/FolderModel;->getWordDocumentId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;->setWordId(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 35
    const-string p0, ""

    invoke-virtual {v0, p1, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final show()V
    .locals 8

    .line 21
    iget-object v0, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->on:Landroid/view/View;

    const-string v1, ""

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object v0

    const-string v1, "make(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iget-object v1, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->context:Landroidx/fragment/app/Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-static {v1}, Lfast/dic/dict/databinding/AddedToDirectorySnackbarLayoutBinding;->inflate(Landroid/view/LayoutInflater;)Lfast/dic/dict/databinding/AddedToDirectorySnackbarLayoutBinding;

    move-result-object v1

    const-string v3, "inflate(...)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->getView()Landroid/view/View;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type com.google.android.material.snackbar.Snackbar.SnackbarLayout"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;

    .line 26
    iget-object v4, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->context:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "requireContext(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {v7, v4, v2, v5, v6}, Lfast/dic/dict/utils/IntExtKt;->toDimensionUnit$default(FLandroid/content/Context;IILjava/lang/Object;)I

    move-result v4

    invoke-virtual {v3, v2, v2, v2, v4}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setPadding(IIII)V

    .line 28
    iget-object v4, v1, Lfast/dic/dict/databinding/AddedToDirectorySnackbarLayoutBinding;->titleTextViewSnackBar:Landroid/widget/TextView;

    iget-object v5, p0, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;->title:Ljava/lang/String;

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-object v4, v1, Lfast/dic/dict/databinding/AddedToDirectorySnackbarLayoutBinding;->snackBarButton:Landroid/widget/Button;

    new-instance v5, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/fragments/snackbar/AddedToDirectorySnackBar;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-virtual {v1}, Lfast/dic/dict/databinding/AddedToDirectorySnackbarLayoutBinding;->getRoot()Lcom/google/android/material/card/MaterialCardView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {v3, p0, v2}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->addView(Landroid/view/View;I)V

    .line 39
    invoke-virtual {v3, v2}, Lcom/google/android/material/snackbar/Snackbar$SnackbarLayout;->setBackgroundColor(I)V

    .line 41
    invoke-virtual {v0}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void
.end method
