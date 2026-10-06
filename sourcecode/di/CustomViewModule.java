package fast.dic.dict.di;

import dagger.Module;
import dagger.Provides;
import fast.dic.dict.database.FDDatabaseManager;
import fast.dic.dict.helpers.database.couchbase.FDHistory;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CustomViewModule.kt */
/* JADX INFO: loaded from: classes11.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0007b\u0002\b\bb\u0002\b\tÊ\u0001\u0002\b\u000bÊ\u0001\u0010\b\f\u0012\f\b\r\u0012\b\b\fJ\u0004\b\t0\u000e¨\u0006\n"}, d2 = {"Lfast/dic/dict/di/CustomViewModule;", "", "<init>", "()V", "provideFDHistory", "Lfast/dic/dict/helpers/database/couchbase/FDHistory;", "databaseManager", "Lfast/dic/dict/database/FDDatabaseManager;", "Ldagger/hilt/android/scopes/ViewScoped;", "Ldagger/Provides;", "app", "Ldagger/Module;", "Ldagger/hilt/InstallIn;", "value", "Ldagger/hilt/android/components/ViewComponent;"}, k = 1, mv = {2, 4, 0}, xi = 48)
@Module
public final class CustomViewModule {
    public static final CustomViewModule INSTANCE = new CustomViewModule();

    private CustomViewModule() {
    }

    @Provides
    public final FDHistory provideFDHistory(FDDatabaseManager databaseManager) {
        Intrinsics.checkNotNullParameter(databaseManager, "databaseManager");
        return new FDHistory(databaseManager);
    }
}
