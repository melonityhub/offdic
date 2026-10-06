package fast.dic.dict.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.ActivityCompat;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.BuildConfig;
import fast.dic.dict.adapters.LanguageLayoutAdapter;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentChooseLanguageBinding;
import fast.dic.dict.models.SupportedLanguageModel;
import fast.dic.dict.utils.FDHtml;
import fast.dic.dict.utils.LocaleExtKt;
import java.util.ArrayList;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: ChooseLanguageFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0018¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/fragments/ChooseLanguageFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "fdHtml", "Lfast/dic/dict/utils/FDHtml;", "getFdHtml", "()Lfast/dic/dict/utils/FDHtml;", "setFdHtml", "(Lfast/dic/dict/utils/FDHtml;)V", "Ljavax/inject/Inject;", "binding", "Lfast/dic/dict/databinding/FragmentChooseLanguageBinding;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "getLanguagesAdapter", "Lfast/dic/dict/adapters/LanguageLayoutAdapter;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class ChooseLanguageFragment extends Hilt_ChooseLanguageFragment {
    private FragmentChooseLanguageBinding binding;

    @Inject
    public FDHtml fdHtml;

    public final FDHtml getFdHtml() {
        FDHtml fDHtml = this.fdHtml;
        if (fDHtml != null) {
            return fDHtml;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fdHtml");
        return null;
    }

    public final void setFdHtml(FDHtml fDHtml) {
        Intrinsics.checkNotNullParameter(fDHtml, "<set-?>");
        this.fdHtml = fDHtml;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        FragmentChooseLanguageBinding fragmentChooseLanguageBindingInflate = FragmentChooseLanguageBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentChooseLanguageBindingInflate, "inflate(...)");
        this.binding = fragmentChooseLanguageBindingInflate;
        FragmentChooseLanguageBinding fragmentChooseLanguageBinding = null;
        if (fragmentChooseLanguageBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentChooseLanguageBindingInflate = null;
        }
        fragmentChooseLanguageBindingInflate.setLifecycleOwner(getViewLifecycleOwner());
        FragmentChooseLanguageBinding fragmentChooseLanguageBinding2 = this.binding;
        if (fragmentChooseLanguageBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentChooseLanguageBinding2 = null;
        }
        fragmentChooseLanguageBinding2.languageRecyclerView.setHasFixedSize(true);
        FragmentChooseLanguageBinding fragmentChooseLanguageBinding3 = this.binding;
        if (fragmentChooseLanguageBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentChooseLanguageBinding3 = null;
        }
        fragmentChooseLanguageBinding3.setAdapter(getLanguagesAdapter());
        FragmentChooseLanguageBinding fragmentChooseLanguageBinding4 = this.binding;
        if (fragmentChooseLanguageBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentChooseLanguageBinding = fragmentChooseLanguageBinding4;
        }
        View root = fragmentChooseLanguageBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    private final LanguageLayoutAdapter getLanguagesAdapter() {
        String[] strArr = BuildConfig.TRANSLATION_ARRAY;
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        Locale currentLanguage = new LocalStorage(contextRequireContext).getCurrentLanguage();
        Intrinsics.checkNotNull(strArr);
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            Intrinsics.checkNotNull(str);
            String str2 = "English";
            String str3 = str.contentEquals("en_US") ? "English" : "Persian";
            if (!str.contentEquals("en_US")) {
                str2 = "فارسی";
            }
            String lowerCase = str.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            String language = currentLanguage.getLanguage();
            Intrinsics.checkNotNullExpressionValue(language, "getLanguage(...)");
            String lowerCase2 = language.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            arrayList.add(new SupportedLanguageModel(str3, str2, StringsKt.startsWith(lowerCase, lowerCase2, true)));
        }
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        return new LanguageLayoutAdapter(contextRequireContext2, arrayList, new Function1() { // from class: fast.dic.dict.fragments.ChooseLanguageFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return ChooseLanguageFragment.getLanguagesAdapter$lambda$1(this.f$0, (String) obj);
            }
        });
    }

    static final Unit getLanguagesAdapter$lambda$1(ChooseLanguageFragment chooseLanguageFragment, String language) {
        Intrinsics.checkNotNullParameter(language, "language");
        Context contextRequireContext = chooseLanguageFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        Locale localeSaveCurrentLanguage = new LocalStorage(contextRequireContext).saveCurrentLanguage(language);
        Context contextRequireContext2 = chooseLanguageFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        LocaleExtKt.updateCurrentLanguage(localeSaveCurrentLanguage, contextRequireContext2);
        ActivityCompat.recreate(chooseLanguageFragment.requireActivity());
        FDHtml fdHtml = chooseLanguageFragment.getFdHtml();
        Context contextRequireContext3 = chooseLanguageFragment.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext3, "requireContext(...)");
        fdHtml.updateContext(contextRequireContext3);
        return Unit.INSTANCE;
    }
}
