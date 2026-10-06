.class public final synthetic Lfast/dic/dict/voice/VoiceRecognitionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/voice/VoiceRecognitionManager;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/voice/VoiceRecognitionManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/voice/VoiceRecognitionManager$$ExternalSyntheticLambda0;->f$0:Lfast/dic/dict/voice/VoiceRecognitionManager;

    invoke-static {p0}, Lfast/dic/dict/voice/VoiceRecognitionManager;->startListening$lambda$1(Lfast/dic/dict/voice/VoiceRecognitionManager;)V

    return-void
.end method
