.class public final Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
.super Ljava/lang/Object;
.source "EnterPasswordFragmentArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0006\u0010\u0008\u001a\u00020\tJ\u0006\u0010\n\u001a\u00020\u000bJ\t\u0010\u000c\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0014\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0083\u0004J\n\u0010\u0012\u001a\u00020\u0013H\u00d6\u0081\u0004J\n\u0010\u0014\u001a\u00020\u0003H\u00d6\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;",
        "Landroidx/navigation/NavArgs;",
        "email",
        "",
        "<init>",
        "(Ljava/lang/String;)V",
        "getEmail",
        "()Ljava/lang/String;",
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
.field public static final Companion:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;


# instance fields
.field private final email:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->Companion:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;Ljava/lang/String;ILjava/lang/Object;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->copy(Ljava/lang/String;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->Companion:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->Companion:Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;)Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;
    .locals 0

    const-string p0, "email"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    iget-object p1, p1, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getEmail()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 2

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    const-string v1, "email"

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 2

    .line 20
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 21
    const-string v1, "email"

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lfast/dic/dict/presentation/enter_password_screen/EnterPasswordFragmentArgs;->email:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EnterPasswordFragmentArgs(email="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
