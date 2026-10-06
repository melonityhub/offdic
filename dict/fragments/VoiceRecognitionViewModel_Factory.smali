.class public final Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;
.super Ljava/lang/Object;
.source "VoiceRecognitionViewModel_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lfast/dic/dict/fragments/VoiceRecognitionViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final applicationProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ldagger/internal/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;->applicationProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Landroid/app/Application;",
            ">;)",
            "Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;"
        }
    .end annotation

    .line 41
    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/app/Application;)Lfast/dic/dict/fragments/VoiceRecognitionViewModel;
    .locals 1

    .line 45
    new-instance v0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel;-><init>(Landroid/app/Application;)V

    return-object v0
.end method


# virtual methods
.method public get()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;->applicationProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;->newInstance(Landroid/app/Application;)Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lfast/dic/dict/fragments/VoiceRecognitionViewModel_Factory;->get()Lfast/dic/dict/fragments/VoiceRecognitionViewModel;

    move-result-object p0

    return-object p0
.end method
