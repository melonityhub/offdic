.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"

# interfaces
.implements Lfast/dic/dict/FDApplication_HiltComponents$ServiceC$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCBuilder"
.end annotation


# instance fields
.field private service:Landroid/app/Service;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method private constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "singletonCImpl"
        }
    .end annotation

    .line 463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 464
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    return-void
.end method

.method synthetic constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ldagger/hilt/android/components/ServiceComponent;
    .locals 0

    .line 458
    invoke-virtual {p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->build()Lfast/dic/dict/FDApplication_HiltComponents$ServiceC;

    move-result-object p0

    return-object p0
.end method

.method public build()Lfast/dic/dict/FDApplication_HiltComponents$ServiceC;
    .locals 2

    .line 475
    iget-object v0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->service:Landroid/app/Service;

    const-class v1, Landroid/app/Service;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 476
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;

    iget-object v1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    iget-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->service:Landroid/app/Service;

    invoke-direct {v0, v1, p0}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V

    return-object v0
.end method

.method public bridge synthetic service(Landroid/app/Service;)Ldagger/hilt/android/internal/builders/ServiceComponentBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "service"
        }
    .end annotation

    .line 458
    invoke-virtual {p0, p1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->service(Landroid/app/Service;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;

    move-result-object p0

    return-object p0
.end method

.method public service(Landroid/app/Service;)Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "service"
        }
    .end annotation

    .line 469
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Service;

    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;->service:Landroid/app/Service;

    return-object p0
.end method
