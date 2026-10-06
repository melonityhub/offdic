.class public final synthetic Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lkotlin/jvm/functions/Function1;

.field public final synthetic f$1:Lfast/dic/dict/views/WordOfTheDayView;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/views/WordOfTheDayView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/views/WordOfTheDayView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;->f$0:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lfast/dic/dict/views/WordOfTheDayView$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/views/WordOfTheDayView;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/views/WordOfTheDayView;->setOnClick$lambda$0(Lkotlin/jvm/functions/Function1;Lfast/dic/dict/views/WordOfTheDayView;Landroid/view/View;)V

    return-void
.end method
