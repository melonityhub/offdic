.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lfast/dic/dict/FDApplication_HiltComponents$ViewC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewCBuilder"
.end annotation


# instance fields
.field private final activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private view:Landroid/view/View;


# direct methods
.method private constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl"
        }
    .end annotation

    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 406
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 407
    iput-object p3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    return-void
.end method

.method synthetic constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ldagger/hilt/android/components/ViewComponent;
    .locals 0

    .line 394
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->build()Lfast/dic/dict/FDApplication_HiltComponents$ViewC;

    move-result-object p0

    return-object p0
.end method

.method public build()Lfast/dic/dict/FDApplication_HiltComponents$ViewC;
    .locals 4

    .line 418
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    const-class v1, Landroid/view/View;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 419
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCImpl;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object v3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    invoke-direct {v0, v1, v2, v3, p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCImpl;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic view(Landroid/view/View;)Ldagger/hilt/android/internal/builders/ViewComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    .line 394
    invoke-virtual {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->view(Landroid/view/View;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;

    move-result-object p0

    return-object p0
.end method

.method public view(Landroid/view/View;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 412
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;->view:Landroid/view/View;

    return-object p0
.end method
