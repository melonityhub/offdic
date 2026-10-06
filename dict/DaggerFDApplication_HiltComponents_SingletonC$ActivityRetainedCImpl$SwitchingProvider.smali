.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl$SwitchingProvider;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Ldagger/internal/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SwitchingProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ldagger/internal/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final id:I

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "id"
        }
    .end annotation

    .line 1427
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1428
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl$SwitchingProvider;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 1429
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl$SwitchingProvider;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 1430
    iput p3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl$SwitchingProvider;->id:I

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1436
    iget v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl$SwitchingProvider;->id:I

    if-nez v0, :cond_0

    .line 1438
    invoke-static {}, Ldagger/hilt/android/internal/managers/ActivityRetainedComponentManager_LifecycleModule_ProvideActivityRetainedLifecycleFactory;->provideActivityRetainedLifecycle()Ldagger/hilt/android/ActivityRetainedLifecycle;

    move-result-object p0

    return-object p0

    .line 1440
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl$SwitchingProvider;->id:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0
.end method
