.class public final Lfast/dic/dict/fragments/SettingFragment_MembersInjector;
.super Ljava/lang/Object;
.source "SettingFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/fragments/SettingFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final localStorageProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;->localStorageProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/fragments/SettingFragment;",
            ">;"
        }
    .end annotation

    .line 40
    new-instance v0, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectLocalStorage(Lfast/dic/dict/fragments/SettingFragment;Lfast/dic/dict/database/LocalStorage;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lfast/dic/dict/fragments/SettingFragment;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/fragments/SettingFragment;)V
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/LocalStorage;

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;->injectLocalStorage(Lfast/dic/dict/fragments/SettingFragment;Lfast/dic/dict/database/LocalStorage;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    check-cast p1, Lfast/dic/dict/fragments/SettingFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/SettingFragment_MembersInjector;->injectMembers(Lfast/dic/dict/fragments/SettingFragment;)V

    return-void
.end method
