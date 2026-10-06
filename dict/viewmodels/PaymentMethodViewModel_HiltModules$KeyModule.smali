.class public final Lfast/dic/dict/viewmodels/PaymentMethodViewModel_HiltModules$KeyModule;
.super Ljava/lang/Object;
.source "PaymentMethodViewModel_HiltModules.java"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/viewmodels/PaymentMethodViewModel_HiltModules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyModule"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provide()Z
    .locals 1
    .annotation runtime Ldagger/Provides;
    .end annotation

    .annotation runtime Ldagger/multibindings/IntoMap;
    .end annotation

    .annotation runtime Ldagger/multibindings/LazyClassKey;
        value = Lfast/dic/dict/viewmodels/PaymentMethodViewModel;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
