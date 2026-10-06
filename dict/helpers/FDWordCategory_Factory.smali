.class public final Lfast/dic/dict/helpers/FDWordCategory_Factory;
.super Ljava/lang/Object;
.source "FDWordCategory_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/helpers/FDWordCategory;",
        ">;"
    }
.end annotation


# instance fields
.field private final databaseHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseManagerProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;"
        }
    .end annotation
.end field

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
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lfast/dic/dict/helpers/FDWordCategory_Factory;->databaseHelperProvider:Ldagger/internal/Provider;

    .line 39
    iput-object p2, p0, Lfast/dic/dict/helpers/FDWordCategory_Factory;->databaseManagerProvider:Ldagger/internal/Provider;

    .line 40
    iput-object p3, p0, Lfast/dic/dict/helpers/FDWordCategory_Factory;->localStorageProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/helpers/FDWordCategory_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/FDDatabaseManager;",
            ">;",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/database/LocalStorage;",
            ">;)",
            "Lfast/dic/dict/helpers/FDWordCategory_Factory;"
        }
    .end annotation

    .line 51
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory_Factory;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/helpers/FDWordCategory_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/database/FDDatabaseManager;Lfast/dic/dict/database/LocalStorage;)Lfast/dic/dict/helpers/FDWordCategory;
    .locals 1

    .line 56
    new-instance v0, Lfast/dic/dict/helpers/FDWordCategory;

    invoke-direct {v0, p0, p1, p2}, Lfast/dic/dict/helpers/FDWordCategory;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/database/FDDatabaseManager;Lfast/dic/dict/database/LocalStorage;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/helpers/FDWordCategory;
    .locals 2

    .line 45
    iget-object v0, p0, Lfast/dic/dict/helpers/FDWordCategory_Factory;->databaseHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    iget-object v1, p0, Lfast/dic/dict/helpers/FDWordCategory_Factory;->databaseManagerProvider:Ldagger/internal/Provider;

    invoke-interface {v1}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfast/dic/dict/database/FDDatabaseManager;

    iget-object p0, p0, Lfast/dic/dict/helpers/FDWordCategory_Factory;->localStorageProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/database/LocalStorage;

    invoke-static {v0, v1, p0}, Lfast/dic/dict/helpers/FDWordCategory_Factory;->newInstance(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Lfast/dic/dict/database/FDDatabaseManager;Lfast/dic/dict/database/LocalStorage;)Lfast/dic/dict/helpers/FDWordCategory;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/helpers/FDWordCategory_Factory;->get()Lfast/dic/dict/helpers/FDWordCategory;

    move-result-object p0

    return-object p0
.end method
