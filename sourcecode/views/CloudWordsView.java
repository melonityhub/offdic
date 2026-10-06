package fast.dic.dict.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.helpers.FDMainDatabaseHelper;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import fast.dic.dict.models.CloudWordModel;
import fast.dic.dict.utils.ColorsExtKt;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.FDCloudWords;
import fast.dic.dict.utils.Logger;
import fast.dic.dict.utils.TypefaceExtKt;
import io.sentry.Session;
import io.sentry.protocol.OperatingSystem;
import java.util.List;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;

/* JADX INFO: compiled from: CloudWordsView.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ2\u0010!\u001a\u00020\"2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0003b\u0016\b#\u0012\u0012\b$\u0012\u000e\b\fJ\u0004\b\b(%J\u0004\b\b(&J\u0010\u0010'\u001a\u00020\"2\u0006\u0010(\u001a\u00020)H\u0014J\u0010\u0010*\u001a\u00020\"2\u0006\u0010+\u001a\u00020\nH\u0002J(\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u0002012\u0006\u00102\u001a\u0002032\u0006\u00104\u001a\u00020\nH\u0002J\b\u00105\u001a\u000201H\u0002R\u001a\u0010\f\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\u001a\u0010\u0015\u001a\u00020\rX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082.¢\u0006\u0002\n\u0000R\u001a\u0010\u001c\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 Ê\u0001\u0010\b#\u0012\f\b$\u0012\b\b\fJ\u0004\b\b(7¨\u00066"}, d2 = {"Lfast/dic/dict/views/CloudWordsView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "builded", "", "getBuilded", "()Z", "setBuilded", "(Z)V", "hideWords", "getHideWords", "setHideWords", "disableHistory", "getDisableHistory", "setDisableHistory", "history", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "fdCloudWord", "Lfast/dic/dict/utils/FDCloudWords;", "textColor", "getTextColor", "()I", "setTextColor", "(I)V", MobileAdsBridgeBase.initializeMethodName, "", "Landroid/annotation/SuppressLint;", "value", "CustomViewStyleable", "Recycle", "onDraw", "canvas", "Landroid/graphics/Canvas;", OperatingSystem.JsonKeys.BUILD, "height", "generateWordView", "Landroid/widget/TextView;", "word", "", "typeface", "Landroid/graphics/Typeface;", "fontSize", "", "color", "getTypeface", "app", "ViewConstructor"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class CloudWordsView extends ConstraintLayout {
    private boolean builded;
    private boolean disableHistory;
    private FDCloudWords fdCloudWord;
    private boolean hideWords;
    private FDHistory history;
    private int textColor;

    public final boolean getBuilded() {
        return this.builded;
    }

    public final void setBuilded(boolean z) {
        this.builded = z;
    }

    public final boolean getHideWords() {
        return this.hideWords;
    }

    public final void setHideWords(boolean z) {
        this.hideWords = z;
    }

    public final boolean getDisableHistory() {
        return this.disableHistory;
    }

    public final void setDisableHistory(boolean z) {
        this.disableHistory = z;
    }

    public final int getTextColor() {
        return this.textColor;
    }

    public final void setTextColor(int i) {
        this.textColor = i;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudWordsView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        int i = R.attr.wordCloudColor;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.textColor = ColorsExtKt.toColor(i, context2);
        setId(View.generateViewId());
        initialize(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudWordsView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        int i = R.attr.wordCloudColor;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.textColor = ColorsExtKt.toColor(i, context2);
        setId(View.generateViewId());
        initialize(context, attrs);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CloudWordsView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        int i2 = R.attr.wordCloudColor;
        Context context2 = getContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getContext(...)");
        this.textColor = ColorsExtKt.toColor(i2, context2);
        setId(View.generateViewId());
        initialize(context, attrs);
    }

    private final void initialize(Context context, AttributeSet attrs) {
        this.history = new FDHistory(new FDDatabaseManager(new FDMainDatabaseHelper(Logger.INSTANCE.getLogger1(), context), context));
        FDHistory fDHistory = this.history;
        if (fDHistory == null) {
            Intrinsics.throwUninitializedPropertyAccessException("history");
            fDHistory = null;
        }
        this.fdCloudWord = new FDCloudWords(fDHistory);
        int color = ColorsExtKt.toColor(R.attr.wordCloudBackground, context);
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.word_of_the_day_styleable);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.word_of_the_day_styleable_android_background)) {
                color = typedArrayObtainStyledAttributes.getColor(R.styleable.word_of_the_day_styleable_android_background, color);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.word_of_the_day_styleable_android_textColor)) {
                this.textColor = typedArrayObtainStyledAttributes.getColor(R.styleable.word_of_the_day_styleable_android_textColor, color);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.word_of_the_day_styleable_hideWords)) {
                this.hideWords = typedArrayObtainStyledAttributes.getBoolean(R.styleable.word_of_the_day_styleable_hideWords, false);
            }
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.word_of_the_day_styleable_disableHistory)) {
                this.disableHistory = typedArrayObtainStyledAttributes.getBoolean(R.styleable.word_of_the_day_styleable_disableHistory, false);
            }
        }
        setBackgroundColor(color);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        Intrinsics.checkNotNullParameter(canvas, "canvas");
        super.onDraw(canvas);
        if (this.hideWords || this.builded) {
            return;
        }
        this.builded = true;
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        build(ContextExtKt.getWindowHeight(context));
    }

    /* JADX INFO: renamed from: fast.dic.dict.views.CloudWordsView$build$1, reason: invalid class name */
    /* JADX INFO: compiled from: CloudWordsView.kt */
    @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
    @DebugMetadata(c = "fast.dic.dict.views.CloudWordsView$build$1", f = "CloudWordsView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
    static final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $height;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(int i, Continuation<? super AnonymousClass1> continuation) {
            super(2, continuation);
            this.$height = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return CloudWordsView.this.new AnonymousClass1(this.$height, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((AnonymousClass1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            boolean z = !CloudWordsView.this.getDisableHistory();
            FDCloudWords fDCloudWords = CloudWordsView.this.fdCloudWord;
            if (fDCloudWords == null) {
                Intrinsics.throwUninitializedPropertyAccessException("fdCloudWord");
                fDCloudWords = null;
            }
            BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getMain()), null, null, new C14291(fDCloudWords.get(this.$height, z), CloudWordsView.this, null), 3, null);
            return Unit.INSTANCE;
        }

        /* JADX INFO: renamed from: fast.dic.dict.views.CloudWordsView$build$1$1, reason: invalid class name and collision with other inner class name */
        /* JADX INFO: compiled from: CloudWordsView.kt */
        @Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 4, 0}, xi = 48)
        @DebugMetadata(c = "fast.dic.dict.views.CloudWordsView$build$1$1", f = "CloudWordsView.kt", i = {}, l = {}, m = "invokeSuspend", n = {}, nl = {}, s = {}, v = 2)
        static final class C14291 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            final /* synthetic */ List<CloudWordModel> $words;
            int label;
            final /* synthetic */ CloudWordsView this$0;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C14291(List<CloudWordModel> list, CloudWordsView cloudWordsView, Continuation<? super C14291> continuation) {
                super(2, continuation);
                this.$words = list;
                this.this$0 = cloudWordsView;
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
                return new C14291(this.$words, this.this$0, continuation);
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
                return ((C14291) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Object invokeSuspend(Object obj) {
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                if (this.label != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                List<CloudWordModel> list = this.$words;
                CloudWordsView cloudWordsView = this.this$0;
                for (CloudWordModel cloudWordModel : list) {
                    int y = cloudWordModel.getPosition().getY();
                    int x = cloudWordModel.getPosition().getX();
                    TextView textViewGenerateWordView = cloudWordsView.generateWordView(cloudWordModel.getWord(), cloudWordsView.getTypeface(), cloudWordModel.getFontSize(), cloudWordsView.getTextColor());
                    cloudWordsView.addView(textViewGenerateWordView);
                    ConstraintSet constraintSet = new ConstraintSet();
                    CloudWordsView cloudWordsView2 = cloudWordsView;
                    constraintSet.clone(cloudWordsView2);
                    constraintSet.connect(textViewGenerateWordView.getId(), 3, cloudWordsView.getId(), 3, y);
                    constraintSet.connect(textViewGenerateWordView.getId(), 1, cloudWordsView.getId(), 1, x);
                    constraintSet.applyTo(cloudWordsView2);
                    cloudWordsView.setConstraintSet(constraintSet);
                }
                return Unit.INSTANCE;
            }
        }
    }

    private final void build(int height) {
        BuildersKt__Builders_commonKt.launch$default(CoroutineScopeKt.CoroutineScope(Dispatchers.getIO()), null, null, new AnonymousClass1(height, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final TextView generateWordView(String word, Typeface typeface, float fontSize, int color) {
        TextView textView = new TextView(getContext());
        textView.setText(word);
        textView.setTypeface(typeface);
        textView.setId(View.generateViewId());
        textView.setTextSize(2, fontSize);
        textView.setTextColor(color);
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Typeface getTypeface() {
        Typeface DEFAULT = Typeface.DEFAULT;
        Intrinsics.checkNotNullExpressionValue(DEFAULT, "DEFAULT");
        Context context = getContext();
        Intrinsics.checkNotNullExpressionValue(context, "getContext(...)");
        return TypefaceExtKt.iranSansWebLight(DEFAULT, context);
    }
}
