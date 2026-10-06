.class public final Lfast/dic/dict/activities/SplashActivity;
.super Lfast/dic/dict/activities/Hilt_SplashActivity;
.source "SplashActivity.kt"


# annotations
.annotation runtime Ldagger/hilt/android/AndroidEntryPoint;
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSplashActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SplashActivity.kt\nfast/dic/dict/activities/SplashActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u001c\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0012\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0014J\u0010\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u0005H\u0014J(\u0010\u0012\u001a\u00020\u000b2\u0008\u0010\u0013\u001a\u0004\u0018\u00010\r2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0002R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00ca\u0001\u0010\u0008\u0019\u0012\u000c\u0008\u001a\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u001b\u00ca\u0001\u0002\u0008\u001c\u00a8\u0006\u0018"
    }
    d2 = {
        "Lfast/dic/dict/activities/SplashActivity;",
        "Lfast/dic/dict/bases/BaseActivity;",
        "<init>",
        "()V",
        "currentIntent",
        "Landroid/content/Intent;",
        "getCurrentIntent",
        "()Landroid/content/Intent;",
        "setCurrentIntent",
        "(Landroid/content/Intent;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "persistentState",
        "Landroid/os/PersistableBundle;",
        "onNewIntent",
        "intent",
        "startMainActivity",
        "extra",
        "data",
        "Landroid/net/Uri;",
        "action",
        "",
        "app",
        "Landroid/annotation/SuppressLint;",
        "value",
        "CustomSplashScreen",
        "Ldagger/hilt/android/AndroidEntryPoint;"
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
.field private currentIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lfast/dic/dict/activities/Hilt_SplashActivity;-><init>()V

    return-void
.end method

.method private final startMainActivity(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    const-class v2, Lfast/dic/dict/activities/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 58
    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 60
    invoke-virtual {p0, v0}, Lfast/dic/dict/activities/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 62
    invoke-virtual {p0}, Lfast/dic/dict/activities/SplashActivity;->finish()V

    return-void
.end method

.method static synthetic startMainActivity$default(Lfast/dic/dict/activities/SplashActivity;Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 55
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/activities/SplashActivity;->startMainActivity(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCurrentIntent()Landroid/content/Intent;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 30
    const-string v0, "SplashActivity"

    move-object v1, p0

    check-cast v1, Landroidx/activity/ComponentActivity;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v3, v3, v2, v3}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 31
    invoke-super {p0, p1}, Lfast/dic/dict/activities/Hilt_SplashActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lfast/dic/dict/activities/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    .line 35
    :try_start_0
    sget p1, Lfast/dic/dict/R$layout;->activity_splash:I

    invoke-virtual {p0, p1}, Lfast/dic/dict/activities/SplashActivity;->setContentView(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    const-string v2, "Failed to load content view"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 37
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object v1

    const-string v2, "Failed to load content view due to missing resource"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/google/firebase/Firebase;->INSTANCE:Lcom/google/firebase/Firebase;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/FirebaseCrashlyticsKt;->getCrashlytics(Lcom/google/firebase/Firebase;)Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lfast/dic/dict/activities/SplashActivity;->checkAndStartActivityByIntent()V

    .line 46
    iget-object p1, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    goto :goto_1

    :cond_0
    move-object p1, v3

    :goto_1
    iget-object v0, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    :cond_1
    move-object v0, v3

    :goto_2
    iget-object v1, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-direct {p0, p1, v0, v3}, Lfast/dic/dict/activities/SplashActivity;->startMainActivity(Landroid/os/Bundle;Landroid/net/Uri;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 3

    .line 24
    move-object v0, p0

    check-cast v0, Landroidx/activity/ComponentActivity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {v0, v1, v1, v2, v1}, Landroidx/activity/EdgeToEdge;->enable$default(Landroidx/activity/ComponentActivity;Landroidx/activity/SystemBarStyle;Landroidx/activity/SystemBarStyle;ILjava/lang/Object;)V

    .line 25
    invoke-super {p0, p1, p2}, Lfast/dic/dict/activities/Hilt_SplashActivity;->onCreate(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    .line 27
    invoke-static {}, Lfast/dic/dict/utils/LoggerKt;->getLogger()Lfast/dic/dict/utils/Logger;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------------> SplashActivity created at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-super {p0, p1}, Lfast/dic/dict/activities/Hilt_SplashActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 52
    iput-object p1, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    return-void
.end method

.method public final setCurrentIntent(Landroid/content/Intent;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lfast/dic/dict/activities/SplashActivity;->currentIntent:Landroid/content/Intent;

    return-void
.end method
