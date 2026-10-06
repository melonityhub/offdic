.class Lfast/dic/dict/activities/Hilt_SplashActivity$1;
.super Ljava/lang/Object;
.source "Hilt_SplashActivity.java"

# interfaces
.implements Landroidx/activity/contextaware/OnContextAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfast/dic/dict/activities/Hilt_SplashActivity;->_initHiltInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lfast/dic/dict/activities/Hilt_SplashActivity;


# direct methods
.method constructor <init>(Lfast/dic/dict/activities/Hilt_SplashActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lfast/dic/dict/activities/Hilt_SplashActivity$1;->this$0:Lfast/dic/dict/activities/Hilt_SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onContextAvailable(Landroid/content/Context;)V
    .locals 0

    .line 27
    iget-object p0, p0, Lfast/dic/dict/activities/Hilt_SplashActivity$1;->this$0:Lfast/dic/dict/activities/Hilt_SplashActivity;

    invoke-virtual {p0}, Lfast/dic/dict/activities/Hilt_SplashActivity;->inject()V

    return-void
.end method
