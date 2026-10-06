.class public abstract Lfast/dic/dict/bases/Hilt_BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "Hilt_BaseActivity.java"

# interfaces
.implements Ldagger/hilt/internal/GeneratedComponentManagerHolder;


# instance fields
.field private volatile componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

.field private final componentManagerLock:Ljava/lang/Object;

.field private injected:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManagerLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->injected:Z

    .line 31
    invoke-direct {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->_initHiltInternal()V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;-><init>(I)V

    .line 25
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManagerLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->injected:Z

    .line 36
    invoke-direct {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->_initHiltInternal()V

    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 40
    new-instance v0, Lfast/dic/dict/bases/Hilt_BaseActivity$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/bases/Hilt_BaseActivity$1;-><init>(Lfast/dic/dict/bases/Hilt_BaseActivity;)V

    invoke-virtual {p0, v0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method

.method private initSavedStateHandleHolders()V
    .locals 0

    .line 49
    invoke-virtual {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->initSavedStateHandleHolders()V

    return-void
.end method


# virtual methods
.method public final componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 2

    .line 76
    iget-object v0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManagerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 78
    :try_start_0
    iget-object v1, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    if-nez v1, :cond_0

    .line 79
    invoke-virtual {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object v1

    iput-object v1, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 83
    :cond_1
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager:Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    return-object p0
.end method

.method public bridge synthetic componentManager()Ldagger/hilt/internal/GeneratedComponentManager;
    .locals 0

    .line 21
    invoke-virtual {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    return-object p0
.end method

.method protected createComponentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;
    .locals 1

    .line 71
    new-instance v0, Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    invoke-direct {v0, p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public final generatedComponent()Ljava/lang/Object;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->generatedComponent()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;
    .locals 1

    .line 95
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDefaultViewModelProviderFactory()Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object v0

    invoke-static {p0, v0}, Ldagger/hilt/android/internal/lifecycle/DefaultViewModelFactories;->getActivityFactory(Landroidx/activity/ComponentActivity;Landroidx/lifecycle/ViewModelProvider$Factory;)Landroidx/lifecycle/ViewModelProvider$Factory;

    move-result-object p0

    return-object p0
.end method

.method protected inject()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->injected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lfast/dic/dict/bases/Hilt_BaseActivity;->injected:Z

    .line 89
    invoke-virtual {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/bases/BaseActivity_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/bases/BaseActivity;

    invoke-interface {v0, p0}, Lfast/dic/dict/bases/BaseActivity_GeneratedInjector;->injectBaseActivity(Lfast/dic/dict/bases/BaseActivity;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->initSavedStateHandleHolders()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 61
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 62
    invoke-virtual {p0}, Lfast/dic/dict/bases/Hilt_BaseActivity;->componentManager()Ldagger/hilt/android/internal/managers/ActivityComponentManager;

    move-result-object p0

    invoke-virtual {p0}, Ldagger/hilt/android/internal/managers/ActivityComponentManager;->clearSavedStateHandleHolders()V

    return-void
.end method
