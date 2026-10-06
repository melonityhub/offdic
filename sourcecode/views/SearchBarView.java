package fast.dic.dict.views;

import android.animation.ValueAnimator;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.jakewharton.rxbinding3.widget.RxTextView;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.database.LocalStorage;
import fast.dic.dict.databinding.SearchBarBinding;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.EditTextExKt;
import fast.dic.dict.utils.FDLanguageWord;
import fast.dic.dict.utils.IntExtKt;
import fast.dic.dict.utils.KeyEventExtKt;
import fast.dic.dict.utils.LoggerKt;
import fast.dic.dict.utils.StringExtKt;
import fast.dic.dict.utils.ViewExtKt;
import io.reactivex.Observable;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.disposables.Disposable;
import io.reactivex.functions.Consumer;
import io.sentry.Session;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: SearchBarView.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0007\n\u0002\b(\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\u0006\u0010_\u001a\u00020\"J\u0018\u0010`\u001a\u00020\"2\u0006\u0010I\u001a\u0002002\b\b\u0002\u0010a\u001a\u00020\u0015J\u0010\u0010b\u001a\u00020\"2\u0006\u0010I\u001a\u000200H\u0002J)\u0010c\u001a\u00020\"2!\u0010d\u001a\u001d\u0012\u0013\u0012\u001100¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(e\u0012\u0004\u0012\u00020\"0/J\b\u0010f\u001a\u00020\"H\u0002J\b\u0010d\u001a\u00020\"H\u0002J\b\u0010g\u001a\u00020\"H\u0002J\u0018\u0010h\u001a\u00020\n2\u0006\u0010i\u001a\u00020\n2\u0006\u0010j\u001a\u00020\nH\u0002J\u0018\u0010k\u001a\u00020\"2\u0010\u0010l\u001a\f\u0012\u0004\u0012\u00020\u00150!j\u0002`AJ\u0006\u0010m\u001a\u00020\"J\b\u0010n\u001a\u00020\"H\u0002J\u0006\u0010o\u001a\u00020\"J\u0006\u0010p\u001a\u00020\"J\u0006\u0010q\u001a\u00020\"J\u0006\u0010r\u001a\u00020\"J\u0006\u0010s\u001a\u00020\"J\b\u0010t\u001a\u00020\"H\u0002J\u000e\u0010u\u001a\u00020\n2\u0006\u0010v\u001a\u00020\u0015J\u0010\u0010w\u001a\u00020\n2\u0006\u0010I\u001a\u000200H\u0002J\u0010\u0010x\u001a\u0002002\u0006\u0010v\u001a\u00020\u0015H\u0002J\u000e\u0010y\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u0003R\u001a\u0010\f\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u000e\"\u0004\b\u0013\u0010\u0010R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001a\u0010\u0016\"\u0004\b\u001b\u0010\u0018R\u0012\u0010\u001c\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001dR\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R \u0010 \u001a\b\u0012\u0004\u0012\u00020\"0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R \u0010'\u001a\b\u0012\u0004\u0012\u00020\"0!X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010$\"\u0004\b)\u0010&R$\u0010*\u001a\f\u0012\u0004\u0012\u00020\"0!j\u0002`+X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b,\u0010$\"\u0004\b-\u0010&R*\u0010.\u001a\u0012\u0012\u0004\u0012\u000200\u0012\u0004\u0012\u00020\"0/j\u0002`1X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u00103\"\u0004\b4\u00105RE\u00106\u001a-\u0012\u0004\u0012\u00020\u0015\u0012\u0015\u0012\u0013\u0018\u00010\u0015¢\u0006\f\b8\u0012\b\b9\u0012\u0004\b\b(:\u0012\u0004\u0012\u00020\"\u0018\u000107j\u0004\u0018\u0001`;X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R$\u0010@\u001a\f\u0012\u0004\u0012\u00020\u00150!j\u0002`AX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bB\u0010$\"\u0004\bC\u0010&R\u000e\u0010D\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010E\u001a\u00020FX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010G\u001a\u00020\u0015X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bG\u0010\u0016\"\u0004\bH\u0010\u0018R$\u0010J\u001a\u0002002\u0006\u0010I\u001a\u0002008F@FX\u0086\u000e¢\u0006\f\u001a\u0004\bK\u0010L\"\u0004\bM\u0010NR$\u0010O\u001a\u00020\u00152\u0006\u0010I\u001a\u00020\u0015@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bP\u0010\u0016\"\u0004\bQ\u0010\u0018R$\u0010S\u001a\u00020R2\u0006\u0010I\u001a\u00020R@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bT\u0010U\"\u0004\bV\u0010WR\u001e\u0010X\u001a\u0002002\u0006\u0010I\u001a\u000200@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\bY\u0010NR$\u0010Z\u001a\u00020\n2\u0006\u0010I\u001a\u00020\n@FX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b[\u0010\u000e\"\u0004\b\\\u0010\u0010R\u001e\u0010]\u001a\u0002002\u0006\u0010I\u001a\u000200@BX\u0082\u000e¢\u0006\b\n\u0000\"\u0004\b^\u0010N¨\u0006z"}, d2 = {"Lfast/dic/dict/views/SearchBarView;", "Landroidx/cardview/widget/CardView;", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "lastSize", "getLastSize", "()I", "setLastSize", "(I)V", "lastNewLines", "getLastNewLines", "setLastNewLines", "isPasted", "", "()Z", "setPasted", "(Z)V", "withAnimation", "getWithAnimation", "setWithAnimation", "defaultHeightSize", "Ljava/lang/Integer;", "observedTextChange", "Lio/reactivex/disposables/Disposable;", "onDismissingMode", "Lkotlin/Function0;", "", "getOnDismissingMode", "()Lkotlin/jvm/functions/Function0;", "setOnDismissingMode", "(Lkotlin/jvm/functions/Function0;)V", "onStartOpeningMode", "getOnStartOpeningMode", "setOnStartOpeningMode", "onClickedListener", "Lfast/dic/dict/views/OnViewClickListener;", "getOnClickedListener", "setOnClickedListener", "enterSearchListener", "Lkotlin/Function1;", "", "Lfast/dic/dict/views/OnViewReturnKeyListener;", "getEnterSearchListener", "()Lkotlin/jvm/functions/Function1;", "setEnterSearchListener", "(Lkotlin/jvm/functions/Function1;)V", "stateChangeListener", "Lkotlin/Function2;", "Lkotlin/ParameterName;", "name", "showAnimation", "Lfast/dic/dict/views/OnStateChangeListener;", "getStateChangeListener", "()Lkotlin/jvm/functions/Function2;", "setStateChangeListener", "(Lkotlin/jvm/functions/Function2;)V", "clearButtonClickedListener", "Lfast/dic/dict/views/OnClearListener;", "getClearButtonClickedListener", "setClearButtonClickedListener", "isEnglishLastLanguage", "binding", "Lfast/dic/dict/databinding/SearchBarBinding;", "isOpenedBar", "setOpenedBar", "value", "currentWord", "getCurrentWord", "()Ljava/lang/String;", "setCurrentWord", "(Ljava/lang/String;)V", "readOnlyMode", "getReadOnlyMode", "setReadOnlyMode", "", "cornerRadius", "getCornerRadius", "()F", "setCornerRadius", "(F)V", "inputHint", "setInputHint", "clearButtonVisibility", "getClearButtonVisibility", "setClearButtonVisibility", "wordCounter", "setWordCounter", "destroy", "setText", "applyToView", "checkLanguage", "setOnTextChanged", "textChanged", "word", "loadSearchInputConfig", "applyAnimationForInput", "applyAnimationForHeight", TypedValues.TransitionType.S_TO, "from", "setOnClearButtonClickedListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "selectAll", "readyBarForSearchAnimation", "dismissBarForSearchAnimation", "requestForFocus", "showKeyboard", "hideKeyboard", "disableParentFocusable", "addCornerRadius", "getSearchBoxDirection", "isEnglish", "checkClearButtonVisibility", "getSearchPlaceholderString", "verticallyCenter", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SearchBarView extends CardView {
    private final SearchBarBinding binding;
    private Function0<Boolean> clearButtonClickedListener;
    private int clearButtonVisibility;
    private float cornerRadius;
    private Integer defaultHeightSize;
    private Function1<? super String, Unit> enterSearchListener;
    private String inputHint;
    private boolean isEnglishLastLanguage;
    private boolean isOpenedBar;
    private boolean isPasted;
    private int lastNewLines;
    private int lastSize;
    private Disposable observedTextChange;
    private Function0<Unit> onClickedListener;
    private Function0<Unit> onDismissingMode;
    private Function0<Unit> onStartOpeningMode;
    private boolean readOnlyMode;
    private Function2<? super Boolean, ? super Boolean, Unit> stateChangeListener;
    private boolean withAnimation;
    private String wordCounter;

    static final boolean clearButtonClickedListener$lambda$0() {
        return true;
    }

    public final int getSearchBoxDirection(boolean isEnglish) {
        return isEnglish ? 0 : 1;
    }

    public final int getLastSize() {
        return this.lastSize;
    }

    public final void setLastSize(int i) {
        this.lastSize = i;
    }

    public final int getLastNewLines() {
        return this.lastNewLines;
    }

    public final void setLastNewLines(int i) {
        this.lastNewLines = i;
    }

    /* JADX INFO: renamed from: isPasted, reason: from getter */
    public final boolean getIsPasted() {
        return this.isPasted;
    }

    public final void setPasted(boolean z) {
        this.isPasted = z;
    }

    public final boolean getWithAnimation() {
        return this.withAnimation;
    }

    public final void setWithAnimation(boolean z) {
        this.withAnimation = z;
    }

    public final Function0<Unit> getOnDismissingMode() {
        return this.onDismissingMode;
    }

    public final void setOnDismissingMode(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onDismissingMode = function0;
    }

    public final Function0<Unit> getOnStartOpeningMode() {
        return this.onStartOpeningMode;
    }

    public final void setOnStartOpeningMode(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onStartOpeningMode = function0;
    }

    public final Function0<Unit> getOnClickedListener() {
        return this.onClickedListener;
    }

    public final void setOnClickedListener(Function0<Unit> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.onClickedListener = function0;
    }

    static final Unit enterSearchListener$lambda$0(String it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<String, Unit> getEnterSearchListener() {
        return this.enterSearchListener;
    }

    public final void setEnterSearchListener(Function1<? super String, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.enterSearchListener = function1;
    }

    public final Function2<Boolean, Boolean, Unit> getStateChangeListener() {
        return this.stateChangeListener;
    }

    public final void setStateChangeListener(Function2<? super Boolean, ? super Boolean, Unit> function2) {
        this.stateChangeListener = function2;
    }

    public final Function0<Boolean> getClearButtonClickedListener() {
        return this.clearButtonClickedListener;
    }

    public final void setClearButtonClickedListener(Function0<Boolean> function0) {
        Intrinsics.checkNotNullParameter(function0, "<set-?>");
        this.clearButtonClickedListener = function0;
    }

    /* JADX INFO: renamed from: isOpenedBar, reason: from getter */
    public final boolean getIsOpenedBar() {
        return this.isOpenedBar;
    }

    public final void setOpenedBar(boolean z) {
        this.isOpenedBar = z;
    }

    public final void setCurrentWord(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        setText$default(this, value, false, 2, null);
        checkLanguage(value);
    }

    public final String getCurrentWord() {
        return this.binding.searchInput.getText().toString();
    }

    public final boolean getReadOnlyMode() {
        return this.readOnlyMode;
    }

    public final void setReadOnlyMode(boolean z) {
        this.readOnlyMode = z;
        if (z) {
            this.binding.searchInput.clearFocus();
            if (Build.VERSION.SDK_INT >= 26) {
                this.binding.searchInput.setFocusable(0);
            }
            this.binding.searchInput.setEnabled(false);
            this.binding.searchInput.setClickable(false);
            setClearButtonVisibility(8);
            return;
        }
        if (Build.VERSION.SDK_INT >= 26) {
            this.binding.searchInput.setFocusable(1);
        }
        this.binding.searchInput.setEnabled(true);
        this.binding.searchInput.setClickable(true);
        setClearButtonVisibility(0);
    }

    public final float getCornerRadius() {
        return this.cornerRadius;
    }

    public final void setCornerRadius(float f) {
        this.cornerRadius = f;
        this.binding.parentCardView.setRadius(f);
    }

    private final void setInputHint(String str) {
        this.inputHint = str;
        this.binding.searchInput.setHint(str);
    }

    public final int getClearButtonVisibility() {
        return this.clearButtonVisibility;
    }

    public final void setClearButtonVisibility(int i) {
        this.clearButtonVisibility = i;
        this.binding.clearButtonContainer.setVisibility(i);
    }

    private final void setWordCounter(String str) {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        boolean zCurrentLanguageIsPersian = new LocalStorage(context).currentLanguageIsPersian();
        String string = getContext().getString(R.string.word_count, 500, Integer.valueOf(StringExtKt.wordCount(str)));
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        if (zCurrentLanguageIsPersian) {
            string = FDLanguageWord.INSTANCE.replaceNumbersToFarsi(string);
        }
        this.wordCounter = string;
        this.binding.wordsCountLabel.setText(this.wordCounter);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        this.withAnimation = true;
        this.onDismissingMode = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onStartOpeningMode = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onClickedListener = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.enterSearchListener = new Function1() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchBarView.enterSearchListener$lambda$0((String) obj);
            }
        };
        this.clearButtonClickedListener = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SearchBarView.clearButtonClickedListener$lambda$0());
            }
        };
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.isEnglishLastLanguage = !new LocalStorage(context2).currentLanguageIsPersian();
        SearchBarBinding searchBarBindingInflate = SearchBarBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(searchBarBindingInflate, "inflate(...)");
        this.binding = searchBarBindingInflate;
        this.cornerRadius = getContext().getResources().getDimension(R.dimen.searchbar_corner_radius);
        this.inputHint = getSearchPlaceholderString(this.isEnglishLastLanguage);
        this.clearButtonVisibility = 8;
        this.wordCounter = "";
        loadSearchInputConfig();
        setBackgroundColor(0);
        searchBarBindingInflate.clearButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchBarView._init_$lambda$0(this.f$0, view);
            }
        });
        searchBarBindingInflate.parentCardView.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickedListener.invoke();
            }
        });
        searchBarBindingInflate.searchInput.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickedListener.invoke();
            }
        });
        searchBarBindingInflate.searchIcon.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchBarView searchBarView = this.f$0;
                searchBarView.enterSearchListener.invoke(searchBarView.getCurrentWord());
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.withAnimation = true;
        this.onDismissingMode = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onStartOpeningMode = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onClickedListener = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.enterSearchListener = new Function1() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchBarView.enterSearchListener$lambda$0((String) obj);
            }
        };
        this.clearButtonClickedListener = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SearchBarView.clearButtonClickedListener$lambda$0());
            }
        };
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.isEnglishLastLanguage = !new LocalStorage(context2).currentLanguageIsPersian();
        SearchBarBinding searchBarBindingInflate = SearchBarBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(searchBarBindingInflate, "inflate(...)");
        this.binding = searchBarBindingInflate;
        this.cornerRadius = getContext().getResources().getDimension(R.dimen.searchbar_corner_radius);
        this.inputHint = getSearchPlaceholderString(this.isEnglishLastLanguage);
        this.clearButtonVisibility = 8;
        this.wordCounter = "";
        loadSearchInputConfig();
        setBackgroundColor(0);
        searchBarBindingInflate.clearButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchBarView._init_$lambda$0(this.f$0, view);
            }
        });
        searchBarBindingInflate.parentCardView.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickedListener.invoke();
            }
        });
        searchBarBindingInflate.searchInput.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickedListener.invoke();
            }
        });
        searchBarBindingInflate.searchIcon.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchBarView searchBarView = this.f$0;
                searchBarView.enterSearchListener.invoke(searchBarView.getCurrentWord());
            }
        });
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SearchBarView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        this.withAnimation = true;
        this.onDismissingMode = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda9
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onStartOpeningMode = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.onClickedListener = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda11
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Unit.INSTANCE;
            }
        };
        this.enterSearchListener = new Function1() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda12
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchBarView.enterSearchListener$lambda$0((String) obj);
            }
        };
        this.clearButtonClickedListener = new Function0() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda13
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return Boolean.valueOf(SearchBarView.clearButtonClickedListener$lambda$0());
            }
        };
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.isEnglishLastLanguage = !new LocalStorage(context2).currentLanguageIsPersian();
        SearchBarBinding searchBarBindingInflate = SearchBarBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(searchBarBindingInflate, "inflate(...)");
        this.binding = searchBarBindingInflate;
        this.cornerRadius = getContext().getResources().getDimension(R.dimen.searchbar_corner_radius);
        this.inputHint = getSearchPlaceholderString(this.isEnglishLastLanguage);
        this.clearButtonVisibility = 8;
        this.wordCounter = "";
        loadSearchInputConfig();
        setBackgroundColor(0);
        searchBarBindingInflate.clearButtonContainer.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda14
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchBarView._init_$lambda$0(this.f$0, view);
            }
        });
        searchBarBindingInflate.parentCardView.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickedListener.invoke();
            }
        });
        searchBarBindingInflate.searchInput.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f$0.onClickedListener.invoke();
            }
        });
        searchBarBindingInflate.searchIcon.setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SearchBarView searchBarView = this.f$0;
                searchBarView.enterSearchListener.invoke(searchBarView.getCurrentWord());
            }
        });
    }

    static final void _init_$lambda$0(SearchBarView searchBarView, View view) {
        if (searchBarView.clearButtonClickedListener.invoke().booleanValue()) {
            searchBarView.setText("", true);
        }
    }

    public final void destroy() {
        Disposable disposable = this.observedTextChange;
        if (disposable != null) {
            disposable.dispose();
        }
    }

    public static /* synthetic */ void setText$default(SearchBarView searchBarView, String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        searchBarView.setText(str, z);
    }

    public final void setText(String value, boolean applyToView) {
        Intrinsics.checkNotNullParameter(value, "value");
        checkLanguage(value);
        if (applyToView) {
            this.binding.searchInput.setText(value);
        }
    }

    private final void checkLanguage(String value) {
        setWordCounter(value);
        setClearButtonVisibility(checkClearButtonVisibility(value));
        if (value.length() > 0) {
            boolean zIsEnglish = FDLanguageWord.INSTANCE.isEnglish(value);
            setInputHint(getSearchPlaceholderString(zIsEnglish));
            this.isEnglishLastLanguage = zIsEnglish;
        }
    }

    public final void setOnTextChanged(final Function1<? super String, Unit> textChanged) {
        Intrinsics.checkNotNullParameter(textChanged, "textChanged");
        EditText searchInput = this.binding.searchInput;
        Intrinsics.checkNotNullExpressionValue(searchInput, "searchInput");
        Observable<CharSequence> observableObserveOn = RxTextView.textChanges(searchInput).debounce(100L, TimeUnit.MILLISECONDS).observeOn(AndroidSchedulers.mainThread());
        final Function1 function1 = new Function1() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda6
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SearchBarView.setOnTextChanged$lambda$0(this.f$0, textChanged, (CharSequence) obj);
            }
        };
        this.observedTextChange = observableObserveOn.subscribe(new Consumer() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda7
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                function1.invoke(obj);
            }
        });
    }

    static final Unit setOnTextChanged$lambda$0(SearchBarView searchBarView, Function1 function1, CharSequence word) {
        Intrinsics.checkNotNullParameter(word, "word");
        searchBarView.textChanged();
        function1.invoke(word.toString());
        return Unit.INSTANCE;
    }

    private final void loadSearchInputConfig() {
        this.binding.searchInput.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda4
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                SearchBarView.loadSearchInputConfig$lambda$0(this.f$0, view, z);
            }
        });
        this.binding.searchInput.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: fast.dic.dict.views.SearchBarView.loadSearchInputConfig.2
            @Override // android.view.View.AccessibilityDelegate
            public void sendAccessibilityEvent(View host, int eventType) {
                Intrinsics.checkNotNullParameter(host, "host");
                super.sendAccessibilityEvent(host, eventType);
                if (eventType == 8) {
                    SearchBarView.this.binding.searchInput.setSelection(SearchBarView.this.binding.searchInput.length());
                }
            }
        });
        int i = this.binding.searchInput.getLayoutParams().height;
        this.lastSize = i;
        if (i == 0) {
            Context context = getContext();
            Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
            this.lastSize = IntExtKt.toDimensionUnit$default(60.0f, context, 0, 2, null);
        }
        Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        booleanRef.element = true;
        this.binding.searchInput.addTextChangedListener(new AnonymousClass3(booleanRef, this));
        this.binding.searchInput.setOnKeyListener(new View.OnKeyListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda5
            @Override // android.view.View.OnKeyListener
            public final boolean onKey(View view, int i2, KeyEvent keyEvent) {
                return SearchBarView.loadSearchInputConfig$lambda$1(this.f$0, view, i2, keyEvent);
            }
        });
        this.binding.searchInput.setImeOptions(3);
        this.binding.searchInput.setRawInputType(1);
    }

    static final void loadSearchInputConfig$lambda$0(SearchBarView searchBarView, View view, boolean z) {
        String str = searchBarView.withAnimation ? "true" : "false";
        if (z) {
            searchBarView.readyBarForSearchAnimation();
        }
        if (z && !searchBarView.isOpenedBar) {
            searchBarView.setCornerRadius(0.0f);
            Function2<? super Boolean, ? super Boolean, Unit> function2 = searchBarView.stateChangeListener;
            if (function2 != null) {
                function2.invoke(true, Boolean.valueOf(Boolean.parseBoolean(str)));
            }
        }
        if (z && view.isFocusableInTouchMode()) {
            searchBarView.isOpenedBar = true;
        }
    }

    /* JADX INFO: renamed from: fast.dic.dict.views.SearchBarView$loadSearchInputConfig$3, reason: invalid class name */
    /* JADX INFO: compiled from: SearchBarView.kt */
    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J*\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J*\u0010\n\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\fH\u0016¨\u0006\r"}, d2 = {"fast/dic/dict/views/SearchBarView$loadSearchInputConfig$3", "Landroid/text/TextWatcher;", "beforeTextChanged", "", "p0", "", "p1", "", "p2", "p3", "onTextChanged", "afterTextChanged", "Landroid/text/Editable;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class AnonymousClass3 implements TextWatcher {
        final /* synthetic */ Ref.BooleanRef $wasEmpty;
        final /* synthetic */ SearchBarView this$0;

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence p0, int p1, int p2, int p3) {
        }

        AnonymousClass3(Ref.BooleanRef booleanRef, SearchBarView searchBarView) {
            this.$wasEmpty = booleanRef;
            this.this$0 = searchBarView;
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence p0, int p1, int p2, int p3) {
            if (p0 != null && p0.length() == 0) {
                this.$wasEmpty.element = true;
            }
            if (this.this$0.defaultHeightSize == null) {
                SearchBarView searchBarView = this.this$0;
                searchBarView.defaultHeightSize = Integer.valueOf(searchBarView.binding.searchInput.getLayoutParams().height);
            }
            Integer num = this.this$0.defaultHeightSize;
            if (num != null && num.intValue() == 0) {
                SearchBarView searchBarView2 = this.this$0;
                Context context = searchBarView2.getContext();
                Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
                searchBarView2.defaultHeightSize = Integer.valueOf(IntExtKt.toDimensionUnit$default(60.0f, context, 0, 2, null));
            }
            SearchBarView searchBarView3 = this.this$0;
            searchBarView3.setLastNewLines(searchBarView3.binding.searchInput.getLineCount());
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable p0) {
            List listSplit$default;
            if (this.$wasEmpty.element && this.this$0.binding.searchInput.getLineCount() > 1) {
                this.this$0.setPasted(true);
            }
            int size = 0;
            this.$wasEmpty.element = false;
            if (p0 != null && (listSplit$default = StringsKt.split$default((CharSequence) p0, new String[]{" "}, false, 0, 6, (Object) null)) != null) {
                size = listSplit$default.size();
            }
            if (size <= 5 || this.this$0.binding.searchInput.getLineCount() != 0) {
                this.this$0.applyAnimationForInput();
                return;
            }
            EditText searchInput = this.this$0.binding.searchInput;
            Intrinsics.checkNotNullExpressionValue(searchInput, "searchInput");
            final SearchBarView searchBarView = this.this$0;
            ViewExtKt.afterLayoutConfiguration(searchInput, new Function0() { // from class: fast.dic.dict.views.SearchBarView$loadSearchInputConfig$3$$ExternalSyntheticLambda0
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    return SearchBarView.AnonymousClass3.afterTextChanged$lambda$0(searchBarView);
                }
            });
        }

        static final Unit afterTextChanged$lambda$0(SearchBarView searchBarView) {
            searchBarView.setLastNewLines(searchBarView.binding.searchInput.getLineCount());
            searchBarView.applyAnimationForInput();
            return Unit.INSTANCE;
        }
    }

    static final boolean loadSearchInputConfig$lambda$1(SearchBarView searchBarView, View view, int i, KeyEvent keyEvent) {
        Intrinsics.checkNotNull(view);
        if (!KeyEventExtKt.isReturnKey(view, keyEvent != null ? keyEvent.getKeyCode() : 0, keyEvent != null ? keyEvent.getAction() : 0)) {
            return false;
        }
        LoggerKt.getLogger().debug("A return key pressed with keyCode = " + i, new Object[0]);
        searchBarView.enterSearchListener.invoke(searchBarView.getCurrentWord());
        return true;
    }

    private final void textChanged() {
        String string = this.binding.searchInput.getText().toString();
        if (StringExtKt.wordCount(string) >= 500) {
            string = CollectionsKt.joinToString$default(CollectionsKt.slice((List) new Regex("\\s+").split(string, 0), RangesKt.until(0, 500)), " ", null, null, 0, null, null, 62, null);
        }
        setText(string, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void applyAnimationForInput() {
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        int dimensionUnit$default = IntExtKt.toDimensionUnit$default(20.0f, context, 0, 2, null);
        int lineCount = this.binding.searchInput.getLineCount() - 1;
        int iMin = Math.min(lineCount, 3) * dimensionUnit$default;
        int i = this.lastSize;
        Integer num = this.defaultHeightSize;
        Intrinsics.checkNotNull(num);
        int iIntValue = num.intValue() + iMin;
        if (this.lastNewLines < lineCount && !this.isPasted) {
            i = this.lastSize;
            Integer num2 = this.defaultHeightSize;
            Intrinsics.checkNotNull(num2);
            iIntValue = num2.intValue() - iMin;
        }
        if (!this.isPasted && lineCount >= 3) {
            Integer num3 = this.defaultHeightSize;
            Intrinsics.checkNotNull(num3);
            if (iIntValue > num3.intValue() + (dimensionUnit$default * 3)) {
                return;
            }
        }
        this.isPasted = false;
        if (iIntValue != this.lastSize) {
            applyAnimationForHeight(iIntValue, i);
            this.lastSize = iIntValue;
        }
    }

    private final int applyAnimationForHeight(int to, int from) {
        ValueAnimator duration = ValueAnimator.ofInt(from, to).setDuration(200L);
        duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda0
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                SearchBarView.applyAnimationForHeight$lambda$0(this.f$0, valueAnimator);
            }
        });
        duration.start();
        return to;
    }

    static final void applyAnimationForHeight$lambda$0(SearchBarView searchBarView, ValueAnimator animation) {
        Intrinsics.checkNotNullParameter(animation, "animation");
        ViewGroup.LayoutParams layoutParams = searchBarView.binding.searchInput.getLayoutParams();
        Object animatedValue = animation.getAnimatedValue();
        Intrinsics.checkNotNull(animatedValue, "null cannot be cast to non-null type kotlin.Int");
        layoutParams.height = ((Integer) animatedValue).intValue();
        searchBarView.binding.searchInput.invalidate();
        searchBarView.binding.searchInput.requestLayout();
        searchBarView.binding.searchInput.forceLayout();
        searchBarView.binding.parentCardView.invalidate();
        searchBarView.binding.parentCardView.requestLayout();
        searchBarView.binding.parentCardView.forceLayout();
    }

    public final void setOnClearButtonClickedListener(Function0<Boolean> listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        this.clearButtonClickedListener = listener;
    }

    public final void selectAll() {
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: fast.dic.dict.views.SearchBarView$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                SearchBarView.selectAll$lambda$0(this.f$0);
            }
        }, 500L);
    }

    static final void selectAll$lambda$0(SearchBarView searchBarView) {
        searchBarView.binding.searchInput.setSelectAllOnFocus(true);
        searchBarView.binding.searchInput.selectAll();
    }

    private final void readyBarForSearchAnimation() {
        if (this.withAnimation) {
            LinearLayout wordCountView = this.binding.wordCountView;
            Intrinsics.checkNotNullExpressionValue(wordCountView, "wordCountView");
            ViewExtKt.showMe$default(wordCountView, 0L, 1, null);
        } else {
            SearchBarView searchBarView = this;
            ViewExtKt.fullWidthWithoutAnimation(searchBarView);
            ViewExtKt.moveToTopWithoutAnimation(searchBarView);
            LinearLayout wordCountView2 = this.binding.wordCountView;
            Intrinsics.checkNotNullExpressionValue(wordCountView2, "wordCountView");
            ViewExtKt.showMe$default(wordCountView2, 0L, 1, null);
        }
        this.onStartOpeningMode.invoke();
    }

    public final void dismissBarForSearchAnimation() {
        this.isOpenedBar = false;
        this.onDismissingMode.invoke();
        SearchBarView searchBarView = this;
        ViewExtKt.moveToCenter(searchBarView);
        ViewExtKt.addSearchBarCorner(this);
        ViewExtKt.decreaseHeightAnimation(searchBarView);
        ViewExtKt.resetSearchBarWidthAnimation(searchBarView);
        LinearLayout wordCountView = this.binding.wordCountView;
        Intrinsics.checkNotNullExpressionValue(wordCountView, "wordCountView");
        ViewExtKt.hideMe$default(wordCountView, 0L, 1, null);
        addCornerRadius();
    }

    public final void requestForFocus() {
        showKeyboard();
        this.binding.searchInput.clearFocus();
        this.binding.searchInput.requestFocus();
    }

    public final void showKeyboard() {
        EditText searchInput = this.binding.searchInput;
        Intrinsics.checkNotNullExpressionValue(searchInput, "searchInput");
        EditTextExKt.showKeyboard(searchInput);
    }

    public final void hideKeyboard() {
        EditText searchInput = this.binding.searchInput;
        Intrinsics.checkNotNullExpressionValue(searchInput, "searchInput");
        EditTextExKt.hideKeyboard(searchInput);
    }

    public final void disableParentFocusable() {
        LinearLayout wordCountView = this.binding.wordCountView;
        Intrinsics.checkNotNullExpressionValue(wordCountView, "wordCountView");
        ViewExtKt.showMe$default(wordCountView, 0L, 1, null);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(R.id.search_input_container);
        Intrinsics.checkNotNull(constraintLayout);
        ViewExtKt.disableParentFocusable(constraintLayout);
    }

    private final void addCornerRadius() {
        setCornerRadius(getResources().getDimension(R.dimen.searchbar_corner_radius));
    }

    private final int checkClearButtonVisibility(String value) {
        return value.length() == 0 ? 8 : 0;
    }

    private final String getSearchPlaceholderString(boolean isEnglish) {
        if (isEnglish && this.isEnglishLastLanguage) {
            String string = getContext().getString(R.string.en_search_bar_hint);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        String string2 = getContext().getString(R.string.fa_search_bar_hint);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        return string2;
    }

    public final void verticallyCenter(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int windowHalfHeight = ContextExtKt.getWindowHalfHeight(context);
        SearchBarView searchBarView = this;
        ViewGroup.LayoutParams layoutParams = searchBarView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i = marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
        ViewGroup.LayoutParams layoutParams2 = searchBarView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        int i2 = marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0;
        ViewGroup.LayoutParams layoutParams3 = searchBarView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        ViewExtKt.setMargins(searchBarView, i, windowHalfHeight, i2, marginLayoutParams3 != null ? marginLayoutParams3.bottomMargin : 0);
    }
}
