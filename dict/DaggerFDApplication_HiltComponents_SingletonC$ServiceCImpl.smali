.class final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;
.super Lfast/dic/dict/FDApplication_HiltComponents$ServiceC;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServiceCImpl"
.end annotation


# instance fields
.field private final serviceCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;

.field private final singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;


# direct methods
.method constructor <init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;Landroid/app/Service;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "singletonCImpl",
            "serviceParam"
        }
    .end annotation

    .line 1451
    invoke-direct {p0}, Lfast/dic/dict/FDApplication_HiltComponents$ServiceC;-><init>()V

    .line 1449
    iput-object p0, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;->serviceCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;

    .line 1452
    iput-object p1, p0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;->singletonCImpl:Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;

    return-void
.end method
