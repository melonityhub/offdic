package fast.dic.dict.fragments;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import androidx.webkit.internal.AssetHelper;
import com.ironsource.L6;
import com.ironsource.U3;
import com.mbridge.msdk.MBridgeConstans;
import com.parse.ParseUser;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.BuildConfig;
import fast.dic.dict.R;
import fast.dic.dict.adapters.MoreAdapter;
import fast.dic.dict.adapters.MoreRowEnum;
import fast.dic.dict.adapters.MoreRowModel;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.FragmentMoreBinding;
import fast.dic.dict.utils.BuildConfigExtKt;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDParseUserExtensionKt;
import fast.dic.dict.utils.NavControllerExtensionKt;
import ir.cafebazaar.poolakey.constant.Const;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.MutablePropertyReference1Impl;
import kotlin.properties.Delegates;
import kotlin.properties.ReadWriteProperty;
import kotlin.reflect.KProperty;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: MoreFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u00162\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0010\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\"H\u0002J\u000e\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000R+\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\u000e8B@BX\u0082\u008e\u0002¢\u0006\u0012\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012Ê\u0001\u0002\b'¨\u0006&"}, d2 = {"Lfast/dic/dict/fragments/MoreFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", L6.G1, "Lfast/dic/dict/adapters/MoreAdapter;", "getAdapter", "()Lfast/dic/dict/adapters/MoreAdapter;", "setAdapter", "(Lfast/dic/dict/adapters/MoreAdapter;)V", "Ljavax/inject/Inject;", "binding", "Lfast/dic/dict/databinding/FragmentMoreBinding;", "<set-?>", "", "isCurrentLanguagePersian", "()Z", "setCurrentLanguagePersian", "(Z)V", "isCurrentLanguagePersian$delegate", "Lkotlin/properties/ReadWriteProperty;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onViewCreated", "", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "selectedRowListener", U3.i.L, "", "getRowsFromPageType", "", "Lfast/dic/dict/adapters/MoreRowModel;", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class MoreFragment extends Hilt_MoreFragment {
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {new MutablePropertyReference1Impl(MoreFragment.class, "isCurrentLanguagePersian", "isCurrentLanguagePersian()Z", 0)};

    @Inject
    public MoreAdapter adapter;
    private FragmentMoreBinding binding;

    /* JADX INFO: renamed from: isCurrentLanguagePersian$delegate, reason: from kotlin metadata */
    private final ReadWriteProperty isCurrentLanguagePersian = Delegates.INSTANCE.notNull();

    /* JADX INFO: compiled from: MoreFragment.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[MoreRowEnum.values().length];
            try {
                iArr[MoreRowEnum.SETTINGS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[MoreRowEnum.CONTACT_US.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[MoreRowEnum.ABOUT_US.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[MoreRowEnum.SUGGESTION.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[MoreRowEnum.RATE_US.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[MoreRowEnum.HELP.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[MoreRowEnum.TERMS.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[MoreRowEnum.SUBSCRIPTIONS.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[MoreRowEnum.VERSION.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                iArr[MoreRowEnum.INNER_ROW.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
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
        getAdapter().setOnItemClickListener(new Function2() { // from class: fast.dic.dict.fragments.MoreFragment$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return MoreFragment.onCreateView$lambda$0(this.f$0, (MoreRowModel) obj, ((Integer) obj2).intValue());
            }
        });
        getAdapter().setOnSubscriptionClickListener(new Function0() { // from class: fast.dic.dict.fragments.MoreFragment$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return MoreFragment.onCreateView$lambda$1(this.f$0);
            }
        });
        getAdapter().submitList(getRowsFromPageType());
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

    static final Unit onCreateView$lambda$0(MoreFragment moreFragment, MoreRowModel moreRowModel, int i) {
        Intrinsics.checkNotNullParameter(moreRowModel, "<unused var>");
        moreFragment.selectedRowListener(i);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$1(MoreFragment moreFragment) {
        NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(moreFragment), R.id.newPricingFragment, null, 2, null);
        return Unit.INSTANCE;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        ContextExtKt.setToolbarTitle(this, getString(R.string.more));
    }

    private final void selectedRowListener(int position) {
        if (position < 0 || position >= getAdapter().getCurrentList().size()) {
            return;
        }
        switch (WhenMappings.$EnumSwitchMapping$0[getAdapter().getCurrentList().get(position).getType().ordinal()]) {
            case 1:
                NavControllerExtensionKt.navigateWithSlideAnimation$default(FragmentKt.findNavController(this), R.id.settingFragment, null, 2, null);
                return;
            case 2:
                try {
                    NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this), R.id.moreInnerFragment, new MoreInnerFragmentArgs(MorePagesEnum.ContactUs).toBundle());
                    return;
                } catch (Exception e) {
                    e.printStackTrace();
                    return;
                }
            case 3:
                try {
                    NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this), R.id.helpFragment, new HelpFragmentArgs("https://fastdic.com/partners" + (isCurrentLanguagePersian() ? "" : "/english") + "?disableSections=true", getAdapter().getCurrentList().get(position).getTitle(), false, 4, null).toBundle());
                    return;
                } catch (Exception e2) {
                    e2.printStackTrace();
                    return;
                }
            case 4:
                try {
                    if (BuildConfigExtKt.isBazaar()) {
                        try {
                            Intent intent = new Intent("android.intent.action.VIEW");
                            intent.setData(Uri.parse("bazaar://details?id=fast.dic.dict"));
                            intent.setPackage(Const.BAZAAR_PACKAGE_NAME);
                            startActivity(intent);
                            return;
                        } catch (ActivityNotFoundException e3) {
                            e3.printStackTrace();
                            startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://cafebazaar.ir/app/fast.dic.dict")));
                            return;
                        }
                    }
                    Intent intent2 = new Intent();
                    intent2.setAction("android.intent.action.SEND");
                    intent2.putExtra("android.intent.extra.SUBJECT", R.string.fast_dictionary_description);
                    intent2.putExtra("android.intent.extra.TEXT", getString(R.string.Invite_user_part1) + "\nhttps://fastdic.com/softwares/android \n" + getString(R.string.Invite_user_part2));
                    intent2.setType(AssetHelper.DEFAULT_MIME_TYPE);
                    Context context = getContext();
                    if (context != null) {
                        Intent intentCreateChooser = Intent.createChooser(intent2, getString(R.string.offer_fast_dictionary));
                        Intrinsics.checkNotNullExpressionValue(intentCreateChooser, "createChooser(...)");
                        ContextExtKt.startActivityWithIntent(context, intentCreateChooser);
                        Unit unit = Unit.INSTANCE;
                        return;
                    }
                    return;
                } catch (Exception unused) {
                    Unit unit2 = Unit.INSTANCE;
                    return;
                }
            case 5:
                if (BuildConfigExtKt.isBazaar()) {
                    try {
                        Intent intent3 = new Intent("android.intent.action.VIEW");
                        intent3.setData(Uri.parse("bazaar://details?id=fast.dic.dict"));
                        intent3.setPackage(Const.BAZAAR_PACKAGE_NAME);
                        startActivity(intent3);
                        return;
                    } catch (ActivityNotFoundException e4) {
                        e4.printStackTrace();
                        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://cafebazaar.ir/app/fast.dic.dict")));
                        return;
                    }
                }
                Intent intent4 = new Intent("android.intent.action.VIEW");
                Context context2 = getContext();
                Uri uri = Uri.parse("market://details?id=" + (context2 != null ? context2.getPackageName() : null));
                Intrinsics.checkNotNullExpressionValue(uri, "parse(...)");
                intent4.setData(uri);
                Context context3 = getContext();
                if (context3 != null) {
                    ContextExtKt.startActivityWithIntent(context3, intent4);
                    return;
                }
                return;
            case 6:
                FragmentActivity fragmentActivityRequireActivity = requireActivity();
                Intrinsics.checkNotNullExpressionValue(fragmentActivityRequireActivity, "requireActivity(...)");
                ContextExtKt.openChromeTab(fragmentActivityRequireActivity, "https://fastdic.com/blog/category/help");
                return;
            case 7:
                try {
                    NavControllerExtensionKt.navigateWithSlideAnimation(FragmentKt.findNavController(this), R.id.moreInnerFragment, new MoreInnerFragmentArgs(MorePagesEnum.Terms).toBundle());
                    return;
                } catch (Exception e5) {
                    e5.printStackTrace();
                    return;
                }
            case 8:
            case 9:
            case 10:
                return;
            default:
                throw new NoWhenBranchMatchedException();
        }
    }

    private final List<MoreRowModel> getRowsFromPageType() {
        ArrayList arrayList = new ArrayList();
        if (!BuildConfigExtKt.isPlayStore() || ParseUser.getCurrentUser() != null || isCurrentLanguagePersian()) {
            if (FDParseUserExtensionKt.hasSubscription(ParseUser.getCurrentUser())) {
                String string = getString(R.string.subscription_renewal);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                arrayList.add(new MoreRowModel(string, MoreRowEnum.SUBSCRIPTIONS));
            } else {
                String string2 = getString(R.string.remove_ads_and_by_pro_subscription);
                Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                arrayList.add(new MoreRowModel(string2, MoreRowEnum.SUBSCRIPTIONS));
            }
        }
        String string3 = getString(R.string.SettingsMenu);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        arrayList.add(new MoreRowModel(string3, MoreRowEnum.SETTINGS));
        String string4 = getString(R.string.ContactMenu);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        arrayList.add(new MoreRowModel(string4, MoreRowEnum.CONTACT_US));
        String string5 = getString(R.string.AboutMenu);
        Intrinsics.checkNotNullExpressionValue(string5, "getString(...)");
        arrayList.add(new MoreRowModel(string5, MoreRowEnum.ABOUT_US));
        String string6 = getString(R.string.SuggestMenu);
        Intrinsics.checkNotNullExpressionValue(string6, "getString(...)");
        arrayList.add(new MoreRowModel(string6, MoreRowEnum.SUGGESTION));
        String string7 = getString(R.string.RateMenu);
        Intrinsics.checkNotNullExpressionValue(string7, "getString(...)");
        arrayList.add(new MoreRowModel(string7, MoreRowEnum.RATE_US));
        String string8 = getString(R.string.HelpMenu);
        Intrinsics.checkNotNullExpressionValue(string8, "getString(...)");
        arrayList.add(new MoreRowModel(string8, MoreRowEnum.HELP));
        String string9 = getString(R.string.TermsAndConditionsMenu);
        Intrinsics.checkNotNullExpressionValue(string9, "getString(...)");
        arrayList.add(new MoreRowModel(string9, MoreRowEnum.TERMS));
        String string10 = getString(R.string.copyright);
        Intrinsics.checkNotNullExpressionValue(string10, "getString(...)");
        arrayList.add(new MoreRowModel(StringsKt.replace$default(StringsKt.replace$default(string10, "{{version}}", BuildConfig.VERSION_NAME, false, 4, (Object) null), "{{copyright}}", String.valueOf(Calendar.getInstance().get(1)), false, 4, (Object) null), MoreRowEnum.VERSION));
        return arrayList;
    }
}
