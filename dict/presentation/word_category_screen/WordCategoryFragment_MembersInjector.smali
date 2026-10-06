.class public final Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;
.super Ljava/lang/Object;
.source "WordCategoryFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final adapterProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectAdapter(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;->adapter:Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V
    .locals 0

    .line 34
    iget-object p0, p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;->adapterProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;

    invoke-static {p1, p0}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;->injectAdapter(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 10
    check-cast p1, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment_MembersInjector;->injectMembers(Lfast/dic/dict/presentation/word_category_screen/WordCategoryFragment;)V

    return-void
.end method
