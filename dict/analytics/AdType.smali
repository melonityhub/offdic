.class public final enum Lfast/dic/dict/analytics/AdType;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/analytics/AdType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lfast/dic/dict/analytics/AdType;",
        "",
        "typeName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getTypeName",
        "()Ljava/lang/String;",
        "BANNER",
        "INTERSTITIAL",
        "REWARDED_VIDEO",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/analytics/AdType;

.field public static final enum BANNER:Lfast/dic/dict/analytics/AdType;

.field public static final enum INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

.field public static final enum REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;


# instance fields
.field private final typeName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/analytics/AdType;
    .locals 3

    sget-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    sget-object v1, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    sget-object v2, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    filled-new-array {v0, v1, v2}, [Lfast/dic/dict/analytics/AdType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 71
    new-instance v0, Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x0

    const-string v2, "banner"

    const-string v3, "BANNER"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AdType;->BANNER:Lfast/dic/dict/analytics/AdType;

    .line 72
    new-instance v0, Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x1

    const-string v2, "interstitial"

    const-string v3, "INTERSTITIAL"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AdType;->INTERSTITIAL:Lfast/dic/dict/analytics/AdType;

    .line 73
    new-instance v0, Lfast/dic/dict/analytics/AdType;

    const/4 v1, 0x2

    const-string v2, "rewarded_video"

    const-string v3, "REWARDED_VIDEO"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AdType;->REWARDED_VIDEO:Lfast/dic/dict/analytics/AdType;

    invoke-static {}, Lfast/dic/dict/analytics/AdType;->$values()[Lfast/dic/dict/analytics/AdType;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/analytics/AdType;->$VALUES:[Lfast/dic/dict/analytics/AdType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/analytics/AdType;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfast/dic/dict/analytics/AdType;->typeName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/analytics/AdType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/analytics/AdType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/analytics/AdType;
    .locals 1

    const-class v0, Lfast/dic/dict/analytics/AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/AdType;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/analytics/AdType;
    .locals 1

    sget-object v0, Lfast/dic/dict/analytics/AdType;->$VALUES:[Lfast/dic/dict/analytics/AdType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/analytics/AdType;

    return-object v0
.end method


# virtual methods
.method public final getTypeName()Ljava/lang/String;
    .locals 0

    .line 70
    iget-object p0, p0, Lfast/dic/dict/analytics/AdType;->typeName:Ljava/lang/String;

    return-object p0
.end method
