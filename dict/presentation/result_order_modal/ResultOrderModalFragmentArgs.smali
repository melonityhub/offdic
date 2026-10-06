.class public final Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;
.super Ljava/lang/Object;
.source "ResultOrderModalFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0011\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u000e\u001a\u00020\u00032\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u00d6\u0083\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u00d6\u0081\u0004J\n\u0010\u0013\u001a\u00020\u0014H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "forEnglish",
        "",
        "<init>",
        "(Z)V",
        "getForEnglish",
        "()Z",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
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
.field public static final Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;


# instance fields
.field private final forEnglish:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-boolean p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    move p1, p3

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;-><init>(Z)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;ZILjava/lang/Object;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-boolean p1, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->copy(Z)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->Companion:Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    return p0
.end method

.method public final copy(Z)Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;
    .locals 0

    new-instance p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;-><init>(Z)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;

    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    iget-boolean p1, p1, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    if-eq p0, p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getForEnglish()Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 2

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v1, "forEnglish"

    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 2

    .line 20
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 21
    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "forEnglish"

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean p0, p0, Lfast/dic/dict/presentation/result_order_modal/ResultOrderModalFragmentArgs;->forEnglish:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResultOrderModalFragmentArgs(forEnglish="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
