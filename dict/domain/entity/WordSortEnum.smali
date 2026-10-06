.class public final enum Lfast/dic/dict/domain/entity/WordSortEnum;
.super Ljava/lang/Enum;
.source "WordSortEnum.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/domain/entity/WordSortEnum$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u0000 \u000b2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/domain/entity/WordSortEnum;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "NEWEST",
        "OLDEST",
        "ALPHABET",
        "Companion",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/domain/entity/WordSortEnum;

.field public static final enum ALPHABET:Lfast/dic/dict/domain/entity/WordSortEnum;

.field public static final Companion:Lfast/dic/dict/domain/entity/WordSortEnum$Companion;

.field public static final enum NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

.field public static final enum OLDEST:Lfast/dic/dict/domain/entity/WordSortEnum;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 3

    sget-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    sget-object v1, Lfast/dic/dict/domain/entity/WordSortEnum;->OLDEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    sget-object v2, Lfast/dic/dict/domain/entity/WordSortEnum;->ALPHABET:Lfast/dic/dict/domain/entity/WordSortEnum;

    filled-new-array {v0, v1, v2}, [Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lfast/dic/dict/domain/entity/WordSortEnum;

    const-string v1, "NEWEST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/domain/entity/WordSortEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->NEWEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    .line 5
    new-instance v0, Lfast/dic/dict/domain/entity/WordSortEnum;

    const-string v1, "OLDEST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/domain/entity/WordSortEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->OLDEST:Lfast/dic/dict/domain/entity/WordSortEnum;

    .line 6
    new-instance v0, Lfast/dic/dict/domain/entity/WordSortEnum;

    const-string v1, "ALPHABET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/domain/entity/WordSortEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->ALPHABET:Lfast/dic/dict/domain/entity/WordSortEnum;

    invoke-static {}, Lfast/dic/dict/domain/entity/WordSortEnum;->$values()[Lfast/dic/dict/domain/entity/WordSortEnum;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->$VALUES:[Lfast/dic/dict/domain/entity/WordSortEnum;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lfast/dic/dict/domain/entity/WordSortEnum$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/domain/entity/WordSortEnum$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->Companion:Lfast/dic/dict/domain/entity/WordSortEnum$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfast/dic/dict/domain/entity/WordSortEnum;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/domain/entity/WordSortEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 1

    const-class v0, Lfast/dic/dict/domain/entity/WordSortEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/domain/entity/WordSortEnum;
    .locals 1

    sget-object v0, Lfast/dic/dict/domain/entity/WordSortEnum;->$VALUES:[Lfast/dic/dict/domain/entity/WordSortEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/domain/entity/WordSortEnum;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 3
    iget p0, p0, Lfast/dic/dict/domain/entity/WordSortEnum;->value:I

    return p0
.end method
