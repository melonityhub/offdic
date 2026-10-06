.class public final enum Lfast/dic/dict/analytics/AnalyticsEvent;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/analytics/AnalyticsEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0017\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/analytics/AnalyticsEvent;",
        "",
        "eventName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getEventName",
        "()Ljava/lang/String;",
        "AD_LOADED",
        "AD_FAILED_TO_LOAD",
        "AD_IMPRESSION",
        "AD_SHOW_FAILED",
        "AD_CLICK",
        "AD_CLOSED",
        "AD_EXPIRED",
        "AD_REWARD_EARNED",
        "REWARDED_AD_COMPLETED",
        "USER_LOGIN",
        "USER_REGISTER",
        "USER_REGISTER_FAILED",
        "USER_LOGOUT",
        "PASSWORD_CHANGE",
        "EMAIL_VERIFICATION_SENT",
        "PURCHASE_SUCCESS",
        "PURCHASE_FAILED",
        "DIRECT_PAYMENT",
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
.field private static final synthetic $ENTRIES:Lkotlin/enums/EnumEntries;

.field private static final synthetic $VALUES:[Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_CLICK:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_CLOSED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_EXPIRED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_FAILED_TO_LOAD:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_IMPRESSION:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_LOADED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_REWARD_EARNED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum AD_SHOW_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum DIRECT_PAYMENT:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum EMAIL_VERIFICATION_SENT:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum PASSWORD_CHANGE:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum PURCHASE_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum PURCHASE_SUCCESS:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum REWARDED_AD_COMPLETED:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum USER_LOGIN:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum USER_LOGOUT:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum USER_REGISTER:Lfast/dic/dict/analytics/AnalyticsEvent;

.field public static final enum USER_REGISTER_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;


# instance fields
.field private final eventName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/analytics/AnalyticsEvent;
    .locals 19

    sget-object v1, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_LOADED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v2, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_FAILED_TO_LOAD:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v3, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_IMPRESSION:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v4, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_SHOW_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v5, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_CLICK:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v6, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_CLOSED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v7, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_EXPIRED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v8, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_REWARD_EARNED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v9, Lfast/dic/dict/analytics/AnalyticsEvent;->REWARDED_AD_COMPLETED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v10, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_LOGIN:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v11, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_REGISTER:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v12, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_REGISTER_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v13, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_LOGOUT:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v14, Lfast/dic/dict/analytics/AnalyticsEvent;->PASSWORD_CHANGE:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v15, Lfast/dic/dict/analytics/AnalyticsEvent;->EMAIL_VERIFICATION_SENT:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v16, Lfast/dic/dict/analytics/AnalyticsEvent;->PURCHASE_SUCCESS:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v17, Lfast/dic/dict/analytics/AnalyticsEvent;->PURCHASE_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    sget-object v18, Lfast/dic/dict/analytics/AnalyticsEvent;->DIRECT_PAYMENT:Lfast/dic/dict/analytics/AnalyticsEvent;

    filled-new-array/range {v1 .. v18}, [Lfast/dic/dict/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 8
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x0

    const-string v2, "ad_loaded"

    const-string v3, "AD_LOADED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_LOADED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 9
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x1

    const-string v2, "ad_failed_to_load"

    const-string v3, "AD_FAILED_TO_LOAD"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_FAILED_TO_LOAD:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 10
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x2

    const-string v2, "ad_impression"

    const-string v3, "AD_IMPRESSION"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_IMPRESSION:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 11
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x3

    const-string v2, "ad_show_failed"

    const-string v3, "AD_SHOW_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_SHOW_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 12
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x4

    const-string v2, "ad_click"

    const-string v3, "AD_CLICK"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_CLICK:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 13
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x5

    const-string v2, "ad_closed"

    const-string v3, "AD_CLOSED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_CLOSED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 14
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x6

    const-string v2, "ad_expired"

    const-string v3, "AD_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_EXPIRED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 15
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/4 v1, 0x7

    const-string v2, "ad_reward_earned"

    const-string v3, "AD_REWARD_EARNED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->AD_REWARD_EARNED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 16
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0x8

    const-string v2, "rewarded_ad_completed"

    const-string v3, "REWARDED_AD_COMPLETED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->REWARDED_AD_COMPLETED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 19
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0x9

    const-string/jumbo v2, "user_login"

    const-string v3, "USER_LOGIN"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_LOGIN:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 20
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0xa

    const-string/jumbo v2, "user_register"

    const-string v3, "USER_REGISTER"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_REGISTER:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 21
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0xb

    const-string/jumbo v2, "user_register_failed"

    const-string v3, "USER_REGISTER_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_REGISTER_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 22
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0xc

    const-string/jumbo v2, "user_logout"

    const-string v3, "USER_LOGOUT"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->USER_LOGOUT:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 23
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0xd

    const-string v2, "password_change"

    const-string v3, "PASSWORD_CHANGE"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->PASSWORD_CHANGE:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 24
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0xe

    const-string v2, "email_verification_sent"

    const-string v3, "EMAIL_VERIFICATION_SENT"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->EMAIL_VERIFICATION_SENT:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 27
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0xf

    const-string v2, "purchase_success"

    const-string v3, "PURCHASE_SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->PURCHASE_SUCCESS:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 28
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0x10

    const-string v2, "purchase_failed"

    const-string v3, "PURCHASE_FAILED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->PURCHASE_FAILED:Lfast/dic/dict/analytics/AnalyticsEvent;

    .line 29
    new-instance v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    const/16 v1, 0x11

    const-string v2, "direct_payment"

    const-string v3, "DIRECT_PAYMENT"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->DIRECT_PAYMENT:Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-static {}, Lfast/dic/dict/analytics/AnalyticsEvent;->$values()[Lfast/dic/dict/analytics/AnalyticsEvent;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->$VALUES:[Lfast/dic/dict/analytics/AnalyticsEvent;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfast/dic/dict/analytics/AnalyticsEvent;->eventName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/analytics/AnalyticsEvent;
    .locals 1

    const-class v0, Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/AnalyticsEvent;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/analytics/AnalyticsEvent;
    .locals 1

    sget-object v0, Lfast/dic/dict/analytics/AnalyticsEvent;->$VALUES:[Lfast/dic/dict/analytics/AnalyticsEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/analytics/AnalyticsEvent;

    return-object v0
.end method


# virtual methods
.method public final getEventName()Ljava/lang/String;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/analytics/AnalyticsEvent;->eventName:Ljava/lang/String;

    return-object p0
.end method
