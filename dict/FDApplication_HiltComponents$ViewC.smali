.class public abstract Lfast/dic/dict/FDApplication_HiltComponents$ViewC;
.super Ljava/lang/Object;
.source "FDApplication_HiltComponents.java"

# interfaces
.implements Ldagger/hilt/android/components/ViewComponent;
.implements Ldagger/hilt/internal/GeneratedComponent;


# annotations
.annotation runtime Ldagger/Subcomponent;
    modules = {
        Lfast/dic/dict/di/CustomViewModule;
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/FDApplication_HiltComponents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/FDApplication_HiltComponents$ViewC$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
