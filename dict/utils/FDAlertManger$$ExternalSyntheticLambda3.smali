.class public final synthetic Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda3;->f$0:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    iget-object p0, p0, Lfast/dic/dict/utils/FDAlertManger$$ExternalSyntheticLambda3;->f$0:Landroid/content/DialogInterface$OnClickListener;

    invoke-static {p0, p1, p2}, Lfast/dic/dict/utils/FDAlertManger;->showAlertWithOptions$lambda$1(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    return-void
.end method
