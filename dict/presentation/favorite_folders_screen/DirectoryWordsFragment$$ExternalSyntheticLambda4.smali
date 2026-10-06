.class public final synthetic Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;

    iput p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;

    iget p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;->showDeleteConfirmationWithRestore$lambda$1(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;ILandroid/content/DialogInterface;I)V

    return-void
.end method
