.class public final Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;
.super Ljava/lang/Object;
.source "FDCouchbaseLiteManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u000e\u0010\u0008\u001a\u00020\tX\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;",
        "getInstance",
        "()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;",
        "DATABASE_FILE_NAME",
        "",
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

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;
    .locals 0

    .line 114
    invoke-static {}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;->access$getInstance$cp()Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;

    move-result-object p0

    return-object p0
.end method
