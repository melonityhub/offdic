.class public final enum Lfast/dic/dict/models/PlanType;
.super Ljava/lang/Enum;
.source "PricingResponse.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/models/PlanType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/models/PlanType;",
        "",
        "index",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getIndex",
        "()I",
        "FREE",
        "REMOVE_ADS",
        "PRO",
        "AI",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/models/PlanType;

.field public static final enum AI:Lfast/dic/dict/models/PlanType;

.field public static final enum FREE:Lfast/dic/dict/models/PlanType;

.field public static final enum PRO:Lfast/dic/dict/models/PlanType;

.field public static final enum REMOVE_ADS:Lfast/dic/dict/models/PlanType;


# instance fields
.field private final index:I


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/models/PlanType;
    .locals 4

    sget-object v0, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    sget-object v1, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    sget-object v2, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    sget-object v3, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    filled-new-array {v0, v1, v2, v3}, [Lfast/dic/dict/models/PlanType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lfast/dic/dict/models/PlanType;

    const-string v1, "FREE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lfast/dic/dict/models/PlanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/models/PlanType;->FREE:Lfast/dic/dict/models/PlanType;

    .line 8
    new-instance v0, Lfast/dic/dict/models/PlanType;

    const-string v1, "REMOVE_ADS"

    invoke-direct {v0, v1, v3, v2}, Lfast/dic/dict/models/PlanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/models/PlanType;->REMOVE_ADS:Lfast/dic/dict/models/PlanType;

    .line 9
    new-instance v0, Lfast/dic/dict/models/PlanType;

    const-string v1, "PRO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/models/PlanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/models/PlanType;->PRO:Lfast/dic/dict/models/PlanType;

    .line 10
    new-instance v0, Lfast/dic/dict/models/PlanType;

    const-string v1, "AI"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/models/PlanType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/models/PlanType;->AI:Lfast/dic/dict/models/PlanType;

    invoke-static {}, Lfast/dic/dict/models/PlanType;->$values()[Lfast/dic/dict/models/PlanType;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/models/PlanType;->$VALUES:[Lfast/dic/dict/models/PlanType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/models/PlanType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfast/dic/dict/models/PlanType;->index:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/models/PlanType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/models/PlanType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/models/PlanType;
    .locals 1

    const-class v0, Lfast/dic/dict/models/PlanType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/PlanType;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/models/PlanType;
    .locals 1

    sget-object v0, Lfast/dic/dict/models/PlanType;->$VALUES:[Lfast/dic/dict/models/PlanType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/models/PlanType;

    return-object v0
.end method


# virtual methods
.method public final getIndex()I
    .locals 0

    .line 6
    iget p0, p0, Lfast/dic/dict/models/PlanType;->index:I

    return p0
.end method
