.class public abstract Lfast/dic/dict/activities/Hilt_SplashActivity;
.super Lfast/dic/dict/bases/BaseActivity;
.source "Hilt_SplashActivity.java"


# instance fields
.field private injected:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lfast/dic/dict/bases/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lfast/dic/dict/activities/Hilt_SplashActivity;->injected:Z

    .line 20
    invoke-direct {p0}, Lfast/dic/dict/activities/Hilt_SplashActivity;->_initHiltInternal()V

    return-void
.end method

.method private _initHiltInternal()V
    .locals 1

    .line 24
    new-instance v0, Lfast/dic/dict/activities/Hilt_SplashActivity$1;

    invoke-direct {v0, p0}, Lfast/dic/dict/activities/Hilt_SplashActivity$1;-><init>(Lfast/dic/dict/activities/Hilt_SplashActivity;)V

    invoke-virtual {p0, v0}, Lfast/dic/dict/activities/Hilt_SplashActivity;->addOnContextAvailableListener(Landroidx/activity/contextaware/OnContextAvailableListener;)V

    return-void
.end method


# virtual methods
.method protected inject()V
    .locals 1

    .line 33
    iget-boolean v0, p0, Lfast/dic/dict/activities/Hilt_SplashActivity;->injected:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lfast/dic/dict/activities/Hilt_SplashActivity;->injected:Z

    .line 35
    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldagger/hilt/internal/GeneratedComponentManagerHolder;

    invoke-interface {v0}, Ldagger/hilt/internal/GeneratedComponentManagerHolder;->generatedComponent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/activities/SplashActivity_GeneratedInjector;

    invoke-static {p0}, Ldagger/hilt/internal/UnsafeCasts;->unsafeCast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/activities/SplashActivity;

    invoke-interface {v0, p0}, Lfast/dic/dict/activities/SplashActivity_GeneratedInjector;->injectSplashActivity(Lfast/dic/dict/activities/SplashActivity;)V

    :cond_0
    return-void
.end method
