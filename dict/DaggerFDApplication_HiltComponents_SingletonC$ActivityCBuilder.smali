.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lfast/dic/dict/FDApplication_HiltComponents$ActivityC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityCBuilder"
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private final activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "activityRetainedCImpl"
        }
    .end annotation

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    .line 316
    iput-object p2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    return-void
.end method

.method synthetic constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic activity(Landroid/app/Activity;)Ldagger/hilt/android/internal/builders/ActivityComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "activity"
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->activity(Landroid/app/Activity;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;

    move-result-object p0

    return-object p0
.end method

.method public activity(Landroid/app/Activity;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 321
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public bridge synthetic build()Ldagger/hilt/android/components/ActivityComponent;
    .locals 0

    .line 306
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->build()Lfast/dic/dict/FDApplication_HiltComponents$ActivityC;

    move-result-object p0

    return-object p0
.end method

.method public build()Lfast/dic/dict/FDApplication_HiltComponents$ActivityC;
    .locals 3

    .line 327
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->activity:Landroid/app/Activity;

    const-class v1, Landroid/app/Activity;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 328
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object v2, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->activityRetainedCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1, v2, p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;Landroid/app/Activity;)V

    return-object v0
.end method
