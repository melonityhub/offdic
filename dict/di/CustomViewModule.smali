.class public final Lfast/dic/dict/di/CustomViewModule;
.super Ljava/lang/Object;
.source "CustomViewModule.kt"


# annotations
.annotation runtime Ldagger/Module;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\u0008\u0008b\u0002\u0008\t\u00ca\u0001\u0002\u0008\u000b\u00ca\u0001\u0010\u0008\u000c\u0012\u000c\u0008\r\u0012\u0008\u0008\u000cJ\u0004\u0008\t0\u000e\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/di/CustomViewModule;",
        "",
        "<init>",
        "()V",
        "provideFDHistory",
        "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
        "databaseManager",
        "Lfast/dic/dict/database/FDDatabaseManager;",
        "Ldagger/hilt/android/scopes/ViewScoped;",
        "Ldagger/Provides;",
        "app",
        "Ldagger/Module;",
        "Ldagger/hilt/InstallIn;",
        "value",
        "Ldagger/hilt/android/components/ViewComponent;"
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
.field public static final INSTANCE:Lfast/dic/dict/di/CustomViewModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/di/CustomViewModule;

    invoke-direct {v0}, Lfast/dic/dict/di/CustomViewModule;-><init>()V

    sput-object v0, Lfast/dic/dict/di/CustomViewModule;->INSTANCE:Lfast/dic/dict/di/CustomViewModule;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final provideFDHistory(Lfast/dic/dict/database/FDDatabaseManager;)Lfast/dic/dict/helpers/database/couchbase/FDHistory;
    .locals 0
    .annotation runtime Ldagger/Provides;
    .end annotation

    const-string p0, "databaseManager"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-direct {p0, p1}, Lfast/dic/dict/helpers/database/couchbase/FDHistory;-><init>(Lfast/dic/dict/database/FDDatabaseManager;)V

    return-object p0
.end method
