package fast.dic.dict.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.mbridge.msdk.MBridgeConstans;
import com.yandex.div.core.dagger.Names;
import fast.dic.dict.R;
import fast.dic.dict.models.SupportedLanguageModel;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: LanguageLayoutAdapter.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B1\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0012\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\u0004\b\f\u0010\rJ\u0018\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016J\u0018\u0010\u0019\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u0018H\u0016J\b\u0010\u001c\u001a\u00020\u0018H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R \u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\u001d\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013¨\u0006\u001d"}, d2 = {"Lfast/dic/dict/adapters/LanguageLayoutAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lfast/dic/dict/adapters/LanguageLayoutViewHolder;", Names.CONTEXT, "Landroid/content/Context;", "dataset", "", "Lfast/dic/dict/models/SupportedLanguageModel;", "onChanged", "Lkotlin/Function1;", "", "", "<init>", "(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V", "getDataset", "()Ljava/util/List;", "setDataset", "(Ljava/util/List;)V", "getOnChanged", "()Lkotlin/jvm/functions/Function1;", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "indext", "", "onBindViewHolder", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "index", "getItemCount", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class LanguageLayoutAdapter extends RecyclerView.Adapter<LanguageLayoutViewHolder> {
    private final Context context;
    private List<SupportedLanguageModel> dataset;
    private final Function1<String, Unit> onChanged;

    /* JADX WARN: Multi-variable type inference failed */
    public LanguageLayoutAdapter(Context context, List<SupportedLanguageModel> dataset, Function1<? super String, Unit> onChanged) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(dataset, "dataset");
        Intrinsics.checkNotNullParameter(onChanged, "onChanged");
        this.context = context;
        this.dataset = dataset;
        this.onChanged = onChanged;
    }

    public final List<SupportedLanguageModel> getDataset() {
        return this.dataset;
    }

    public final Function1<String, Unit> getOnChanged() {
        return this.onChanged;
    }

    public final void setDataset(List<SupportedLanguageModel> list) {
        Intrinsics.checkNotNullParameter(list, "<set-?>");
        this.dataset = list;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public LanguageLayoutViewHolder onCreateViewHolder(ViewGroup parent, int indext) {
        Intrinsics.checkNotNullParameter(parent, "parent");
        View viewInflate = LayoutInflater.from(this.context).inflate(R.layout.adapter_language_layout, parent, false);
        Intrinsics.checkNotNull(viewInflate);
        return new LanguageLayoutViewHolder(viewInflate);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(LanguageLayoutViewHolder view, final int index) {
        Intrinsics.checkNotNullParameter(view, "view");
        SupportedLanguageModel supportedLanguageModel = this.dataset.get(index);
        view.setTitle(supportedLanguageModel.getTitle());
        view.selected(supportedLanguageModel.getSelected());
        view.setSubtitle(supportedLanguageModel.getTranslate());
        view.setOnSelectedListener(new View.OnClickListener() { // from class: fast.dic.dict.adapters.LanguageLayoutAdapter$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LanguageLayoutAdapter.onBindViewHolder$lambda$0(this.f$0, index, view2);
            }
        });
    }

    static final void onBindViewHolder$lambda$0(LanguageLayoutAdapter languageLayoutAdapter, int i, View view) {
        List<SupportedLanguageModel> list = languageLayoutAdapter.dataset;
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (SupportedLanguageModel supportedLanguageModel : list) {
            supportedLanguageModel.setSelected(false);
            arrayList.add(supportedLanguageModel);
        }
        ArrayList arrayList2 = arrayList;
        ((SupportedLanguageModel) arrayList2.get(i)).setSelected(true);
        languageLayoutAdapter.dataset = arrayList2;
        languageLayoutAdapter.notifyDataSetChanged();
        languageLayoutAdapter.onChanged.invoke(((SupportedLanguageModel) arrayList2.get(i)).getTitle());
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.dataset.size();
    }
}
