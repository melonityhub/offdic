.class public final Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$Companion;
.super Ljava/lang/Object;
.source "FavoritesFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000c\u0010\u0004\u001a\u00020\u0005H\u0007b\u0002\u0008\u0006J\u001c\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0007b\u0002\u0008\u0006\u00a8\u0006\u000b"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$Companion;",
        "",
        "<init>",
        "()V",
        "actionFavoritesFragmentToHistoryFragment",
        "Landroidx/navigation/NavDirections;",
        "Landroidx/annotation/CheckResult;",
        "actionFavoritesFragmentToDirectoryWordsFragment",
        "documentId",
        "",
        "documentName",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final actionFavoritesFragmentToDirectoryWordsFragment(Ljava/lang/String;Ljava/lang/String;)Landroidx/navigation/NavDirections;
    .locals 0

    const-string p0, "documentId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance p0, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$ActionFavoritesFragmentToDirectoryWordsFragment;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragmentDirections$ActionFavoritesFragmentToDirectoryWordsFragment;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p0, Landroidx/navigation/NavDirections;

    return-object p0
.end method

.method public final actionFavoritesFragmentToHistoryFragment()Landroidx/navigation/NavDirections;
    .locals 1

    .line 29
    new-instance p0, Landroidx/navigation/ActionOnlyNavDirections;

    sget v0, Lfast/dic/dict/R$id;->action_favoritesFragment_to_historyFragment:I

    invoke-direct {p0, v0}, Landroidx/navigation/ActionOnlyNavDirections;-><init>(I)V

    check-cast p0, Landroidx/navigation/NavDirections;

    return-object p0
.end method
