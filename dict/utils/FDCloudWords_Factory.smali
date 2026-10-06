.class public final Lfast/dic/dict/utils/FDCloudWords_Factory;
.super Ljava/lang/Object;
.source "FDCloudWords_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/utils/FDCloudWords;",
        ">;"
    }
.end annotation


# instance fields
.field private final historyProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
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
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/utils/FDCloudWords_Factory;->historyProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/utils/FDCloudWords_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/database/couchbase/FDHistory;",
            ">;)",
            "Lfast/dic/dict/utils/FDCloudWords_Factory;"
        }
    .end annotation

    .line 40
    new-instance v0, Lfast/dic/dict/utils/FDCloudWords_Factory;

    invoke-direct {v0, p0}, Lfast/dic/dict/utils/FDCloudWords_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)Lfast/dic/dict/utils/FDCloudWords;
    .locals 1

    .line 44
    new-instance v0, Lfast/dic/dict/utils/FDCloudWords;

    invoke-direct {v0, p0}, Lfast/dic/dict/utils/FDCloudWords;-><init>(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/utils/FDCloudWords;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/utils/FDCloudWords_Factory;->historyProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDHistory;

    invoke-static {p0}, Lfast/dic/dict/utils/FDCloudWords_Factory;->newInstance(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)Lfast/dic/dict/utils/FDCloudWords;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/utils/FDCloudWords_Factory;->get()Lfast/dic/dict/utils/FDCloudWords;

    move-result-object p0

    return-object p0
.end method
