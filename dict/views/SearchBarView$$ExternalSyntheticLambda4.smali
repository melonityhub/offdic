.class public final synthetic Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/views/SearchBarView;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/views/SearchBarView;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/views/SearchBarView;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/views/SearchBarView$$ExternalSyntheticLambda4;->f$0:Lfast/dic/dict/views/SearchBarView;

    invoke-static {p0, p1, p2}, Lfast/dic/dict/views/SearchBarView;->loadSearchInputConfig$lambda$0(Lfast/dic/dict/views/SearchBarView;Landroid/view/View;Z)V

    return-void
.end method
