.class public final Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "PaymentMethodAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/PaymentMethodAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiffCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lfast/dic/dict/adapters/PaymentMethod;",
        "<init>",
        "()V",
        "areItemsTheSame",
        "",
        "oldItem",
        "newItem",
        "areContentsTheSame",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/adapters/PaymentMethod;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 65
    check-cast p1, Lfast/dic/dict/adapters/PaymentMethod;

    check-cast p2, Lfast/dic/dict/adapters/PaymentMethod;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;->areContentsTheSame(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/adapters/PaymentMethod;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/adapters/PaymentMethod;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 65
    check-cast p1, Lfast/dic/dict/adapters/PaymentMethod;

    check-cast p2, Lfast/dic/dict/adapters/PaymentMethod;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/adapters/PaymentMethodAdapter$DiffCallBack;->areItemsTheSame(Lfast/dic/dict/adapters/PaymentMethod;Lfast/dic/dict/adapters/PaymentMethod;)Z

    move-result p0

    return p0
.end method
