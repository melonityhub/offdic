.class public final Lfast/dic/dict/data/sync/repository/FDSyncSession;
.super Ljava/lang/Object;
.source "FDSyncSession.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0015\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008J+\u0010\t\u001a\u00020\n2#\u0010\u000b\u001a\u001f\u0012\u0013\u0012\u00110\r\u00a2\u0006\u000c\u0008\u000e\u0012\u0008\u0008\u000f\u0012\u0004\u0008\u0008(\u0010\u0012\u0004\u0012\u00020\n\u0018\u00010\u000cR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/data/sync/repository/FDSyncSession;",
        "",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "getCurrentUser",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "getSession",
        "",
        "completion",
        "Lkotlin/Function1;",
        "Lfast/dic/dict/data/sync/model/SyncSessionModel;",
        "Lkotlin/ParameterName;",
        "name",
        "result",
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


# instance fields
.field private final localStorage:Lfast/dic/dict/database/LocalStorage;


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession;->localStorage:Lfast/dic/dict/database/LocalStorage;

    return-void
.end method

.method static final getSession$lambda$0(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/data/sync/repository/FDSyncSession;Ljava/lang/Object;Lcom/parse/ParseException;)V
    .locals 8

    if-eqz p3, :cond_0

    if-eqz p0, :cond_1

    .line 44
    new-instance v0, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    invoke-virtual {p3}, Lcom/parse/ParseException;->getCode()I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v6}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 49
    check-cast p2, Ljava/util/Map;

    .line 50
    const-string p3, "session_id"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-string v0, "null cannot be cast to non-null type kotlin.String"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    .line 51
    const-string p3, "expires"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lfast/dic/dict/utils/StringExtKt;->currentUTCTimeZoneDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 53
    new-instance v1, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    iget-object p1, p1, Lfast/dic/dict/data/sync/repository/FDSyncSession;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p1, v1}, Lfast/dic/dict/database/LocalStorage;->setCbSession(Lfast/dic/dict/data/sync/model/SyncSessionModel;)V

    if-eqz p0, :cond_1

    .line 56
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public final getCurrentUser()Lfast/dic/dict/services/parse/FDParseUser;
    .locals 1

    .line 17
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSession(Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/data/sync/model/SyncSessionModel;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lfast/dic/dict/data/sync/repository/FDSyncSession;->getCurrentUser()Lfast/dic/dict/services/parse/FDParseUser;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    iget-object v1, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v1}, Lfast/dic/dict/database/LocalStorage;->getCbSessionId()Ljava/lang/String;

    move-result-object v3

    .line 27
    iget-object v1, p0, Lfast/dic/dict/data/sync/repository/FDSyncSession;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v1}, Lfast/dic/dict/database/LocalStorage;->getCbExpires()Ljava/util/Date;

    move-result-object v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 30
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_5

    .line 31
    new-instance v2, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    const/16 v7, 0xc

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v1, 0x2

    .line 37
    new-array v1, v1, [Lkotlin/Pair;

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-nez v2, :cond_2

    move-object v2, v3

    :cond_2
    const-string v4, "sessionToken"

    invoke-static {v4, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 38
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    const-string v0, "email"

    invoke-static {v0, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    .line 36
    invoke-static {v1}, Lkotlin/collections/MapsKt;->hashMapOf([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Map;

    .line 42
    new-instance v1, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p0}, Lfast/dic/dict/data/sync/repository/FDSyncSession$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/data/sync/repository/FDSyncSession;)V

    .line 41
    const-string p0, "getSyncSession"

    invoke-static {p0, v0, v1}, Lcom/parse/ParseCloud;->callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Lcom/parse/FunctionCallback;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    .line 22
    new-instance v2, Lfast/dic/dict/data/sync/model/SyncSessionModel;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x190

    invoke-direct/range {v2 .. v8}, Lfast/dic/dict/data/sync/model/SyncSessionModel;-><init>(Ljava/lang/String;Ljava/util/Date;ZIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method
