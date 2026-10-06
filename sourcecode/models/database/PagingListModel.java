package fast.dic.dict.models.database;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PagingListModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0087\b\u0018\u00002\u00020\u0001BE\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\t¢\u0006\u0004\b\n\u0010\u000bJ\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001c\u001a\u00020\u0003HÆ\u0003J\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\u0013J\u001d\u0010\u001e\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\tHÆ\u0003JL\u0010\u001f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00032\u001c\b\u0002\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\tHÆ\u0001¢\u0006\u0002\u0010 J\u0006\u0010!\u001a\u00020\u0003J\u0014\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010%HÖ\u0083\u0004J\n\u0010&\u001a\u00020\u0003HÖ\u0081\u0004J\n\u0010'\u001a\u00020(HÖ\u0081\u0004J\u0016\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020,2\u0006\u0010-\u001a\u00020\u0003R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001e\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u0016\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R.\u0010\u0006\u001a\u0016\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007j\n\u0012\u0004\u0012\u00020\b\u0018\u0001`\tX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aÊ\u0001\u0002\b/¨\u0006."}, d2 = {"Lfast/dic/dict/models/database/PagingListModel;", "Landroid/os/Parcelable;", "offset", "", "limit", "category", "listModel", "Ljava/util/ArrayList;", "Lfast/dic/dict/models/database/ListModel;", "Lkotlin/collections/ArrayList;", "<init>", "(IILjava/lang/Integer;Ljava/util/ArrayList;)V", "getOffset", "()I", "setOffset", "(I)V", "getLimit", "setLimit", "getCategory", "()Ljava/lang/Integer;", "setCategory", "(Ljava/lang/Integer;)V", "Ljava/lang/Integer;", "getListModel", "()Ljava/util/ArrayList;", "setListModel", "(Ljava/util/ArrayList;)V", "component1", "component2", "component3", "component4", "copy", "(IILjava/lang/Integer;Ljava/util/ArrayList;)Lfast/dic/dict/models/database/PagingListModel;", "describeContents", "equals", "", "other", "", "hashCode", "toString", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final /* data */ class PagingListModel implements Parcelable {
    public static final Parcelable.Creator<PagingListModel> CREATOR = new Creator();
    private Integer category;
    private int limit;
    private ArrayList<ListModel> listModel;
    private int offset;

    /* JADX INFO: compiled from: PagingListModel.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<PagingListModel> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PagingListModel createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            int i = parcel.readInt();
            int i2 = parcel.readInt();
            ArrayList arrayList = null;
            Integer numValueOf = parcel.readInt() == 0 ? null : Integer.valueOf(parcel.readInt());
            if (parcel.readInt() != 0) {
                int i3 = parcel.readInt();
                ArrayList arrayList2 = new ArrayList(i3);
                for (int i4 = 0; i4 != i3; i4++) {
                    arrayList2.add(ListModel.CREATOR.createFromParcel(parcel));
                }
                arrayList = arrayList2;
            }
            return new PagingListModel(i, i2, numValueOf, arrayList);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final PagingListModel[] newArray(int i) {
            return new PagingListModel[i];
        }
    }

    public PagingListModel() {
        this(0, 0, null, null, 15, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PagingListModel copy$default(PagingListModel pagingListModel, int i, int i2, Integer num, ArrayList arrayList, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            i = pagingListModel.offset;
        }
        if ((i3 & 2) != 0) {
            i2 = pagingListModel.limit;
        }
        if ((i3 & 4) != 0) {
            num = pagingListModel.category;
        }
        if ((i3 & 8) != 0) {
            arrayList = pagingListModel.listModel;
        }
        return pagingListModel.copy(i, i2, num, arrayList);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final int getOffset() {
        return this.offset;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getLimit() {
        return this.limit;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final Integer getCategory() {
        return this.category;
    }

    public final ArrayList<ListModel> component4() {
        return this.listModel;
    }

    public final PagingListModel copy(int offset, int limit, Integer category, ArrayList<ListModel> listModel) {
        return new PagingListModel(offset, limit, category, listModel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PagingListModel)) {
            return false;
        }
        PagingListModel pagingListModel = (PagingListModel) other;
        return this.offset == pagingListModel.offset && this.limit == pagingListModel.limit && Intrinsics.areEqual(this.category, pagingListModel.category) && Intrinsics.areEqual(this.listModel, pagingListModel.listModel);
    }

    public int hashCode() {
        int iHashCode = ((Integer.hashCode(this.offset) * 31) + Integer.hashCode(this.limit)) * 31;
        Integer num = this.category;
        int iHashCode2 = (iHashCode + (num == null ? 0 : num.hashCode())) * 31;
        ArrayList<ListModel> arrayList = this.listModel;
        return iHashCode2 + (arrayList != null ? arrayList.hashCode() : 0);
    }

    public String toString() {
        return "PagingListModel(offset=" + this.offset + ", limit=" + this.limit + ", category=" + this.category + ", listModel=" + this.listModel + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeInt(this.offset);
        dest.writeInt(this.limit);
        Integer num = this.category;
        if (num == null) {
            dest.writeInt(0);
        } else {
            dest.writeInt(1);
            dest.writeInt(num.intValue());
        }
        ArrayList<ListModel> arrayList = this.listModel;
        if (arrayList == null) {
            dest.writeInt(0);
            return;
        }
        dest.writeInt(1);
        dest.writeInt(arrayList.size());
        Iterator<ListModel> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().writeToParcel(dest, flags);
        }
    }

    public PagingListModel(int i, int i2, Integer num, ArrayList<ListModel> arrayList) {
        this.offset = i;
        this.limit = i2;
        this.category = num;
        this.listModel = arrayList;
    }

    public /* synthetic */ PagingListModel(int i, int i2, Integer num, ArrayList arrayList, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this((i3 & 1) != 0 ? 0 : i, (i3 & 2) != 0 ? 50 : i2, (i3 & 4) != 0 ? null : num, (i3 & 8) != 0 ? null : arrayList);
    }

    public final int getOffset() {
        return this.offset;
    }

    public final void setOffset(int i) {
        this.offset = i;
    }

    public final int getLimit() {
        return this.limit;
    }

    public final void setLimit(int i) {
        this.limit = i;
    }

    public final Integer getCategory() {
        return this.category;
    }

    public final void setCategory(Integer num) {
        this.category = num;
    }

    public final ArrayList<ListModel> getListModel() {
        return this.listModel;
    }

    public final void setListModel(ArrayList<ListModel> arrayList) {
        this.listModel = arrayList;
    }
}
