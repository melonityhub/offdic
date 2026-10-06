.class public final Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "WordSuggestionListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/adapters/WordSuggestionAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TranslatorNotLoginViewHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0007\u0008\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000e\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\u0008\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\n\u0018\u00010\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0011"
    }
    d2 = {
        "Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "binding",
        "Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;",
        "<init>",
        "(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;)V",
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
.field private final binding:Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;

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
.method public constructor <init>(Lfast/dic/dict/adapters/WordSuggestionAdapter;Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iput-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->this$0:Lfast/dic/dict/adapters/WordSuggestionAdapter;

    invoke-virtual {p2}, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->binding:Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;

    .line 163
    new-instance p1, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder$$ExternalSyntheticLambda0;-><init>(Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;)V

    invoke-virtual {p2, p1}, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static final _init_$lambda$0(Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;Landroid/view/View;)V
    .locals 1

    .line 164
    iget-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->onSelectedListener:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->binding:Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;

    invoke-virtual {v0}, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;->getModel()Lfast/dic/dict/models/database/ListModel;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->getAbsoluteAdapterPosition()I

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

    .line 161
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->onSelectedListener:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method

.method public final setBind(Lfast/dic/dict/models/database/ListModel;)V
    .locals 1

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object p0, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->binding:Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;

    invoke-virtual {p0, p1}, Lfast/dic/dict/databinding/WsTranslatorNotLoginItemLayoutBinding;->setModel(Lfast/dic/dict/models/database/ListModel;)V

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

    .line 161
    iput-object p1, p0, Lfast/dic/dict/adapters/WordSuggestionAdapter$TranslatorNotLoginViewHolder;->onSelectedListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method
