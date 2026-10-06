.class public final Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WordSuggestionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/WordSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WordViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;)V",
        "onSelectedListener",
        "Lkotlin/Function2;",
        "Lfast/dic/dict/models/database/ListModel;",
        "",
        "",
        "getOnSelectedListener",
        "()Lkotlin/jvm/functions/Function2;",
        "setOnSelectedListener",
        "(Lkotlin/jvm/functions/Function2;)V",
        "setBind",
        "model",
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
.field private final binding:Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

.field private onSelectedListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lfast/dic/dict/adapters/WordSuggestionAdapter;


# direct methods
.method public constructor <init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    iput-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->this$0:Lfast/dic/dict/adapters/WordSuggestionAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->binding:Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

    .line 129
    new-instance p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;)V

    invoke-virtual {p2, p1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;Landroid/view/View;)V
    .locals 1

    .line 130
    iget-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->onSelectedListener:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->binding:Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->getAbsoluteAdapterPosition()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public final getOnSelectedListener()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Lfast/dic/dict/models/database/ListModel;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->onSelectedListener:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final setBind(Lfast/dic/dict/models/database/ListModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    sget-object v0, Lfast/dic/dict/utils/FDLanguageWord;->Companion:Lfast/dic/dict/utils/FDLanguageWord$Companion;

    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfast/dic/dict/utils/FDLanguageWord$Companion;->isEnglish(Ljava/lang/String;)Z

    move-result v0

    .line 136
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getWord()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->removeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Lfast/dic/dict/models/database/ListModel;->setWord(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lfast/dic/dict/models/database/ListModel;->getMeaning()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->removeHtmlTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lfast/dic/dict/utils/StringExtKt;->removeLines(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {p1, v2}, Lfast/dic/dict/models/database/ListModel;->setMeaning(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->binding:Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->setIsWordEnglish(Ljava/lang/Boolean;)V

    .line 140
    iget-object v1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->binding:Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->setIsMeaningEnglish(Ljava/lang/Boolean;)V

    .line 141
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->binding:Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WordSuggestionItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/ListModel;)V

    return-void
.end method

.method public final setOnSelectedListener(Lkotlin/jvm/functions/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lfast/dic/dict/models/database/ListModel;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$WordViewHolder;->onSelectedListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method
