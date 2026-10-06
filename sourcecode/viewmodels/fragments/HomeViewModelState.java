package fast.dic.dict.viewmodels.fragments;

import fast.dic.dict.models.api.WodApiModel;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: HomeViewModel.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0001\u0004B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0001\u0005¨\u0006\u0006"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;", "", "<init>", "()V", "Data", "Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
public abstract class HomeViewModelState {
    public /* synthetic */ HomeViewModelState(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    /* JADX INFO: compiled from: HomeViewModel.kt */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000b\u0010\b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0015\u0010\t\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lfast/dic/dict/viewmodels/fragments/HomeViewModelState$Data;", "Lfast/dic/dict/viewmodels/fragments/HomeViewModelState;", "response", "Lfast/dic/dict/models/api/WodApiModel;", "<init>", "(Lfast/dic/dict/models/api/WodApiModel;)V", "getResponse", "()Lfast/dic/dict/models/api/WodApiModel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"}, k = 1, mv = {2, 4, 0}, xi = 48)
    public static final /* data */ class Data extends HomeViewModelState {
        private final WodApiModel response;

        public static /* synthetic */ Data copy$default(Data data, WodApiModel wodApiModel, int i, Object obj) {
            if ((i & 1) != 0) {
                wodApiModel = data.response;
            }
            return data.copy(wodApiModel);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final WodApiModel getResponse() {
            return this.response;
        }

        public final Data copy(WodApiModel response) {
            return new Data(response);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Data) && Intrinsics.areEqual(this.response, ((Data) other).response);
        }

        public int hashCode() {
            WodApiModel wodApiModel = this.response;
            if (wodApiModel == null) {
                return 0;
            }
            return wodApiModel.hashCode();
        }

        public String toString() {
            return "Data(response=" + this.response + ")";
        }

        public Data(WodApiModel wodApiModel) {
            super(null);
            this.response = wodApiModel;
        }

        public final WodApiModel getResponse() {
            return this.response;
        }
    }

    private HomeViewModelState() {
    }
}
