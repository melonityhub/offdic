.class public final synthetic Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroidx/fragment/app/Fragment;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/Fragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/utils/FragmentExtensionKt$$ExternalSyntheticLambda1;->f$0:Landroidx/fragment/app/Fragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lfast/dic/dict/utils/FragmentExtensionKt;->showBeforeLoginScreen$lambda$0(Landroidx/fragment/app/Fragment;Z)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method
