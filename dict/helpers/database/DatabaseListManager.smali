.class public final Lfast/dic/dict/helpers/database/DatabaseListManager;
.super Ljava/lang/Object;
.source "DatabaseListManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000b2\u00020\u0001:\u0001\u000bB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007J\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/DatabaseListManager;",
        "",
        "<init>",
        "()V",
        "mOpenCounter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "mDatabase",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "openDatabase",
        "closeDatabase",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

.field private static instance:Lfast/dic/dict/helpers/database/DatabaseListManager;

.field private static mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private final mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/helpers/database/DatabaseListManager;->Companion:Lfast/dic/dict/helpers/database/DatabaseListManager$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lfast/dic/dict/helpers/database/DatabaseListManager;
    .locals 1

    .line 7
    sget-object v0, Lfast/dic/dict/helpers/database/DatabaseListManager;->instance:Lfast/dic/dict/helpers/database/DatabaseListManager;

    return-object v0
.end method

.method public static final synthetic access$setInstance$cp(Lfast/dic/dict/helpers/database/DatabaseListManager;)V
    .locals 0

    .line 7
    sput-object p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->instance:Lfast/dic/dict/helpers/database/DatabaseListManager;

    return-void
.end method

.method public static final synthetic access$setMDatabaseHelper$cp(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 7
    sput-object p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method


# virtual methods
.method public final declared-synchronized closeDatabase()V
    .locals 1

    monitor-enter p0

    .line 21
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 23
    iget-object v0, p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mOpenCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 14
    sget-object v0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mDatabaseHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 16
    :cond_0
    iget-object v0, p0, Lfast/dic/dict/helpers/database/DatabaseListManager;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
