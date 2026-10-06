.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;
.super Landroidx/recyclerview/widget/DiffUtil$ItemCallback;
.source "CategoriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DiffCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback<",
        "Lfast/dic/dict/models/WordCategoryModel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0016J*\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0008\u001a\u00020\u0002H\u0017b\u0010\u0008\n\u0012\u000c\u0008\u000b\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;",
        "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;",
        "Lfast/dic/dict/models/WordCategoryModel;",
        "<init>",
        "()V",
        "areItemsTheSame",
        "",
        "oldItem",
        "newItem",
        "areContentsTheSame",
        "Landroid/annotation/SuppressLint;",
        "value",
        "DiffUtilEquals",
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

    .line 87
    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public areContentsTheSame(Lfast/dic/dict/models/WordCategoryModel;Lfast/dic/dict/models/WordCategoryModel;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areContentsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 87
    check-cast p1, Lfast/dic/dict/models/WordCategoryModel;

    check-cast p2, Lfast/dic/dict/models/WordCategoryModel;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;->areContentsTheSame(Lfast/dic/dict/models/WordCategoryModel;Lfast/dic/dict/models/WordCategoryModel;)Z

    move-result p0

    return p0
.end method

.method public areItemsTheSame(Lfast/dic/dict/models/WordCategoryModel;Lfast/dic/dict/models/WordCategoryModel;)Z
    .locals 0

    const-string p0, "oldItem"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "newItem"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic areItemsTheSame(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 87
    check-cast p1, Lfast/dic/dict/models/WordCategoryModel;

    check-cast p2, Lfast/dic/dict/models/WordCategoryModel;

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;->areItemsTheSame(Lfast/dic/dict/models/WordCategoryModel;Lfast/dic/dict/models/WordCategoryModel;)Z

    move-result p0

    return p0
.end method
