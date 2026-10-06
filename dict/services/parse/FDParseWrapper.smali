.class public final Lfast/dic/dict/services/parse/FDParseWrapper;
.super Ljava/lang/Object;
.source "FDParseWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDParseWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDParseWrapper.kt\nfast/dic/dict/services/parse/FDParseWrapper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,96:1\n1#2:97\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u000c\u0008\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\u0008\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0002\u0008\t\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000e\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rJR\u0010\n\u001a\u00020\u000b2\u0018\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u000f2\u001a\u0008\u0002\u0010\u0012\u001a\u0014\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u000f2\u0014\u0008\u0002\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\u000b0\u0015R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/services/parse/FDParseWrapper;",
        "",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "<init>",
        "(Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
        "fetchParseUser",
        "",
        "callback",
        "Lfast/dic/dict/interfaces/IFDParseWrapperCallback;",
        "onSuccess",
        "Lkotlin/Function2;",
        "Lcom/parse/ParseObject;",
        "Lfast/dic/dict/services/parse/FDPurchased;",
        "beforeGetUserSession",
        "Lfast/dic/dict/services/parse/FDParseUser;",
        "onFailure",
        "Lkotlin/Function1;",
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
.field private final context:Landroid/content/Context;

.field private final firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;


# direct methods
.method public static synthetic $r8$lambda$4HZzk1fEhMqEEOoAFw4_0yNFI14(Lcom/parse/ParseObject;Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 0

    invoke-static {p0, p1, p2}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$lambda$3$0(Lcom/parse/ParseObject;Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$o9SwIqZhOM1wwrGWDq6YwpdZgjM(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$lambda$3$1(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xPNuEpDtTH4jMq29BR-Gfu1zZPk(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser$lambda$0$1(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseUserPropertiesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/services/parse/FDParseWrapper;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lfast/dic/dict/services/parse/FDParseWrapper;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method

.method public static synthetic fetchParseUser$default(Lfast/dic/dict/services/parse/FDParseWrapper;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 57
    new-instance p2, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda4;

    invoke-direct {p2}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda4;-><init>()V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 58
    new-instance p3, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda5;

    invoke-direct {p3}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda5;-><init>()V

    .line 55
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/services/parse/FDParseWrapper;->fetchParseUser(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static final fetchParseUser$lambda$0(Lfast/dic/dict/interfaces/IFDParseWrapperCallback;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    if-nez p5, :cond_1

    if-eqz p4, :cond_0

    .line 35
    invoke-interface {p0, p4, p1}, Lfast/dic/dict/interfaces/IFDParseWrapperCallback;->onSuccess(Lcom/parse/ParseObject;Lfast/dic/dict/services/parse/FDPurchased;)V

    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-virtual {p5}, Lcom/parse/ParseException;->getCode()I

    move-result p0

    const/16 p4, 0xd1

    if-ne p0, p4, :cond_2

    .line 38
    new-instance p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    .line 49
    :cond_2
    invoke-virtual {p5}, Lcom/parse/ParseException;->printStackTrace()V

    .line 50
    sget-object p0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    invoke-virtual {p5}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final fetchParseUser$lambda$0$1(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    .line 39
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan1()V

    .line 40
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan2()V

    .line 41
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan3()V

    .line 43
    iget-object p0, p1, Lfast/dic/dict/services/parse/FDParseWrapper;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 45
    const-string p1, "invalid_session_token"

    .line 43
    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static final fetchParseUser$lambda$1(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 1

    const-string v0, "<unused var>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final fetchParseUser$lambda$2(Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 1

    const-string v0, "it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final fetchParseUser$lambda$3(Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseObject;Lcom/parse/ParseException;)V
    .locals 0

    if-nez p5, :cond_0

    .line 75
    sget-object p2, Lfast/dic/dict/utils/Dispatch;->INSTANCE:Lfast/dic/dict/utils/Dispatch;

    new-instance p3, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda0;

    invoke-direct {p3, p4, p0, p1}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/parse/ParseObject;Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;)V

    invoke-virtual {p2, p3}, Lfast/dic/dict/utils/Dispatch;->asyncOnMain(Lkotlin/jvm/functions/Function0;)V

    return-void

    .line 79
    :cond_0
    invoke-virtual {p5}, Lcom/parse/ParseException;->getCode()I

    move-result p0

    const/16 p4, 0xd1

    if-ne p0, p4, :cond_1

    .line 80
    new-instance p0, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda1;-><init>(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    .line 91
    :cond_1
    invoke-virtual {p5}, Lcom/parse/ParseException;->printStackTrace()V

    .line 92
    sget-object p0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {p0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    invoke-virtual {p5}, Lcom/parse/ParseException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static final fetchParseUser$lambda$3$0(Lcom/parse/ParseObject;Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;)Lkotlin/Unit;
    .locals 0

    if-eqz p0, :cond_0

    .line 76
    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method private static final fetchParseUser$lambda$3$1(Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;Lcom/parse/ParseException;)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan1()V

    .line 82
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan2()V

    .line 83
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDPurchased;->RemovePurchasedPlan3()V

    .line 85
    iget-object p0, p1, Lfast/dic/dict/services/parse/FDParseWrapper;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 87
    const-string p1, "invalid_session_token"

    .line 85
    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final fetchParseUser(Lfast/dic/dict/interfaces/IFDParseWrapperCallback;)V
    .locals 5

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 23
    :goto_0
    sget-object v1, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v3, p0, Lfast/dic/dict/services/parse/FDParseWrapper;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lfast/dic/dict/utils/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 24
    new-instance v3, Lfast/dic/dict/services/parse/FDPurchased;

    iget-object v4, p0, Lfast/dic/dict/services/parse/FDParseWrapper;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lfast/dic/dict/services/parse/FDPurchased;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    if-nez v1, :cond_2

    .line 27
    invoke-interface {p1, v2, v3}, Lfast/dic/dict/interfaces/IFDParseWrapperCallback;->onFailure(Lcom/parse/ParseException;Lfast/dic/dict/services/parse/FDPurchased;)V

    return-void

    .line 30
    :cond_2
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-interface {p1, v0, v3}, Lfast/dic/dict/interfaces/IFDParseWrapperCallback;->beforeGetUserSession(Lfast/dic/dict/services/parse/FDParseUser;Lfast/dic/dict/services/parse/FDPurchased;)V

    .line 33
    new-instance v2, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, v3, p0, v1}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda3;-><init>(Lfast/dic/dict/interfaces/IFDParseWrapperCallback;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lfast/dic/dict/services/parse/FDParseUser;->fetchInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method

.method public final fetchParseUser(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/parse/ParseObject;",
            "-",
            "Lfast/dic/dict/services/parse/FDPurchased;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/services/parse/FDParseUser;",
            "-",
            "Lfast/dic/dict/services/parse/FDPurchased;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lfast/dic/dict/services/parse/FDPurchased;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSuccess"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beforeGetUserSession"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFailure"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 62
    :goto_0
    sget-object v1, Lfast/dic/dict/utils/Util;->INSTANCE:Lfast/dic/dict/utils/Util;

    iget-object v3, p0, Lfast/dic/dict/services/parse/FDParseWrapper;->context:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lfast/dic/dict/utils/Util;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 63
    new-instance v3, Lfast/dic/dict/services/parse/FDPurchased;

    iget-object v4, p0, Lfast/dic/dict/services/parse/FDParseWrapper;->context:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lfast/dic/dict/services/parse/FDPurchased;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 66
    invoke-interface {p3, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 70
    :cond_2
    invoke-interface {p2, v0, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getEmail()Ljava/lang/String;

    move-result-object p2

    .line 73
    new-instance p3, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;

    invoke-direct {p3, p1, v3, p0, p2}, Lfast/dic/dict/services/parse/FDParseWrapper$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function2;Lfast/dic/dict/services/parse/FDPurchased;Lfast/dic/dict/services/parse/FDParseWrapper;Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lfast/dic/dict/services/parse/FDParseUser;->fetchInBackground(Lcom/parse/GetCallback;)V

    return-void
.end method
