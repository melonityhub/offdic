package fast.dic.dict.fragments;

import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import androidx.navigation.fragment.NavHostFragment;
import com.parse.ParseException;
import com.parse.ParseObject;
import com.parse.ParseUser;
import com.parse.SaveCallback;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.helpers.FDInternetHelper;
import fast.dic.dict.services.parse.FDParseUser;
import fast.dic.dict.services.parse.FDParseWrapper;
import fast.dic.dict.services.parse.FDPurchased;
import fast.dic.dict.services.parse.ParseError;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.KeyEventExtKt;
import fast.dic.dict.utils.ViewExtKt;
import fast.dic.dict.views.CustomProgressbar;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: UpdateProfileFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0002R#\u0010\u0004\u001a\u00020\u00058\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\n¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u000e\u0010\u000b\u001a\u00020\fX\u0082.¢\u0006\u0002\n\u0000Ê\u0001\u0002\b\u0018¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/fragments/UpdateProfileFragment;", "Lfast/dic/dict/bases/BaseFragment;", "<init>", "()V", "fdParseWrapper", "Lfast/dic/dict/services/parse/FDParseWrapper;", "getFdParseWrapper", "()Lfast/dic/dict/services/parse/FDParseWrapper;", "setFdParseWrapper", "(Lfast/dic/dict/services/parse/FDParseWrapper;)V", "Ljavax/inject/Inject;", "loadingSpinner", "Lfast/dic/dict/views/CustomProgressbar;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "editProfile", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public final class UpdateProfileFragment extends Hilt_UpdateProfileFragment {

    @Inject
    public FDParseWrapper fdParseWrapper;
    private CustomProgressbar loadingSpinner;

    public final FDParseWrapper getFdParseWrapper() {
        FDParseWrapper fDParseWrapper = this.fdParseWrapper;
        if (fDParseWrapper != null) {
            return fDParseWrapper;
        }
        Intrinsics.throwUninitializedPropertyAccessException("fdParseWrapper");
        return null;
    }

    public final void setFdParseWrapper(FDParseWrapper fDParseWrapper) {
        Intrinsics.checkNotNullParameter(fDParseWrapper, "<set-?>");
        this.fdParseWrapper = fDParseWrapper;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) throws ParseException {
        String name;
        String email;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        View viewInflate = inflater.inflate(R.layout.fragment_update_profile, container, false);
        View viewFindViewById = viewInflate.findViewById(R.id.loading_spinner);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.loadingSpinner = (CustomProgressbar) viewFindViewById;
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        final EditText editText = (EditText) viewInflate.findViewById(R.id.user_full_name_input);
        String str = "";
        if (fDParseUser == null || (name = fDParseUser.getName()) == null) {
            name = "";
        }
        editText.setText(name);
        editText.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.fragments.UpdateProfileFragment.onCreateView.1
            @Override // android.view.View.OnKeyListener
            public boolean onKey(View v, int keyCode, KeyEvent event) throws ParseException {
                Intrinsics.checkNotNullParameter(event, "event");
                EditText editText2 = editText;
                Intrinsics.checkNotNull(editText2);
                if (!KeyEventExtKt.isReturnKey(editText2, keyCode, event.getAction())) {
                    return false;
                }
                this.editProfile();
                return true;
            }
        });
        final EditText editText2 = (EditText) viewInflate.findViewById(R.id.email_address_input);
        if (fDParseUser != null && (email = fDParseUser.getEmail()) != null) {
            str = email;
        }
        editText2.setText(str);
        ((Button) viewInflate.findViewById(R.id.edit_Button)).setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.fragments.UpdateProfileFragment$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) throws ParseException {
                this.f$0.editProfile();
            }
        });
        FDParseWrapper.fetchParseUser$default(getFdParseWrapper(), new Function2() { // from class: fast.dic.dict.fragments.UpdateProfileFragment$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return UpdateProfileFragment.onCreateView$lambda$1(editText, editText2, (ParseObject) obj, (FDPurchased) obj2);
            }
        }, new Function2() { // from class: fast.dic.dict.fragments.UpdateProfileFragment$$ExternalSyntheticLambda3
            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(Object obj, Object obj2) {
                return UpdateProfileFragment.onCreateView$lambda$2(editText, editText2, (FDParseUser) obj, (FDPurchased) obj2);
            }
        }, null, 4, null);
        return viewInflate;
    }

    static final Unit onCreateView$lambda$1(EditText editText, EditText editText2, ParseObject user, FDPurchased fDPurchased) {
        String name;
        String email;
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(fDPurchased, "<unused var>");
        FDParseUser fDParseUser = user instanceof FDParseUser ? (FDParseUser) user : null;
        String str = "";
        if (fDParseUser == null || (name = fDParseUser.getName()) == null) {
            name = "";
        }
        editText.setText(name);
        if (fDParseUser != null && (email = fDParseUser.getEmail()) != null) {
            str = email;
        }
        editText2.setText(str);
        return Unit.INSTANCE;
    }

    static final Unit onCreateView$lambda$2(EditText editText, EditText editText2, FDParseUser user, FDPurchased fDPurchased) {
        Intrinsics.checkNotNullParameter(user, "user");
        Intrinsics.checkNotNullParameter(fDPurchased, "<unused var>");
        String name = user.getName();
        if (name == null) {
            name = "";
        }
        editText.setText(name);
        String email = user.getEmail();
        editText2.setText(email != null ? email : "");
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void editProfile() throws ParseException {
        final Context contextRequireContext = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        String string = ((EditText) requireView().findViewById(R.id.user_full_name_input)).getText().toString();
        String string2 = ((EditText) requireView().findViewById(R.id.email_address_input)).getText().toString();
        String str = string;
        int length = str.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = str.charAt(!z ? i : length) <= ' ';
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        if (str.subSequence(i, length + 1).toString().contentEquals("")) {
            return;
        }
        String str2 = string2;
        int length2 = str2.length() - 1;
        int i2 = 0;
        boolean z3 = false;
        while (i2 <= length2) {
            boolean z4 = str2.charAt(!z3 ? i2 : length2) <= ' ';
            if (z3) {
                if (!z4) {
                    break;
                } else {
                    length2--;
                }
            } else if (z4) {
                i2++;
            } else {
                z3 = true;
            }
        }
        if (str2.subSequence(i2, length2 + 1).toString().contentEquals("")) {
            return;
        }
        FDInternetHelper fDInternetHelper = FDInternetHelper.INSTANCE;
        Context contextRequireContext2 = requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext2, "requireContext(...)");
        if (!fDInternetHelper.isInternetAvailable(contextRequireContext2)) {
            FDAlertManger.INSTANCE.showNotConnectedToInternetAlert(requireContext());
            return;
        }
        CustomProgressbar customProgressbar = this.loadingSpinner;
        if (customProgressbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingSpinner");
            customProgressbar = null;
        }
        ViewExtKt.showMe$default(customProgressbar, 0L, 1, null);
        ParseUser currentUser = ParseUser.getCurrentUser();
        FDParseUser fDParseUser = currentUser instanceof FDParseUser ? (FDParseUser) currentUser : null;
        if (fDParseUser != null) {
            fDParseUser.setName(string);
            fDParseUser.setUsername(string2);
            if (!fDParseUser.getEmail().equals(string2)) {
                fDParseUser.setEmail(string2);
            }
            fDParseUser.saveInBackground(new SaveCallback() { // from class: fast.dic.dict.fragments.UpdateProfileFragment$$ExternalSyntheticLambda0
                @Override // com.parse.SaveCallback, com.parse.ParseCallback1
                public final void done(ParseException parseException) {
                    UpdateProfileFragment.editProfile$lambda$2(this.f$0, contextRequireContext, parseException);
                }
            });
        }
    }

    static final void editProfile$lambda$2(UpdateProfileFragment updateProfileFragment, Context context, ParseException parseException) {
        if (parseException == null) {
            FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
            String string = updateProfileFragment.getString(R.string.edit_user_information);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            String string2 = updateProfileFragment.getString(R.string.successfully_edit_user_information);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            String string3 = updateProfileFragment.getString(R.string.close);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            fDAlertManger.showAlertWithOutForeCloseApp(string, string2, string3, context);
            if (updateProfileFragment.isAdded()) {
                NavHostFragment.INSTANCE.findNavController(updateProfileFragment).navigateUp();
            }
        } else {
            ParseError.Companion companion = ParseError.INSTANCE;
            String message = parseException.getMessage();
            if (message == null) {
                message = "";
            }
            FDAlertManger.INSTANCE.showErrorMessageAlert(companion.getRightMessage(message, parseException.getCode(), updateProfileFragment.requireContext()), context);
        }
        CustomProgressbar customProgressbar = updateProfileFragment.loadingSpinner;
        if (customProgressbar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadingSpinner");
            customProgressbar = null;
        }
        ViewExtKt.hideMe$default(customProgressbar, 0L, 1, null);
    }
}
