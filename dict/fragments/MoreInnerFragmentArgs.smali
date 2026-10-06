.class public final Lfast/dic/dict/fragments/MoreInnerFragmentArgs;
.super Ljava/lang/Object;
.source "MoreInnerFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u00d6\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0015H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0017"
    }
    d2 = {
        "Lfast/dic/dict/fragments/MoreInnerFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "page",
        "Lfast/dic/dict/fragments/MorePagesEnum;",
        "<init>",
        "(Lfast/dic/dict/fragments/MorePagesEnum;)V",
        "getPage",
        "()Lfast/dic/dict/fragments/MorePagesEnum;",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
        "toString",
        "",
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
.field public static final Companion:Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;


# instance fields
.field private final page:Lfast/dic/dict/fragments/MorePagesEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->Companion:Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/fragments/MorePagesEnum;)V
    .locals 1

    const-string v0, "page"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/fragments/MoreInnerFragmentArgs;Lfast/dic/dict/fragments/MorePagesEnum;ILjava/lang/Object;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->copy(Lfast/dic/dict/fragments/MorePagesEnum;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->Companion:Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->Companion:Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/fragments/MorePagesEnum;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    return-object p0
.end method

.method public final copy(Lfast/dic/dict/fragments/MorePagesEnum;)Lfast/dic/dict/fragments/MoreInnerFragmentArgs;
    .locals 0

    const-string p0, "page"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    invoke-direct {p0, p1}, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;-><init>(Lfast/dic/dict/fragments/MorePagesEnum;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;

    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    iget-object p1, p1, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getPage()Lfast/dic/dict/fragments/MorePagesEnum;
    .locals 0

    .line 14
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-virtual {p0}, Lfast/dic/dict/fragments/MorePagesEnum;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v3, "page"

    if-eqz v1, :cond_0

    .line 20
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    const-string v1, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0

    .line 21
    :cond_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 22
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    const-string v1, "null cannot be cast to non-null type java.io.Serializable"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 4

    .line 31
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 32
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/fragments/MorePagesEnum;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v3, "page"

    if-eqz v1, :cond_0

    .line 33
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    const-string v1, "null cannot be cast to non-null type android.os.Parcelable"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 34
    :cond_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    const-string v1, "null cannot be cast to non-null type java.io.Serializable"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/io/Serializable;

    invoke-virtual {v0, v3, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

    .line 37
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " must implement Parcelable or Serializable or must be an Enum."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lfast/dic/dict/fragments/MoreInnerFragmentArgs;->page:Lfast/dic/dict/fragments/MorePagesEnum;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MoreInnerFragmentArgs(page="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
