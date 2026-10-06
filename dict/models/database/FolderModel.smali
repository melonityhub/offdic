.class public final Lfast/dic/dict/models/database/FolderModel;
.super Ljava/lang/Object;
.source "FolderModel.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u001d\u0018\u00002\u00020\u0001Bc\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\t\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001e\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\u0008\u0018\u0010\u0010\"\u0004\u0008\u0019\u0010\u0012R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u0015\"\u0004\u0008\u001b\u0010\u0017R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001f\u001a\u0004\u0008\u0008\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u001a\u0010\n\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010 \"\u0004\u0008!\u0010\"R\u001a\u0010\u000b\u001a\u00020\tX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010 \"\u0004\u0008#\u0010\"R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008$\u0010\u0015\"\u0004\u0008%\u0010\u0017\u00a8\u0006&"
    }
    d2 = {
        "Lfast/dic/dict/models/database/FolderModel;",
        "",
        "count",
        "",
        "name",
        "",
        "position",
        "documentId",
        "isCurrent",
        "",
        "isHistory",
        "isWordCategory",
        "wordDocumentId",
        "<init>",
        "(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;)V",
        "getCount",
        "()Ljava/lang/Integer;",
        "setCount",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "(Ljava/lang/String;)V",
        "getPosition",
        "setPosition",
        "getDocumentId",
        "setDocumentId",
        "()Ljava/lang/Boolean;",
        "setCurrent",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "()Z",
        "setHistory",
        "(Z)V",
        "setWordCategory",
        "getWordDocumentId",
        "setWordDocumentId",
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


# instance fields
.field private count:Ljava/lang/Integer;

.field private documentId:Ljava/lang/String;

.field private isCurrent:Ljava/lang/Boolean;

.field private isHistory:Z

.field private isWordCategory:Z

.field private name:Ljava/lang/String;

.field private position:Ljava/lang/Integer;

.field private wordDocumentId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 11

    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lfast/dic/dict/models/database/FolderModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->count:Ljava/lang/Integer;

    .line 5
    iput-object p2, p0, Lfast/dic/dict/models/database/FolderModel;->name:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lfast/dic/dict/models/database/FolderModel;->position:Ljava/lang/Integer;

    .line 7
    iput-object p4, p0, Lfast/dic/dict/models/database/FolderModel;->documentId:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lfast/dic/dict/models/database/FolderModel;->isCurrent:Ljava/lang/Boolean;

    .line 9
    iput-boolean p6, p0, Lfast/dic/dict/models/database/FolderModel;->isHistory:Z

    .line 10
    iput-boolean p7, p0, Lfast/dic/dict/models/database/FolderModel;->isWordCategory:Z

    .line 11
    iput-object p8, p0, Lfast/dic/dict/models/database/FolderModel;->wordDocumentId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p10, p9, 0x1

    const/4 v0, 0x0

    if-eqz p10, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p10, p9, 0x2

    if-eqz p10, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p10, p9, 0x4

    if-eqz p10, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p10, p9, 0x8

    if-eqz p10, :cond_3

    move-object p4, v0

    :cond_3
    and-int/lit8 p10, p9, 0x10

    if-eqz p10, :cond_4

    move-object p5, v0

    :cond_4
    and-int/lit8 p10, p9, 0x20

    const/4 v1, 0x0

    if-eqz p10, :cond_5

    move p6, v1

    :cond_5
    and-int/lit8 p10, p9, 0x40

    if-eqz p10, :cond_6

    move p7, v1

    :cond_6
    and-int/lit16 p9, p9, 0x80

    if-eqz p9, :cond_7

    move-object p8, v0

    .line 3
    :cond_7
    invoke-direct/range {p0 .. p8}, Lfast/dic/dict/models/database/FolderModel;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Boolean;ZZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getCount()Ljava/lang/Integer;
    .locals 0

    .line 4
    iget-object p0, p0, Lfast/dic/dict/models/database/FolderModel;->count:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0

    .line 7
    iget-object p0, p0, Lfast/dic/dict/models/database/FolderModel;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lfast/dic/dict/models/database/FolderModel;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final getPosition()Ljava/lang/Integer;
    .locals 0

    .line 6
    iget-object p0, p0, Lfast/dic/dict/models/database/FolderModel;->position:Ljava/lang/Integer;

    return-object p0
.end method

.method public final getWordDocumentId()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lfast/dic/dict/models/database/FolderModel;->wordDocumentId:Ljava/lang/String;

    return-object p0
.end method

.method public final isCurrent()Ljava/lang/Boolean;
    .locals 0

    .line 8
    iget-object p0, p0, Lfast/dic/dict/models/database/FolderModel;->isCurrent:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final isHistory()Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lfast/dic/dict/models/database/FolderModel;->isHistory:Z

    return p0
.end method

.method public final isWordCategory()Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lfast/dic/dict/models/database/FolderModel;->isWordCategory:Z

    return p0
.end method

.method public final setCount(Ljava/lang/Integer;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->count:Ljava/lang/Integer;

    return-void
.end method

.method public final setCurrent(Ljava/lang/Boolean;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->isCurrent:Ljava/lang/Boolean;

    return-void
.end method

.method public final setDocumentId(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->documentId:Ljava/lang/String;

    return-void
.end method

.method public final setHistory(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lfast/dic/dict/models/database/FolderModel;->isHistory:Z

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->name:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(Ljava/lang/Integer;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->position:Ljava/lang/Integer;

    return-void
.end method

.method public final setWordCategory(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lfast/dic/dict/models/database/FolderModel;->isWordCategory:Z

    return-void
.end method

.method public final setWordDocumentId(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lfast/dic/dict/models/database/FolderModel;->wordDocumentId:Ljava/lang/String;

    return-void
.end method
