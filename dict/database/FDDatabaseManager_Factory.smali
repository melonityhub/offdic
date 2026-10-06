.class public final Lfast/dic/dict/database/FDDatabaseManager_Factory;
.super Ljava/lang/Object;
.source "FDDatabaseManager_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/database/FDDatabaseManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final databaseHelperProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lfast/dic/dict/database/FDDatabaseManager_Factory;->databaseHelperProvider:Ldagger/internal/Provider;

    .line 36
    iput-object p2, p0, Lfast/dic/dict/database/FDDatabaseManager_Factory;->contextProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;Ldagger/internal/Provider;)Lfast/dic/dict/database/FDDatabaseManager_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDMainDatabaseHelper;",
            ">;",
            "Ldagger/internal/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lfast/dic/dict/database/FDDatabaseManager_Factory;"
        }
    .end annotation

    .line 46
    new-instance v0, Lfast/dic/dict/database/FDDatabaseManager_Factory;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/database/FDDatabaseManager_Factory;-><init>(Ldagger/internal/Provider;Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)Lfast/dic/dict/database/FDDatabaseManager;
    .locals 1

    .line 51
    new-instance v0, Lfast/dic/dict/database/FDDatabaseManager;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/database/FDDatabaseManager;-><init>(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/database/FDDatabaseManager;
    .locals 1

    .line 41
    iget-object v0, p0, Lfast/dic/dict/database/FDDatabaseManager_Factory;->databaseHelperProvider:Ldagger/internal/Provider;

    invoke-interface {v0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfast/dic/dict/helpers/FDMainDatabaseHelper;

    iget-object p0, p0, Lfast/dic/dict/database/FDDatabaseManager_Factory;->contextProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lfast/dic/dict/database/FDDatabaseManager_Factory;->newInstance(Lfast/dic/dict/helpers/FDMainDatabaseHelper;Landroid/content/Context;)Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lfast/dic/dict/database/FDDatabaseManager_Factory;->get()Lfast/dic/dict/database/FDDatabaseManager;

    move-result-object p0

    return-object p0
.end method
