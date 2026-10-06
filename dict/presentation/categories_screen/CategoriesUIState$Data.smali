.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;
.super Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;
.source "CategoriesViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Data"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\u0008\u0002\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u00c6\u0001J\u0014\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u00d6\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010H\u00d6\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012H\u00d6\u0081\u0004R\u0017\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;",
        "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;",
        "models",
        "",
        "Lfast/dic/dict/models/WordCategoryModel;",
        "<init>",
        "(Ljava/util/List;)V",
        "getModels",
        "()Ljava/util/List;",
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
.field private final models:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "models"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    return-void
.end method

.method public static synthetic copy$default(Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;Ljava/util/List;ILjava/lang/Object;)Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    :cond_0
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->copy(Ljava/util/List;)Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    return-object p0
.end method

.method public final copy(Ljava/util/List;)Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;)",
            "Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;"
        }
    .end annotation

    const-string p0, "models"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;

    invoke-direct {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    iget-object p1, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final getModels()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesUIState$Data;->models:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data(models="

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
