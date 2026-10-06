.class public final synthetic Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda1;->f$0:Landroid/content/Context;

    invoke-static {p0, p1, p2}, Lfast/dic/dict/utils/FDAlertManger;->showErrorForSpeechToTextAlert$lambda$1(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
