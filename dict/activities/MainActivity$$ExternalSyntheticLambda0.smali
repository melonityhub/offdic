.class public final synthetic Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/material/navigation/NavigationBarView$OnItemReselectedListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/activities/MainActivity;

.field public final synthetic f$1:Landroidx/navigation/NavController;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/activities/MainActivity;Landroidx/navigation/NavController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/activities/MainActivity;

    iput-object p2, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavController;

    return-void
.end method


# virtual methods
.method public final onNavigationItemReselected(Landroid/view/MenuItem;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/activities/MainActivity;

    iget-object p0, p0, Lfast/dic/dict/activities/MainActivity$$ExternalSyntheticLambda0;->f$1:Landroidx/navigation/NavController;

    invoke-static {v0, p0, p1}, Lfast/dic/dict/activities/MainActivity;->setupBottomNavigation$lambda$0(Lfast/dic/dict/activities/MainActivity;Landroidx/navigation/NavController;Landroid/view/MenuItem;)V

    return-void
.end method
