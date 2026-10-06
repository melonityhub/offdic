package fast.dic.dict.fragments;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.navigation.NavArgsLazy;
import androidx.navigation.fragment.FragmentKt;
import com.ironsource.L6;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.adapters.MoreAdapter;
import fast.dic.dict.adapters.MoreRowModel;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentMoreBinding;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: MoreInnerFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020\u001c2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010&\u001a\u00020$2\u0006\u0010'\u001a\u00020(H\u0002J\b\u0010)\u001a\u00020$H\u0002J\u0016\u0010*\u001a\b\u0012\u0004\u0012\u00020,0+2\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u0002002\u0006\u0010-\u001a\u00020.H\u0002J\b\u00101\u001a\u00020$H\u0002J\b\u00102\u001a\u00020$H\u0002J\b\u00103\u001a\u00020$H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R\u001b\u0010\r\u001a\u00020\u000e8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u000f\u0010\u0010R+\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0013\u001a\u00020\u00148B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0019\u0010\u001a\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018Ê\u0001\u0002\b5¨\u00064"}, d2 = {"Lfast/dic/dict/fragments/MoreInnerFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/adapters/MoreAdapter;", "getAdapter", "()Lfast/dic/dict/adapters/MoreAdapter;", "setAdapter", "(Lfast/dic/dict/adapters/MoreAdapter;)V", "Ljavax/inject/Inject;", "binding", "Lfast/dic/dict/databinding/FragmentMoreBinding;", "args", "Lfast/dic/dict/fragments/MoreInnerFragmentArgs;", "getArgs", "()Lfast/dic/dict/fragments/MoreInnerFragmentArgs;", "args$delegate", "Landroidx/navigation/NavArgsLazy;", "<set-?>", "", "isCurrentLanguagePersian", "()Z", "setCurrentLanguagePersian", "(Z)V", "isCurrentLanguagePersian$delegate", "Lkotlin/properties/ReadWriteProperty;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "selectedRowListener", U3.i.L, "", "openContactUs", "getRowsFromPageType", "", "Lfast/dic/dict/adapters/MoreRowModel;", "type", "Lfast/dic/dict/fragments/MorePagesEnum;", "getPageTitleByType", "", "website", "instagram", "twitter", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class MoreInnerFragment extends Hilt_MoreInnerFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {new MutablePropertyReference1Impl(MoreInnerFragment.class, "isCurrentLanguagePersian", "isCurrentLanguagePersian()Z", 0)};

    @Inject
    public MoreAdapter adapter;

    /* JADX INFO: renamed from: args$delegate, reason: from kotlin metadata */
    private final NavArgsLazy args;
    private FragmentMoreBinding binding;

    /* JADX INFO: renamed from: isCurrentLanguagePersian$delegate, reason: from kotlin metadata */
    private final ReadWriteProperty isCurrentLanguagePersian = Delegates.INSTANCE.notNull();

    /* JADX INFO: compiled from: MoreInnerFragment.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MorePagesEnum.values().length];
            try {
                iArr[MorePagesEnum.Terms.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MorePagesEnum.ContactUs.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public MoreInnerFragment() {
        final MoreInnerFragment moreInnerFragment = this;
        this.args = new NavArgsLazy(Reflection.getOrCreateKotlinClass(MoreInnerFragmentArgs.class), new Function0<Bundle>() { // from class: fast.dic.dict.fragments.MoreInnerFragment$special$$inlined$navArgs$1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final Bundle invoke() {
                Bundle arguments = moreInnerFragment.getArguments();
                if (arguments != null) {
                    return arguments;
                }
                throw new IllegalStateException("Fragment " + moreInnerFragment + " has null arguments");
            }
        });
    }

    public final MoreAdapter getAdapter() {
        MoreAdapter moreAdapter = this.adapter;
        if (moreAdapter != null) {
            return moreAdapter;
        }
        Intrinsics.throwUninitializedPropertyAccessException(L6.G1);
        return null;
    }

    public final void setAdapter(MoreAdapter moreAdapter) {
        Intrinsics.checkNotNullParameter(moreAdapter, "<set-?>");
        this.adapter = moreAdapter;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final MoreInnerFragmentArgs getArgs() {
        return (MoreInnerFragmentArgs) this.args.getValue();
    }

    private final boolean isCurrentLanguagePersian() {
        return ((Boolean) this.isCurrentLanguagePersian.getValue(this, $$delegatedProperties[0])).booleanValue();
    }

    private final void setCurrentLanguagePersian(boolean z) {
        this.isCurrentLanguagePersian.setValue(this, $$delegatedProperties[0], Boolean.valueOf(z));
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        setCurrentLanguagePersian(new LocalStorage(contextRequireContext).currentLanguageIsPersian());
        FragmentMoreBinding fragmentMoreBindingInflate = FragmentMoreBinding.inflate(inflater, container, false);
        Intrinsics.checkNotNullExpressionValue(fragmentMoreBindingInflate, "inflate(...)");
        this.binding = fragmentMoreBindingInflate;
        FragmentMoreBinding fragmentMoreBinding = null;
        if (fragmentMoreBindingInflate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMoreBindingInflate = null;
        }
        fragmentMoreBindingInflate.setAdapter(getAdapter());
        FragmentMoreBinding fragmentMoreBinding2 = this.binding;
        if (fragmentMoreBinding2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMoreBinding2 = null;
        }
        fragmentMoreBinding2.setLifecycleOwner(getViewLifecycleOwner());
        FragmentMoreBinding fragmentMoreBinding3 = this.binding;
        if (fragmentMoreBinding3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
            fragmentMoreBinding3 = null;
        }
        fragmentMoreBinding3.settingsRecyclerView.setHasFixedSize(true);
        getAdapter().setOnItemClickListener(new Function2() { // from class: fast.dic.dict.fragments.MoreInnerFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MoreInnerFragment.onCreateView$lambda$0(this.f$0, (MoreRowModel) obj, ((Integer) obj2).intValue());
            }
        });
        getAdapter().setOnSubscriptionClickListener(new Function0() { // from class: fast.dic.dict.fragments.MoreInnerFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MoreInnerFragment.onCreateView$lambda$1(this.f$0);
            }
        });
        getAdapter().submitList(getRowsFromPageType(getArgs().getPage()));
        FragmentMoreBinding fragmentMoreBinding4 = this.binding;
        if (fragmentMoreBinding4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("binding");
        } else {
            fragmentMoreBinding = fragmentMoreBinding4;
        }
        View root = fragmentMoreBinding.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "getRoot(...)");
        return root;
    }

    static final Unit onCreateView$lambda$0(MoreInnerFragment moreInnerFragment, MoreRowModel moreRowModel, int i) {
        Intrinsics.checkNotNullParameter(moreRowModel, "<unused var>");
        moreInnerFragment.selectedRowListener(i);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(MoreInnerFragment moreInnerFragment) {
        NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(moreInnerFragment), R.id.newPricingFragment, null, 2, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ContextExtKt.setToolbarTitle(this, getPageTitleByType(getArgs().getPage()));
    }

    private final void selectedRowListener(int position) {
        if (getArgs().getPage() == MorePagesEnum.Terms) {
            String str = isCurrentLanguagePersian() ? "/persian" : "";
            if (position == 0) {
                Uri uri = Uri.parse("https://fastdic.com/terms-conditions" + str + "?disableSections=true");
                Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                Intent intent = new Intent("android.intent.action.VIEW", uri);
                Context context = getContext();
                if (context != null) {
                    ContextExtKt.startActivityWithIntent(context, intent);
                    return;
                }
                return;
            }
            if (position != 1) {
                return;
            }
            Uri uri2 = Uri.parse("https://fastdic.com/privacy-policy" + str + "?disableSections=true");
            Intrinsics.checkNotNullExpressionValue(uri2, "parse(...)");
            Intent intent2 = new Intent("android.intent.action.VIEW", uri2);
            Context context2 = getContext();
            if (context2 != null) {
                ContextExtKt.startActivityWithIntent(context2, intent2);
                return;
            }
            return;
        }
        if (getArgs().getPage() == MorePagesEnum.ContactUs) {
            if (position == 0) {
                website();
                return;
            }
            if (position == 1) {
                openContactUs();
            } else if (position == 2) {
                instagram();
            } else {
                if (position != 3) {
                    return;
                }
                twitter();
            }
        }
    }

    private final void openContactUs() {
        try {
            NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this), R.id.helpFragment, new HelpFragmentArgs("https://fastdic.com/contact-us?detail=" + ("Device: " + ContextExtKt.getAndroidDeviceName() + ", Android Version: " + ContextExtKt.getAndroidVersion() + ", App Version: 5.7.4(444)") + "&disableSections=true", getString(R.string.ContactMenu), true).toBundle());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private final List<MoreRowModel> getRowsFromPageType(MorePagesEnum type) {
        ArrayList arrayList = new ArrayList();
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            String string = getString(R.string.terms_and_policy);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            arrayList.add(new MoreRowModel(string, null, 2, null));
            String string2 = getString(R.string.privacy_policy);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            arrayList.add(new MoreRowModel(string2, null, 2, null));
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            String string3 = getString(R.string.fastdic_website_contact_us);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            arrayList.add(new MoreRowModel(string3, null, 2, null));
            String string4 = getString(R.string.contact_us_with_email_contact_us);
            Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
            arrayList.add(new MoreRowModel(string4, null, 2, null));
            String string5 = getString(R.string.fastdic_instagram_contact_us);
            Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
            arrayList.add(new MoreRowModel(string5, null, 2, null));
            String string6 = getString(R.string.fast_dic_twitter_contact_us);
            Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
            arrayList.add(new MoreRowModel(string6, null, 2, null));
        }
        return arrayList;
    }

    private final String getPageTitleByType(MorePagesEnum type) {
        int i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        if (i == 1) {
            String string = getString(R.string.TermsAndConditionsMenu);
            Intrinsics.checkNotNull(string);
            return string;
        }
        if (i != 2) {
            throw new NoWhenBranchMatchedException();
        }
        String string2 = getString(R.string.ContactMenu);
        Intrinsics.checkNotNull(string2);
        return string2;
    }

    private final void website() {
        Uri uri = Uri.parse("https://www.fastdic.com/");
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        Context context = getContext();
        if (context != null) {
            ContextExtKt.startActivityWithIntent(context, intent);
        }
    }

    private final void instagram() {
        Uri uri = Uri.parse("https://www.instagram.com/fastdictionary/");
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        Context context = getContext();
        if (context != null) {
            ContextExtKt.startActivityWithIntent(context, intent);
        }
    }

    private final void twitter() {
        Uri uri = Uri.parse("https://twitter.com/fastdic");
        Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
        Intent intent = new Intent("android.intent.action.VIEW", uri);
        Context context = getContext();
        if (context != null) {
            ContextExtKt.startActivityWithIntent(context, intent);
        }
    }
}
