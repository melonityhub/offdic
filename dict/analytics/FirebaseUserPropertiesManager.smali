.class public final Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;
.super Ljava/lang/Object;
.source "FirebaseUserPropertiesManager.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFirebaseUserPropertiesManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FirebaseUserPropertiesManager.kt\nfast/dic/dict/analytics/FirebaseUserPropertiesManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,454:1\n1#2:455\n*E\n"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0010\t\n\u0002\u0010\u0007\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B#\u0008\u0007\u0012\u000c\u0008\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\u0008\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u001a\u0002\u0008\t\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001eH\u0002J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J\u000e\u0010\u001f\u001a\u00020\u00162\u0006\u0010 \u001a\u00020\u001aJ\u0006\u0010!\u001a\u00020\u0016J\u0008\u0010\"\u001a\u00020\u001aH\u0002J\u0016\u0010#\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010%\u001a\u00020\u001eJ\u000e\u0010&\u001a\u00020\u00162\u0006\u0010\'\u001a\u00020\u001eJ\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001eJ\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020\u001aJ\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020)J\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020*J\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020+J\u0016\u0010(\u001a\u00020\u00162\u0006\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u0019\u001a\u00020,J\u001e\u0010(\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001eJ\u001e\u0010(\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010-\u001a\u00020\u001d2\u0006\u0010\u0019\u001a\u00020\u001aJ$\u0010.\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u00102\u001a\u00020\u001eJ\u001a\u00103\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u001aJ\u001a\u00105\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u001aJ\u001a\u00106\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u00104\u001a\u0004\u0018\u00010\u001aJ\u001a\u00107\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\n\u0008\u0002\u00101\u001a\u0004\u0018\u00010\u001aJ\u0018\u00108\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\u0008\u0008\u0002\u00109\u001a\u00020\u001eJ\u000e\u0010:\u001a\u00020\u00162\u0006\u0010/\u001a\u000200J*\u0010;\u001a\u00020\u00162\u0006\u0010/\u001a\u0002002\u0006\u0010<\u001a\u00020,2\u0006\u0010=\u001a\u00020\u001a2\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\u001aJ\u001a\u0010?\u001a\u00020\u00162\u0006\u0010@\u001a\u00020\u001e2\n\u0008\u0002\u0010>\u001a\u0004\u0018\u00010\u001aJB\u0010A\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001a2\u0008\u0010E\u001a\u0004\u0018\u00010\u001a2\u0006\u0010F\u001a\u00020\u001a2\u0008\u0010G\u001a\u0004\u0018\u00010\u001a2\u0006\u0010H\u001a\u00020\u001aJF\u0010I\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001a2\u0008\u0010C\u001a\u0004\u0018\u00010\u001a2\u0008\u0010D\u001a\u0004\u0018\u00010\u001a2\u0008\u0010E\u001a\u0004\u0018\u00010\u001a2\u0008\u0010F\u001a\u0004\u0018\u00010\u001a2\u0006\u0010J\u001a\u00020\u001a2\u0006\u0010H\u001a\u00020\u001aJ0\u0010K\u001a\u00020\u00162\u0006\u0010B\u001a\u00020\u001a2\u0006\u0010C\u001a\u00020\u001a2\u0006\u0010D\u001a\u00020\u001a2\u0008\u0010E\u001a\u0004\u0018\u00010\u001a2\u0006\u0010H\u001a\u00020\u001aJ$\u0010L\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010N\u001a\u00020\u001eJ$\u0010O\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010N\u001a\u00020\u001eJ\"\u0010P\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\u0006\u0010J\u001a\u00020\u001a2\n\u0008\u0002\u0010M\u001a\u0004\u0018\u00010\u001aJ\u001e\u0010Q\u001a\u00020\u00162\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u001a2\n\u0008\u0002\u0010J\u001a\u0004\u0018\u00010\u001aJ\u0018\u0010R\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u001a2\u0008\u0008\u0002\u0010N\u001a\u00020\u001eJ$\u0010S\u001a\u00020\u00162\u0006\u0010T\u001a\u00020\u001a2\n\u0008\u0002\u0010$\u001a\u0004\u0018\u00010\u001a2\u0008\u0008\u0002\u0010N\u001a\u00020\u001eR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\n\u001a\u00020\u000b8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u000f\u001a\u0004\u0008\u000c\u0010\rR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u000f\u001a\u0004\u0008\u0012\u0010\u0013\u00ca\u0001\u0002\u0008V\u00a8\u0006U"
    }
    d2 = {
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "<init>",
        "(Landroid/content/Context;Lfast/dic/dict/database/LocalStorage;)V",
        "Ljavax/inject/Inject;",
        "firebaseAnalytics",
        "Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "getFirebaseAnalytics",
        "()Lcom/google/firebase/analytics/FirebaseAnalytics;",
        "firebaseAnalytics$delegate",
        "Lkotlin/Lazy;",
        "crashlytics",
        "Lcom/google/firebase/crashlytics/FirebaseCrashlytics;",
        "getCrashlytics",
        "()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;",
        "crashlytics$delegate",
        "setUserProperty",
        "",
        "property",
        "Lfast/dic/dict/analytics/UserProperty;",
        "value",
        "",
        "setCrashlyticsKey",
        "key",
        "Lfast/dic/dict/analytics/CrashlyticsKey;",
        "",
        "setUserId",
        "userId",
        "setStandardUserProperties",
        "getCurrentPlan",
        "setAuthenticatedUserProperties",
        "username",
        "emailVerified",
        "setUserDisabled",
        "isDisabled",
        "addCustomProperty",
        "",
        "",
        "",
        "",
        "crashlyticsKey",
        "logAdLoaded",
        "adType",
        "Lfast/dic/dict/analytics/AdType;",
        "adUnitId",
        "isPrecache",
        "logAdFailedToLoad",
        "errorMessage",
        "logAdShown",
        "logAdShowFailed",
        "logAdClicked",
        "logAdClosed",
        "wasCompleted",
        "logAdExpired",
        "logAdRewardEarned",
        "rewardAmount",
        "rewardCurrency",
        "featureName",
        "logRewardedAdCompleted",
        "finished",
        "logPurchaseSuccess",
        "planType",
        "price",
        "currency",
        "duration",
        "paymentMethod",
        "productId",
        "buildFlavor",
        "logPurchaseFailed",
        "reason",
        "logDirectPayment",
        "logUserLogin",
        "method",
        "success",
        "logUserRegister",
        "logUserRegisterFailed",
        "logUserLogout",
        "logPasswordChange",
        "logEmailVerificationSent",
        "email",
        "app",
        "Ljavax/inject/Singleton;"
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

.field private final crashlytics$delegate:Lkotlin/Lazy;

.field private final firebaseAnalytics$delegate:Lkotlin/Lazy;

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lfast/dic/dict/database/LocalStorage;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "localStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->context:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 20
    new-instance p1, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->firebaseAnalytics$delegate:Lkotlin/Lazy;

    .line 24
    new-instance p1, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->crashlytics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method static final crashlytics_delegate$lambda$0()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 1

    .line 25
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    return-object v0
.end method

.method static final firebaseAnalytics_delegate$lambda$0(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 0

    .line 21
    iget-object p0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    return-object p0
.end method

.method private final getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;
    .locals 1

    .line 24
    iget-object p0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->crashlytics$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    return-object p0
.end method

.method private final getCurrentPlan()Ljava/lang/String;
    .locals 2

    .line 108
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 111
    :goto_0
    const-string v0, "FREE"

    if-nez p0, :cond_1

    return-object v0

    .line 112
    :cond_1
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "PRO_AI"

    return-object p0

    .line 113
    :cond_2
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan3InView()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p0, "AI"

    return-object p0

    .line 114
    :cond_3
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2InView()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string p0, "PRO"

    return-object p0

    .line 115
    :cond_4
    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan1InView()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "REMOVE_ADS"

    return-object p0

    :cond_5
    return-object v0
.end method

.method private final getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;
    .locals 1

    .line 20
    iget-object p0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->firebaseAnalytics$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "getValue(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/google/firebase/analytics/FirebaseAnalytics;

    return-object p0
.end method

.method public static synthetic logAdClicked$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 246
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClicked(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logAdClosed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 258
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdClosed(Lfast/dic/dict/analytics/AdType;Z)V

    return-void
.end method

.method public static synthetic logAdFailedToLoad$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 210
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdFailedToLoad(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logAdLoaded$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 197
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdLoaded(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic logAdRewardEarned$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_0

    const/4 p5, 0x0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 281
    invoke-virtual/range {v0 .. v5}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdRewardEarned(Lfast/dic/dict/analytics/AdType;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logAdShowFailed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 234
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShowFailed(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logAdShown$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Lfast/dic/dict/analytics/AdType;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 222
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logAdShown(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logEmailVerificationSent$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 445
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logEmailVerificationSent(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic logPasswordChange$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 434
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logPasswordChange(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic logRewardedAdCompleted$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;ZLjava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 300
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logRewardedAdCompleted(ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic logUserLogin$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 387
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogin(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic logUserLogout$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p4, p3, 0x1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    move-object p2, v0

    .line 423
    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic logUserRegister$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 399
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserRegister(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic logUserRegisterFailed$default(Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 411
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserRegisterFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p1}, Lfast/dic/dict/analytics/CrashlyticsKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p1}, Lfast/dic/dict/analytics/CrashlyticsKey;->getKeyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Z)V

    return-void
.end method

.method private final setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    invoke-virtual {p1}, Lfast/dic/dict/analytics/UserProperty;->getPropertyName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final addCustomProperty(Lfast/dic/dict/analytics/UserProperty;Lfast/dic/dict/analytics/CrashlyticsKey;Ljava/lang/String;)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashlyticsKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, p1, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Ljava/lang/String;)V

    return-void
.end method

.method public final addCustomProperty(Lfast/dic/dict/analytics/UserProperty;Lfast/dic/dict/analytics/CrashlyticsKey;Z)V
    .locals 1

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "crashlyticsKey"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p2, p3}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    return-void
.end method

.method public final addCustomProperty(Ljava/lang/String;D)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;D)V

    return-void
.end method

.method public final addCustomProperty(Ljava/lang/String;F)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;F)V

    return-void
.end method

.method public final addCustomProperty(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;I)V

    return-void
.end method

.method public final addCustomProperty(Ljava/lang/String;J)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;J)V

    return-void
.end method

.method public final addCustomProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final addCustomProperty(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setCustomKey(Ljava/lang/String;Z)V

    return-void
.end method

.method public final logAdClicked(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 248
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 250
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_UNIT_ID:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_CLICK:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdClosed(Lfast/dic/dict/analytics/AdType;Z)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 260
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->WAS_COMPLETED:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_CLOSED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdExpired(Lfast/dic/dict/analytics/AdType;)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_EXPIRED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdFailedToLoad(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 212
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 214
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->ERROR_MESSAGE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_FAILED_TO_LOAD:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdLoaded(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->IS_PRECACHE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 202
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_UNIT_ID:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_LOADED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdRewardEarned(Lfast/dic/dict/analytics/AdType;DLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rewardCurrency"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->VALUE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 291
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->CURRENCY:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 292
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->FEATURE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_REWARD_EARNED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdShowFailed(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 236
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 238
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->ERROR_MESSAGE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_SHOW_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logAdShown(Lfast/dic/dict/analytics/AdType;Ljava/lang/String;)V
    .locals 3

    const-string v0, "adType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 224
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_FORMAT:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 226
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->AD_UNIT_ID:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_IMPRESSION:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logDirectPayment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "planType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildFlavor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->PLAN_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PRICE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->CURRENCY:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 375
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->DURATION:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_0
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PAYMENT_METHOD:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Shetab"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->BUILD_FLAVOR:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->DIRECT_PAYMENT:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logEmailVerificationSent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 447
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->EMAIL:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 448
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->USERNAME:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_0
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->SUCCESS:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 451
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->EMAIL_VERIFICATION_SENT:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logPasswordChange(Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 436
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->USERNAME:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->SUCCESS:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 439
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->PASSWORD_CHANGE:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "planType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildFlavor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 350
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->PLAN_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 351
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PRICE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 352
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->CURRENCY:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 353
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->DURATION:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p5, :cond_3

    .line 354
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PAYMENT_METHOD:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :cond_3
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->REASON:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->BUILD_FLAVOR:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->PURCHASE_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "planType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "price"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paymentMethod"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "buildFlavor"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 326
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->PLAN_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PRICE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->CURRENCY:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 329
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->DURATION:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PAYMENT_METHOD:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_1

    .line 331
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->PRODUCT_ID:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    :cond_1
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->BUILD_FLAVOR:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->PURCHASE_SUCCESS:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logRewardedAdCompleted(ZLjava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 301
    sget-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->COMPLETED:Lfast/dic/dict/analytics/AdCompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->CANCELED:Lfast/dic/dict/analytics/AdCompletionStatus;

    .line 302
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 303
    sget-object v2, Lfast/dic/dict/analytics/AnalyticsParam;->AD_TYPE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v2}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    invoke-virtual {v3}, Lfast/dic/dict/analytics/AdType;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    sget-object v2, Lfast/dic/dict/analytics/AnalyticsParam;->FINISHED:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v2}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 305
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->STATUS:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lfast/dic/dict/analytics/AdCompletionStatus;->getStatusName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    .line 306
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->FEATURE:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->REWARDED_AD_COMPLETED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logUserLogin(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 388
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 389
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->USERNAME:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->SUCCESS:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 391
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->METHOD:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_LOGIN:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logUserLogout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 424
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    .line 425
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->USERNAME:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 426
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->REASON:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_LOGOUT:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logUserRegister(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 401
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->USERNAME:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->SUCCESS:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p2, :cond_0

    .line 403
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->METHOD:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_REGISTER:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final logUserRegisterFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 412
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    sget-object v1, Lfast/dic/dict/analytics/AnalyticsParam;->USERNAME:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {v1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->REASON:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 415
    sget-object p1, Lfast/dic/dict/analytics/AnalyticsParam;->METHOD:Lfast/dic/dict/analytics/AnalyticsParam;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsParam;->getParamName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object p0

    sget-object p1, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_REGISTER_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {p1}, Lfast/dic/dict/analytics/AnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final setAuthenticatedUserProperties(Ljava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserId(Ljava/lang/String;)V

    .line 126
    sget-object p1, Lfast/dic/dict/analytics/UserProperty;->EMAIL_VERIFIED:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 127
    sget-object p1, Lfast/dic/dict/analytics/CrashlyticsKey;->EMAIL_VERIFIED:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 129
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription()Z

    move-result p1

    .line 130
    sget-object p2, Lfast/dic/dict/analytics/UserProperty;->HAS_SUBSCRIPTION:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 131
    sget-object p2, Lfast/dic/dict/analytics/CrashlyticsKey;->HAS_SUBSCRIPTION:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, p2, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    return-void
.end method

.method public final setStandardUserProperties()V
    .locals 3

    .line 58
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasFreePlan()Z

    move-result v0

    .line 59
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->IS_FREE:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->IS_FREE:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 62
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lfast/dic/dict/utils/ContextExtKt;->isDarkThemeOn(Landroid/content/Context;)Z

    move-result v0

    .line 63
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->IS_DARK_MODE:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 64
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->IS_DARK_MODE:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 66
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v0

    .line 67
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->APP_LANGUAGE_IS_PERSIAN:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->APP_LANGUAGE_IS_PERSIAN:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 70
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getEnableSync()Z

    move-result v0

    .line 71
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->IS_ENABLED_SYNC:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->IS_ENABLED_SYNC:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 74
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getMakeKeyboardOpen()Z

    move-result v0

    .line 75
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->IS_KEYBOARD_READY:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 76
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->IS_KEYBOARD_READY:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 78
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getOfflineMode()Z

    move-result v0

    .line 79
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->IS_OFFLINE_PRONUNCIATION:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 80
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->IS_OFFLINE_PRONUNCIATION:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 82
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->offlineTranslatorIsEnabled()Z

    move-result v0

    .line 83
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->IS_OFFLINE_TRANSLATOR:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 84
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->IS_OFFLINE_TRANSLATOR:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 88
    sget-object v0, Lfast/dic/dict/analytics/UserProperty;->BUILD_FLAVOR:Lfast/dic/dict/analytics/UserProperty;

    const-string v1, "googleflavor"

    invoke-direct {p0, v0, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lfast/dic/dict/analytics/CrashlyticsKey;->BUILD_FLAVOR:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v0, v1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getFloatingWindow()Z

    move-result v0

    .line 93
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->FLOATING_WINDOW:Lfast/dic/dict/analytics/UserProperty;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 94
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->FLOATING_WINDOW:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    .line 97
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCurrentPlan()Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lfast/dic/dict/analytics/UserProperty;->CURRENT_PLAN:Lfast/dic/dict/analytics/UserProperty;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setUserProperty(Lfast/dic/dict/analytics/UserProperty;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lfast/dic/dict/analytics/CrashlyticsKey;->CURRENT_PLAN:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Ljava/lang/String;)V

    return-void
.end method

.method public final setUserDisabled(Z)V
    .locals 1

    .line 138
    sget-object v0, Lfast/dic/dict/analytics/CrashlyticsKey;->DISABLED:Lfast/dic/dict/analytics/CrashlyticsKey;

    invoke-direct {p0, v0, p1}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->setCrashlyticsKey(Lfast/dic/dict/analytics/CrashlyticsKey;Z)V

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getFirebaseAnalytics()Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/analytics/FirebaseAnalytics;->setUserId(Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->getCrashlytics()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->setUserId(Ljava/lang/String;)V

    return-void
.end method
