.class public final Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC;
.super Ljava/lang/Object;
.source "DaggerFDApplication_HiltComponents_SingletonC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$SingletonCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCImpl;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ServiceCBuilder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewModelCBuilder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewCBuilder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ViewWithFragmentCBuilder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$FragmentCBuilder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityCBuilder;,
        Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$ActivityRetainedCBuilder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static builder()Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;
    .locals 2

    .line 263
    new-instance v0, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC$Builder;-><init>(Lfast/dic/dict/DaggerFDApplication_HiltComponents_SingletonC-IA;)V

    return-object v0
.end method
