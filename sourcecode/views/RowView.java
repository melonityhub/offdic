package fast.dic.dict.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.google.android.material.card.MaterialCardView;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import io.sentry.Session;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RowView.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005B\u0019\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\u0004\u0010\bB!\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n¢\u0006\u0004\b\u0004\u0010\u000bJ2\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0002\u001a\u00020\u00032\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0003b\u0016\b\u0010\u0012\u0012\b\u0011\u0012\u000e\b\fJ\u0004\b\b(\u0012J\u0004\b\b(\u0013J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u0016R\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lfast/dic/dict/views/RowView;", "Landroid/widget/LinearLayout;", Names.CONTEXT, "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", Session.JsonKeys.ATTRS, "Landroid/util/AttributeSet;", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "titleLabel", "Landroid/widget/TextView;", MobileAdsBridgeBase.initializeMethodName, "", "Landroid/annotation/SuppressLint;", "value", "CustomViewStyleable", "Recycle", "clickListener", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/view/View$OnClickListener;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class RowView extends LinearLayout {
    private TextView titleLabel;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RowView(Context context) {
        super(context);
        Intrinsics.checkNotNullParameter(context, "context");
        View.inflate(getContext(), R.layout.row_view_layout, this);
        View viewFindViewById = findViewById(R.id.title_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.titleLabel = (TextView) viewFindViewById;
        initialize(context, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RowView(Context context, AttributeSet attrs) {
        super(context, attrs);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        View.inflate(getContext(), R.layout.row_view_layout, this);
        View viewFindViewById = findViewById(R.id.title_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.titleLabel = (TextView) viewFindViewById;
        initialize(context, attrs);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RowView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        View.inflate(getContext(), R.layout.row_view_layout, this);
        View viewFindViewById = findViewById(R.id.title_label);
        Intrinsics.checkNotNullExpressionValue(viewFindViewById, "findViewById(...)");
        this.titleLabel = (TextView) viewFindViewById;
        initialize(context, attrs);
    }

    private final void initialize(Context context, AttributeSet attrs) {
        if (attrs != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attrs, R.styleable.row_view_styleable);
            Intrinsics.checkNotNullExpressionValue(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            if (typedArrayObtainStyledAttributes.hasValue(R.styleable.row_view_styleable_android_text)) {
                this.titleLabel.setText(typedArrayObtainStyledAttributes.getString(R.styleable.row_view_styleable_android_text));
            }
        }
    }

    public final void clickListener(View.OnClickListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        ((MaterialCardView) findViewById(R.id.directory_row_card_view)).setOnClickListener(listener);
    }
}
