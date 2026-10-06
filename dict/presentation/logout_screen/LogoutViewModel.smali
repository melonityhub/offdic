.class public final Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "LogoutViewModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u001d\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u001a\u0002\u0008\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u000e\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\nJ\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0011J\u0018\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u0018\u0010\u0016\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00ca\u0001\u0002\u0008\u0018\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "localStorage",
        "Lfast/dic/dict/database/LocalStorage;",
        "firebaseUserPropertiesManager",
        "Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;",
        "<init>",
        "(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V",
        "Ljavax/inject/Inject;",
        "getLastSyncDate",
        "",
        "hasBeenEverSynced",
        "",
        "hasSubscriptionPlan",
        "getSubscriptionExpireDate",
        "getUserId",
        "logout",
        "Landroidx/lifecycle/MutableLiveData;",
        "convertDateToString",
        "isCurrentLanguagePersian",
        "date",
        "Ljava/util/Date;",
        "convertOnlyDateToString",
        "app",
        "Ldagger/hilt/android/lifecycle/HiltViewModel;"
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
.field private final firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

.field private final localStorage:Lfast/dic/dict/database/LocalStorage;


# direct methods
.method public constructor <init>(Lfast/dic/dict/database/LocalStorage;Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "localStorage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "firebaseUserPropertiesManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 19
    iput-object p1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    .line 20
    iput-object p2, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    return-void
.end method

.method private final convertDateToString(ZLjava/util/Date;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 63
    new-instance p0, Lfast/dic/dict/utils/PersianDate;

    invoke-direct {p0, p2}, Lfast/dic/dict/utils/PersianDate;-><init>(Ljava/util/Date;)V

    .line 64
    new-instance p1, Lfast/dic/dict/utils/PersianDateFormat;

    const-string p2, "Y/m/d H:m:s"

    invoke-direct {p1, p2}, Lfast/dic/dict/utils/PersianDateFormat;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/PersianDateFormat;->format(Lfast/dic/dict/utils/PersianDate;)Ljava/lang/String;

    move-result-object p0

    .line 67
    sget-object p1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_0
    const-string/jumbo p0, "yyyy/MM/dd HH:mm:ss"

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, v0}, Lfast/dic/dict/utils/DateExtKt;->toString$default(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final convertOnlyDateToString(ZLjava/util/Date;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    .line 74
    new-instance p0, Lfast/dic/dict/utils/PersianDate;

    invoke-direct {p0, p2}, Lfast/dic/dict/utils/PersianDate;-><init>(Ljava/util/Date;)V

    .line 75
    new-instance p1, Lfast/dic/dict/utils/PersianDateFormat;

    const-string p2, "Y/m/d"

    invoke-direct {p1, p2}, Lfast/dic/dict/utils/PersianDateFormat;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/PersianDateFormat;->format(Lfast/dic/dict/utils/PersianDate;)Ljava/lang/String;

    move-result-object p0

    .line 78
    sget-object p1, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p1, p0}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->replaceNumbersToFarsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_0
    const-string/jumbo p0, "yyyy/MM/dd"

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, v0}, Lfast/dic/dict/utils/DateExtKt;->toString$default(Ljava/util/Date;Ljava/lang/String;Ljava/util/Locale;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static final logout$lambda$0(Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;Lcom/parse/ParseException;)V
    .locals 1

    .line 50
    iget-object p3, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->firebaseUserPropertiesManager:Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;

    .line 52
    const-string v0, "logout"

    .line 50
    invoke-virtual {p3, p1, v0}, Lfast/dic/dict/analytics/FirebaseUserPropertiesManager;->logUserLogout(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lfast/dic/dict/database/LocalStorage;->setOfflineTranslator(Z)V

    const/4 p0, 0x1

    .line 56
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getLastSyncDate()Ljava/lang/String;
    .locals 2

    .line 24
    iget-object v0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->getDefaultsLastSyncDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 25
    :cond_0
    iget-object v1, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v1}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v1

    .line 27
    invoke-direct {p0, v1, v0}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->convertDateToString(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getSubscriptionExpireDate()Ljava/lang/String;
    .locals 3

    .line 35
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    instance-of v1, v0, Lfast/dic/dict/services/parse/FDParseUser;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan3ExpireDate()Ljava/util/Date;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lfast/dic/dict/services/parse/FDParseUser;->getHasPlan2ExpireDate()Ljava/util/Date;

    move-result-object v2

    :cond_2
    if-nez v2, :cond_3

    const-string p0, ""

    return-object p0

    :cond_3
    move-object v1, v2

    .line 37
    :cond_4
    iget-object v0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {v0}, Lfast/dic/dict/database/LocalStorage;->currentLanguageIsPersian()Z

    move-result v0

    .line 39
    invoke-direct {p0, v0, v1}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->convertOnlyDateToString(ZLjava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 0

    .line 42
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getEmail()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public final hasBeenEverSynced()Z
    .locals 0

    .line 30
    iget-object p0, p0, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;->localStorage:Lfast/dic/dict/database/LocalStorage;

    invoke-virtual {p0}, Lfast/dic/dict/database/LocalStorage;->getDefaultsLastSyncDate()Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hasSubscriptionPlan()Z
    .locals 2

    .line 32
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object p0

    instance-of v0, p0, Lfast/dic/dict/services/parse/FDParseUser;

    if-eqz v0, :cond_0

    check-cast p0, Lfast/dic/dict/services/parse/FDParseUser;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lfast/dic/dict/services/parse/FDParseUser;->hasPlan2Or3()Z

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public final logout()Landroidx/lifecycle/MutableLiveData;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 48
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 49
    :goto_0
    new-instance v2, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1, v0}, Lfast/dic/dict/presentation/logout_screen/LogoutViewModel$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/logout_screen/LogoutViewModel;Ljava/lang/String;Landroidx/lifecycle/MutableLiveData;)V

    invoke-static {v2}, Lcom/parse/ParseUser;->logOutInBackground(Lcom/parse/LogOutCallback;)V

    return-object v0
.end method
