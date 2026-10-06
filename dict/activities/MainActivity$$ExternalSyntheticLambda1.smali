.class public final synthetic Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Landroidx/navigation/NavDestination;

.field public final synthetic f$1:Lfast/dic/dict/activities/MainActivity;


# direct methods
.method public synthetic constructor <init>(Landroidx/navigation/NavDestination;Lfast/dic/dict/activities/MainActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/navigation/NavDestination;

    iput-object p2, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/activities/MainActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda1;->f$0:Landroidx/navigation/NavDestination;

    iget-object p0, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda1;->f$1:Lfast/dic/dict/activities/MainActivity;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/activities/MainActivity;->$r8$lambda$xV7bkEhwZORzyMexPV9yYMxxwYM(Landroidx/navigation/NavDestination;Lfast/dic/dict/activities/MainActivity;Ljava/lang/String;)V

    return-void
.end method
