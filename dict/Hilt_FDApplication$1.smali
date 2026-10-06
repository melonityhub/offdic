.class Lfast/dic/dict/Hilt_FDApplication$1;
.super Ljava/lang/Object;
.source "Hilt_FDApplication.java"

# interfaces
.implements Ldagger/hilt/android/internal/managers/ComponentSupplier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/Hilt_FDApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfast/dic/dict/Hilt_FDApplication;


# direct methods
.method constructor <init>(Lfast/dic/dict/Hilt_FDApplication;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lfast/dic/dict/Hilt_FDApplication$1;->this$0:Lfast/dic/dict/Hilt_FDApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 2

    .line 24
    invoke-static {}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;->builder()Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;

    move-result-object v0

    new-instance v1, Ldagger/hilt/android/internal/modules/ApplicationContextModule;

    iget-object p0, p0, Lfast/dic/dict/Hilt_FDApplication$1;->this$0:Lfast/dic/dict/Hilt_FDApplication;

    invoke-direct {v1, p0}, Ldagger/hilt/android/internal/modules/ApplicationContextModule;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-virtual {v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;->applicationContextModule(Ldagger/hilt/android/internal/modules/ApplicationContextModule;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;->build()Lfast/dic/dict/FDApplication_HiltComponents$SingletonC;

    move-result-object p0

    return-object p0
.end method
