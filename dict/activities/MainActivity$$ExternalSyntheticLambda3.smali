.class public final synthetic Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/fragment/app/FragmentResultListener;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavController;

.field public final synthetic f$1:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavController;Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController;

    iput-object p2, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda3;->f$1:Lfast/dic/dict/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onFragmentResult(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda3;->f$0:Landroidx/navigation/NavController;

    iget-object p0, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda3;->f$1:Lfast/dic/dict/activities/MainActivity;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/activities/MainActivity;->setupToolbarTitle$lambda$0(Landroidx/navigation/NavController;Lfast/dic/dict/activities/MainActivity;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
