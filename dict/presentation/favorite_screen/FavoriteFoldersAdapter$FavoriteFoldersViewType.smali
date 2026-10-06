.class public final enum Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;
.super Ljava/lang/Enum;
.source "FavoriteFoldersAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavoriteFoldersViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "HISTORY",
        "WORD_CATEGORY",
        "FAVORITE",
        "EDIT_MODE",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

.field public static final enum EDIT_MODE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

.field public static final enum FAVORITE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

.field public static final enum HISTORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

.field public static final enum WORD_CATEGORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;
    .locals 4

    sget-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->HISTORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    sget-object v1, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->WORD_CATEGORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    sget-object v2, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->FAVORITE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    sget-object v3, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->EDIT_MODE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    filled-new-array {v0, v1, v2, v3}, [Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 180
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    const-string v1, "HISTORY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->HISTORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    .line 181
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    const-string v1, "WORD_CATEGORY"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->WORD_CATEGORY:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    .line 182
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    const-string v1, "FAVORITE"

    invoke-direct {v0, v1, v3, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->FAVORITE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    .line 183
    new-instance v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    const-string v1, "EDIT_MODE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->EDIT_MODE:Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-static {}, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->$values()[Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->$VALUES:[Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 179
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;
    .locals 1

    const-class v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;
    .locals 1

    sget-object v0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->$VALUES:[Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 179
    iget p0, p0, Lfast/dic/dict/presentation/favorite_screen/FavoriteFoldersAdapter$FavoriteFoldersViewType;->value:I

    return p0
.end method
