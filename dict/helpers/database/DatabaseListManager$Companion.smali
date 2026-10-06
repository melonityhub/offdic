.class public final Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;
.super Ljava/lang/Object;
.source "DatabaseListManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/helpers/database/DatabaseListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u0007J\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lfast/dic/dict/helpers/database/DatabaseListManager;",
        "mDatabaseHelper",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "initializeInstance",
        "",
        "helper",
        "getInstance",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized getInstance()Lfast/dic/dict/helpers/database/DatabaseListManager;
    .locals 2

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-static {}, Lfast/dic/dict/helpers/database/DatabaseListManager;->access$getInstance$cp()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lfast/dic/dict/helpers/database/DatabaseListManager;->access$getInstance$cp()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 41
    :cond_0
    :try_start_1
    const-class v0, Lfast/dic/dict/helpers/database/DatabaseListManager;

    const-string v0, "DatabaseListManager is not initialized, call initializeInstance(..) method first."

    .line 40
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized initializeInstance(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-static {}, Lfast/dic/dict/helpers/database/DatabaseListManager;->access$getInstance$cp()Lfast/dic/dict/helpers/database/DatabaseListManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lfast/dic/dict/helpers/database/DatabaseListManager;

    invoke-direct {v0}, Lfast/dic/dict/helpers/database/DatabaseListManager;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/helpers/database/DatabaseListManager;->access$setInstance$cp(Lfast/dic/dict/helpers/database/DatabaseListManager;)V

    .line 34
    invoke-static {p1}, Lfast/dic/dict/helpers/database/DatabaseListManager;->access$setMDatabaseHelper$cp(Landroid/database/sqlite/SQLiteOpenHelper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
