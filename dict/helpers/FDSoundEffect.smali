.class public final Lfast/dic/dict/helpers/FDSoundEffect;
.super Ljava/lang/Object;
.source "FDSoundEffect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u000c\u0008\u0001\u0010\u0002\u001a\u00020\u0003:\u0002\u0008\u0004\u001a\u0002\u0008\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001a\u0010\n\u001a\u00020\u000bH\u0007b\u0010\u0008\u000c\u0012\u000c\u0008\r\u0012\u0008\u0008\u000cJ\u0004\u0008\u0008(\u000eJ\u0006\u0010\u000f\u001a\u00020\u000bR\u001b\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u0092\u0002\u0002\u0008\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0010"
    }
    d2 = {
        "Lfast/dic/dict/helpers/FDSoundEffect;",
        "",
        "context",
        "Landroid/content/Context;",
        "Ldagger/hilt/android/qualifiers/ApplicationContext;",
        "<init>",
        "(Landroid/content/Context;)V",
        "Ljavax/inject/Inject;",
        "getContext",
        "()Landroid/content/Context;",
        "playShutterSound",
        "",
        "Landroid/annotation/SuppressLint;",
        "value",
        "ServiceCast",
        "tapVibration",
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


# instance fields
.field private final context:Landroid/content/Context;
    .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation runtime Ldagger/hilt/android/qualifiers/ApplicationContext;
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/helpers/FDSoundEffect;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    .line 15
    iget-object p0, p0, Lfast/dic/dict/helpers/FDSoundEffect;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final playShutterSound()V
    .locals 2

    .line 19
    iget-object p0, p0, Lfast/dic/dict/helpers/FDSoundEffect;->context:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-eqz p0, :cond_0

    .line 20
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    .line 21
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 22
    new-instance p0, Landroid/media/MediaActionSound;

    invoke-direct {p0}, Landroid/media/MediaActionSound;-><init>()V

    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Landroid/media/MediaActionSound;->play(I)V

    return-void

    :cond_2
    :goto_1
    if-nez p0, :cond_3

    goto :goto_2

    .line 25
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_5

    :goto_2
    if-nez p0, :cond_4

    goto :goto_3

    .line 26
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    :cond_5
    :goto_3
    return-void
.end method

.method public final tapVibration()V
    .locals 4

    .line 32
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    iget-object p0, p0, Lfast/dic/dict/helpers/FDSoundEffect;->context:Landroid/content/Context;

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 33
    const-string/jumbo v0, "vibrator_manager"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.os.VibratorManager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/VibratorManager;

    .line 34
    invoke-virtual {p0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object p0

    goto :goto_0

    .line 36
    :cond_0
    const-string/jumbo v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type android.os.Vibrator"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/os/Vibrator;

    :goto_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x64

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    .line 40
    invoke-static {v2, v3, v0}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    return-void

    .line 42
    :cond_1
    invoke-virtual {p0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
