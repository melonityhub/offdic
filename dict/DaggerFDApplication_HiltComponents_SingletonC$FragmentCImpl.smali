.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;
.super Lfast/dic/dict/FDApplication_HiltComponents$FragmentC;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Landroidx/fragment/app/Fragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentParam"
        }
    .end annotation

    .line 513
    invoke-direct {p0}, Lfast/dic/dict/FDApplication_HiltComponents$FragmentC;-><init>()V

    .line 510
    iput-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

    .line 514
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 515
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 516
    iput-object p3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    return-void
.end method

.method private injectAIFragment2(Lfast/dic/dict/presentation/ai_screen/AIFragment;)Lfast/dic/dict/presentation/ai_screen/AIFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance16"
        }
    .end annotation

    .line 859
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 860
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/ai_screen/AIFragment_MembersInjector;->injectOfflinePlayer(Lfast/dic/dict/presentation/ai_screen/AIFragment;Lfast/dic/dict/helpers/FDOfflinePlayer;)V

    return-object p1
.end method

.method private injectAdvertisementOnBoardingFragment2(Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;)Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance13"
        }
    .end annotation

    .line 839
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectBaseFragment2(Lfast/dic/dict/bases/BaseFragment;)Lfast/dic/dict/bases/BaseFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance2"
        }
    .end annotation

    .line 764
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectCameraFragment2(Lfast/dic/dict/fragments/CameraFragment;)Lfast/dic/dict/fragments/CameraFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance3"
        }
    .end annotation

    .line 770
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/CameraFragment_MembersInjector;->injectSoundEffect(Lfast/dic/dict/fragments/CameraFragment;Lfast/dic/dict/helpers/FDSoundEffect;)V

    return-object p1
.end method

.method private injectCategoriesFragment2(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance17"
        }
    .end annotation

    .line 866
    new-instance p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;)V

    return-object p1
.end method

.method private injectChooseLanguageFragment2(Lfast/dic/dict/fragments/ChooseLanguageFragment;)Lfast/dic/dict/fragments/ChooseLanguageFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance4"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 777
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDHtml()Lfast/dic/dict/utils/FDHtml;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/ChooseLanguageFragment_MembersInjector;->injectFdHtml(Lfast/dic/dict/fragments/ChooseLanguageFragment;Lfast/dic/dict/utils/FDHtml;)V

    return-object p1
.end method

.method private injectDirectoryWordsFragment2(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance19"
        }
    .end annotation

    .line 879
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 880
    new-instance p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;)V

    return-object p1
.end method

.method private injectEnterPasswordFragment2(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance18"
        }
    .end annotation

    .line 872
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectFavoritesFragment2(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance20"
        }
    .end annotation

    .line 886
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 887
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;

    invoke-direct {v0}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;-><init>()V

    invoke-static {p1, v0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;)V

    .line 888
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment_MembersInjector;->injectConnectivityHelper(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;Lfast/dic/dict/helpers/FDConnectivityHelper;)V

    return-object p1
.end method

.method private injectFinishRegistrationFragment2(Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;)Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance21"
        }
    .end annotation

    .line 895
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectForgetPasswordFragment2(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance22"
        }
    .end annotation

    .line 902
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectFullscreenModal2(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance23"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 909
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDAdsProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/services/FDAds;

    invoke-static {p1, v0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->injectFdAds(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/services/FDAds;)V

    .line 910
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal_MembersInjector;->injectLocalStorage(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;Lfast/dic/dict/database/LocalStorage;)V

    return-object p1
.end method

.method private injectHelpFragment2(Lfast/dic/dict/fragments/HelpFragment;)Lfast/dic/dict/fragments/HelpFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance5"
        }
    .end annotation

    .line 783
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectHistoryFragment2(Lfast/dic/dict/presentation/history_screen/HistoryFragment;)Lfast/dic/dict/presentation/history_screen/HistoryFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance24"
        }
    .end annotation

    .line 916
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 917
    new-instance p0, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/history_screen/HistoryAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/history_screen/HistoryFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/history_screen/HistoryFragment;Lfast/dic/dict/presentation/history_screen/HistoryAdapter;)V

    return-object p1
.end method

.method private injectLanguageOnBoardingFragment2(Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;)Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance14"
        }
    .end annotation

    .line 846
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectLoginOnBoardingFragment2(Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;)Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance25"
        }
    .end annotation

    .line 924
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectLoginSignupFragment2(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance26"
        }
    .end annotation

    .line 930
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectLogoutFragment2(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)Lfast/dic/dict/presentation/logout_screen/LogoutFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance27"
        }
    .end annotation

    .line 936
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectMoreFragment2(Lfast/dic/dict/fragments/MoreFragment;)Lfast/dic/dict/fragments/MoreFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance6"
        }
    .end annotation

    .line 789
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 790
    new-instance p0, Lfast/dic/dict/adapters/MoreAdapter;

    invoke-direct {p0}, Lfast/dic/dict/adapters/MoreAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/MoreFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/fragments/MoreFragment;Lfast/dic/dict/adapters/MoreAdapter;)V

    return-object p1
.end method

.method private injectMoreInnerFragment2(Lfast/dic/dict/fragments/MoreInnerFragment;)Lfast/dic/dict/fragments/MoreInnerFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance7"
        }
    .end annotation

    .line 796
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 797
    new-instance p0, Lfast/dic/dict/adapters/MoreAdapter;

    invoke-direct {p0}, Lfast/dic/dict/adapters/MoreAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/MoreInnerFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/fragments/MoreInnerFragment;Lfast/dic/dict/adapters/MoreAdapter;)V

    return-object p1
.end method

.method private injectPaymentMethodFragment2(Lfast/dic/dict/PaymentMethodFragment;)Lfast/dic/dict/PaymentMethodFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    .line 758
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p1, p0}, Lfast/dic/dict/PaymentMethodFragment_MembersInjector;->injectFirebaseUserPropertiesManager(Lfast/dic/dict/PaymentMethodFragment;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object p1
.end method

.method private injectPricingFragment2(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)Lfast/dic/dict/presentation/pricing_screen/PricingFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance28"
        }
    .end annotation

    .line 942
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 943
    new-instance p0, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/pricing_screen/PricingFragment_MembersInjector;->injectPlanAdapter(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;Lfast/dic/dict/presentation/pricing_screen/adapter/PricingPlanAdapter;)V

    return-object p1
.end method

.method private injectProfileFragment2(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)Lfast/dic/dict/presentation/profile_screen/ProfileFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance29"
        }
    .end annotation

    .line 949
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 950
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->firebaseUserPropertiesManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/profile_screen/ProfileFragment_MembersInjector;->injectFirebaseUserPropertiesManager(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    return-object p1
.end method

.method private injectPushNotificationOnBoardingFragment2(Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;)Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance15"
        }
    .end annotation

    .line 853
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectRegistrationFormFragment2(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance30"
        }
    .end annotation

    .line 957
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectResultOrderModalFragment2(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance31"
        }
    .end annotation

    .line 964
    new-instance p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;Lfast/dic/dict/presentation/result_order_modal/ResultOrderAdapter;)V

    return-object p1
.end method

.method private injectSearchFragment2(Lfast/dic/dict/fragments/SearchFragment;)Lfast/dic/dict/fragments/SearchFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance8"
        }
    .end annotation

    .line 803
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/fragments/SearchFragment_MembersInjector;->injectHistory(Lfast/dic/dict/fragments/SearchFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 804
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDDatabaseManagerProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/FDDatabaseManager;

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/SearchFragment_MembersInjector;->injectDatabaseHelper(Lfast/dic/dict/fragments/SearchFragment;Lfast/dic/dict/database/FDDatabaseManager;)V

    .line 805
    new-instance p0, Lfast/dic/dict/adapters/WordSuggestionAdapter;

    invoke-direct {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/SearchFragment_MembersInjector;->injectSuggestionAdapter(Lfast/dic/dict/fragments/SearchFragment;Lfast/dic/dict/adapters/WordSuggestionAdapter;)V

    return-object p1
.end method

.method private injectSelectFavoriteFolderModal2(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;)Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance32"
        }
    .end annotation

    .line 971
    new-instance p0, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFoldersAdapter;)V

    return-object p1
.end method

.method private injectSettingFragment2(Lfast/dic/dict/fragments/SettingFragment;)Lfast/dic/dict/fragments/SettingFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance9"
        }
    .end annotation

    .line 811
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;->injectLocalStorage(Lfast/dic/dict/fragments/SettingFragment;Lfast/dic/dict/database/LocalStorage;)V

    return-object p1
.end method

.method private injectSortDialog2(Lfast/dic/dict/presentation/sort_screen/SortDialog;)Lfast/dic/dict/presentation/sort_screen/SortDialog;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance33"
        }
    .end annotation

    .line 977
    new-instance p0, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/sort_screen/SortDialog_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/sort_screen/SortDialog;Lfast/dic/dict/presentation/sort_screen/SortDialogAdapter;)V

    return-object p1
.end method

.method private injectTextRecognitionTranslatorFragment2(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance10"
        }
    .end annotation

    .line 818
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;->injectSoundEffect(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;Lfast/dic/dict/helpers/FDSoundEffect;)V

    return-object p1
.end method

.method private injectTransactionHistoryFragment2(Lfast/dic/dict/fragments/TransactionHistoryFragment;)Lfast/dic/dict/fragments/TransactionHistoryFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance11"
        }
    .end annotation

    .line 825
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object p1
.end method

.method private injectUpdateProfileFragment2(Lfast/dic/dict/fragments/UpdateProfileFragment;)Lfast/dic/dict/fragments/UpdateProfileFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance12"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 832
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDParseWrapper()Lfast/dic/dict/services/parse/FDParseWrapper;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/UpdateProfileFragment_MembersInjector;->injectFdParseWrapper(Lfast/dic/dict/fragments/UpdateProfileFragment;Lfast/dic/dict/services/parse/FDParseWrapper;)V

    return-object p1
.end method

.method private injectWodHistoryFragment2(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;)Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance34"
        }
    .end annotation

    .line 983
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, p0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 984
    new-instance p0, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;Lfast/dic/dict/presentation/wod_history_screen/WodMonthHistoryAdapter;)V

    return-object p1
.end method

.method private injectWodYearHistoryFragment2(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;)Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance35"
        }
    .end annotation

    .line 991
    new-instance p0, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryAdapter;)V

    return-object p1
.end method

.method private injectWordCategoryFragment2(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance36"
        }
    .end annotation

    .line 997
    new-instance p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    invoke-direct {p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;-><init>()V

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V

    return-object p1
.end method

.method private injectWordResultFragment2(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance37"
        }
    .end annotation

    .line 1003
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v0, v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDHistoryProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p1, v0}, Lfast/dic/dict/bases/BaseFragment_MembersInjector;->injectHistory(Lfast/dic/dict/bases/BaseFragment;Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    .line 1004
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;

    move-result-object p0

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragment_MembersInjector;->injectOfflinePlayer(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;Lfast/dic/dict/helpers/FDOfflinePlayer;)V

    return-object p1
.end method


# virtual methods
.method fDConnectivityHelper()Lfast/dic/dict/helpers/FDConnectivityHelper;
    .locals 1

    .line 538
    new-instance v0, Lfast/dic/dict/helpers/FDConnectivityHelper;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/helpers/FDConnectivityHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method fDHtml()Lfast/dic/dict/utils/FDHtml;
    .locals 3

    .line 530
    new-instance v0, Lfast/dic/dict/utils/FDHtml;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object v1

    invoke-static {v1}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, v2, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->fDFavouriteProvider:Ldagger/internal/Provider;

    invoke-interface {v2}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfast/dic/dict/helpers/database/couchbase/FDFavourite;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fDResultLabel()Lfast/dic/dict/helpers/database/FDResultLabel;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lfast/dic/dict/utils/FDHtml;-><init>(Landroid/content/Context;Lfast/dic/dict/helpers/database/couchbase/FDFavourite;Lfast/dic/dict/helpers/database/FDResultLabel;)V

    return-object v0
.end method

.method fDOfflinePlayer()Lfast/dic/dict/helpers/FDOfflinePlayer;
    .locals 2

    .line 534
    new-instance v0, Lfast/dic/dict/helpers/FDOfflinePlayer;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-virtual {v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->localStorage()Lfast/dic/dict/database/LocalStorage;

    move-result-object v1

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/helpers/FDOfflinePlayer;-><init>(Lfast/dic/dict/database/LocalStorage;Landroid/content/Context;)V

    return-object v0
.end method

.method fDResultLabel()Lfast/dic/dict/helpers/database/FDResultLabel;
    .locals 1

    .line 526
    new-instance v0, Lfast/dic/dict/helpers/database/FDResultLabel;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/helpers/database/FDResultLabel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method fDSoundEffect()Lfast/dic/dict/helpers/FDSoundEffect;
    .locals 1

    .line 522
    new-instance v0, Lfast/dic/dict/helpers/FDSoundEffect;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    invoke-static {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;->-$$Nest$fgetapplicationContextModule(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    move-result-object p0

    invoke-static {p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule_ProvideContextFactory;->provideContext(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lfast/dic/dict/helpers/FDSoundEffect;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;
    .locals 0

    .line 543
    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;->getHiltInternalFactoryFactory()Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories$InternalFactoryFactory;

    move-result-object p0

    return-object p0
.end method

.method public injectAIFragment(Lfast/dic/dict/presentation/ai_screen/AIFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 648
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectAIFragment2(Lfast/dic/dict/presentation/ai_screen/AIFragment;)Lfast/dic/dict/presentation/ai_screen/AIFragment;

    return-void
.end method

.method public injectAdvertisementOnBoardingFragment(Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 621
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectAdvertisementOnBoardingFragment2(Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;)Lfast/dic/dict/fragments/onboardings/AdvertisementOnBoardingFragment;

    return-void
.end method

.method public injectBaseFragment(Lfast/dic/dict/bases/BaseFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 558
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectBaseFragment2(Lfast/dic/dict/bases/BaseFragment;)Lfast/dic/dict/bases/BaseFragment;

    return-void
.end method

.method public injectCameraFragment(Lfast/dic/dict/fragments/CameraFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectCameraFragment2(Lfast/dic/dict/fragments/CameraFragment;)Lfast/dic/dict/fragments/CameraFragment;

    return-void
.end method

.method public injectCameraPermissionFragment(Lfast/dic/dict/fragments/onboardings/CameraPermissionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectCategoriesFragment(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 653
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectCategoriesFragment2(Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;)Lfast/dic/dict/presentation/categories_screen/CategoriesFragment;

    return-void
.end method

.method public injectChooseLanguageFragment(Lfast/dic/dict/fragments/ChooseLanguageFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 568
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectChooseLanguageFragment2(Lfast/dic/dict/fragments/ChooseLanguageFragment;)Lfast/dic/dict/fragments/ChooseLanguageFragment;

    return-void
.end method

.method public injectDirectoryWordsFragment(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 663
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectDirectoryWordsFragment2(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragment;

    return-void
.end method

.method public injectEnterPasswordFragment(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectEnterPasswordFragment2(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragment;

    return-void
.end method

.method public injectFavoritesFragment(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 668
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectFavoritesFragment2(Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;)Lfast/dic/dict/presentation/favorite_screen/FavoritesFragment;

    return-void
.end method

.method public injectFinishRegistrationFragment(Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 673
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectFinishRegistrationFragment2(Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;)Lfast/dic/dict/presentation/finish_registration_screen/FinishRegistrationFragment;

    return-void
.end method

.method public injectForgetPasswordFragment(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 678
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectForgetPasswordFragment2(Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;)Lfast/dic/dict/presentation/forget_password_screen/ForgetPasswordFragment;

    return-void
.end method

.method public injectFullscreenModal(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 683
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectFullscreenModal2(Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;)Lfast/dic/dict/presentation/fullscreen_modal/FullscreenModal;

    return-void
.end method

.method public injectHelpFragment(Lfast/dic/dict/fragments/HelpFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 573
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectHelpFragment2(Lfast/dic/dict/fragments/HelpFragment;)Lfast/dic/dict/fragments/HelpFragment;

    return-void
.end method

.method public injectHistoryFragment(Lfast/dic/dict/presentation/history_screen/HistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 688
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectHistoryFragment2(Lfast/dic/dict/presentation/history_screen/HistoryFragment;)Lfast/dic/dict/presentation/history_screen/HistoryFragment;

    return-void
.end method

.method public injectHomeFragment(Lfast/dic/dict/fragments/HomeFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectLanguageOnBoardingFragment(Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 630
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectLanguageOnBoardingFragment2(Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;)Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;

    return-void
.end method

.method public injectLoginOnBoardingFragment(Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 693
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectLoginOnBoardingFragment2(Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;)Lfast/dic/dict/presentation/login_onboarding_screen/LoginOnBoardingFragment;

    return-void
.end method

.method public injectLoginSignupFragment(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 698
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectLoginSignupFragment2(Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;)Lfast/dic/dict/presentation/login_screen/LoginSignupFragment;

    return-void
.end method

.method public injectLogoutFragment(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 703
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectLogoutFragment2(Lfast/dic/dict/presentation/logout_screen/LogoutFragment;)Lfast/dic/dict/presentation/logout_screen/LogoutFragment;

    return-void
.end method

.method public injectMicrophonePermissionFragment(Lfast/dic/dict/fragments/onboardings/MicrophonePermissionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectMoreFragment(Lfast/dic/dict/fragments/MoreFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 582
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectMoreFragment2(Lfast/dic/dict/fragments/MoreFragment;)Lfast/dic/dict/fragments/MoreFragment;

    return-void
.end method

.method public injectMoreInnerFragment(Lfast/dic/dict/fragments/MoreInnerFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 587
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectMoreInnerFragment2(Lfast/dic/dict/fragments/MoreInnerFragment;)Lfast/dic/dict/fragments/MoreInnerFragment;

    return-void
.end method

.method public injectPaymentMethodFragment(Lfast/dic/dict/PaymentMethodFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 553
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectPaymentMethodFragment2(Lfast/dic/dict/PaymentMethodFragment;)Lfast/dic/dict/PaymentMethodFragment;

    return-void
.end method

.method public injectPricingFragment(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 708
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectPricingFragment2(Lfast/dic/dict/presentation/pricing_screen/PricingFragment;)Lfast/dic/dict/presentation/pricing_screen/PricingFragment;

    return-void
.end method

.method public injectProPlanRequiredFragment(Lfast/dic/dict/fragments/onboardings/ProPlanRequiredFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectProfileFragment(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 713
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectProfileFragment2(Lfast/dic/dict/presentation/profile_screen/ProfileFragment;)Lfast/dic/dict/presentation/profile_screen/ProfileFragment;

    return-void
.end method

.method public injectPushNotificationOnBoardingFragment(Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 643
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectPushNotificationOnBoardingFragment2(Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;)Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;

    return-void
.end method

.method public injectRegistrationFormFragment(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 718
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectRegistrationFormFragment2(Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;)Lfast/dic/dict/presentation/registration_form_screen/RegistrationFormFragment;

    return-void
.end method

.method public injectResultOrderModalFragment(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 723
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectResultOrderModalFragment2(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragment;

    return-void
.end method

.method public injectSearchFragment(Lfast/dic/dict/fragments/SearchFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 592
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectSearchFragment2(Lfast/dic/dict/fragments/SearchFragment;)Lfast/dic/dict/fragments/SearchFragment;

    return-void
.end method

.method public injectSelectFavoriteFolderModal(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 728
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectSelectFavoriteFolderModal2(Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;)Lfast/dic/dict/presentation/select_folder_screen/SelectFavoriteFolderModal;

    return-void
.end method

.method public injectSettingFragment(Lfast/dic/dict/fragments/SettingFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 597
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectSettingFragment2(Lfast/dic/dict/fragments/SettingFragment;)Lfast/dic/dict/fragments/SettingFragment;

    return-void
.end method

.method public injectSortDialog(Lfast/dic/dict/presentation/sort_screen/SortDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 733
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectSortDialog2(Lfast/dic/dict/presentation/sort_screen/SortDialog;)Lfast/dic/dict/presentation/sort_screen/SortDialog;

    return-void
.end method

.method public injectTextRecognitionTranslatorFragment(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 602
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectTextRecognitionTranslatorFragment2(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    return-void
.end method

.method public injectTransactionHistoryFragment(Lfast/dic/dict/fragments/TransactionHistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectTransactionHistoryFragment2(Lfast/dic/dict/fragments/TransactionHistoryFragment;)Lfast/dic/dict/fragments/TransactionHistoryFragment;

    return-void
.end method

.method public injectUpdateProfileFragment(Lfast/dic/dict/fragments/UpdateProfileFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 612
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectUpdateProfileFragment2(Lfast/dic/dict/fragments/UpdateProfileFragment;)Lfast/dic/dict/fragments/UpdateProfileFragment;

    return-void
.end method

.method public injectVoiceRecognitionFragment(Lfast/dic/dict/fragments/VoiceRecognitionFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    return-void
.end method

.method public injectWodHistoryFragment(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 738
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectWodHistoryFragment2(Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;)Lfast/dic/dict/presentation/wod_history_screen/WodHistoryFragment;

    return-void
.end method

.method public injectWodYearHistoryFragment(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 743
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectWodYearHistoryFragment2(Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;)Lfast/dic/dict/presentation/wod_year_history_screen/WodYearHistoryFragment;

    return-void
.end method

.method public injectWordCategoryFragment(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 748
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectWordCategoryFragment2(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;

    return-void
.end method

.method public injectWordResultFragment(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arg0"
        }
    .end annotation

    .line 753
    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->injectWordResultFragment2(Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragment;

    return-void
.end method

.method public viewWithFragmentComponentBuilder()Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .locals 6

    .line 548
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v4, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;->fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
