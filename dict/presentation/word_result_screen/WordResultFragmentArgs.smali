.class public final Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
.super Ljava/lang/Object;
.source "WordResultFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\'\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0011J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J)\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005H\u00c6\u0001J\u0014\u0010\u0016\u001a\u00020\u00052\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u00d6\u0083\u0004J\n\u0010\u0019\u001a\u00020\u001aH\u00d6\u0081\u0004J\n\u0010\u001b\u001a\u00020\u001cH\u00d6\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000c\u00a8\u0006\u001e"
    }
    d2 = {
        "Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "listModel",
        "Lfast/dic/dict/models/database/ListModel;",
        "fromShare",
        "",
        "enableSearchbar",
        "<init>",
        "(Lfast/dic/dict/models/database/ListModel;ZZ)V",
        "getListModel",
        "()Lfast/dic/dict/models/database/ListModel;",
        "getFromShare",
        "()Z",
        "getEnableSearchbar",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
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
.field public static final Companion:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;


# instance fields
.field private final enableSearchbar:Z

.field private final fromShare:Z

.field private final listModel:Lfast/dic/dict/models/database/ListModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->Companion:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lfast/dic/dict/models/database/ListModel;ZZ)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    .line 17
    iput-boolean p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    .line 18
    iput-boolean p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    return-void
.end method

.method public synthetic constructor <init>(Lfast/dic/dict/models/database/ListModel;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 15
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;Lfast/dic/dict/models/database/ListModel;ZZILjava/lang/Object;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->copy(Lfast/dic/dict/models/database/ListModel;ZZ)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->Companion:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->Companion:Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public final component2()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    return p0
.end method

.method public final component3()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    return p0
.end method

.method public final copy(Lfast/dic/dict/models/database/ListModel;ZZ)Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;
    .locals 0

    new-instance p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;-><init>(Lfast/dic/dict/models/database/ListModel;ZZ)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;

    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    iget-object v3, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    iget-boolean v3, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    iget-boolean p1, p1, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getEnableSearchbar()Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    return p0
.end method

.method public final getFromShare()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    return p0
.end method

.method public final getListModel()Lfast/dic/dict/models/database/ListModel;
    .locals 0

    .line 16
    iget-object p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lfast/dic/dict/models/database/ListModel;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 4

    .line 22
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v3, "listModel"

    if-eqz v1, :cond_0

    .line 24
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 25
    :cond_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 26
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 28
    :cond_1
    :goto_0
    const-string v1, "fromShare"

    iget-boolean v2, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 29
    const-string v1, "enableSearchbar"

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 4

    .line 35
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 36
    const-class v1, Landroid/os/Parcelable;

    const-class v2, Lfast/dic/dict/models/database/ListModel;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v3, "listModel"

    if-eqz v1, :cond_0

    .line 37
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 39
    iget-object v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v3, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "fromShare"

    invoke-virtual {v0, v2, v1}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "enableSearchbar"

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->listModel:Lfast/dic/dict/models/database/ListModel;

    iget-boolean v1, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->fromShare:Z

    iget-boolean p0, p0, Lfast/dic/dict/presentation/word_result_screen/WordResultFragmentArgs;->enableSearchbar:Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WordResultFragmentArgs(listModel="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fromShare="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", enableSearchbar="

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
