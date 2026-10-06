.class public final synthetic Lfast/dic/dict/fragments/SettingFragment$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic f$0:Lfast/dic/dict/fragments/SettingFragment;

.field public final synthetic f$1:Landroid/widget/SeekBar;


# direct methods
.method public synthetic constructor <init>(Lfast/dic/dict/fragments/SettingFragment;Landroid/widget/SeekBar;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfast/dic/dict/fragments/SettingFragment$$ExternalSyntheticLambda3;->f$0:Lfast/dic/dict/fragments/SettingFragment;

    iput-object p2, p0, Lfast/dic/dict/fragments/SettingFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/SeekBar;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 0
    iget-object v0, p0, Lfast/dic/dict/fragments/SettingFragment$$ExternalSyntheticLambda3;->f$0:Lfast/dic/dict/fragments/SettingFragment;

    iget-object p0, p0, Lfast/dic/dict/fragments/SettingFragment$$ExternalSyntheticLambda3;->f$1:Landroid/widget/SeekBar;

    invoke-static {v0, p0, p1, p2}, Lfast/dic/dict/fragments/SettingFragment;->onCreateView$lambda$3(Lfast/dic/dict/fragments/SettingFragment;Landroid/widget/SeekBar;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
