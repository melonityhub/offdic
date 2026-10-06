package fast.dic.dict.models.eventbus;

import android.os.Parcel;
import android.os.Parcelable;
import io.sentry.protocol.FeatureFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: SearchBarStatus.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\b\u0007\u0018\u00002\u00020\u0001B\u001b\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\rR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bÊ\u0001\u0002\b\u0014¨\u0006\u0013"}, d2 = {"Lfast/dic/dict/models/eventbus/SearchBarStatus;", "Landroid/os/Parcelable;", "type", "Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;", "word", "", "<init>", "(Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;Ljava/lang/String;)V", "getType", "()Lfast/dic/dict/models/eventbus/SearchBarStatusEnum;", "getWord", "()Ljava/lang/String;", "describeContents", "", "writeToParcel", "", "dest", "Landroid/os/Parcel;", FeatureFlags.TYPE, "app", "Lkotlinx/parcelize/Parcelize;"}, k = 1, mv = {2, 4, 0}, xi = 48)
public final class SearchBarStatus implements Parcelable {
    public static final Parcelable.Creator<SearchBarStatus> CREATOR = new Creator();
    private final SearchBarStatusEnum type;
    private final String word;

    /* JADX INFO: compiled from: SearchBarStatus.kt */
    @Metadata(k = 3, mv = {2, 4, 0}, xi = 48)
    public static final class Creator implements Parcelable.Creator<SearchBarStatus> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SearchBarStatus createFromParcel(Parcel parcel) {
            Intrinsics.checkNotNullParameter(parcel, "parcel");
            return new SearchBarStatus(SearchBarStatusEnum.valueOf(parcel.readString()), parcel.readString());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final SearchBarStatus[] newArray(int i) {
            return new SearchBarStatus[i];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int flags) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        dest.writeString(this.type.name());
        dest.writeString(this.word);
    }

    public SearchBarStatus(SearchBarStatusEnum type, String str) {
        Intrinsics.checkNotNullParameter(type, "type");
        this.type = type;
        this.word = str;
    }

    public /* synthetic */ SearchBarStatus(SearchBarStatusEnum searchBarStatusEnum, String str, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(searchBarStatusEnum, (i & 2) != 0 ? null : str);
    }

    public final SearchBarStatusEnum getType() {
        return this.type;
    }

    public final String getWord() {
        return this.word;
    }
}
