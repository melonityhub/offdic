.class public final Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;
.super Ljava/lang/Object;
.source "DirectoryWordsFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0006\u0010\n\u001a\u00020\u000bJ\u0006\u0010\u000c\u001a\u00020\rJ\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\u001d\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0083\u0004J\n\u0010\u0015\u001a\u00020\u0016H\u00d6\u0081\u0004J\n\u0010\u0017\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\u0008\u00a8\u0006\u0019"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "documentId",
        "",
        "documentName",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;)V",
        "getDocumentId",
        "()Ljava/lang/String;",
        "getDocumentName",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
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
.field public static final Companion:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;


# instance fields
.field private final documentId:Ljava/lang/String;

.field private final documentName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->Companion:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "documentId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "documentName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->copy(Ljava/lang/String;Ljava/lang/String;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->Companion:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->Companion:Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;)Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;
    .locals 0

    const-string p0, "documentId"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "documentName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;

    iget-object v1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    iget-object p1, p1, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDocumentId()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    return-object p0
.end method

.method public final getDocumentName()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 15
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    const-string v1, "documentId"

    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    const-string v1, "documentName"

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 3

    .line 22
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 23
    const-string v1, "documentId"

    iget-object v2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    const-string v1, "documentName"

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentId:Ljava/lang/String;

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/DirectoryWordsFragmentArgs;->documentName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DirectoryWordsFragmentArgs(documentId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
