.class public final synthetic Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Z

.field public final synthetic f$1:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(ZLandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda2;->f$0:Z

    iput-object p2, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda2;->f$1:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 0
    iget-boolean v0, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda2;->f$0:Z

    iget-object p0, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda2;->f$1:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOptions$lambda$0(ZLandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
