.class public final synthetic Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda9;->f$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment$$ExternalSyntheticLambda9;->f$0:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;

    check-cast p1, Lfast/dic/dict/models/database/ListModel;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;->configureAdapter$lambda$1(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;Lfast/dic/dict/models/database/ListModel;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
