package fast.dic.dict.bases;

import android.content.Context;
import android.os.Bundle;
import android.text.format.DateFormat;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.core.app.ShareCompat;
import androidx.core.content.FileProvider;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentResultListener;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavDestination;
import androidx.navigation.fragment.FragmentKt;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.play.core.splitcompat.SplitCompat;
import com.ironsource.U3;
import com.uttampanchasara.pdfgenerator.CreatePdf;
import com.yandex.div.core.dagger.Names;
import dagger.hilt.android.AndroidEntryPoint;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.domain.entity.WordSortEnum;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.database.ListModel;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDAlertManger;
import fast.dic.dict.utils.FDHtmlPdf;
import fast.dic.dict.utils.LocaleExtKt;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.views.LoadingSpinner;
import io.bidmachine.util.MimeTypes;
import java.io.File;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: BaseFragment.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\b\u0017\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0011H\u0016J\u0010\u0010\u001c\u001a\u00020\u001a2\u0006\u0010\u001d\u001a\u00020\u0011H\u0002J\b\u0010\u001e\u001a\u00020\u001aH\u0016J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u0004\u0018\u00010\u0011J \u0010\"\u001a\u00020\u001a2\u0010\b\u0002\u0010#\u001a\n\u0012\u0004\u0012\u00020%\u0018\u00010$2\u0006\u0010&\u001a\u00020'J\u001e\u0010\"\u001a\u00020\u001a2\f\u0010#\u001a\b\u0012\u0004\u0012\u00020%0$2\u0006\u0010(\u001a\u00020\u0005H\u0002J*\u0010)\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00112\b\u0010*\u001a\u0004\u0018\u00010\u00052\u0006\u0010+\u001a\u00020,2\u0006\u0010\u0004\u001a\u00020\u0005H\u0002J \u0010-\u001a\u00020\u001a2\b\u0010+\u001a\u0004\u0018\u00010,2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u0011J\u0006\u0010.\u001a\u00020 J\u0016\u0010/\u001a\u00020\u001a2\u0006\u00100\u001a\u00020\u00052\u0006\u00101\u001a\u00020 J\u001c\u00102\u001a\u00020\u001a2\u0006\u00100\u001a\u00020\u00052\f\u00103\u001a\b\u0012\u0004\u0012\u00020\u001a04J\u0006\u00105\u001a\u00020\u001aR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R#\u0010\u0012\u001a\u00020\u00138\u0006@\u0006X\u0087.\u0092\u0002\u0002\b\u0018¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017R\u0014\u00106\u001a\b\u0012\u0004\u0012\u00020807X\u0082\u0004¢\u0006\u0002\n\u0000Ê\u0001\u0002\b:¨\u00069"}, d2 = {"Lfast/dic/dict/bases/BaseFragment;", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "<init>", "()V", "filename", "", "getFilename", "()Ljava/lang/String;", "setFilename", "(Ljava/lang/String;)V", "localLoadingSpinner", "Lfast/dic/dict/views/LoadingSpinner;", "getLocalLoadingSpinner", "()Lfast/dic/dict/views/LoadingSpinner;", "setLocalLoadingSpinner", "(Lfast/dic/dict/views/LoadingSpinner;)V", "mContext", "Landroid/content/Context;", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "getHistory", "()Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "setHistory", "(Lfast/dic/dict/helpers/database/couchbase/FDHistory;)V", "Ljavax/inject/Inject;", "onAttach", "", Names.CONTEXT, "updateConfig", "wrapper", "onStart", "onBackPressed", "", "getFragmentContext", "createPdfFileFromWordLists", "listOfWords", "", "Lfast/dic/dict/models/database/ListModel;", "sort", "Lfast/dic/dict/domain/entity/WordSortEnum;", "name", "createPdfFile", "html", "dir", "Ljava/io/File;", "openShareActivityForPath", "isModal", "setDialogResult", U3.i.W, "value", "observeOnDialogDismiss", "callback", "Lkotlin/Function0;", "dismissLoginFlow", "loginFlow", "", "", "app", "Ldagger/hilt/android/AndroidEntryPoint;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@AndroidEntryPoint
public class BaseFragment extends Hilt_BaseFragment {

    @Inject
    public FDHistory history;
    private LoadingSpinner localLoadingSpinner;
    private Context mContext;
    private String filename = "history";
    private final Set<Integer> loginFlow = SetsKt.setOf((Object[]) new Integer[]{Integer.valueOf(R.id.loginSignupFragment), Integer.valueOf(R.id.loginSignupFragmentDialog), Integer.valueOf(R.id.enterPasswordFragment), Integer.valueOf(R.id.enterPasswordFragmentDialog), Integer.valueOf(R.id.forgetPasswordFragment), Integer.valueOf(R.id.forgetPasswordFragmentDialog), Integer.valueOf(R.id.registrationFormFragment), Integer.valueOf(R.id.registrationFormFragmentDialog), Integer.valueOf(R.id.finishRegistrationFragment), Integer.valueOf(R.id.finishRegistrationFragmentDialog)});

    public boolean onBackPressed() {
        return false;
    }

    public final String getFilename() {
        return this.filename;
    }

    public final void setFilename(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.filename = str;
    }

    public final LoadingSpinner getLocalLoadingSpinner() {
        return this.localLoadingSpinner;
    }

    public final void setLocalLoadingSpinner(LoadingSpinner loadingSpinner) {
        this.localLoadingSpinner = loadingSpinner;
    }

    public final FDHistory getHistory() {
        FDHistory fDHistory = this.history;
        if (fDHistory != null) {
            return fDHistory;
        }
        Intrinsics.throwUninitializedPropertyAccessException("history");
        return null;
    }

    public final void setHistory(FDHistory fDHistory) {
        Intrinsics.checkNotNullParameter(fDHistory, "<set-?>");
        this.history = fDHistory;
    }

    @Override // fast.dic.dict.bases.Hilt_BaseFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        this.mContext = context;
        updateConfig(context);
        SplitCompat.install(context);
    }

    private final void updateConfig(Context wrapper) {
        LocaleExtKt.updateCurrentLanguage(new LocalStorage(wrapper).getCurrentLanguage(), wrapper);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        ViewParent parent = requireView().getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = viewGroup.getLayoutParams();
        FragmentActivity activity = getActivity();
        layoutParams.height = activity != null ? ContextExtKt.getWindowHeight(activity) : 0;
        try {
            View view = getView();
            Object parent2 = view != null ? view.getParent() : null;
            Intrinsics.checkNotNull(parent2, "null cannot be cast to non-null type android.view.View");
            BottomSheetBehavior.from((View) parent2).setState(3);
        } catch (Exception unused) {
        }
    }

    public final Context getFragmentContext() {
        Context context = this.mContext;
        return context == null ? getContext() : context;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void createPdfFileFromWordLists$default(BaseFragment baseFragment, List list, WordSortEnum wordSortEnum, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createPdfFileFromWordLists");
        }
        if ((i & 1) != 0) {
            list = null;
        }
        baseFragment.createPdfFileFromWordLists((List<ListModel>) list, wordSortEnum);
    }

    public final void createPdfFileFromWordLists(List<ListModel> listOfWords, WordSortEnum sort) {
        Intrinsics.checkNotNullParameter(sort, "sort");
        if (listOfWords == null) {
            listOfWords = FDHistory.get$default(getHistory(), null, 0, 0, true, false, sort, 22, null);
        }
        createPdfFileFromWordLists(listOfWords, this.filename);
    }

    private final void createPdfFileFromWordLists(List<ListModel> listOfWords, String name) {
        if (listOfWords.isEmpty()) {
            return;
        }
        LoadingSpinner loadingSpinner = this.localLoadingSpinner;
        if (loadingSpinner == null) {
            Context fragmentContext = getFragmentContext();
            loadingSpinner = fragmentContext != null ? new LoadingSpinner(fragmentContext) : null;
            this.localLoadingSpinner = loadingSpinner;
        }
        Intrinsics.checkNotNull(loadingSpinner);
        loadingSpinner.showPreparingFile();
        String strGenerateWordListHtml = FDHtmlPdf.INSTANCE.generateWordListHtml(listOfWords);
        String dataDir = requireActivity().getApplicationInfo().dataDir;
        Intrinsics.checkNotNullExpressionValue(dataDir, "dataDir");
        File file = new File(dataDir + "/fastdic");
        if (!file.exists()) {
            file.mkdirs();
        }
        String str = "fast_dictionary_" + name + "_" + ((Object) DateFormat.format("yyyy_MM_dd", new Date().getTime()));
        Context fragmentContext2 = getFragmentContext();
        if (fragmentContext2 != null) {
            createPdfFile(fragmentContext2, strGenerateWordListHtml, file, str);
        }
    }

    private final void createPdfFile(final Context context, String html, final File dir, final String filename) {
        CreatePdf contentBaseUrl = new CreatePdf(context).setPdfName(filename).openPrintDialog(false).setContentBaseUrl(null);
        Intrinsics.checkNotNull(html);
        CreatePdf content = contentBaseUrl.setContent(html);
        String path = dir.getPath();
        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
        content.setFilePath(path).setCallbackListener(new CreatePdf.PdfCallbackListener() { // from class: fast.dic.dict.bases.BaseFragment.createPdfFile.1
            @Override // com.uttampanchasara.pdfgenerator.CreatePdf.PdfCallbackListener
            public void onFailure(String errorMsg) {
                Intrinsics.checkNotNullParameter(errorMsg, "errorMsg");
                Logger.INSTANCE.getLogger1().debug("=====> FAIL TO CREATE PDF " + errorMsg, new Object[0]);
                LoadingSpinner localLoadingSpinner = BaseFragment.this.getLocalLoadingSpinner();
                if (localLoadingSpinner != null) {
                    localLoadingSpinner.dismiss();
                }
                FDAlertManger fDAlertManger = FDAlertManger.INSTANCE;
                String string = BaseFragment.this.getString(R.string.fail_to_create_pdf_file);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                fDAlertManger.showErrorMessageAlert(string, context);
            }

            @Override // com.uttampanchasara.pdfgenerator.CreatePdf.PdfCallbackListener
            public void onSuccess(String filePath) {
                Intrinsics.checkNotNullParameter(filePath, "filePath");
                Logger.INSTANCE.getLogger1().debug("=====> CREATED PDF " + filePath, new Object[0]);
                LoadingSpinner localLoadingSpinner = BaseFragment.this.getLocalLoadingSpinner();
                if (localLoadingSpinner != null) {
                    localLoadingSpinner.dismiss();
                }
                BaseFragment.this.openShareActivityForPath(dir, filename + ".pdf", context);
            }
        }).create();
    }

    public final void openShareActivityForPath(File dir, String filename, Context context) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        Intrinsics.checkNotNullParameter(context, "context");
        new ShareCompat.IntentBuilder(context).setStream(FileProvider.getUriForFile(context, context.getApplicationContext().getPackageName() + ".provider", new File(dir, filename))).setType(MimeTypes.APPLICATION_PDF).startChooser();
    }

    public final boolean isModal() {
        return getDialog() != null;
    }

    public final void setDialogResult(String key, boolean value) {
        Intrinsics.checkNotNullParameter(key, "key");
        FragmentManager parentFragmentManager = getParentFragmentManager();
        Bundle bundle = new Bundle();
        bundle.putBoolean(key, value);
        Unit unit = Unit.INSTANCE;
        parentFragmentManager.setFragmentResult(key, bundle);
    }

    public final void observeOnDialogDismiss(final String key, final Function0<Unit> callback) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(callback, "callback");
        getParentFragmentManager().setFragmentResultListener(key, getViewLifecycleOwner(), new FragmentResultListener() { // from class: fast.dic.dict.bases.BaseFragment$$ExternalSyntheticLambda0
            @Override // androidx.fragment.app.FragmentResultListener
            public final void onFragmentResult(String str, Bundle bundle) {
                BaseFragment.observeOnDialogDismiss$lambda$0(key, callback, str, bundle);
            }
        });
    }

    static final void observeOnDialogDismiss$lambda$0(String str, Function0 function0, String str2, Bundle bundle) {
        Intrinsics.checkNotNullParameter(str2, "<unused var>");
        Intrinsics.checkNotNullParameter(bundle, "bundle");
        if (bundle.getBoolean(str)) {
            function0.invoke();
        }
    }

    public final void dismissLoginFlow() {
        NavDestination destination;
        NavDestination destination2;
        Set<Integer> set = this.loginFlow;
        if ((set instanceof Collection) && set.isEmpty()) {
            return;
        }
        Iterator<T> it = set.iterator();
        while (it.hasNext()) {
            int iIntValue = ((Number) it.next()).intValue();
            NavBackStackEntry currentBackStackEntry = FragmentKt.findNavController(this).getCurrentBackStackEntry();
            if (currentBackStackEntry != null && (destination = currentBackStackEntry.getDestination()) != null && iIntValue == destination.getId()) {
                while (true) {
                    BaseFragment baseFragment = this;
                    FragmentKt.findNavController(baseFragment).popBackStack();
                    Set<Integer> set2 = this.loginFlow;
                    if ((set2 instanceof Collection) && set2.isEmpty()) {
                        return;
                    }
                    Iterator<T> it2 = set2.iterator();
                    while (it2.hasNext()) {
                        int iIntValue2 = ((Number) it2.next()).intValue();
                        NavBackStackEntry currentBackStackEntry2 = FragmentKt.findNavController(baseFragment).getCurrentBackStackEntry();
                        if (currentBackStackEntry2 == null || (destination2 = currentBackStackEntry2.getDestination()) == null || iIntValue2 != destination2.getId()) {
                        }
                    }
                    return;
                }
            }
        }
    }
}
