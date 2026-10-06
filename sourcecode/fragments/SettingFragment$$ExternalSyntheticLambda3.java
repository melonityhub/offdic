package fast.dic.dict.fragments;

import android.widget.CompoundButton;
import android.widget.SeekBar;

/* JADX INFO: compiled from: D8$$SyntheticClass */
/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class SettingFragment$$ExternalSyntheticLambda3 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ SeekBar f$1;

    public /* synthetic */ SettingFragment$$ExternalSyntheticLambda3() {
        seekBarOfflineSpeed = seekBar;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        SettingFragment.onCreateView$lambda$3(this.f$0, seekBarOfflineSpeed, compoundButton, z);
    }
}
