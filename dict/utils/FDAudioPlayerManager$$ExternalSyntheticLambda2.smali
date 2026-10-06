.class public final synthetic Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/utils/FDAudioPlayerManager;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/utils/FDAudioPlayerManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/utils/FDAudioPlayerManager;

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/utils/FDAudioPlayerManager$$ExternalSyntheticLambda2;->f$0:Lfast/dic/dict/utils/FDAudioPlayerManager;

    invoke-static {p0, p1, p2, p3}, Lfast/dic/dict/utils/FDAudioPlayerManager;->audioPlayerAsync$lambda$2(Lfast/dic/dict/utils/FDAudioPlayerManager;Landroid/media/MediaPlayer;II)Z

    move-result p0

    return p0
.end method
