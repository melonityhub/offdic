.class public final enum Lfast/dic/dict/fragments/MorePagesEnum;
.super Ljava/lang/Enum;
.source "MoreFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/fragments/MorePagesEnum;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\t\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/fragments/MorePagesEnum;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "Terms",
        "ContactUs",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/fragments/MorePagesEnum;

.field public static final enum ContactUs:Lfast/dic/dict/fragments/MorePagesEnum;

.field public static final enum Terms:Lfast/dic/dict/fragments/MorePagesEnum;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/fragments/MorePagesEnum;
    .locals 2

    sget-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->Terms:Lfast/dic/dict/fragments/MorePagesEnum;

    sget-object v1, Lfast/dic/dict/fragments/MorePagesEnum;->ContactUs:Lfast/dic/dict/fragments/MorePagesEnum;

    filled-new-array {v0, v1}, [Lfast/dic/dict/fragments/MorePagesEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 35
    new-instance v0, Lfast/dic/dict/fragments/MorePagesEnum;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "Terms"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/fragments/MorePagesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->Terms:Lfast/dic/dict/fragments/MorePagesEnum;

    .line 36
    new-instance v0, Lfast/dic/dict/fragments/MorePagesEnum;

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-string v3, "ContactUs"

    invoke-direct {v0, v3, v1, v2}, Lfast/dic/dict/fragments/MorePagesEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->ContactUs:Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-static {}, Lfast/dic/dict/fragments/MorePagesEnum;->$values()[Lfast/dic/dict/fragments/MorePagesEnum;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->$VALUES:[Lfast/dic/dict/fragments/MorePagesEnum;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfast/dic/dict/fragments/MorePagesEnum;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/fragments/MorePagesEnum;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/fragments/MorePagesEnum;
    .locals 1

    const-class v0, Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/fragments/MorePagesEnum;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/fragments/MorePagesEnum;
    .locals 1

    sget-object v0, Lfast/dic/dict/fragments/MorePagesEnum;->$VALUES:[Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/fragments/MorePagesEnum;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 34
    iget p0, p0, Lfast/dic/dict/fragments/MorePagesEnum;->value:I

    return p0
.end method
