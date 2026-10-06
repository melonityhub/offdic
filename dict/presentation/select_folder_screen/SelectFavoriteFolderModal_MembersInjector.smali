.class public final Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;
.super Ljava/lang/Object;
.source "SelectFavoriteFolderModal_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdapter(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;->adapter:Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    check-cast p1, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;)V

    return-void
.end method
