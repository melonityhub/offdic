.class public final synthetic Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/adapters/LanguageLayoutAdapter;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/adapters/LanguageLayoutAdapter;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/adapters/LanguageLayoutAdapter;

    iput p2, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/adapters/LanguageLayoutAdapter;

    iget p0, p0, Lfast/dic/dict/adapters/LanguageLayoutAdapter$$ExternalSyntheticLambda0;->f$1:I

    invoke-static {v0, p0, p1}, Lfast/dic/dict/adapters/LanguageLayoutAdapter;->onBindViewHolder$lambda$0(Lfast/dic/dict/adapters/LanguageLayoutAdapter;ILandroid/view/View;)V

    return-void
.end method
