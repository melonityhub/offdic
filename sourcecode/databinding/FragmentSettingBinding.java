package fast.dic.dict.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.switchmaterial.SwitchMaterial;
import fast.dic.dict.R;

/* JADX INFO: loaded from: classes11.dex */
public final class FragmentSettingBinding implements ViewBinding {
    public final TextView autoRotationDescTextView;
    public final TextView editTextFastSpeedText;
    public final TextView editTextOfflineSpeedText;
    public final TextView editTextSlowSpeedText;
    public final MaterialCardView languageContainerCard;
    public final TextView languageTitleLabel;
    public final ConstraintLayout myWordsInsideOfContainer;
    public final SwitchMaterial offlineTranslatorSwitch;
    public final SwitchMaterial readyKeyboardSwitch;
    private final ScrollView rootView;
    public final SeekBar seekBarOfflineSpeed;
    public final SwitchMaterial switchFloatingHead;
    public final SwitchMaterial switchOrientation;
    public final SwitchMaterial switchTextToSpeech;
    public final SwitchMaterial syncSwitch;

    private FragmentSettingBinding(ScrollView scrollView, TextView textView, TextView textView2, TextView textView3, TextView textView4, MaterialCardView materialCardView, TextView textView5, ConstraintLayout constraintLayout, SwitchMaterial switchMaterial, SwitchMaterial switchMaterial2, SeekBar seekBar, SwitchMaterial switchMaterial3, SwitchMaterial switchMaterial4, SwitchMaterial switchMaterial5, SwitchMaterial switchMaterial6) {
        this.rootView = scrollView;
        this.autoRotationDescTextView = textView;
        this.editTextFastSpeedText = textView2;
        this.editTextOfflineSpeedText = textView3;
        this.editTextSlowSpeedText = textView4;
        this.languageContainerCard = materialCardView;
        this.languageTitleLabel = textView5;
        this.myWordsInsideOfContainer = constraintLayout;
        this.offlineTranslatorSwitch = switchMaterial;
        this.readyKeyboardSwitch = switchMaterial2;
        this.seekBarOfflineSpeed = seekBar;
        this.switchFloatingHead = switchMaterial3;
        this.switchOrientation = switchMaterial4;
        this.switchTextToSpeech = switchMaterial5;
        this.syncSwitch = switchMaterial6;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static FragmentSettingBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentSettingBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(R.layout.fragment_setting, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentSettingBinding bind(View view) {
        int i = R.id.autoRotationDescTextView;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
        if (textView != null) {
            i = R.id.editTextFastSpeedText;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
            if (textView2 != null) {
                i = R.id.editTextOfflineSpeedText;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                if (textView3 != null) {
                    i = R.id.editTextSlowSpeedText;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i);
                    if (textView4 != null) {
                        i = R.id.language_container_card;
                        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, i);
                        if (materialCardView != null) {
                            i = R.id.language_title_label;
                            TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i);
                            if (textView5 != null) {
                                i = R.id.my_words_inside_of_container;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, i);
                                if (constraintLayout != null) {
                                    i = R.id.offline_translator_switch;
                                    SwitchMaterial switchMaterial = (SwitchMaterial) ViewBindings.findChildViewById(view, i);
                                    if (switchMaterial != null) {
                                        i = R.id.ready_keyboard_switch;
                                        SwitchMaterial switchMaterial2 = (SwitchMaterial) ViewBindings.findChildViewById(view, i);
                                        if (switchMaterial2 != null) {
                                            i = R.id.seekBarOfflineSpeed;
                                            SeekBar seekBar = (SeekBar) ViewBindings.findChildViewById(view, i);
                                            if (seekBar != null) {
                                                i = R.id.switchFloatingHead;
                                                SwitchMaterial switchMaterial3 = (SwitchMaterial) ViewBindings.findChildViewById(view, i);
                                                if (switchMaterial3 != null) {
                                                    i = R.id.switchOrientation;
                                                    SwitchMaterial switchMaterial4 = (SwitchMaterial) ViewBindings.findChildViewById(view, i);
                                                    if (switchMaterial4 != null) {
                                                        i = R.id.switchTextToSpeech;
                                                        SwitchMaterial switchMaterial5 = (SwitchMaterial) ViewBindings.findChildViewById(view, i);
                                                        if (switchMaterial5 != null) {
                                                            i = R.id.sync_switch;
                                                            SwitchMaterial switchMaterial6 = (SwitchMaterial) ViewBindings.findChildViewById(view, i);
                                                            if (switchMaterial6 != null) {
                                                                return new FragmentSettingBinding((ScrollView) view, textView, textView2, textView3, textView4, materialCardView, textView5, constraintLayout, switchMaterial, switchMaterial2, seekBar, switchMaterial3, switchMaterial4, switchMaterial5, switchMaterial6);
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
