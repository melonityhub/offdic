package fast.dic.dict.fragments;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import com.amazon.device.ads.DtbConstants;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.switchmaterial.SwitchMaterial;
import com.ironsource.U3;
import com.parse.ParseException;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentSettingBinding;
import fast.dic.dict.fragments.onboardings.ProPlanRequiredFragment;
import fast.dic.dict.services.FDFloatingWindowService;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SettingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u001bH\u0002J0\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010 \u001a\u0004\u0018\u00010!H\u0017b\f\b\"\u0012\b\b#\u0012\u0004\b\b($J\u001a\u0010%\u001a\u00020\u001b2\u0006\u0010&\u001a\u00020'2\b\u0010(\u001a\u0004\u0018\u00010)H\u0002J\b\u0010*\u001a\u00020\u001bH\u0016J\u0018\u0010+\u001a\u00020\u001b2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/H\u0016R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR#\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u0011¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010Ê\u0001\u0002\b1¨\u00060"}, d2 = {"Lfast/dic/dict/fragments/SettingFragment;", "Lfast/dic/dict/bases/BaseBindingFragment;", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentSettingBinding;", "getBinding", "()Lfast/dic/dict/databinding/FragmentSettingBinding;", "setBinding", "(Lfast/dic/dict/databinding/FragmentSettingBinding;)V", "localStorage", "Lfast/dic/dict/database/LocalStorage;", "getLocalStorage", "()Lfast/dic/dict/database/LocalStorage;", "setLocalStorage", "(Lfast/dic/dict/database/LocalStorage;)V", "Ljavax/inject/Inject;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "requestManageOverlayPermission", "", "onActivityResult", "requestCode", "", U3.f.f, "data", "Landroid/content/Intent;", "Lkotlin/Deprecated;", "message", "Deprecated in Java", "setLinkClickEvent", "tv", "Landroid/widget/TextView;", "clickInterface", "Lfast/dic/dict/fragments/HandleLinkClickInsideTextView;", "onStart", "onCheckedChanged", "buttonView", "Landroid/widget/CompoundButton;", "isChecked", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class SettingFragment extends Hilt_SettingFragment implements CompoundButton.OnCheckedChangeListener {
    public FragmentSettingBinding binding;

    @Inject
    public LocalStorage localStorage;

    public final FragmentSettingBinding getBinding() {
        FragmentSettingBinding fragmentSettingBinding = this.binding;
        if (fragmentSettingBinding != null) {
            return fragmentSettingBinding;
        }
        Intrinsics.throwUninitializedPropertyAccessException("binding");
        return null;
    }

    public final void setBinding(FragmentSettingBinding fragmentSettingBinding) {
        Intrinsics.checkNotNullParameter(fragmentSettingBinding, "<set-?>");
        this.binding = fragmentSettingBinding;
    }

    public final LocalStorage getLocalStorage() {
        LocalStorage localStorage = this.localStorage;
        if (localStorage != null) {
            return localStorage;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localStorage");
        return null;
    }

    public final void setLocalStorage(LocalStorage localStorage) {
        Intrinsics.checkNotNullParameter(localStorage, "<set-?>");
        this.localStorage = localStorage;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentSettingBinding fragmentSettingBindingInflate = FragmentSettingBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentSettingBindingInflate, "inflate(...)");
        setBinding(fragmentSettingBindingInflate);
        final SeekBar seekBarOfflineSpeed = getBinding().seekBarOfflineSpeed;
        Intrinsics.checkNotNullExpressionValue(seekBarOfflineSpeed, "seekBarOfflineSpeed");
        SwitchMaterial switchOrientation = getBinding().switchOrientation;
        Intrinsics.checkNotNullExpressionValue(switchOrientation, "switchOrientation");
        SwitchMaterial switchTextToSpeech = getBinding().switchTextToSpeech;
        Intrinsics.checkNotNullExpressionValue(switchTextToSpeech, "switchTextToSpeech");
        SwitchMaterial switchFloatingHead = getBinding().switchFloatingHead;
        Intrinsics.checkNotNullExpressionValue(switchFloatingHead, "switchFloatingHead");
        SwitchMaterial readyKeyboardSwitch = getBinding().readyKeyboardSwitch;
        Intrinsics.checkNotNullExpressionValue(readyKeyboardSwitch, "readyKeyboardSwitch");
        MaterialCardView languageContainerCard = getBinding().languageContainerCard;
        Intrinsics.checkNotNullExpressionValue(languageContainerCard, "languageContainerCard");
        TextView autoRotationDescTextView = getBinding().autoRotationDescTextView;
        Intrinsics.checkNotNullExpressionValue(autoRotationDescTextView, "autoRotationDescTextView");
        languageContainerCard.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.SettingFragment$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this.f$0), R.id.languageFragment, null, 2, null);
            }
        });
        Context context = getContext();
        if (Settings.System.getInt(context != null ? context.getContentResolver() : null, "accelerometer_rotation", 0) == 1) {
            autoRotationDescTextView.setText(R.string.to_active_orientation);
            switchOrientation.setChecked(true);
        } else {
            autoRotationDescTextView.setText(R.string.to_inactive_orientation);
            switchOrientation.setChecked(false);
        }
        getBinding().syncSwitch.setChecked(getLocalStorage().getEnableSync());
        getBinding().syncSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: fast.dic.dict.fragments.SettingFragment$$ExternalSyntheticLambda1
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) throws ParseException {
                SettingFragment.onCreateView$lambda$1(this.f$0, compoundButton, z);
            }
        });
        setLinkClickEvent(autoRotationDescTextView, new HandleLinkClickInsideTextView() { // from class: fast.dic.dict.fragments.SettingFragment.onCreateView.3
            @Override // fast.dic.dict.fragments.HandleLinkClickInsideTextView
            public void onLinkClicked(String url) {
                try {
                    SettingFragment.this.startActivity(new Intent("android.settings.DISPLAY_SETTINGS"));
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        });
        if (Build.VERSION.SDK_INT >= 29) {
            switchFloatingHead.setEnabled(false);
        }
        switchTextToSpeech.setChecked(getLocalStorage().getOfflineMode());
        seekBarOfflineSpeed.setEnabled(switchTextToSpeech.isChecked());
        switchFloatingHead.setChecked(getLocalStorage().getFloatingWindow());
        readyKeyboardSwitch.setChecked(getLocalStorage().getMakeKeyboardOpen());
        seekBarOfflineSpeed.setProgress(getLocalStorage().getOfflineSpeechSpeed());
        readyKeyboardSwitch.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: fast.dic.dict.fragments.SettingFragment$$ExternalSyntheticLambda2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingFragment.onCreateView$lambda$2(this.f$0, compoundButton, z);
            }
        });
        switchTextToSpeech.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: fast.dic.dict.fragments.SettingFragment$$ExternalSyntheticLambda3
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingFragment.onCreateView$lambda$3(this.f$0, seekBarOfflineSpeed, compoundButton, z);
            }
        });
        seekBarOfflineSpeed.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() { // from class: fast.dic.dict.fragments.SettingFragment.onCreateView.6
            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStartTrackingTouch(SeekBar seekBar) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onStopTrackingTouch(SeekBar seekBar) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
            }

            @Override // android.widget.SeekBar.OnSeekBarChangeListener
            public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
                Intrinsics.checkNotNullParameter(seekBar, "seekBar");
                SettingFragment.this.getLocalStorage().storeOfflineSpeechSpeed(progress);
            }
        });
        switchFloatingHead.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: fast.dic.dict.fragments.SettingFragment$$ExternalSyntheticLambda4
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                SettingFragment.onCreateView$lambda$4(this.f$0, compoundButton, z);
            }
        });
        ScrollView root = getBinding().getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final void onCreateView$lambda$1(SettingFragment settingFragment, CompoundButton compoundButton, boolean z) throws ParseException {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null && fDParseUser.hasPlan2Or3()) {
            settingFragment.getLocalStorage().setEnableSync(z);
            return;
        }
        if (z) {
            settingFragment.getBinding().syncSwitch.setChecked(false);
        }
        ProPlanRequiredFragment.Companion companion = ProPlanRequiredFragment.INSTANCE;
        FragmentActivity fragmentActivityRequireActivity = settingFragment.requireActivity();
        Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
        companion.openModal(fragmentActivityRequireActivity);
    }

    static final void onCreateView$lambda$2(SettingFragment settingFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        settingFragment.getLocalStorage().storeMakeKeyboardOpen(z);
    }

    static final void onCreateView$lambda$3(SettingFragment settingFragment, SeekBar seekBar, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        settingFragment.getLocalStorage().storeOfflineMode(z);
        seekBar.setEnabled(z);
    }

    static final void onCreateView$lambda$4(SettingFragment settingFragment, CompoundButton compoundButton, boolean z) {
        Intrinsics.checkNotNullParameter(compoundButton, "<unused var>");
        if (z) {
            settingFragment.requestManageOverlayPermission();
            return;
        }
        Context contextRequireContext = settingFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        new LocalStorage(contextRequireContext).storeFloatingWindow(false);
        Context context = settingFragment.getContext();
        if (context != null) {
            context.stopService(new Intent(settingFragment.requireContext(), (Class<?>) FDFloatingWindowService.class));
        }
    }

    private final void requestManageOverlayPermission() {
        if (Build.VERSION.SDK_INT >= 29) {
            LoggerKt.getLogger().debug("Ignore starting FDFloatingWindowService service", new Object[0]);
            return;
        }
        if (!Settings.canDrawOverlays(requireContext())) {
            Context context = getContext();
            Uri uri = Uri.parse("package:" + (context != null ? context.getPackageName() : null));
            Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
            startActivityForResult(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", uri), 1006);
            return;
        }
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        new LocalStorage(contextRequireContext).storeFloatingWindow(true);
        Context context2 = getContext();
        if (context2 != null) {
            context2.startService(new Intent(requireContext(), (Class<?>) FDFloatingWindowService.class));
        }
    }

    @Override // androidx.fragment.app.Fragment
    @Deprecated(message = "Deprecated in Java")
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 1006) {
            if (Build.VERSION.SDK_INT >= 29) {
                LoggerKt.getLogger().debug("Ignore starting FDFloatingWindowService service", new Object[0]);
                return;
            }
            if (!Settings.canDrawOverlays(requireContext())) {
                FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
                String string = getString(R.string.floating_window_not_granted_permission);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                fDAlertManger.showErrorMessageAlert(string, requireContext());
                return;
            }
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            new LocalStorage(contextRequireContext).storeFloatingWindow(true);
            Context context = getContext();
            if (context != null) {
                context.startService(new Intent(requireContext(), (Class<?>) FDFloatingWindowService.class));
            }
        }
    }

    private final void setLinkClickEvent(TextView tv, HandleLinkClickInsideTextView clickInterface) {
        String str;
        String string = tv.getText().toString();
        if (getLocalStorage().currentLanguageIsPersian()) {
            str = "([Hh][tT][tT][pP][sS]?://[^ ,'\">\\])]*[^. ,'\">\\])]*)";
        } else {
            str = "([Hh][tT][tT][pP][sS]?://[^ ,'\">\\])]*[^. ,'\">\\])]*\\s\\w+)";
        }
        Matcher matcher = Pattern.compile(str).matcher(tv.getText());
        while (matcher.find()) {
            int iStart = matcher.start();
            int iEnd = matcher.end() - 8;
            SpannableString spannableString = new SpannableString(StringsKt.replace$default(tv.getText().toString(), DtbConstants.HTTPS, "", false, 4, (Object) null));
            InternalURLSpan internalURLSpan = new InternalURLSpan();
            String strSubstring = string.substring(iStart, iEnd);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            internalURLSpan.setText(StringsKt.replace$default(strSubstring, DtbConstants.HTTPS, "", false, 4, (Object) null));
            internalURLSpan.setClickInterface(clickInterface);
            spannableString.setSpan(internalURLSpan, iStart, iEnd, 33);
            tv.setText(spannableString);
        }
        tv.setLinksClickable(true);
        tv.setMovementMethod(LinkMovementMethod.getInstance());
        tv.setFocusable(false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        getBinding().offlineTranslatorSwitch.setChecked(getLocalStorage().offlineTranslatorIsEnabled());
        getBinding().offlineTranslatorSwitch.setOnCheckedChangeListener(this);
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) throws ParseException {
        Intrinsics.checkNotNullParameter(buttonView, "buttonView");
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser == null || !fDParseUser.hasPlan2Or3()) {
            getLocalStorage().setOfflineTranslator(false);
            getBinding().offlineTranslatorSwitch.setOnCheckedChangeListener(null);
            getBinding().offlineTranslatorSwitch.setChecked(false);
            getBinding().offlineTranslatorSwitch.setOnCheckedChangeListener(this);
            ProPlanRequiredFragment.Companion companion = ProPlanRequiredFragment.INSTANCE;
            FragmentActivity fragmentActivityRequireActivity = requireActivity();
            Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
            companion.openModal(fragmentActivityRequireActivity);
            return;
        }
        if (isChecked) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = getString(R.string.caution);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = getString(R.string.enable_offline_translator_caution_alert_message);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = getString(R.string.ok);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOutForeCloseApp(string, string2, string3, requireContext());
        }
        getLocalStorage().setOfflineTranslator(isChecked);
    }
}
