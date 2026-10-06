.class public final Lfast/dic/dict/database/LocalStorage;
.super Ljava/lang/Object;
.source "LocalStorage.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLocalStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LocalStorage.kt\nfast/dic/dict/database/LocalStorage\n+ 2 SharedPreferences.kt\nandroidx/core/content/SharedPreferencesKt\n*L\n1#1,407:1\n44#2,12:408\n44#2,12:420\n44#2,12:432\n44#2,12:444\n44#2,12:456\n44#2,12:468\n44#2,12:480\n*S KotlinDebug\n*F\n+ 1 LocalStorage.kt\nfast/dic/dict/database/LocalStorage\n*L\n61#1:408,12\n70#1:420,12\n72#1:432,12\n82#1:444,12\n84#1:456,12\n95#1:468,12\n97#1:480,12\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u00080\n\u0002\u0010#\n\u0000\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u000c\u0008\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\u0008\u0004\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010-\u001a\u00020.J\u0006\u0010/\u001a\u000200J\u000e\u00101\u001a\u00020.2\u0006\u00102\u001a\u000200J\u0006\u00103\u001a\u00020$J\u000e\u00104\u001a\u00020.2\u0006\u00105\u001a\u00020$J\u0008\u00106\u001a\u0004\u0018\u000107J\u0008\u00108\u001a\u0004\u0018\u00010\u0013J\u000e\u00109\u001a\u00020.2\u0006\u0010:\u001a\u00020;J\u000e\u0010<\u001a\u00020.2\u0006\u0010=\u001a\u00020>J\u000e\u0010?\u001a\u00020.2\u0006\u0010@\u001a\u00020$J\u0006\u0010A\u001a\u00020$J\u000e\u0010B\u001a\u00020.2\u0006\u0010@\u001a\u00020$J\u0006\u0010C\u001a\u00020$J\u0008\u0010D\u001a\u0004\u0018\u00010>J\u0006\u0010E\u001a\u00020\u000bJ\u0006\u0010F\u001a\u00020\u000bJ\u000e\u0010G\u001a\u00020.2\u0006\u0010H\u001a\u00020\u000bJ\u0006\u0010I\u001a\u00020\u000bJ\u000e\u0010J\u001a\u00020.2\u0006\u0010K\u001a\u00020\u000bJ\u0006\u0010L\u001a\u00020MJ\u000e\u0010N\u001a\u00020M2\u0006\u0010O\u001a\u000207J\u0006\u0010P\u001a\u00020\u000bJ\u000e\u0010Q\u001a\u00020.2\u0006\u0010R\u001a\u000207J\u0008\u0010S\u001a\u0004\u0018\u000107J\u0006\u0010T\u001a\u00020.J\u000e\u0010U\u001a\u00020.2\u0006\u0010R\u001a\u000207J\u0008\u0010V\u001a\u0004\u0018\u000107J\u0006\u0010W\u001a\u00020.J\u000e\u0010X\u001a\u00020.2\u0006\u0010R\u001a\u000207J\u000e\u0010Y\u001a\u00020.2\u0006\u0010R\u001a\u000207J\u0008\u0010Z\u001a\u0004\u0018\u000107J\u0008\u0010[\u001a\u0004\u0018\u000107J\u0006\u0010\\\u001a\u00020.J\u0006\u0010]\u001a\u00020.J\u000e\u0010^\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010_\u001a\u00020$J\u000e\u0010`\u001a\u00020.2\u0006\u0010a\u001a\u00020\u000bJ\u0006\u0010b\u001a\u00020\u000bJ\u000e\u0010c\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010d\u001a\u00020$J\u000e\u0010e\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010f\u001a\u00020\u000bJ\u000e\u0010g\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010h\u001a\u00020\u000bJ\u000e\u0010i\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010j\u001a\u00020\u000bJ\u000e\u0010k\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020\u000bJ\u0006\u0010l\u001a\u00020\u000bJ\u000e\u0010m\u001a\u00020.2\u0006\u00102\u001a\u000200J\u0006\u0010n\u001a\u000200J\u000e\u0010o\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010p\u001a\u00020$J\u000e\u0010q\u001a\u00020.2\u0006\u0010\u0012\u001a\u00020$J\u0006\u0010r\u001a\u00020$J\u0006\u0010s\u001a\u00020\u000bJ\u0006\u0010t\u001a\u00020.J\u0006\u0010u\u001a\u00020\u000bJ\u0006\u0010v\u001a\u00020.J\u0006\u0010w\u001a\u00020\u000bJ\u0006\u0010x\u001a\u00020.J\u0006\u0010y\u001a\u00020\u000bJ\u0006\u0010z\u001a\u00020.J\u0010\u0010{\u001a\u00020\u000b2\u0008\u0010|\u001a\u0004\u0018\u000107J\u0010\u0010}\u001a\n\u0012\u0004\u0012\u000207\u0018\u00010~H\u0002R\u001b\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u0092\u0002\u0002\u0008\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u000f\u001a\u0004\u0008\n\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00138F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R&\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0012\u001a\u00020\u00198F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR&\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u000b8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008 \u0010!\"\u0004\u0008\"\u0010#R&\u0010%\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020$8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\'\"\u0004\u0008(\u0010)R&\u0010*\u001a\u00020$2\u0006\u0010\u0012\u001a\u00020$8F@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010\'\"\u0004\u0008,\u0010)\u00a8\u0006\u007f"
    }
    d2 = {
        "Lfast/dic/dict/database/LocalStorage;",
        "",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "<init>",
        "(Landroid/content/Context;)V",
        "Ljavax/inject/Inject;",
        "getContext",
        "()Landroid/content/Context;",
        "isFirstLaunch",
        "",
        "()Ljava/lang/Boolean;",
        "setFirstLaunch",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "preferences",
        "Landroid/content/SharedPreferences;",
        "value",
        "Ljava/util/Date;",
        "defaultsLastSyncDate",
        "getDefaultsLastSyncDate",
        "()Ljava/util/Date;",
        "setDefaultsLastSyncDate",
        "(Ljava/util/Date;)V",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "selectedSort",
        "getSelectedSort",
        "()Lfast/dic/dict/domain/entity/WordSortEnum;",
        "setSelectedSort",
        "(Lfast/dic/dict/domain/entity/WordSortEnum;)V",
        "enableSync",
        "getEnableSync",
        "()Z",
        "setEnableSync",
        "(Z)V",
        "",
        "firstTimeFullscreenAds",
        "getFirstTimeFullscreenAds",
        "()I",
        "setFirstTimeFullscreenAds",
        "(I)V",
        "adsSearchCount",
        "getAdsSearchCount",
        "setAdsSearchCount",
        "incrementSearchCount",
        "",
        "getLastInterstitialTs",
        "",
        "setLastInterstitialTs",
        "ts",
        "getLastInterstitialCount",
        "setLastInterstitialCount",
        "count",
        "getCbSessionId",
        "",
        "getCbExpires",
        "setCbSession",
        "syncSessionModel",
        "Lfast/dic/dict/data/sync/model/SyncSessionModel;",
        "storeWod",
        "wodApiModel",
        "Lfast/dic/dict/models/api/WodApiModel;",
        "setImageTranslatorLimitation",
        "number",
        "getImageTranslatorLimitation",
        "setSentencePronunciationLimitation",
        "getSentencePronunciationLimitation",
        "getWod",
        "isNewInstalled",
        "seenOnBoarding",
        "setSeenOnBoarding",
        "seen",
        "offlineTranslatorIsEnabled",
        "setOfflineTranslator",
        "offline",
        "getCurrentLanguage",
        "Ljava/util/Locale;",
        "saveCurrentLanguage",
        "language",
        "currentLanguageIsPersian",
        "storeIAP",
        "iap",
        "getIAP",
        "removeIAP",
        "storeIAPPlan1",
        "getIAPPlan1",
        "removeIAPPlan1",
        "storeIAPPlan2",
        "storeIAPPlan3",
        "getIAPPlan2",
        "getIAPPlan3",
        "removeIAPPlan2",
        "removeIAPPlan3",
        "storeShakeSensitivity",
        "getShakeSensitivity",
        "storeEnableShake",
        "state",
        "getEnableShake",
        "storeOfflineSpeechSpeed",
        "getOfflineSpeechSpeed",
        "storeFloatingWindow",
        "getFloatingWindow",
        "storeOfflineMode",
        "getOfflineMode",
        "storeExitMessage",
        "getExitMessage",
        "storeMakeKeyboardOpen",
        "getMakeKeyboardOpen",
        "setShowAdvertisingAfter",
        "getShowAdvertisingAfter",
        "storeFloatingHeadXPrefs",
        "getFloatingHeadXPrefs",
        "storeFloatingHeadYPrefs",
        "getFloatingHeadYPrefs",
        "validRewardedAdsForImageTranslator",
        "resetRewardedAdsForImageTranslator",
        "validRewardedAdsForAiTranslator",
        "resetRewardedAdsForAiTranslator",
        "validRewardedAdsForSentencePronunciation",
        "resetRewardedAdsForSentencePronunciation",
        "validRewardedAdsForTranslator",
        "resetRewardedAdsForTranslator",
        "isDuplicateMessageId",
        "messageId",
        "getListOfMessageIds",
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


# instance fields
.field private adsSearchCount:I

.field private final context:Landroid/content/Context;
    .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
    .end annotation
.end field

.field private defaultsLastSyncDate:Ljava/util/Date;

.field private enableSync:Z

.field private firstTimeFullscreenAds:I

.field private isFirstLaunch:Ljava/lang/Boolean;

.field private final preferences:Landroid/content/SharedPreferences;

.field private selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/database/LocalStorage;->context:Landroid/content/Context;

    .line 36
    const-string v0, "fastdic"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 46
    sget-object p1, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    iput-object p1, p0, Lfast/dic/dict/database/LocalStorage;->selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

    const/4 p1, 0x5

    .line 65
    iput p1, p0, Lfast/dic/dict/database/LocalStorage;->firstTimeFullscreenAds:I

    return-void
.end method

.method private final getListOfMessageIds()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "message_ids"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 402
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v0, Ljava/util/Set;

    .line 403
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final currentLanguageIsPersian()Z
    .locals 2

    .line 183
    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getCurrentLanguage()Ljava/util/Locale;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getLanguage(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fa"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getAdsSearchCount()I
    .locals 2

    .line 87
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "AD_SEARCH_COUNT"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getCbExpires()Ljava/util/Date;
    .locals 5

    .line 104
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "FD_CB_EXPIRES_TS"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p0, v3, v1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 108
    :cond_0
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object p0
.end method

.method public final getCbSessionId()Ljava/lang/String;
    .locals 2

    .line 100
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "FD_CB_SESSION_ID"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getCurrentLanguage()Ljava/util/Locale;
    .locals 10

    .line 168
    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->isNewInstalled()Z

    move-result v0

    .line 169
    const-string v1, "TRANSLATION_ARRAY"

    if-eqz v0, :cond_0

    sget-object v0, Lfast/dic/dict/BuildConfig;->TRANSLATION_ARRAY:[Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->first([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lfast/dic/dict/BuildConfig;->TRANSLATION_ARRAY:[Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/collections/ArraysKt;->last([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Ljava/lang/String;

    .line 170
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "fd_language"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/util/Locale;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, p0

    check-cast v1, Ljava/lang/CharSequence;

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "_"

    aput-object v8, v2, v7

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    new-array v2, p0, [Ljava/lang/String;

    aput-object v8, v2, v7

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, v9, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getDefaultsLastSyncDate()Ljava/util/Date;
    .locals 2

    .line 44
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "LAST_SYNC_DATE"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lfast/dic/dict/utils/StringExtKt;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public final getEnableShake()Z
    .locals 2

    .line 249
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "enableShake"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getEnableSync()Z
    .locals 2

    .line 63
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "IS_SYNC_ENABLE"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getExitMessage()Z
    .locals 2

    .line 281
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "exitmessage"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getFirstTimeFullscreenAds()I
    .locals 2

    .line 75
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "FD_FADS"

    const/4 v1, 0x5

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getFloatingHeadXPrefs()I
    .locals 2

    .line 308
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "floatingHeadXPrefs"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getFloatingHeadYPrefs()I
    .locals 2

    .line 316
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "floatingHeadYPrefs"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getFloatingWindow()Z
    .locals 2

    .line 265
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "switchFloatingHead"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getIAP()Ljava/lang/String;
    .locals 2

    .line 193
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "isP"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIAPPlan1()Ljava/lang/String;
    .locals 2

    .line 205
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "isP1"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIAPPlan2()Ljava/lang/String;
    .locals 2

    .line 221
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "isP2"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getIAPPlan3()Ljava/lang/String;
    .locals 2

    .line 225
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "isP3"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getImageTranslatorLimitation()I
    .locals 2

    .line 128
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "FD_IM_LMT"

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLastInterstitialCount()I
    .locals 2

    .line 96
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "AD_LAST_INTERSTITIAL_COUNT"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getLastInterstitialTs()J
    .locals 3

    .line 94
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "AD_LAST_INTERSTITIAL_TS"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMakeKeyboardOpen()Z
    .locals 2

    .line 289
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "fd_open_keyboard"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getOfflineMode()Z
    .locals 2

    .line 273
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "offinespeech"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final getOfflineSpeechSpeed()I
    .locals 2

    .line 257
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "seekBarOfflineSpeedProgress"

    const/4 v1, 0x2

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getSelectedSort()Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 3

    .line 53
    invoke-static {}, Lfast/dic/dict/domain/entity/WordSortEnum;->getEntries()Lkotlin/enums/EnumEntries;

    move-result-object v0

    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v1, "FD_SORT_STATE"

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-interface {v0, p0}, Lkotlin/enums/EnumEntries;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0
.end method

.method public final getSentencePronunciationLimitation()I
    .locals 2

    .line 135
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "FD_SP_LMT"

    const/16 v1, 0xa

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getShakeSensitivity()I
    .locals 2

    .line 241
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "seekBarProgress"

    const/16 v1, 0x1e

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getShowAdvertisingAfter()J
    .locals 3

    .line 299
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 300
    const-string v0, "AD_EXP_TS"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getWod()Lfast/dic/dict/models/api/WodApiModel;
    .locals 2

    .line 139
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "wod"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lfast/dic/dict/models/api/WodApiModel;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/api/WodApiModel;

    return-object p0
.end method

.method public final incrementSearchCount()V
    .locals 1

    .line 91
    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getAdsSearchCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lfast/dic/dict/database/LocalStorage;->setAdsSearchCount(I)V

    return-void
.end method

.method public final isDuplicateMessageId(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 391
    :cond_0
    invoke-direct {p0}, Lfast/dic/dict/database/LocalStorage;->getListOfMessageIds()Ljava/util/Set;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    check-cast v1, Ljava/util/Set;

    .line 392
    :cond_1
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 394
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "message_ids"

    invoke-interface {p0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    xor-int/lit8 p0, v1, 0x1

    return p0
.end method

.method public final isFirstLaunch()Ljava/lang/Boolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->isFirstLaunch:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isNewInstalled()Z
    .locals 2

    .line 144
    iget-object v0, p0, Lfast/dic/dict/database/LocalStorage;->isFirstLaunch:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "wod"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/database/LocalStorage;->isFirstLaunch:Ljava/lang/Boolean;

    .line 148
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final offlineTranslatorIsEnabled()Z
    .locals 2

    .line 160
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "fd_offline_translator"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final removeIAP()V
    .locals 1

    .line 197
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final removeIAPPlan1()V
    .locals 1

    .line 209
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP1"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final removeIAPPlan2()V
    .locals 1

    .line 229
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP2"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final removeIAPPlan3()V
    .locals 1

    .line 233
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP3"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetRewardedAdsForAiTranslator()V
    .locals 3

    .line 348
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 350
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "FD_RA_OT"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetRewardedAdsForImageTranslator()V
    .locals 3

    .line 331
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 333
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "FD_RA_IT"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetRewardedAdsForSentencePronunciation()V
    .locals 3

    .line 365
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 367
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "FD_RA_SP"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final resetRewardedAdsForTranslator()V
    .locals 3

    .line 382
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 384
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v2, "FD_RA_T"

    invoke-interface {p0, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final saveCurrentLanguage(Ljava/lang/String;)Ljava/util/Locale;
    .locals 10

    const-string v0, "language"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toLowerCase(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "en"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "en_US"

    goto :goto_0

    :cond_0
    const-string p1, "fa_IR"

    .line 177
    :goto_0
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fd_language"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 179
    new-instance p0, Ljava/util/Locale;

    move-object v4, p1

    check-cast v4, Ljava/lang/CharSequence;

    const/4 p1, 0x1

    new-array v5, p1, [Ljava/lang/String;

    const-string v0, "_"

    aput-object v0, v5, v3

    const/4 v8, 0x6

    const/4 v9, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-array v5, p1, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final seenOnBoarding()Z
    .locals 2

    .line 152
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    const-string v0, "fd_seen_2_on_boarding"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setAdsSearchCount(I)V
    .locals 2

    .line 79
    iput p1, p0, Lfast/dic/dict/database/LocalStorage;->adsSearchCount:I

    .line 84
    iget-object v0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 81
    const-string v1, "AD_SEARCH_COUNT"

    if-gtz p1, :cond_0

    .line 448
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 449
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 82
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 453
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 460
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 461
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 84
    iget p0, p0, Lfast/dic/dict/database/LocalStorage;->adsSearchCount:I

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 465
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setCbSession(Lfast/dic/dict/data/sync/model/SyncSessionModel;)V
    .locals 2

    const-string v0, "syncSessionModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 113
    const-string v0, "FD_CB_SESSION_ID"

    invoke-virtual {p1}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->getSession_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 114
    invoke-virtual {p1}, Lfast/dic/dict/data/sync/model/SyncSessionModel;->getExpires()Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    const-string p1, "FD_CB_EXPIRES_TS"

    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setDefaultsLastSyncDate(Ljava/util/Date;)V
    .locals 2

    .line 40
    iput-object p1, p0, Lfast/dic/dict/database/LocalStorage;->defaultsLastSyncDate:Ljava/util/Date;

    .line 42
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "getDefault(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "yy\'-\'MM\'-\'dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {p1, v1, v0}, Lfast/dic/dict/utils/DateExtKt;->toString(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "LAST_SYNC_DATE"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setEnableSync(Z)V
    .locals 1

    .line 59
    iput-boolean p1, p0, Lfast/dic/dict/database/LocalStorage;->enableSync:Z

    .line 61
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 412
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 413
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 61
    const-string v0, "IS_SYNC_ENABLE"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 417
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setFirstLaunch(Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lfast/dic/dict/database/LocalStorage;->isFirstLaunch:Ljava/lang/Boolean;

    return-void
.end method

.method public final setFirstTimeFullscreenAds(I)V
    .locals 2

    .line 67
    iput p1, p0, Lfast/dic/dict/database/LocalStorage;->firstTimeFullscreenAds:I

    .line 72
    iget-object v0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 69
    const-string v1, "FD_FADS"

    if-gtz p1, :cond_0

    .line 424
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 425
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 70
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 429
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    .line 436
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 437
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 72
    iget p0, p0, Lfast/dic/dict/database/LocalStorage;->firstTimeFullscreenAds:I

    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setImageTranslatorLimitation(I)V
    .locals 1

    .line 124
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "FD_IM_LMT"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastInterstitialCount(I)V
    .locals 1

    .line 97
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 484
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 485
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 97
    const-string v0, "AD_LAST_INTERSTITIAL_COUNT"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 489
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setLastInterstitialTs(J)V
    .locals 1

    .line 95
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    .line 472
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 473
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    const-string v0, "AD_LAST_INTERSTITIAL_TS"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 477
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setOfflineTranslator(Z)V
    .locals 1

    .line 164
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fd_offline_translator"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSeenOnBoarding(Z)V
    .locals 1

    .line 156
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fd_seen_2_on_boarding"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSelectedSort(Lfast/dic/dict/domain/entity/WordSortEnum;)V
    .locals 1

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lfast/dic/dict/database/LocalStorage;->selectedSort:Lfast/dic/dict/domain/entity/WordSortEnum;

    .line 50
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "FD_SORT_STATE"

    invoke-virtual {p1}, Lfast/dic/dict/domain/entity/WordSortEnum;->getValue()I

    move-result p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setSentencePronunciationLimitation(I)V
    .locals 1

    .line 131
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "FD_SP_LMT"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final setShowAdvertisingAfter(J)V
    .locals 1

    .line 293
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 294
    const-string v0, "AD_EXP_TS"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 295
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeEnableShake(Z)V
    .locals 1

    .line 245
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "enableShake"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeExitMessage(Z)V
    .locals 1

    .line 277
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "exitmessage"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeFloatingHeadXPrefs(I)V
    .locals 1

    .line 304
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "floatingHeadXPrefs"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeFloatingHeadYPrefs(I)V
    .locals 1

    .line 312
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "floatingHeadYPrefs"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeFloatingWindow(Z)V
    .locals 1

    .line 261
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "switchFloatingHead"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeIAP(Ljava/lang/String;)V
    .locals 1

    const-string v0, "iap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeIAPPlan1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "iap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP1"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeIAPPlan2(Ljava/lang/String;)V
    .locals 1

    const-string v0, "iap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP2"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeIAPPlan3(Ljava/lang/String;)V
    .locals 1

    const-string v0, "iap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "isP3"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeMakeKeyboardOpen(Z)V
    .locals 1

    .line 285
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "fd_open_keyboard"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeOfflineMode(Z)V
    .locals 1

    .line 269
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "offinespeech"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeOfflineSpeechSpeed(I)V
    .locals 1

    .line 253
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "seekBarOfflineSpeedProgress"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeShakeSensitivity(I)V
    .locals 1

    .line 237
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "seekBarProgress"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final storeWod(Lfast/dic/dict/models/api/WodApiModel;)V
    .locals 1

    const-string/jumbo v0, "wodApiModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 120
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string/jumbo v0, "wod"

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public final validRewardedAdsForAiTranslator()Z
    .locals 6

    .line 337
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 338
    iget-object v2, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lfast/dic/dict/utils/DateExtKt;->yesterday(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "FD_RA_OT"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 339
    invoke-static {v2, v3}, Lfast/dic/dict/utils/DateExtKt;->isTomorrowOrLater(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 343
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    return p0
.end method

.method public final validRewardedAdsForImageTranslator()Z
    .locals 6

    .line 320
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 321
    iget-object v2, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lfast/dic/dict/utils/DateExtKt;->yesterday(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "FD_RA_IT"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 322
    invoke-static {v2, v3}, Lfast/dic/dict/utils/DateExtKt;->isTomorrowOrLater(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 326
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    return p0
.end method

.method public final validRewardedAdsForSentencePronunciation()Z
    .locals 6

    .line 354
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 355
    iget-object v2, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lfast/dic/dict/utils/DateExtKt;->yesterday(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "FD_RA_SP"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 356
    invoke-static {v2, v3}, Lfast/dic/dict/utils/DateExtKt;->isTomorrowOrLater(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 360
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    return p0
.end method

.method public final validRewardedAdsForTranslator()Z
    .locals 6

    .line 371
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lfast/dic/dict/utils/DateExtKt;->nextDayAtMidnight(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 372
    iget-object v2, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v3}, Lfast/dic/dict/utils/DateExtKt;->yesterday(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "FD_RA_T"

    invoke-interface {v2, v5, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 373
    invoke-static {v2, v3}, Lfast/dic/dict/utils/DateExtKt;->isTomorrowOrLater(J)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    .line 377
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/database/LocalStorage;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v5, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 p0, 0x0

    return p0
.end method
