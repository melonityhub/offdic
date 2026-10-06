.class public final synthetic Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field public final synthetic f$0:Landroid/media/MediaPlayer$OnCompletionListener;

.field public final synthetic f$1:Lfast/dic/dict/utils/FDAudioPlayerManager;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaPlayer$OnCompletionListener;Lfast/dic/dict/utils/FDAudioPlayerManager;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer$OnCompletionListener;

    iput-object p2, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/utils/FDAudioPlayerManager;

    iput-object p3, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;->f$0:Landroid/media/MediaPlayer$OnCompletionListener;

    iget-object v1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;->f$1:Lfast/dic/dict/utils/FDAudioPlayerManager;

    iget-object p0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioPlayerAsync$lambda$0(Landroid/media/MediaPlayer$OnCompletionListener;Lfast/dic/dict/utils/FDAudioPlayerManager;Ljava/lang/String;Landroid/media/MediaPlayer;)V

    return-void
.end method
