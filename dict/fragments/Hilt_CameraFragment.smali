.class public abstract Lfast/dic/dict/fragments/Hilt_CameraFragment;
.super Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;
.source "Hilt_CameraFragment.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private componentContext:Landroid/content/ContextWrapper;

.field private volatile componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private disableGetContextFix:Z

.field private injected:Z


# direct methods
.method constructor <init>(Z)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;-><init>(Z)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->disableGetContextFix:Z

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManagerLock:Ljava/lang/Object;

    .line 35
    iput-boolean p1, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->injected:Z

    return-void
.end method

.method private initializeComponentContext()V
    .locals 1

    .line 61
    iget-object v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentContext:Landroid/content/ContextWrapper;

    if-nez v0, :cond_0

    .line 63
    invoke-super {p0}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/content/Context;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentContext:Landroid/content/ContextWrapper;

    .line 64
    invoke-super {p0}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Ldagger/hilt/android/flags/FragmentGetContextFix;->isFragmentGetContextFixDisabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->disableGetContextFix:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 2

    .line 95
    iget-object v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    if-nez v1, :cond_0

    .line 98
    invoke-virtual {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object v1

    iput-object v1, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    .line 100
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 102
    :cond_1
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManager:Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    return-object p0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 0

    .line 25
    invoke-virtual {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object p0

    return-object p0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;
    .locals 1

    .line 90
    new-instance v0, Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentManager()Ldagger/hilt/android/internal/managers/FragmentComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 71
    invoke-super {p0}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->disableGetContextFix:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 74
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->initializeComponentContext()V

    .line 75
    iget-object p0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentContext:Landroid/content/ContextWrapper;

    return-object p0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 114
    invoke-super {p0}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getFragmentFactory(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method protected inject()V
    .locals 1

    .line 106
    iget-boolean v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->injected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->injected:Z

    .line 108
    invoke-virtual {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/fragments/CameraFragment_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/fragments/CameraFragment;

    invoke-interface {v0, p0}, Lfast/dic/dict/fragments/CameraFragment_GeneratedInjector;->injectCameraFragment(Lfast/dic/dict/fragments/CameraFragment;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onAttach(Landroid/app/Activity;)V

    .line 55
    iget-object v0, p0, Lfast/dic/dict/fragments/Hilt_CameraFragment;->componentContext:Landroid/content/ContextWrapper;

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

    .line 56
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->initializeComponentContext()V

    .line 57
    invoke-virtual {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->inject()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->initializeComponentContext()V

    .line 46
    invoke-virtual {p0}, Lfast/dic/dict/fragments/Hilt_CameraFragment;->inject()V

    return-void
.end method

.method public onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 0

    .line 80
    invoke-super {p0, p1}, Lfast/dic/dict/fragments/FullscreenBottomSheetFragment;->onGetLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 81
    invoke-static {p1, p0}, Ldagger/hilt/android/internal/managers/FragmentComponentManager;->createContextWrapper(Landroid/view/LayoutInflater;Landroidx/fragment/app/Fragment;)Landroid/content/ContextWrapper;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    return-object p0
.end method
