package fast.dic.dict.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.databinding.WordOfTheDayBinding;
import fast.dic.dict.utils.ContextExtKt;
import fast.dic.dict.utils.ViewExtKt;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordOfTheDayView.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ\u0010\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011J\u0010\u0010\u0012\u001a\u00020\u000f2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011J)\u0010\u0014\u001a\u00020\u000f2!\u0010\u0015\u001a\u001d\u0012\u0013\u0012\u00110\u0011¢\u0006\f\b\u0017\u0012\b\b\u0018\u0012\u0004\b\b(\u0013\u0012\u0004\u0012\u00020\u000f0\u0016J\u000e\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u0003R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001a"}, d2 = {"Lfast/dic/dict/views/WordOfTheDayView;", "Landroidx/cardview/widget/CardView;", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "binding", "Lfast/dic/dict/databinding/WordOfTheDayBinding;", "setDate", "", "date", "", "setTodayWord", "word", "setOnClick", "clicked", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "verticallyCenter", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordOfTheDayView extends CardView {
    private final WordOfTheDayBinding binding;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WordOfTheDayView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        WordOfTheDayBinding wordOfTheDayBindingInflate = WordOfTheDayBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(wordOfTheDayBindingInflate, "inflate(...)");
        this.binding = wordOfTheDayBindingInflate;
        setBackgroundColor(0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WordOfTheDayView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        WordOfTheDayBinding wordOfTheDayBindingInflate = WordOfTheDayBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(wordOfTheDayBindingInflate, "inflate(...)");
        this.binding = wordOfTheDayBindingInflate;
        setBackgroundColor(0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public WordOfTheDayView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        WordOfTheDayBinding wordOfTheDayBindingInflate = WordOfTheDayBinding.inflate(LayoutInflater.from(getContext()), this, true);
        Intrinsics.checkNotNullExpressionValue(wordOfTheDayBindingInflate, "inflate(...)");
        this.binding = wordOfTheDayBindingInflate;
        setBackgroundColor(0);
    }

    public final void setDate(String date) {
        TextView textView = this.binding.todayView;
        if (date == null) {
            date = "";
        }
        textView.setText(date);
    }

    public final void setTodayWord(String word) {
        TextView textView = this.binding.wodWordView;
        if (word == null) {
            word = "";
        }
        textView.setText(word);
    }

    public final void setOnClick(final Function1<? super String, Unit> clicked) {
        Intrinsics.checkNotNullParameter(clicked, "clicked");
        this.binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.views.WordOfTheDayView$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                clicked.invoke(this.binding.wodWordView.getText().toString());
            }
        });
    }

    public final void verticallyCenter(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int windowHalfHeight = ContextExtKt.getWindowHalfHeight(context);
        int dimension = (int) getResources().getDimension(R.dimen.wod_height);
        WordOfTheDayView wordOfTheDayView = this;
        ViewGroup.LayoutParams layoutParams = wordOfTheDayView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        int i = marginLayoutParams != null ? marginLayoutParams.leftMargin : 0;
        int i2 = (windowHalfHeight - dimension) - 50;
        ViewGroup.LayoutParams layoutParams2 = wordOfTheDayView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams2 = layoutParams2 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams2 : null;
        int i3 = marginLayoutParams2 != null ? marginLayoutParams2.rightMargin : 0;
        ViewGroup.LayoutParams layoutParams3 = wordOfTheDayView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams3 = layoutParams3 instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams3 : null;
        ViewExtKt.setMargins(wordOfTheDayView, i, i2, i3, marginLayoutParams3 != null ? marginLayoutParams3.bottomMargin : 0);
    }
}
