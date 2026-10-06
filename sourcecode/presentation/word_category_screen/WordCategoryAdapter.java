package fast.dic.dict.presentation.word_category_screen;

import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.ironsource.U3;
import fast.dic.dict.R;
import fast.dic.dict.databinding.CategorizedWordItemLayoutBinding;
import fast.dic.dict.models.database.CategorizedWordDto;
import fast.dic.dict.utils.IntExtKt;
import java.util.List;
import javax.inject.Inject;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: WordCategoryAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0019\u001aB\r\b\u0007\u001a\u0002\b\u0006¢\u0006\u0004\b\u0004\u0010\u0005J\u001c\u0010\u0011\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u001c\u0010\u0016\u001a\u00020\f2\n\u0010\u0017\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0015H\u0016R5\u0010\u0007\u001a\u001d\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\f0\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u001b"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lfast/dic/dict/models/database/CategorizedWordDto;", "Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;", "<init>", "()V", "Ljavax/inject/Inject;", "onClickListener", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "listModel", "", "getOnClickListener", "()Lkotlin/jvm/functions/Function1;", "setOnClickListener", "(Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", U3.i.L, "ViewHolder", "DiffCallback", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class WordCategoryAdapter extends ListAdapter<CategorizedWordDto, ViewHolder> {
    private Function1<? super CategorizedWordDto, Unit> onClickListener;

    @Inject
    public WordCategoryAdapter() {
        super(new DiffCallback());
        this.onClickListener = new Function1() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryAdapter$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return WordCategoryAdapter.onClickListener$lambda$0((CategorizedWordDto) obj);
            }
        };
    }

    static final Unit onClickListener$lambda$0(CategorizedWordDto it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return Unit.INSTANCE;
    }

    public final Function1<CategorizedWordDto, Unit> getOnClickListener() {
        return this.onClickListener;
    }

    public final void setOnClickListener(Function1<? super CategorizedWordDto, Unit> function1) {
        Intrinsics.checkNotNullParameter(function1, "<set-?>");
        this.onClickListener = function1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        CategorizedWordItemLayoutBinding categorizedWordItemLayoutBindingInflate = CategorizedWordItemLayoutBinding.inflate(LayoutInflater.from(parent.getContext()), parent, false);
        Intrinsics.checkNotNullExpressionValue(categorizedWordItemLayoutBindingInflate, "inflate(...)");
        return new ViewHolder(this, categorizedWordItemLayoutBindingInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Intrinsics.checkNotNullParameter(holder, "holder");
        CategorizedWordDto item = getItem(position);
        Intrinsics.checkNotNullExpressionValue(item, "getItem(...)");
        holder.setBind(item);
    }

    /* JADX INFO: compiled from: WordCategoryAdapter.kt */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;", "<init>", "(Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter;Lfast/dic/dict/databinding/CategorizedWordItemLayoutBinding;)V", "setBind", "", "model", "Lfast/dic/dict/models/database/CategorizedWordDto;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public final class ViewHolder extends RecyclerView.ViewHolder {
        private final CategorizedWordItemLayoutBinding binding;
        final /* synthetic */ WordCategoryAdapter this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(final WordCategoryAdapter wordCategoryAdapter, CategorizedWordItemLayoutBinding binding) {
            super(binding.getRoot());
            Intrinsics.checkNotNullParameter(binding, "binding");
            this.this$0 = wordCategoryAdapter;
            this.binding = binding;
            binding.getRoot().setOnClickListener(new View.OnClickListener() { // from class: fast.dic.dict.presentation.word_category_screen.WordCategoryAdapter$ViewHolder$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    WordCategoryAdapter.ViewHolder._init_$lambda$0(wordCategoryAdapter, this, view);
                }
            });
        }

        static final void _init_$lambda$0(WordCategoryAdapter wordCategoryAdapter, ViewHolder viewHolder, View view) {
            Function1<CategorizedWordDto, Unit> onClickListener = wordCategoryAdapter.getOnClickListener();
            CategorizedWordDto model = viewHolder.binding.getModel();
            Intrinsics.checkNotNull(model);
            onClickListener.invoke(model);
        }

        public final void setBind(CategorizedWordDto model) {
            int i;
            Intrinsics.checkNotNullParameter(model, "model");
            int i2 = 1;
            this.binding.setIsWordEnglish(true);
            this.binding.setIsMeaningEnglish(false);
            this.binding.setModel(model);
            this.binding.posContainer.removeAllViews();
            Context context = this.binding.getRoot().getContext();
            List<String> subCategories = model.getSubCategories();
            float f = 10.0f;
            float f2 = 8.0f;
            if (subCategories != null) {
                i = 0;
                for (String str : subCategories) {
                    TextView textView = new TextView(context);
                    textView.setText(context.getString(R.string.filter_section, Integer.valueOf(Integer.parseInt(str))));
                    textView.setTextAppearance(R.style.TextAppearance_AppCompat_Body1);
                    textView.setBackgroundResource(R.drawable.bg_section_drawable);
                    textView.setTextColor(context.getColor(android.R.color.white));
                    if (Build.VERSION.SDK_INT >= 26) {
                        textView.setTypeface(context.getResources().getFont(R.font.iransansxregular), i2);
                    }
                    textView.setTextSize(f);
                    Intrinsics.checkNotNull(context);
                    textView.setPadding(IntExtKt.toDimensionUnit$default(f2, context, 0, 2, null), IntExtKt.toDimensionUnit$default(0.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(f2, context, 0, 2, null), IntExtKt.toDimensionUnit$default(0.0f, context, 0, 2, null));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams.setMarginEnd(4);
                    textView.setLayoutParams(layoutParams);
                    this.binding.posContainer.addView(textView);
                    i++;
                    i2 = 1;
                    f = 10.0f;
                    f2 = 8.0f;
                }
            } else {
                i = 0;
            }
            List<String> cefrs = model.getCefrs();
            if (cefrs != null) {
                for (String str2 : cefrs) {
                    TextView textView2 = new TextView(context);
                    textView2.setText(str2);
                    textView2.setTextAppearance(R.style.TextAppearance_AppCompat_Body1);
                    textView2.setBackgroundResource(R.drawable.bg_cerf_drawable);
                    textView2.setTextColor(context.getColor(android.R.color.white));
                    if (Build.VERSION.SDK_INT >= 26) {
                        textView2.setTypeface(context.getResources().getFont(R.font.iransansxregular), 1);
                    }
                    textView2.setTextSize(10.0f);
                    Intrinsics.checkNotNull(context);
                    textView2.setPadding(IntExtKt.toDimensionUnit$default(8.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(0.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(8.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(0.0f, context, 0, 2, null));
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams2.setMarginEnd(4);
                    textView2.setLayoutParams(layoutParams2);
                    this.binding.posContainer.addView(textView2);
                    i++;
                }
            }
            List<String> poses = model.getPoses();
            if (poses != null) {
                for (String str3 : poses) {
                    TextView textView3 = new TextView(context);
                    textView3.setText(str3);
                    textView3.setTextAppearance(R.style.TextAppearance_AppCompat_Body1);
                    textView3.setBackgroundResource(R.drawable.bg_pos_drawable);
                    textView3.setTextColor(context.getColor(android.R.color.white));
                    if (Build.VERSION.SDK_INT >= 26) {
                        textView3.setTypeface(context.getResources().getFont(R.font.iransansxregular), 1);
                    }
                    textView3.setTextSize(10.0f);
                    Intrinsics.checkNotNull(context);
                    textView3.setPadding(IntExtKt.toDimensionUnit$default(8.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(0.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(8.0f, context, 0, 2, null), IntExtKt.toDimensionUnit$default(0.0f, context, 0, 2, null));
                    LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-2, -2);
                    layoutParams3.setMarginEnd(4);
                    textView3.setLayoutParams(layoutParams3);
                    this.binding.posContainer.addView(textView3);
                    i++;
                }
            }
            this.binding.posContainer.setVisibility(i == 0 ? 8 : 0);
        }
    }

    /* JADX INFO: compiled from: WordCategoryAdapter.kt */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J*\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0017b\u0010\b\n\u0012\f\b\u000b\u0012\b\b\fJ\u0004\b\b(\f¨\u0006\r"}, d2 = {"Lfast/dic/dict/presentation/word_category_screen/WordCategoryAdapter$DiffCallback;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lfast/dic/dict/models/database/CategorizedWordDto;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "Landroid/annotation/SuppressLint;", "value", "DiffUtilEquals", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final class DiffCallback extends DiffUtil.ItemCallback<CategorizedWordDto> {
        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areItemsTheSame(CategorizedWordDto oldItem, CategorizedWordDto newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }

        @Override // androidx.recyclerview.widget.DiffUtil.ItemCallback
        public boolean areContentsTheSame(CategorizedWordDto oldItem, CategorizedWordDto newItem) {
            Intrinsics.checkNotNullParameter(oldItem, "oldItem");
            Intrinsics.checkNotNullParameter(newItem, "newItem");
            return Intrinsics.areEqual(oldItem, newItem);
        }
    }
}
