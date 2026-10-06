.class public final enum Lfast/dic/dict/WidgetEnumSize;
.super Ljava/lang/Enum;
.source "WordOfTheDayWidget.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/WidgetEnumSize;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lfast/dic/dict/WidgetEnumSize;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "SMALL",
        "MEDIUM",
        "LARGE",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/WidgetEnumSize;

.field public static final enum LARGE:Lfast/dic/dict/WidgetEnumSize;

.field public static final enum MEDIUM:Lfast/dic/dict/WidgetEnumSize;

.field public static final enum SMALL:Lfast/dic/dict/WidgetEnumSize;


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/WidgetEnumSize;
    .locals 3

    sget-object v0, Lfast/dic/dict/WidgetEnumSize;->SMALL:Lfast/dic/dict/WidgetEnumSize;

    sget-object v1, Lfast/dic/dict/WidgetEnumSize;->MEDIUM:Lfast/dic/dict/WidgetEnumSize;

    sget-object v2, Lfast/dic/dict/WidgetEnumSize;->LARGE:Lfast/dic/dict/WidgetEnumSize;

    filled-new-array {v0, v1, v2}, [Lfast/dic/dict/WidgetEnumSize;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Lfast/dic/dict/WidgetEnumSize;

    const-string v1, "SMALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/WidgetEnumSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfast/dic/dict/WidgetEnumSize;->SMALL:Lfast/dic/dict/WidgetEnumSize;

    .line 42
    new-instance v0, Lfast/dic/dict/WidgetEnumSize;

    const-string v1, "MEDIUM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/WidgetEnumSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfast/dic/dict/WidgetEnumSize;->MEDIUM:Lfast/dic/dict/WidgetEnumSize;

    .line 43
    new-instance v0, Lfast/dic/dict/WidgetEnumSize;

    const-string v1, "LARGE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/WidgetEnumSize;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfast/dic/dict/WidgetEnumSize;->LARGE:Lfast/dic/dict/WidgetEnumSize;

    invoke-static {}, Lfast/dic/dict/WidgetEnumSize;->$values()[Lfast/dic/dict/WidgetEnumSize;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/WidgetEnumSize;->$VALUES:[Lfast/dic/dict/WidgetEnumSize;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/WidgetEnumSize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/WidgetEnumSize;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/WidgetEnumSize;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/WidgetEnumSize;
    .locals 1

    const-class v0, Lfast/dic/dict/WidgetEnumSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/WidgetEnumSize;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/WidgetEnumSize;
    .locals 1

    sget-object v0, Lfast/dic/dict/WidgetEnumSize;->$VALUES:[Lfast/dic/dict/WidgetEnumSize;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/WidgetEnumSize;

    return-object v0
.end method
