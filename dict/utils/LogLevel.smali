.class public final enum Lfast/dic/dict/utils/LogLevel;
.super Ljava/lang/Enum;
.source "Logger.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/utils/LogLevel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lfast/dic/dict/utils/LogLevel;",
        "",
        "androidLogLevel",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getAndroidLogLevel",
        "()I",
        "VERBOSE",
        "DEBUG",
        "INFO",
        "WARN",
        "ERROR",
        "ASSERT",
        "SUPRESS",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/utils/LogLevel;

.field public static final enum ASSERT:Lfast/dic/dict/utils/LogLevel;

.field public static final enum DEBUG:Lfast/dic/dict/utils/LogLevel;

.field public static final enum ERROR:Lfast/dic/dict/utils/LogLevel;

.field public static final enum INFO:Lfast/dic/dict/utils/LogLevel;

.field public static final enum SUPRESS:Lfast/dic/dict/utils/LogLevel;

.field public static final enum VERBOSE:Lfast/dic/dict/utils/LogLevel;

.field public static final enum WARN:Lfast/dic/dict/utils/LogLevel;


# instance fields
.field private final androidLogLevel:I


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/utils/LogLevel;
    .locals 7

    sget-object v0, Lfast/dic/dict/utils/LogLevel;->VERBOSE:Lfast/dic/dict/utils/LogLevel;

    sget-object v1, Lfast/dic/dict/utils/LogLevel;->DEBUG:Lfast/dic/dict/utils/LogLevel;

    sget-object v2, Lfast/dic/dict/utils/LogLevel;->INFO:Lfast/dic/dict/utils/LogLevel;

    sget-object v3, Lfast/dic/dict/utils/LogLevel;->WARN:Lfast/dic/dict/utils/LogLevel;

    sget-object v4, Lfast/dic/dict/utils/LogLevel;->ERROR:Lfast/dic/dict/utils/LogLevel;

    sget-object v5, Lfast/dic/dict/utils/LogLevel;->ASSERT:Lfast/dic/dict/utils/LogLevel;

    sget-object v6, Lfast/dic/dict/utils/LogLevel;->SUPRESS:Lfast/dic/dict/utils/LogLevel;

    filled-new-array/range {v0 .. v6}, [Lfast/dic/dict/utils/LogLevel;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->VERBOSE:Lfast/dic/dict/utils/LogLevel;

    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "DEBUG"

    const/4 v2, 0x1

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v4}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->DEBUG:Lfast/dic/dict/utils/LogLevel;

    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "INFO"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v3, v2}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->INFO:Lfast/dic/dict/utils/LogLevel;

    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "WARN"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v4, v3}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->WARN:Lfast/dic/dict/utils/LogLevel;

    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "ERROR"

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v4}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->ERROR:Lfast/dic/dict/utils/LogLevel;

    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "ASSERT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v3, v2}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->ASSERT:Lfast/dic/dict/utils/LogLevel;

    .line 15
    new-instance v0, Lfast/dic/dict/utils/LogLevel;

    const-string v1, "SUPRESS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v4, v2}, Lfast/dic/dict/utils/LogLevel;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->SUPRESS:Lfast/dic/dict/utils/LogLevel;

    invoke-static {}, Lfast/dic/dict/utils/LogLevel;->$values()[Lfast/dic/dict/utils/LogLevel;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->$VALUES:[Lfast/dic/dict/utils/LogLevel;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/utils/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfast/dic/dict/utils/LogLevel;->androidLogLevel:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/utils/LogLevel;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/utils/LogLevel;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/utils/LogLevel;
    .locals 1

    const-class v0, Lfast/dic/dict/utils/LogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/utils/LogLevel;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/utils/LogLevel;
    .locals 1

    sget-object v0, Lfast/dic/dict/utils/LogLevel;->$VALUES:[Lfast/dic/dict/utils/LogLevel;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/utils/LogLevel;

    return-object v0
.end method


# virtual methods
.method public final getAndroidLogLevel()I
    .locals 0

    .line 12
    iget p0, p0, Lfast/dic/dict/utils/LogLevel;->androidLogLevel:I

    return p0
.end method
