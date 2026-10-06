.class public final Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;
.super Ljava/lang/Object;
.source "SortDialogArgs.kt"

# interfaces
.implements Landroidx/navigation/NavArgs;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u0000  2\u00020\u0001:\u0001 B+\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0006\u0010\u0011\u001a\u00020\u0012J\u0006\u0010\u0013\u001a\u00020\u0014J\u0014\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000bJ\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0004H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J4\u0010\u0018\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0019J\u0014\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u00d6\u0083\u0004J\n\u0010\u001e\u001a\u00020\u0007H\u00d6\u0081\u0004J\n\u0010\u001f\u001a\u00020\u0004H\u00d6\u0081\u0004R\u0019\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\n\n\u0002\u0010\u000c\u001a\u0004\u0008\n\u0010\u000bR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006!"
    }
    d2 = {
        "Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;",
        "Landroidx/navigation/NavArgs;",
        "items",
        "",
        "",
        "selectedItem",
        "selectedIndex",
        "",
        "<init>",
        "([Ljava/lang/String;Ljava/lang/String;I)V",
        "getItems",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getSelectedItem",
        "()Ljava/lang/String;",
        "getSelectedIndex",
        "()I",
        "toBundle",
        "Landroid/os/Bundle;",
        "toSavedStateHandle",
        "Landroidx/lifecycle/SavedStateHandle;",
        "component1",
        "component2",
        "component3",
        "copy",
        "([Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
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
.field public static final Companion:Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;


# instance fields
.field private final items:[Ljava/lang/String;

.field private final selectedIndex:I

.field private final selectedItem:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->Companion:Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    .line 15
    iput p3, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    return-void
.end method

.method public synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, -0x1

    .line 12
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;[Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget p3, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->copy([Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->Companion:Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;->fromBundle(Landroid/os/Bundle;)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object p0

    return-object p0
.end method

.method public static final fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->Companion:Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;

    invoke-virtual {v0, p0}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs$Companion;->fromSavedStateHandle(Landroidx/lifecycle/SavedStateHandle;)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    return-object p0
.end method

.method public final component3()I
    .locals 0

    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    return p0
.end method

.method public final copy([Ljava/lang/String;Ljava/lang/String;I)Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;
    .locals 0

    const-string p0, "items"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;-><init>([Ljava/lang/String;Ljava/lang/String;I)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;

    iget-object v1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    iget-object v3, p1, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    iget p1, p1, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getItems()[Ljava/lang/String;
    .locals 0

    .line 13
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    return-object p0
.end method

.method public final getSelectedIndex()I
    .locals 0

    .line 15
    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    return p0
.end method

.method public final getSelectedItem()Ljava/lang/String;
    .locals 0

    .line 14
    iget-object p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final toBundle()Landroid/os/Bundle;
    .locals 3

    .line 18
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    const-string v1, "items"

    iget-object v2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 20
    const-string v1, "selectedItem"

    iget-object v2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v1, "selectedIndex"

    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public final toSavedStateHandle()Landroidx/lifecycle/SavedStateHandle;
    .locals 3

    .line 26
    new-instance v0, Landroidx/lifecycle/SavedStateHandle;

    invoke-direct {v0}, Landroidx/lifecycle/SavedStateHandle;-><init>()V

    .line 27
    const-string v1, "items"

    iget-object v2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    const-string v1, "selectedItem"

    iget-object v2, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "selectedIndex"

    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/SavedStateHandle;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->items:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedItem:Ljava/lang/String;

    iget p0, p0, Lfast/dic/dict/presentation/sort_screen/SortDialogArgs;->selectedIndex:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SortDialogArgs(items="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", selectedItem="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selectedIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
