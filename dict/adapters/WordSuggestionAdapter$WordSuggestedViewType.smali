.class public final enum Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;
.super Ljava/lang/Enum;
.source "WordSuggestionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/WordSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WordSuggestedViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\u0008\u0086\u0081\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000e\u00a8\u0006\u000f"
    }
    d2 = {
        "Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;",
        "",
        "value",
        "",
        "<init>",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "TRANSLATOR",
        "TRANSLATOR_NOT_LOGIN",
        "TRANSLATOR_NO_SUBSCRIPTION",
        "HISTORY_EN_ROW",
        "HISTORY_PE_ROW",
        "WORD",
        "NOT_FOUND",
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

.field private static final synthetic $VALUES:[Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum HISTORY_EN_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum HISTORY_PE_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum NOT_FOUND:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum TRANSLATOR:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum TRANSLATOR_NOT_LOGIN:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum TRANSLATOR_NO_SUBSCRIPTION:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

.field public static final enum WORD:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;
    .locals 7

    sget-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    sget-object v1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NOT_LOGIN:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    sget-object v2, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NO_SUBSCRIPTION:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    sget-object v3, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_EN_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    sget-object v4, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_PE_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    sget-object v5, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->WORD:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    sget-object v6, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->NOT_FOUND:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    filled-new-array/range {v0 .. v6}, [Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 203
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "TRANSLATOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    .line 204
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "TRANSLATOR_NOT_LOGIN"

    const/4 v2, 0x1

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NOT_LOGIN:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    .line 205
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "TRANSLATOR_NO_SUBSCRIPTION"

    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-direct {v0, v1, v4, v5}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->TRANSLATOR_NO_SUBSCRIPTION:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    .line 206
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "HISTORY_EN_ROW"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_EN_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    .line 207
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "HISTORY_PE_ROW"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v4}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->HISTORY_PE_ROW:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    .line 208
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "WORD"

    invoke-direct {v0, v1, v3, v6}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->WORD:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    .line 209
    new-instance v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    const-string v1, "NOT_FOUND"

    invoke-direct {v0, v1, v5, v2}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->NOT_FOUND:Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-static {}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->$values()[Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->$VALUES:[Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    check-cast v0, [Ljava/lang/Enum;

    invoke-static {v0}, Lkotlin/enums/EnumEntriesKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntries;

    move-result-object v0

    sput-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->value:I

    return-void
.end method

.method public static getEntries()Lkotlin/enums/EnumEntries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/enums/EnumEntries<",
            "Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->$ENTRIES:Lkotlin/enums/EnumEntries;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;
    .locals 1

    const-class v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    return-object p0
.end method

.method public static values()[Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;
    .locals 1

    sget-object v0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->$VALUES:[Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 0

    .line 202
    iget p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordSuggestedViewType;->value:I

    return p0
.end method
