.class public final Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FavoriteWordAdapter.kt"

# interfaces
.implements Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0004\u0018\u00002\u00020\u00012\u00020\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0008\u0010\u0007\u001a\u00020\u0008H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cR\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "Lfast/dic/dict/interfaces/ItemTouchHelperViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;)V",
        "onItemSelected",
        "",
        "onItemClear",
        "setBind",
        "model",
        "Lfast/dic/dict/models/database/ListModel;",
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
.field private final binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

.field final synthetic this$0:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    iput-object p1, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->this$0:Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;

    .line 105
    invoke-virtual {p2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    .line 104
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    .line 108
    new-instance v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;)V

    invoke-virtual {p2, v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;Landroid/view/View;)V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->getBindingAdapterPosition()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 110
    iget-object v0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p1}, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter;->getOnSelectedAction()Lkotlin/jvm/functions/Function2;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    invoke-virtual {p0}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public onItemClear()V
    .locals 1

    .line 121
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public onItemSelected()V
    .locals 1

    .line 117
    iget-object p0, p0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final setBind(Lfast/dic/dict/models/database/ListModel;)V
    .locals 26

    move-object/from16 v0, p0

    const-string v1, "model"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->removeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v21, v1

    goto :goto_0

    :cond_0
    move-object/from16 v21, v3

    .line 127
    :goto_0
    invoke-virtual {v2}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->removeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->removeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    move-object/from16 v17, v3

    const v24, 0x1bbfff

    const/16 v25, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 129
    invoke-static/range {v2 .. v25}, Lfast/dic/dict/models/database/ListModel;->copy$default(Lfast/dic/dict/models/database/ListModel;ZZLjava/lang/Integer;ILjava/lang/Boolean;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lfast/dic/dict/models/database/ListModel;

    move-result-object v1

    .line 131
    sget-object v2, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {v1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v2

    .line 133
    iget-object v3, v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->setIsWordEnglish(Ljava/lang/Boolean;)V

    .line 134
    iget-object v3, v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v2}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    .line 135
    iget-object v0, v0, Lfast/dic/dict/presentation/favorite_folders_screen/FavoriteWordAdapter$ViewHolder;->binding:Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;

    invoke-virtual {v0, v1}, Lfast/dic/dict/databinding/FavoriteWordItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return-void
.end method
