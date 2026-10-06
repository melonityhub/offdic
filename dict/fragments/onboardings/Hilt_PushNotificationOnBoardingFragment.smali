.class public abstract Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;
.super Lfast/dic/dict/bases/BaseFragment;
.source "Hilt_PushNotificationOnBoardingFragment.java"


# instance fields
.field private componentContext:Landroid/content/ContextWrapper;

.field private disableGetContextFix:Z

.field private injected:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lfast/dic/dict/bases/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->disableGetContextFix:Z

    .line 29
    iput-boolean v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->injected:Z

    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 51
    iget-object v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->componentContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 53
    invoke-super {p0}, Lfast/dic/dict/bases/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 54
    invoke-super {p0}, Lfast/dic/dict/bases/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->isFragmentGetContextFixDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->disableGetContextFix:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 61
    invoke-super {p0}, Lfast/dic/dict/bases/BaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->disableGetContextFix:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 64
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->initializeComponentContext()V

    .line 65
    iget-object p0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->componentContext:Landroid/content/ContextWrapper;

    return-object p0
.end method

.method protected inject()V
    .locals 1

    .line 75
    iget-boolean v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->injected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->injected:Z

    .line 77
    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/internal/GeneratedComponentManagerHolder;

    invoke-interface {v0}, Ldagger/hilt/internal/GeneratedComponentManagerHolder;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;

    invoke-interface {v0, p0}, Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment_GeneratedInjector;->injectPushNotificationOnBoardingFragment(Lfast/dic/dict/fragments/onboardings/PushNotificationOnBoardingFragment;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    iget-object v0, p0, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->componentContext:Landroid/content/ContextWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-static {v0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->findActivity(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    const-string v0, "onAttach called multiple times with different Context! Hilt Fragments should not be retained."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ldagger/hilt/internal/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->initializeComponentContext()V

    .line 47
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->inject()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->initializeComponentContext()V

    .line 36
    invoke-virtual {p0}, Lfast/dic/dict/fragments/onboardings/Hilt_PushNotificationOnBoardingFragment;->inject()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lfast/dic/dict/bases/BaseFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 71
    invoke-static {p1, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method
