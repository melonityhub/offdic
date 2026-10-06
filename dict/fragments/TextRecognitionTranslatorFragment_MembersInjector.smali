.class public final Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;
.super Ljava/lang/Object;
.source "TextRecognitionTranslatorFragment_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;",
        ">;"
    }
.end annotation


# instance fields
.field private final soundEffectProvider:Ldagger/internal/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
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
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;->soundEffectProvider:Ldagger/internal/Provider;

    return-void
.end method

.method public static create(Ldagger/internal/Provider;)Ldagger/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/internal/Provider<",
            "Lfast/dic/dict/helpers/FDSoundEffect;",
            ">;)",
            "Ldagger/MembersInjector<",
            "Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;

    invoke-direct {v0, p0}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;-><init>(Ldagger/internal/Provider;)V

    return-object v0
.end method

.method public static injectSoundEffect(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;Lfast/dic/dict/helpers/FDSoundEffect;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;->soundEffect:Lfast/dic/dict/helpers/FDSoundEffect;

    return-void
.end method


# virtual methods
.method public injectMembers(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;->soundEffectProvider:Ldagger/internal/Provider;

    invoke-interface {p0}, Ldagger/internal/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfast/dic/dict/helpers/FDSoundEffect;

    invoke-static {p1, p0}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;->injectSoundEffect(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;Lfast/dic/dict/helpers/FDSoundEffect;)V

    return-void
.end method

.method public bridge synthetic injectMembers(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 11
    check-cast p1, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;

    invoke-virtual {p0, p1}, Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment_MembersInjector;->injectMembers(Lfast/dic/dict/fragments/TextRecognitionTranslatorFragment;)V

    return-void
.end method
