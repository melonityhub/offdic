.class public final enum Lfast/dic/dict/analytics/AdCompletionStatus;
.super Ljava/lang/Enum;
.source "AnalyticsEvent.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/analytics/AdCompletionStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/analytics/AdCompletionStatus;",
        "",
        "statusName",
        "",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getStatusName",
        "()Ljava/lang/String;",
        "COMPLETED",
        "CANCELED",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/analytics/AdCompletionStatus;

.field public static final enum CANCELED:Lfast/dic/dict/analytics/AdCompletionStatus;

.field public static final enum COMPLETED:Lfast/dic/dict/analytics/AdCompletionStatus;


# instance fields
.field private final statusName:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/analytics/AdCompletionStatus;
    .locals 2

    sget-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->COMPLETED:Lfast/dic/dict/analytics/AdCompletionStatus;

    sget-object v1, Lfast/dic/dict/analytics/AdCompletionStatus;->CANCELED:Lfast/dic/dict/analytics/AdCompletionStatus;

    filled-new-array {v0, v1}, [Lfast/dic/dict/analytics/AdCompletionStatus;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 80
    new-instance v0, Lfast/dic/dict/analytics/AdCompletionStatus;

    const/4 v1, 0x0

    const-string v2, "completed"

    const-string v3, "COMPLETED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AdCompletionStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->COMPLETED:Lfast/dic/dict/analytics/AdCompletionStatus;

    .line 81
    new-instance v0, Lfast/dic/dict/analytics/AdCompletionStatus;

    const/4 v1, 0x1

    const-string v2, "canceled"

    const-string v3, "CANCELED"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/analytics/AdCompletionStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->CANCELED:Lfast/dic/dict/analytics/AdCompletionStatus;

    invoke-static {}, Lfast/dic/dict/analytics/AdCompletionStatus;->$values()[Lfast/dic/dict/analytics/AdCompletionStatus;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->$VALUES:[Lfast/dic/dict/analytics/AdCompletionStatus;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

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

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lfast/dic/dict/analytics/AdCompletionStatus;->statusName:Ljava/lang/String;

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/analytics/AdCompletionStatus;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/analytics/AdCompletionStatus;
    .locals 1

    const-class v0, Lfast/dic/dict/analytics/AdCompletionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/analytics/AdCompletionStatus;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/analytics/AdCompletionStatus;
    .locals 1

    sget-object v0, Lfast/dic/dict/analytics/AdCompletionStatus;->$VALUES:[Lfast/dic/dict/analytics/AdCompletionStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/analytics/AdCompletionStatus;

    return-object v0
.end method


# virtual methods
.method public final getStatusName()Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lfast/dic/dict/analytics/AdCompletionStatus;->statusName:Ljava/lang/String;

    return-object p0
.end method
