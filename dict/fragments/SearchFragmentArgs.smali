.class public final Lfast/dic/dict/fragments/SearchFragmentArgs;
.super Ljava/lang/Object;
.source "SearchFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001d\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0006\u0010\u000c\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fJ\u000b\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00c6\u0003J\u001f\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u0013\u001a\u00020\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u00d6\u0083\u0004J\n\u0010\u0016\u001a\u00020\u0017H\u00d6\u0081\u0004J\n\u0010\u0018\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u001a"
    }
    d2 = {
        "Lfast/dic/dict/fragments/SearchFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "word",
        "",
        "fromHistory",
        "",
        "<init>",
        "(Ljava/lang/String;Z)V",
        "getWord",
        "()Ljava/lang/String;",
        "getFromHistory",
        "()Z",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
        "component2",
        "copy",
        "equals",
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
.field public static final Companion:Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;


# instance fields
.field private final fromHistory:Z

.field private final word:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/SearchFragmentArgs;->Companion:Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1, v2}, Lfast/dic/dict/fragments/SearchFragmentArgs;-><init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    .line 13
    iput-boolean p2, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 11
    :cond_1
    invoke-direct {p0, p1, p2}, Lfast/dic/dict/fragments/SearchFragmentArgs;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/fragments/SearchFragmentArgs;Ljava/lang/String;ZILjava/lang/Object;)Lfast/dic/dict/fragments/SearchFragmentArgs;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-boolean p2, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    :cond_1
    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/fragments/SearchFragmentArgs;->copy(Ljava/lang/String;Z)Lfast/dic/dict/fragments/SearchFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/fragments/SearchFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/fragments/SearchFragmentArgs;->Companion:Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/fragments/SearchFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/fragments/SearchFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/fragments/SearchFragmentArgs;->Companion:Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/fragments/SearchFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/fragments/SearchFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    return p0
.end method

.method public final copy(Ljava/lang/String;Z)Lfast/dic/dict/fragments/SearchFragmentArgs;
    .locals 0

    new-instance p0, Lfast/dic/dict/fragments/SearchFragmentArgs;

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/fragments/SearchFragmentArgs;-><init>(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/fragments/SearchFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/fragments/SearchFragmentArgs;

    iget-object v1, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    iget-boolean p1, p1, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    if-eq p0, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getFromHistory()Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    return p0
.end method

.method public final getWord()Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 16
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 17
    const-string/jumbo v1, "word"

    iget-object v2, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v1, "fromHistory"

    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 3

    .line 23
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 24
    const-string/jumbo v1, "word"

    iget-object v2, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "fromHistory"

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->word:Ljava/lang/String;

    iget-boolean p0, p0, Lfast/dic/dict/fragments/SearchFragmentArgs;->fromHistory:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SearchFragmentArgs(word="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fromHistory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
