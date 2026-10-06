.class public final Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;
.super Landroidx/recyclerview/widget/ListAdapter;
.source "CategoriesAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;,
        Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;,
        Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/ListAdapter<",
        "Lfast/dic/dict/models/WordCategoryModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0003)*+B\r\u0008\u0007\u001a\u0002\u0008\u0006\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0018\u0010 \u001a\u00020\u00032\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020$H\u0016J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u00032\u0006\u0010\'\u001a\u00020$H\u0016J\u0010\u0010(\u001a\u00020$2\u0006\u0010\'\u001a\u00020$H\u0016R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\t\"\u0004\u0008\n\u0010\u000bR \u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012RJ\u0010\u0013\u001a2\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0017\u0012\u0013\u0012\u00110\u0008\u00a2\u0006\u000c\u0008\u0015\u0012\u0008\u0008\u0016\u0012\u0004\u0008\u0008(\u0018\u0012\u0004\u0012\u00020\u000e0\u0014X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\u001d\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\t\"\u0004\u0008\u001f\u0010\u000b\u00a8\u0006,"
    }
    d2 = {
        "Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;",
        "Landroidx/recyclerview/widget/ListAdapter;",
        "Lfast/dic/dict/models/WordCategoryModel;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "<init>",
        "()V",
        "Ljavax/inject/Inject;",
        "isCurrentLanguagePersian",
        "",
        "()Z",
        "setCurrentLanguagePersian",
        "(Z)V",
        "onWodClickListener",
        "Lkotlin/Function0;",
        "",
        "getOnWodClickListener",
        "()Lkotlin/jvm/functions/Function0;",
        "setOnWodClickListener",
        "(Lkotlin/jvm/functions/Function0;)V",
        "onItemClicked",
        "Lkotlin/Function2;",
        "Lkotlin/ParameterName;",
        "name",
        "cat",
        "locked",
        "getOnItemClicked",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnItemClicked",
        "(Lkotlin/jvm/functions/Function2;)V",
        "hasSubscription",
        "getHasSubscription",
        "setHasSubscription",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "getItemViewType",
        "EllipsizeViewHolder",
        "WODFolderViewHolder",
        "DiffCallback",
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
.field private hasSubscription:Z

.field private isCurrentLanguagePersian:Z

.field private onItemClicked:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/WordCategoryModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onWodClickListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 15
    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;

    invoke-direct {v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$DiffCallback;-><init>()V

    check-cast v0, Landroidx/recyclerview/widget/DiffUtil$ItemCallback;

    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/ListAdapter;-><init>(Landroidx/recyclerview/widget/DiffUtil$ItemCallback;)V

    .line 18
    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->onWodClickListener:Lkotlin/jvm/functions/Function0;

    .line 19
    new-instance v0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->onItemClicked:Lkotlin/jvm/functions/Function2;

    .line 20
    invoke-static {}, Lfast/dic/dict/utils/FDParseUserExtensionKt;->hasSubscription()Z

    move-result v0

    iput-boolean v0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->hasSubscription:Z

    return-void
.end method

.method static final onItemClicked$lambda$0(Lfast/dic/dict/models/WordCategoryModel;Z)Lkotlin/Unit;
    .locals 0

    const-string p1, "<unused var>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method static final onWodClickListener$lambda$0()Lkotlin/Unit;
    .locals 1

    .line 18
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method


# virtual methods
.method public final getHasSubscription()Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->hasSubscription:Z

    return p0
.end method

.method public getItemViewType(I)I
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/models/WordCategoryModel;

    invoke-virtual {p0}, Lfast/dic/dict/models/WordCategoryModel;->isWod()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getOnItemClicked()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/models/WordCategoryModel;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->onItemClicked:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final getOnWodClickListener()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->onWodClickListener:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final isCurrentLanguagePersian()Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->isCurrentLanguagePersian:Z

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    instance-of v0, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;

    const-string v1, "getItem(...)"

    if-eqz v0, :cond_0

    .line 37
    check-cast p1, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/WordCategoryModel;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;->setBind(Lfast/dic/dict/models/WordCategoryModel;)V

    return-void

    .line 40
    :cond_0
    instance-of v0, p1, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;

    if-eqz v0, :cond_1

    .line 41
    check-cast p1, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;

    invoke-virtual {p0, p2}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lfast/dic/dict/models/WordCategoryModel;

    invoke-virtual {p1, p0}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;->setBind(Lfast/dic/dict/models/WordCategoryModel;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 25
    invoke-static {v0, p1, v2}, Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    new-instance p2, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$EllipsizeViewHolder;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/CategoryEllipsisRowItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2

    .line 30
    :cond_0
    invoke-static {v0, p1, v2}, Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance p2, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;

    invoke-direct {p2, p0, p1}, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter$WODFolderViewHolder;-><init>(Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;Lfast/dic/dict/databinding/WodDirectoriesItemLayoutBinding;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object p2
.end method

.method public final setCurrentLanguagePersian(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->isCurrentLanguagePersian:Z

    return-void
.end method

.method public final setHasSubscription(Z)V
    .locals 0

    .line 20
    iput-boolean p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->hasSubscription:Z

    return-void
.end method

.method public final setOnItemClicked(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/WordCategoryModel;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->onItemClicked:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnWodClickListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lfast/dic/dict/presentation/categories_screen/CategoriesAdapter;->onWodClickListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method
