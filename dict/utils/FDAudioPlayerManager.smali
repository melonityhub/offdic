.class public final Lfast/dic/dict/utils/FDAudioPlayerManager;
.super Ljava/lang/Object;
.source "FDAudioPlayerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFDAudioPlayerManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FDAudioPlayerManager.kt\nfast/dic/dict/utils/FDAudioPlayerManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1#2:102\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J$\u0010\u000c\u001a\u00020\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\n\u0008\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u0008\u0010\u0014\u001a\u00020\rH\u0002R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lfast/dic/dict/utils/FDAudioPlayerManager;",
        "",
        "<init>",
        "()V",
        "mp",
        "Landroid/media/MediaPlayer;",
        "audioManager",
        "Landroid/media/AudioManager;",
        "audioFocusRequest",
        "Landroid/media/AudioFocusRequest;",
        "logger",
        "Lfast/dic/dict/utils/Logger;",
        "audioPlayerAsync",
        "",
        "url",
        "",
        "context",
        "Landroid/content/Context;",
        "completionListener",
        "Landroid/media/MediaPlayer$OnCompletionListener;",
        "releaseAudioFocus",
        "Companion",
        "app"
    }
    k = 0x1
    mv = {
        0x2,
        0x4,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;

.field private static get:Lfast/dic/dict/utils/FDAudioPlayerManager;


# instance fields
.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioManager:Landroid/media/AudioManager;

.field private final logger:Lfast/dic/dict/utils/Logger;

.field private mp:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lfast/dic/dict/utils/FDAudioPlayerManager;->Companion:Lfast/dic/dict/utils/FDAudioPlayerManager$Companion;

    .line 98
    new-instance v0, Lfast/dic/dict/utils/FDAudioPlayerManager;

    invoke-direct {v0}, Lfast/dic/dict/utils/FDAudioPlayerManager;-><init>()V

    sput-object v0, Lfast/dic/dict/utils/FDAudioPlayerManager;->get:Lfast/dic/dict/utils/FDAudioPlayerManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    sget-object v0, Lfast/dic/dict/utils/Logger;->Companion:Lfast/dic/dict/utils/Logger$Companion;

    invoke-virtual {v0}, Lfast/dic/dict/utils/Logger$Companion;->getLogger1()Lfast/dic/dict/utils/Logger;

    move-result-object v0

    iput-object v0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->logger:Lfast/dic/dict/utils/Logger;

    return-void
.end method

.method public static final synthetic access$getGet$cp()Lfast/dic/dict/utils/FDAudioPlayerManager;
    .locals 1

    .line 13
    sget-object v0, Lfast/dic/dict/utils/FDAudioPlayerManager;->get:Lfast/dic/dict/utils/FDAudioPlayerManager;

    return-object v0
.end method

.method public static final synthetic access$setGet$cp(Lfast/dic/dict/utils/FDAudioPlayerManager;)V
    .locals 0

    .line 13
    sput-object p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->get:Lfast/dic/dict/utils/FDAudioPlayerManager;

    return-void
.end method

.method public static synthetic audioPlayerAsync$default(Lfast/dic/dict/utils/FDAudioPlayerManager;Ljava/lang/String;Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p2, 0x0

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioPlayerAsync(Ljava/lang/String;Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;)V

    return-void
.end method

.method static final audioPlayerAsync$lambda$0(Landroid/media/MediaPlayer$OnCompletionListener;Lfast/dic/dict/utils/FDAudioPlayerManager;Ljava/lang/String;Landroid/media/MediaPlayer;)V
    .locals 0

    .line 48
    invoke-interface {p0, p3}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 49
    invoke-direct {p1}, Lfast/dic/dict/utils/FDAudioPlayerManager;->releaseAudioFocus()V

    .line 50
    iget-object p0, p1, Lfast/dic/dict/utils/FDAudioPlayerManager;->logger:Lfast/dic/dict/utils/Logger;

    const-string p1, "Playing %s audio is completed."

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfast/dic/dict/utils/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static final audioPlayerAsync$lambda$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const-string v0, "obj"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method static final audioPlayerAsync$lambda$2(Lfast/dic/dict/utils/FDAudioPlayerManager;Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/16 p1, -0x3f2

    if-eq p3, p1, :cond_3

    const/16 p1, -0x3ef

    if-eq p3, p1, :cond_2

    const/16 p1, -0x3ec

    if-eq p3, p1, :cond_1

    const/16 p1, -0x6e

    if-eq p3, p1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    const-string p1, "=========== MEDIA_ERROR_TIMED_OUT"

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 55
    :cond_1
    const-string p1, "=========== MEDIA_ERROR_IO"

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string p1, "=========== MEDIA_ERROR_MALFORMED"

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string p1, "=========== MEDIA_ERROR_UNSUPPORTED"

    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->print(Ljava/lang/Object;)V

    .line 60
    :goto_0
    invoke-direct {p0}, Lfast/dic/dict/utils/FDAudioPlayerManager;->releaseAudioFocus()V

    const/4 p0, 0x0

    return p0
.end method

.method private final releaseAudioFocus()V
    .locals 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    return-void

    .line 76
    :cond_0
    iget-object p0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public final audioPlayerAsync(Ljava/lang/String;Landroid/content/Context;Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 3

    const-string v0, "completionListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    :try_start_0
    iget-object v0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    .line 24
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 25
    iget-object v0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 27
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 33
    const-string v1, "audio"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioManager:Landroid/media/AudioManager;

    .line 34
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x3

    if-lt p2, v1, :cond_1

    .line 35
    new-instance p2, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {p2, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 36
    invoke-virtual {p2, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object p2

    .line 37
    invoke-virtual {p2}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object p2

    .line 35
    iput-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    .line 38
    iget-object v1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioManager:Landroid/media/AudioManager;

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 45
    :cond_2
    :goto_0
    iget-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 47
    iget-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p0, p1}, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;-><init>(Landroid/media/MediaPlayer$OnCompletionListener;Lfast/dic/dict/utils/FDAudioPlayerManager;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 52
    iget-object p1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 53
    iget-object p1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance p2, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda2;-><init>(Lfast/dic/dict/utils/FDAudioPlayerManager;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 63
    iget-object p1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->mp:Landroid/media/MediaPlayer;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 66
    invoke-direct {p0}, Lfast/dic/dict/utils/FDAudioPlayerManager;->releaseAudioFocus()V

    .line 67
    iget-object p0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager;->logger:Lfast/dic/dict/utils/Logger;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Error happening audioPlayerAsync: %s"

    invoke-virtual {p0, p2, p1}, Lfast/dic/dict/utils/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
