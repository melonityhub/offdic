.class public final Lfast/dic/dict/di/AppModule_GetCurrentUserFactory;
.super Ljava/lang/Object;
.source "AppModule_GetCurrentUserFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/di/AppModule_GetCurrentUserFactory$InstanceHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lfast/dic/dict/di/AppModule_GetCurrentUserFactory;
    .locals 1

    .line 34
    sget-object v0, Lfast/dic/dict/di/AppModule_GetCurrentUserFactory$InstanceHolder;->INSTANCE:Lfast/dic/dict/di/AppModule_GetCurrentUserFactory;

    return-object v0
.end method

.method public static getCurrentUser()Lfast/dic/dict/services/parse/FDParseUser;
    .locals 1

    .line 38
    sget-object v0, Lfast/dic/dict/di/AppModule;->INSTANCE:Lfast/dic/dict/di/AppModule;

    invoke-virtual {v0}, Lfast/dic/dict/di/AppModule;->getCurrentUser()Lfast/dic/dict/services/parse/FDParseUser;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/services/parse/FDParseUser;
    .locals 0

    .line 30
    invoke-static {}, Lfast/dic/dict/di/AppModule_GetCurrentUserFactory;->getCurrentUser()Lfast/dic/dict/services/parse/FDParseUser;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/di/AppModule_GetCurrentUserFactory;->get()Lfast/dic/dict/services/parse/FDParseUser;

    move-result-object p0

    return-object p0
.end method
