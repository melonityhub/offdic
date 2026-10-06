package fast.dic.dict.fragments.onboardings;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.app.ActivityCompat;
import androidx.core.app.NotificationManagerCompat;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.material.button.MaterialButton;
import com.yandex.div.core.DivActionHandler;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentLanguageOnBoardingBinding;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.LocaleExtKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import fast.dic.dict.views.CloudWordsView;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LanguageOnBoardingFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J$\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016J\u0012\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0016J\u0012\u0010\u0012\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\bH\u0002J\u0018\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0018¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/fragments/onboardings/LanguageOnBoardingFragment;", "Lfast/dic/dict/bases/BaseFragment;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "binding", "Lfast/dic/dict/databinding/FragmentLanguageOnBoardingBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onClick", "", "button", "updateLocale", "selected", "Lcom/google/android/material/button/MaterialButton;", DivActionHandler.DivActionReason.SELECTION, "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class LanguageOnBoardingFragment extends Hilt_LanguageOnBoardingFragment implements View.OnClickListener {
    private FragmentLanguageOnBoardingBinding binding;

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBindingInflate = FragmentLanguageOnBoardingBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentLanguageOnBoardingBindingInflate, "inflate(...)");
        this.binding = fragmentLanguageOnBoardingBindingInflate;
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding = null;
        if (fragmentLanguageOnBoardingBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLanguageOnBoardingBindingInflate = null;
        }
        LanguageOnBoardingFragment languageOnBoardingFragment = this;
        fragmentLanguageOnBoardingBindingInflate.englishButton.setOnClickListener(languageOnBoardingFragment);
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding2 = this.binding;
        if (fragmentLanguageOnBoardingBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLanguageOnBoardingBinding2 = null;
        }
        fragmentLanguageOnBoardingBinding2.persianButton.setOnClickListener(languageOnBoardingFragment);
        if (getResources().getConfiguration().smallestScreenWidthDp >= 600) {
            FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding3 = this.binding;
            if (fragmentLanguageOnBoardingBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLanguageOnBoardingBinding3 = null;
            }
            ImageView logoIv = fragmentLanguageOnBoardingBinding3.logoIv;
            Intrinsics.checkNotNullExpressionValue(logoIv, "logoIv");
            ImageView imageView = logoIv;
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            if (layoutParams != null) {
                layoutParams.height = (int) (120.0f * getResources().getDisplayMetrics().density);
                imageView.setLayoutParams(layoutParams);
                FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding4 = this.binding;
                if (fragmentLanguageOnBoardingBinding4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("binding");
                    fragmentLanguageOnBoardingBinding4 = null;
                }
                CloudWordsView cloudWordsView = fragmentLanguageOnBoardingBinding4.cloudWordsView;
                if (cloudWordsView != null) {
                    CloudWordsView cloudWordsView2 = cloudWordsView;
                    ViewGroup.LayoutParams layoutParams2 = cloudWordsView2.getLayoutParams();
                    if (layoutParams2 != null) {
                        layoutParams2.height = (int) (150.0f * getResources().getDisplayMetrics().density);
                        cloudWordsView2.setLayoutParams(layoutParams2);
                    } else {
                        throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
                    }
                }
            } else {
                throw new NullPointerException("null cannot be cast to non-null type android.view.ViewGroup.LayoutParams");
            }
        }
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding5 = this.binding;
        if (fragmentLanguageOnBoardingBinding5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLanguageOnBoardingBinding5 = null;
        }
        ViewCompat.setOnApplyWindowInsetsListener(fragmentLanguageOnBoardingBinding5.getRoot(), new OnApplyWindowInsetsListener() { // from class: fast.dic.dict.fragments.onboardings.LanguageOnBoardingFragment$$ExternalSyntheticLambda0
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return LanguageOnBoardingFragment.onCreateView$lambda$2(view, windowInsetsCompat);
            }
        });
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding6 = this.binding;
        if (fragmentLanguageOnBoardingBinding6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentLanguageOnBoardingBinding6 = null;
        }
        fragmentLanguageOnBoardingBinding6.continueButton.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.onboardings.LanguageOnBoardingFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageOnBoardingFragment.onCreateView$lambda$3(this.f$0, view);
            }
        });
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        boolean zCurrentLanguageIsPersian = new LocalStorage(contextRequireContext).currentLanguageIsPersian();
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding7 = this.binding;
        if (zCurrentLanguageIsPersian) {
            if (fragmentLanguageOnBoardingBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLanguageOnBoardingBinding7 = null;
            }
            updateLocale(fragmentLanguageOnBoardingBinding7.persianButton);
        } else {
            if (fragmentLanguageOnBoardingBinding7 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLanguageOnBoardingBinding7 = null;
            }
            updateLocale(fragmentLanguageOnBoardingBinding7.englishButton);
        }
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding8 = this.binding;
        if (fragmentLanguageOnBoardingBinding8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentLanguageOnBoardingBinding = fragmentLanguageOnBoardingBinding8;
        }
        View root = fragmentLanguageOnBoardingBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final WindowInsetsCompat onCreateView$lambda$2(View v, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        v.setPadding(v.getPaddingLeft(), v.getPaddingTop(), v.getPaddingRight(), insets2.bottom);
        return insets;
    }

    static final void onCreateView$lambda$3(LanguageOnBoardingFragment languageOnBoardingFragment, View view) {
        NotificationManagerCompat notificationManagerCompatFrom = NotificationManagerCompat.from(languageOnBoardingFragment.requireContext());
        Intrinsics.checkNotNullExpressionValue(notificationManagerCompatFrom, "from(...)");
        boolean zAreNotificationsEnabled = notificationManagerCompatFrom.areNotificationsEnabled();
        if (Build.VERSION.SDK_INT >= 33 && !zAreNotificationsEnabled) {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(languageOnBoardingFragment), R.id.pushNotificationOnBoardingFragment, null, 2, null);
        } else {
            NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(languageOnBoardingFragment), R.id.advertisementOnBoardingFragment, null, 2, null);
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View button) {
        updateLocale(button);
        ActivityCompat.recreate(requireActivity());
    }

    private final void updateLocale(View button) {
        String str;
        FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding = null;
        if (button != null && button.getId() == R.id.persian_button) {
            FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding2 = this.binding;
            if (fragmentLanguageOnBoardingBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLanguageOnBoardingBinding2 = null;
            }
            MaterialButton persianButton = fragmentLanguageOnBoardingBinding2.persianButton;
            Intrinsics.checkNotNullExpressionValue(persianButton, "persianButton");
            selected(persianButton, true);
            FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding3 = this.binding;
            if (fragmentLanguageOnBoardingBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentLanguageOnBoardingBinding = fragmentLanguageOnBoardingBinding3;
            }
            MaterialButton englishButton = fragmentLanguageOnBoardingBinding.englishButton;
            Intrinsics.checkNotNullExpressionValue(englishButton, "englishButton");
            selected(englishButton, false);
            str = "Persian";
        } else {
            FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding4 = this.binding;
            if (fragmentLanguageOnBoardingBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                fragmentLanguageOnBoardingBinding4 = null;
            }
            MaterialButton persianButton2 = fragmentLanguageOnBoardingBinding4.persianButton;
            Intrinsics.checkNotNullExpressionValue(persianButton2, "persianButton");
            selected(persianButton2, false);
            FragmentLanguageOnBoardingBinding fragmentLanguageOnBoardingBinding5 = this.binding;
            if (fragmentLanguageOnBoardingBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                fragmentLanguageOnBoardingBinding = fragmentLanguageOnBoardingBinding5;
            }
            MaterialButton englishButton2 = fragmentLanguageOnBoardingBinding.englishButton;
            Intrinsics.checkNotNullExpressionValue(englishButton2, "englishButton");
            selected(englishButton2, true);
            str = "English";
        }
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        Locale localeSaveCurrentLanguage = new LocalStorage(contextRequireContext).saveCurrentLanguage(str);
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        LocaleExtKt.updateCurrentLanguage(localeSaveCurrentLanguage, contextRequireContext2);
    }

    private final void selected(MaterialButton button, boolean selection) {
        if (selection) {
            button.setStrokeWidth(8);
            Context contextRequireContext = requireContext();
            Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
            button.setStrokeColor(ColorStateList.valueOf(ContextExtKt.getColorFromAttr$default(contextRequireContext, R.attr.tableViewSelectedBackground, null, false, 6, null)));
            return;
        }
        button.setStrokeWidth(3);
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        button.setStrokeColor(ColorStateList.valueOf(ContextExtKt.getColorFromAttr$default(contextRequireContext2, R.attr.tableViewBorder, null, false, 6, null)));
    }
}
