.class public final Lfast/dic/dict/services/analytics/FirebaseSegmentUser;
.super Ljava/lang/Object;
.source "FirebaseSegmentUser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\u0008\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007J*\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007b\u0010\u0008\u000e\u0012\u000c\u0008\u000f\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0010J\"\u0010\u0011\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u000bH\u0003b\u0010\u0008\u000e\u0012\u000c\u0008\u000f\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u0010J\u001a\u0010\u0012\u001a\u00020\u00052\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a8\u0006\u0015"
    }
    d2 = {
        "Lfast/dic/dict/services/analytics/FirebaseSegmentUser;",
        "",
        "<init>",
        "()V",
        "addAttribute",
        "",
        "attribute",
        "",
        "removeAttribute",
        "trackScreen",
        "controller",
        "Landroidx/navigation/NavController;",
        "context",
        "Landroid/content/Context;",
        "Landroid/annotation/SuppressLint;",
        "value",
        "RestrictedApi",
        "getFragmentLabel",
        "setUserAttributes",
        "currentUser",
        "Lfast/dic/dict/services/parse/FDParseUser;",
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
.field public static final INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    invoke-direct {v0}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;-><init>()V

    sput-object v0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->INSTANCE:Lfast/dic/dict/services/analytics/FirebaseSegmentUser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final addAttribute$lambda$0(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, " topic."

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Subscribed to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to subscribe to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 28
    invoke-virtual {v0, p0, p1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private final getFragmentLabel(Landroidx/navigation/NavController;)Ljava/lang/String;
    .locals 8

    .line 84
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object p0

    const-string p1, ""

    if-nez p0, :cond_0

    return-object p1

    .line 87
    :cond_0
    instance-of v0, p0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 89
    :cond_1
    instance-of v0, p0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;

    invoke-virtual {v0}, Landroidx/navigation/fragment/DialogFragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p0}, Landroidx/navigation/NavDestination;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 94
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 96
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const-string v0, "."

    const/4 v7, 0x0

    aput-object v0, v2, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_6

    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "/"

    aput-object p0, v2, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_6

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_5

    goto :goto_1

    :cond_5
    move-object p1, p0

    .line 97
    :cond_6
    :goto_1
    invoke-static {p1}, Lfast/dic/dict/utils/StringExtKt;->capitalized(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final removeAttribute$lambda$0(Ljava/lang/String;Lcom/google/android/gms/tasks/Task;)V
    .locals 4

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    const-string v1, " topic."

    if-eqz v0, :cond_0

    .line 42
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unsubscribed from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fail to unsubscribe from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 47
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 45
    invoke-virtual {v0, p0, p1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final addAttribute(Ljava/lang/String;)V
    .locals 1

    const-string p0, "attribute"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    .line 22
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->subscribeToTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 23
    new-instance v0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final removeAttribute(Ljava/lang/String;)V
    .locals 1

    const-string p0, "attribute"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/google/firebase/messaging/FirebaseMessaging;->getInstance()Lcom/google/firebase/messaging/FirebaseMessaging;

    move-result-object p0

    .line 39
    invoke-virtual {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessaging;->unsubscribeFromTopic(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    .line 40
    new-instance v0, Lfast/dic/dict/services/analytics/FirebaseSegmentUser$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final setUserAttributes(Lfast/dic/dict/services/parse/FDParseUser;Landroid/content/Context;)V
    .locals 1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    .line 104
    :cond_1
    invoke-static {p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    .line 105
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->getObjectId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result p2

    const-string v0, "PLAN"

    if-eqz p2, :cond_2

    .line 108
    const-string p1, "REMOVE_AD"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 110
    const-string p1, "PRO_PLAN"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p1}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 112
    const-string p1, "AI_PLAN"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 114
    :cond_4
    const-string p1, "FREE"

    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :goto_1
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isBazaar()Z

    move-result p1

    const-string p2, "SOURCE"

    if-eqz p1, :cond_5

    .line 118
    const-string p1, "CafeBazaar"

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_5
    invoke-static {}, Lfast/dic/dict/utils/BuildConfigExtKt;->isPlayStore()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 120
    const-string p1, "PlayStore"

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 122
    :cond_6
    const-string p1, "OTHER"

    invoke-virtual {p0, p2, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final trackScreen(Landroidx/navigation/NavController;Landroid/content/Context;)V
    .locals 6

    const-string v0, "screen_view"

    const-string v1, "Screen view: "

    const-string v2, "controller"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "context"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroidx/navigation/NavController;->getCurrentDestination()Landroidx/navigation/NavDestination;

    move-result-object v3

    instance-of v4, v3, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Landroidx/navigation/fragment/FragmentNavigator$Destination;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/navigation/fragment/FragmentNavigator$Destination;->getClassName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    if-eqz v5, :cond_2

    .line 60
    const-string v3, "screen_class"

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lfast/dic/dict/services/analytics/FirebaseSegmentUser;->getFragmentLabel(Landroidx/navigation/NavController;)Ljava/lang/String;

    move-result-object p0

    .line 66
    const-string p1, "screen_name"

    .line 65
    invoke-virtual {v2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 76
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method
