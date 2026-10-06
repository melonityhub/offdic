.class public final enum Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;
.super Ljava/lang/Enum;
.source "FDCouchbaseLiteManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DatabaseType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0081\u0002\u0018\u0000 \u00062\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0006B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "History",
        "Favourite",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

.field public static final Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType$Companion;

.field public static final enum Favourite:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

.field public static final enum History:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;
    .locals 2

    sget-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->History:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    sget-object v1, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->Favourite:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    filled-new-array {v0, v1}, [Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    const-string v1, "History"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->History:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    const-string v1, "Favourite"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->Favourite:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    invoke-static {}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->$values()[Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->$VALUES:[Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    new-instance v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->Companion:Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;
    .locals 1

    const-class v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;
    .locals 1

    sget-object v0, Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;->$VALUES:[Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/helpers/database/couchbase/FDCouchbaseLiteManager$DatabaseType;

    return-object v0
.end method
