.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;
.super Lfast/dic/dict/FDApplication_HiltComponents$ViewWithFragmentC;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewWithFragmentCImpl"
.end annotation


# instance fields
.field private final activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

.field private final viewWithFragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl",
            "activityCImpl",
            "fragmentCImpl",
            "viewParam"
        }
    .end annotation

    .line 493
    invoke-direct {p0}, Lfast/dic/dict/FDApplication_HiltComponents$ViewWithFragmentC;-><init>()V

    .line 489
    iput-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;->viewWithFragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;

    .line 494
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 495
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    .line 496
    iput-object p3, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;->activityCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    .line 497
    iput-object p4, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;->fragmentCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;

    return-void
.end method
