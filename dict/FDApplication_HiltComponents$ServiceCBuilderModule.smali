.class interface abstract Lfast/dic/dict/FDApplication_HiltComponents$ServiceCBuilderModule;
.super Ljava/lang/Object;
.source "FDApplication_HiltComponents.java"


# annotations
.annotation runtime Ldagger/Module;
    subcomponents = {
        Lfast/dic/dict/FDApplication_HiltComponents$ServiceC;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/FDApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ServiceCBuilderModule"
.end annotation


# virtual methods
.method public abstract bind(Lfast/dic/dict/FDApplication_HiltComponents$ServiceC$Builder;)Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .annotation runtime Ldagger/Binds;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation
.end method
