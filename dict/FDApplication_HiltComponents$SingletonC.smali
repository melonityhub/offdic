.class public abstract Lfast/dic/dict/FDApplication_HiltComponents$SingletonC;
.super Ljava/lang/Object;
.source "FDApplication_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/flags/FragmentGetContextFix$FragmentGetContextFixEntryPoint;
.implements Ldagger/hilt/android/internal/managers/HiltWrapper_ActivityRetainedComponentManager_ActivityRetainedComponentBuilderEntryPoint;
.implements Ldagger/hilt/android/internal/managers/ServiceComponentManager$ServiceComponentBuilderEntryPoint;
.implements Ldagger/hilt/components/SingletonComponent;
.implements Ldagger/hilt/internal/GeneratedComponent;
.implements Lfast/dic/dict/FDApplication_GeneratedInjector;
.implements Lfast/dic/dict/utils/FirebaseAnalyticsEntryPoint;


# annotations
.annotation runtime Ldagger/Component;
    modules = {
        Lfast/dic/dict/di/AppModule;,
        Ldagger/hilt/android/internal/modules/ApplicationContextModule;,
        Lfast/dic/dict/FDApplication_HiltComponents$ActivityRetainedCBuilderModule;,
        Lfast/dic/dict/FDApplication_HiltComponents$ServiceCBuilderModule;,
        Ldagger/hilt/android/flags/HiltWrapper_FragmentGetContextFix_FragmentGetContextFixModule;,
        Lfast/dic/dict/services/RetrofitBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/FDApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SingletonC"
.end annotation

.annotation runtime Ljakarta/inject/Singleton;
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
