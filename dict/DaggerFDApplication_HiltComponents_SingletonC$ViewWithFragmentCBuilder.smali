.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lfast/dic/dict/FDApplication_HiltComponents$ViewWithFragmentC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewWithFragmentCBuilder"
.end annotation


# instance fields
.field private final activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl"
        }
    .end annotation

    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 376
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 377
    iput-object p3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    .line 378
    iput-object p4, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

    return-void
.end method

.method synthetic constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ldagger/hilt/android/components/ViewWithFragmentComponent;
    .locals 0

    .line 361
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->build()Lfast/dic/dict/FDApplication_HiltComponents$ViewWithFragmentC;

    move-result-object p0

    return-object p0
.end method

.method public build()Lfast/dic/dict/FDApplication_HiltComponents$ViewWithFragmentC;
    .locals 8

    .line 389
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->view:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 390
    new-instance v2, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;

    iget-object v3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v4, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v5, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v6, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

    iget-object v7, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->view:Landroid/view/View;

    invoke-direct/range {v2 .. v7}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;Landroid/view/View;)V

    return-object v2
.end method

.method public bridge synthetic view(Landroid/view/View;)Ldagger/hilt/android/internal/builders/ViewWithFragmentComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 361
    invoke-virtual {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->view(Landroid/view/View;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;

    move-result-object p0

    return-object p0
.end method

.method public view(Landroid/view/View;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 383
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;->view:Landroid/view/View;

    return-object p0
.end method
