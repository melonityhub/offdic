.class public final Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;
.super Ljava/lang/Object;
.source "FullscreenModal_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;",
        ">;"
    }
.end annotation


# instance fields
.field private final fdAdsProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;"
        }
    .end annotation
.end field

.field private final historyProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;"
        }
    .end annotation
.end field

.field private final localStorageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->fdAdsProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->localStorageProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/services/FDAds;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectFdAds(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/services/FDAds;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->fdAds:Lfast/dic/dict/services/FDAds;

    return-void
.end method

.method public static injectLocalStorage(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/database/LocalStorage;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 46
    iget-object v0, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->fdAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/services/FDAds;

    invoke-static {p1, v0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->injectFdAds(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/services/FDAds;)V

    .line 47
    iget-object p0, p0, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/LocalStorage;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->injectLocalStorage(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/database/LocalStorage;)V

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

    .line 14
    check-cast p1, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V

    return-void
.end method
