.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lfast/dic/dict/FDApplication_HiltComponents$ViewModelC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewModelCBuilder"
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;


# direct methods
.method private constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 435
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    return-void
.end method

.method synthetic constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ldagger/hilt/android/components/ViewModelComponent;
    .locals 0

    .line 423
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->build()Lfast/dic/dict/FDApplication_HiltComponents$ViewModelC;

    move-result-object p0

    return-object p0
.end method

.method public build()Lfast/dic/dict/FDApplication_HiltComponents$ViewModelC;
    .locals 4

    .line 452
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    const-class v1, Landroidx/lifecycle/SavedStateHandle;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 453
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;

    const-class v1, Ldagger/hilt/android/ViewModelLifecycle;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 454
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;

    invoke-direct {v0, v1, v2, v3, p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroidx/lifecycle/SavedStateHandle;Ldagger/hilt/android/ViewModelLifecycle;)V

    return-object v0
.end method

.method public bridge synthetic savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "handle"
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;

    move-result-object p0

    return-object p0
.end method

.method public savedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .line 440
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/SavedStateHandle;

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->savedStateHandle:Landroidx/lifecycle/SavedStateHandle;

    return-object p0
.end method

.method public bridge synthetic viewModelLifecycle(Ldagger/hilt/android/ViewModelLifecycle;)Ldagger/hilt/android/internal/builders/ViewModelComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "viewModelLifecycle"
        }
    .end annotation

    .line 423
    invoke-virtual {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle(Ldagger/hilt/android/ViewModelLifecycle;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;

    move-result-object p0

    return-object p0
.end method

.method public viewModelLifecycle(Ldagger/hilt/android/ViewModelLifecycle;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "viewModelLifecycle"
        }
    .end annotation

    .line 446
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ldagger/hilt/android/ViewModelLifecycle;

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;->viewModelLifecycle:Ldagger/hilt/android/ViewModelLifecycle;

    return-object p0
.end method
